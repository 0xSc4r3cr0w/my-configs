{ config, pkgs, ... }:
{
	imports = [ ./hardware-configuration.nix ];
	
	nixpkgs.config.allowUnfree = true;	
	systemd.extraConfig = ''
	      DefaultTimeoutStopSec=10s
	'';
	
	boot.loader.grub.enable = true;
	boot.loader.grub.version = 2;
	boot.loader.grub.efiSupport = true;
	boot.loader.grub.efiInstallAsRemovable = true;
	boot.loader.efi.efiSysMountPoint = "/boot/efi";
	boot.loader.grub.device = "/dev/sda1";
	
	networking.networkmanager.enable = true;
	networking.hostName = "kakashi";

	i18n.defaultLocale = "pt_BR.UTF-8";
	
	console = {
	   keyMap = "br-abnt2";
	};
	
	time.timeZone = "America/Sao_Paulo";
	
	environment.systemPackages = with pkgs; [
		curl wget neovim vim
		appeditor marwaita monitor
		firefox
	];

	sound.enable = true;
	hardware.pulseaudio.enable = true;
	
	services.xserver.enable = true;
	services.xserver.layout = "br";
	services.xserver.libinput.enable = true;
	services.xserver.desktopManager.pantheon.enable = true;
	programs.pantheon.pantheon-tweaks.enable = true;
	
	users.users.sc4r3cr0w = {
	   isNormalUser = true;
	   extraGroups = [ "wheel"  "networkmanager"];
	};
	system.stateVersion = "22.05";
}

