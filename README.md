# dotfiles

The dotfiles I need, but not the ones I deserve.

## Setup

On a brand new Mac installation, run:

```shell
$ sudo softwareupdate -i -a
$ xcode-select --install
```
Then clone this repository to your home folder:

```shell
~ $ git clone https://github.com/athyuttamre/dotfiles.git
```

Then run the install script. This will symlink the dotfiles to your
home folder, and install the various packages and binaries in an idempotent
fashion (i.e. re-running the script won't break things.)

```shell
~ $ source dotfiles/install.sh
```

Restart your Mac for all changes to take effect.

## Updates

When making updates, feel free to directly edit the dotfiles in your
home directory. Since they're symlinked, they will edit the cloned repo.
Every now and then commit your changes and push them up.

If installing major packages (think `golang`, `rvm` etc.), make sure to
add / update an install script to document it and make it reproducible in the future.

## Credits

A lot of the commands here are taken from [mathiasbynens](https://github.com/mathiasbynens/dotfiles), [webpro](https://github.com/webpro/dotfiles), and [anishathalye](https://github.com/anishathalye/dotfiles).

[This article](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789) was also really helpful in structuring my files.
