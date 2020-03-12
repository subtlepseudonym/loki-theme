## Loki Theme ##

This theme is designed to make keeping track of git project versions / progress easy. It displays a collection of the usual theme information in addition to git tag info. When you're in a directory with git info, the theme will display the currently checked out branch, an X or ✓ indicating whether you've got uncommitted local changes, the latest tag, and the number of commits beyond that tag your local repo is.

![alt text](scap.png "loki-theme in urvxt, captured with scrot")

### Install ###

I've provided an install script `install.sh` for convenience, which copies all files in this repo matching `*.zsh*` to `$HOME/.oh-my-zsh/custom` or `$HOME/.dotfiles/themes` if they exist.
If your oh-my-zsh is installed elsewhere, just put the contents of this repo into your oh-my-zsh custom folder.

### Themes ###

The theme files in the themes/ directory are marked with file extensions to indicate which require oh-my-zsh like so: `name.omz.zsh-theme`. The non-omz themes should work regardless of whether oh-my-zsh is installed.
The current themes are:
+ loki.zsh-theme  (for 256 color terminals)
+ loki16.omz.zsh-theme (for 16 color terminals)
+ loki-old.omz.zsh-theme (the old v1.0.0 theme which had color issues)

If you decide to use lok-old, be aware that the color settings are unlikely to match those in the image above. There were set to some odd values due to my custom urxvt color settings in arch. You can find the color settings in my [old Xresources/urxvt file](https://github.com/subtlepseudonym/dotfiles/blob/53e0ac6d91b79e5987ff44be3de575013b9c2ae8/Xresources/Xresources.d/urxvt).

Enjoy
