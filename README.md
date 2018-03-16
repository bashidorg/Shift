# Shift

![Chat](https://img.shields.io/badge/Chat-telegram-blue.svg)
![Version](https://img.shields.io/badge/Version-1.0-brightgreen.svg)
![Release](https://img.shields.io/badge/Released-stable-red.svg)

![preview](shift.gif)

Shift is a theme switcher tool to change your window manager setup, written in BASH. `shift` can change winow manager theme
, terminal colorscheme , and panel in **single line command** with available arguments.`shift` automated to detect what window manager log in session you entered and check panel that are running in the background. `shift` currently support
some window manager : `Openbox`, `windowchef`, and `Xfce4`/`Xfwm4`. I

## Window manager supported

- `Openbox`
- `Windowchef`
- `Xfce4`/`Xfwm4`

## Requirements

What you might need :
* `lemonbar`, `polybar` and `tint2` for panel options.
* `wmctrl` to get log in session of window manager.
* `feh`, `nitrogen`, `hsetroot` to set Wallpaper.
* `xfconf` to set GTK 3 themes and icons. 

## Installation

    $ git clone https://github.com/noirecat/shift.git
    $ cd Shift
    $ chmod +x Shift

## The Rules of Config

Example config of window manager include in this repo.

*  Openbox autostart configuration file must include :

   * For polybar.
   
         polybar top/bottom -c ~/.config/polybar/panel &
         
   * For lemonbar.
   
         . ~/.config/lemonbar/panel &

   * For tint2.
   
         * tint2 -c ~/.config/tint2/[preset].tint2rc &

*  Windowchef configuration file must be placed under :

        ~/.config/windowchef/windowchefrc  
   
   And include this line :
        
        ...
        export THEME="preset"
        ...

* Polybar configuration file must be under

        ~/.config/polybar/

* Lemonbar configuration file must be under

        ~/.config/lemonbar/
        
* Tint2 configuration file must be under

        ~/.config/tint2/

* Xresources should be under

        ~/.Xresources 
      
  And include this line:
  
        # include ".colors/preset"

## Usage

Change setup include (terminal,wm gtk2/3 themes) in single line command.

    $ Shift --setup [preset-name]
    
Change setup include (terminal,wm themes) with different panel.

    $ Shift --setup [preset-name] --polybar|--lemonbar|--tint2 [panel-name]

Change gtk 3 themes and icons when you login in `Xfce4`/`Xfwm4` session.
 
    $ Shift --setup [themes-name] --icons [icons-name]

Backup all desktop configuration includes another wm that supported.
  
    $ Shift --backup-all [dir-name]

Or, just backup the current window manager log in and the running panel in background

    $ Shift --backup [dir-name]
    
Installing other dotfiles to your system.

    $ Shift --deploy [github-url]
    
Set wall of desktop using third-party.

    $ Shift --wall fill|tile 'path/to/your/image'
    
Available options:

    Usage   : Shift [--options] preset [--options] preset
    Example : Shift --setup arc --tint2 light

    Options :
         --backup-all     Backup all configuration into dotfiles.
         --backup         Backup your desktop config into tarball.
	     --deploy         Clone and install the dotfiles into your system.
         --icons          Change GTK2 / GTK 3 icons.
         --setup          Change setup of window manager.
         --wall           Set wallpaper to desktop.
         -v,--version     Show version.
         -h,--help        Show this help.
         

## Contribute

If you want another window manager added to this tools, just create an **issues**.

## :octocat: Credits
- Thanks to Allah
- Archlinux as my favorite distro, check this https://www.archlinux.org/
- Dracos Linux from Indonesia, you can see in http://dracos-linux.org/
- Linuxer Desktop Art - group for sharing Linux/BSD desktop customization.(https://web.facebook.com/groups/linuxart)
- BASH.ID - Group for discussing scripting for any other shell in the GNU/Linux (https://t.me/Bash_ID).
- [Edo -maland-](https://github.com/Screetsec), [Eye Candy Linux](https://plus.google.com/communities/104794997718869399105) and r/unixporn for sharing resources about customization.
- [Nanda Vera](https://github.com/yuune), [Fikri Omar](https://github.com/fikriomar16), and [Addy](https://github.com/addy-dclxvi).
- unix121 https://github.com/unix121/i3wm-themer
- nizarmah https://github.com/nizarmah/tintedarc
- And other users have shared their dotfiles.

## License

The code is available under the [MIT license](LICENSE).
