{ pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      "${inputs.home-manager}/nixos"

      ../../modules/nixos/config/xray.nix
    ];

  # home manager settings
  home-manager.useUserPackages = true;
  home-manager.useGlobalPkgs = true;
  home-manager.backupFileExtension = "backup";
  home-manager.users.ensomnatt = import ./home.nix;

  # nixpkgs settings
  nixpkgs.config.allowUnfree = true;

  # grub
  boot.loader.grub.device = "nodev";
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # for nekoray
  boot.kernelModules = [ "tun" ];

  # for drivers
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # network settings
  networking.hostName = "nixosbtw"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  networking.enableIPv6 = false;
  networking.firewall.enable = false;

  # time settings
  time.timeZone = "Europe/Moscow";

  # users settings
  users.users.ensomnatt = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  # programs
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
  programs.zsh.enable = true;
  programs.dconf.enable = true;
  programs.nix-ld.enable = true;

  # nix settings
  nix = {
    package = pkgs.nix;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  # system wide packages
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    neovim
    gcc
    nodejs
    wl-clipboard
  ];

  fonts.packages = with pkgs; [ 
    nerd-fonts.mononoki
    nerd-fonts.jetbrains-mono
    noto-fonts-cjk-sans
    noto-fonts-emoji
  ];

  environment.sessionVariables = {
    XDG_DATA_DIRS = "/var/lib/flatpak/exports/share:/usr/share";
  };

  networking.nameservers = [ "1.1.1.1" "8.8.8.8" ];

  services.openssh.enable = true;

  # sound
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # drivers
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      mesa
      vulkan-loader
      vulkan-tools
    ];
    extraPackages32 = with pkgs.pkgsi686Linux; [
      mesa
      vulkan-loader
    ];
  };
  hardware.firmware = [ pkgs.linux-firmware ];

  # disks
  fileSystems = {
    "/data" = {
      device = "/dev/disk/by-uuid/e4e0f926-5b4b-45f9-9ec1-c9aed214e161";
      fsType = "ext4";
    };

    "/home/ensomnatt/documents" = {
      device = "/data/documents";
      fsType = "none";
      options = [ "bind" ];
    };

    "/home/ensomnatt/pictures" = {
      device = "/data/pictures";
      fsType = "none";
      options = [ "bind" ];
    };

    "/home/ensomnatt/videos" = {
      device = "/data/videos";
      fsType = "none";
      options = [ "bind" ];
    };

    "/home/ensomnatt/games-hdd" = {
      device = "/data/games-hdd";
      fsType = "none";
      options = [ "bind" ];
    };
  };

  system.stateVersion = "24.11"; # Did you read the comment?
}
