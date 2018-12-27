# My Arch/i3-gaps dotfiles

### Installing

Just clone the repo and run `install.sh`. You probably don't want to do this, though. These dotfiles are made for my laptop and will probably look weird on any other system.

#### .zshrc

Your typical `.zshrc`. A few extra aliases and functions. 
* `alias cls=clear`
* `alias pipes=pipes.sh`
* `alias clock=tty-clock`
* mkcd "<directory>": Will make a new directory named <directory> and cd into it.
* psa "<name>": Will run `ps aux | grep <name>`
* weather <place>: Will run `curl wttr.in/<place>`

And a few more...

#### .vimrc

* Some common setting, autoindent, filetype, line numbering, stuff like that.
* Insert mode remaps for printf, for loops for C file
* Honestly, this is a work in progress.

#### .config/i3

Your typical i3-gaps config. Uses wal colors.
Some key bindings were removed. Foe example, the resize mode was completely removed.

#### .config/ranger

Almost the default config. Except for a custom command. 
Type `:wp` when an image is selected, to set it as the wallpaper using wal. Also generates oomox theme, if available.

#### .config/rofi

Set up to use the wal color scheme

#### .config/polybar

Generated with [wpgtk](https://github.com/deviantfero/wpgtk)
Changes colors with wallpaper.

#### Scripts

* lockscreen.sh: An i3-lock script that replaces the screen with a pixellated screenshot.
* wallpaperScript: A script to change the wallpaper at regular intervals. You should probably use a crontab for this.
