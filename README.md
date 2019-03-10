# My Arch/i3-gaps dotfiles

### Installing

Just clone the repo and copy the files you need, or make symbolic links. You probably don't want to do this, though. These dotfiles are made for my laptop and will probably look weird on any other system.

### My Setup

#### [pywal](https://github.com/dylanaraps/wal)

I use wal to set up the color scheme for i3-wm, rofi, polybar, ..., bleh, pretty much everything

#### [Zsh](https://zsh.org) and [Oh My Zsh](https://ohmyz.sh)

> Zsh is a shell designed for interactive use, although it is also a powerful scripting language.

> Oh My Zsh is an open source, community-driven framework for managing your zsh configuration.

Why I use it: easily customizable prompts, useful plugins, looks better in general.

Your typical `.zshrc`. Additional aliases and functions are defined in the aliasrc and functionsrc files.  

* mkcd "\<directory\>": Will make a new directory named <directory> and cd into it.  
* psa "\<name\>": Will run `ps aux | grep <name>`  
* weather \<place\>: Will run `curl wttr.in/<place>`  
* ic: Opens the i3 config file in vim.  
* vc: Opens .vimrc in vim.  
* zc: Opens .zshrc in... you guessed it, vim.  

And a few more...

#### [Vim](https://www.vim.org)

My .vimrc comes with a few keymaps for C, C++ and Java. Also saving LaTeX and Markdown files automatically compiles them to pdf. Also `jj` and `jk` are mapped to `<Esc>` and `<Esc>:w<Enter>` respectively.

#### [i3-gaps](https://github.com/Airblader/i3)

> A fork of i3wm, a tiling window manager for Linux. It includes a few additional features like gaps, etc.

Your typical i3-gaps config. Uses wal colors.  
Some key bindings were removed. For example, the resize mode was completely removed.  
And lot of custom keybindings. And I mean a lot. Take a look at the i3-cheatsheet to some help.  

#### [ranger](https://github.com/ranger/ranger)

A terminal file manager with image previews, based on python.

Almost the default config. Except for a custom command. 
Type `:wp` when an image is selected, to set it as the wallpaper using wal. Also generates oomox theme, if oomox is available.

#### [st](https://st.suckless.org/)

The suckless terminal.
Colors are loaded .Xresources file, ie wal colors.
I use a [custom build](https://github.com/rwithik/my-st-build) with some patches applied.

#### urxvt

My fallback terminal.
wal colors.
Looks pretty much the same as st.

#### [rofi](https://github.com/DaveDavenport/rofi)

> Applications selecter, window switcher and dmenu alternative.

Set up to use the wal dark color scheme.


#### [dmenu](https://tools.suckless.org/dmenu/)

I use a [custom dmenu build](https://github.com/rwithik/my-dmenu-build), mainly for prompts.

#### [polybar](https://github.com/jaagr/polybar)

Generated with [wpgtk](https://github.com/deviantfero/wpgtk)
Changes colors with wallpaper.

#### [Scripts](https://github.com/rwithik/archrice/tree/master/Scripts)

* lockscreen.sh: An i3-lock script that replaces the screen with a pixellated screenshot.  
* todo.cpp: A todo app, minimal integration with dmenu  
* todoScript: A script that integrates the todo app with dmenu.  
* mdCompiler and latexCompiler: Auto compiles LaTeX and markdown files when they are saved in vim.  
* rangerScript and pcmanScript: Open a directory, selected through dmenu, in ranger or pcManFM. Requires ranger and pcManFM, obviously.
* firefoxScript: Open a URL, selected through dmenu again, in a new tab in firefox. Can also open a search.  
* prompt: A prompt using dmenu
