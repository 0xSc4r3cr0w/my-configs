# REQUIREMENTS

[POLYBAR]
* [Cascadia Code PL](https://github.com/microsoft/cascadia-code)
* [Iosevka Nerd Font](https://www.nerdfonts.com/font-downloads)
* [Font Awesome 6 Free Solid](https://fontawesome.com/download)
- Use desktop free version of Font Awesome.
- Install OTF fonts in /usr/share/fonts/opentype/
- Install TTF fonts in /usr/share/fonts/truetype/

[KITTY]
* Cascadia Code PL

[BSPWM]
* feh
* sxhkd
* [bsp-layout](https://github.com/phenax/bsp-layout)

[OBS]
- The audio module in polybar uses pulseaudio, install it and install all alsa packages avaliables for you too.(i'll do more tests...)
- The eth module need a manual configuration, in terminal execute the command "ip link", look for anything like "enp0s3", normaly it's in the 2: section from command output, it's your internet interface.
- And now, go in .config/polybar/config.ini and edit the line which have the module "network-base",  setting the attribute "interface" with your internet interface.
