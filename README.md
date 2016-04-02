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

Finally, to set some sensible OS X preferences, run this script:

```shell
~ $ source dotfiles/osx/osx_defaults.sh
```

Restart your Mac for all changes to take effect.

## Terminal

To make your Terminal look good at this point, double-click the
`Solarized Dark xterm-256color.terminal` file to install the Solarized
Dark theme. Open `Terminal > Preferences` and set this as the default.

Also change the font settings to Monaco at 13pt with 1.1 line spacing.

## SSH and Git

After finishing the steps above, you'll want to [generate a new SSH key](https://help.github.com/articles/generating-an-ssh-key/).

Once that's done, [add your SSH key to GitHub](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/). Also set up remote login with
[Brown's CS Department](https://cs.brown.edu/about/system/connecting/ssh/).

Also setup Brown WiFi and RISD Printing by following their respective guides.

## Atom

Atom's settings are backed up using the `sync-settings` package. These are synced using [this Gist](https://gist.github.com/athyuttamre/197c6a12d73896ae87da0ef80495c33f).

## Updates

When making updates, feel free to directly edit the dotfiles in your
home directory. Since they're symlinked, they will edit the cloned repo.
Every now and then commit your changes and push them up.

If installing major packages (think `golang`, `nvm` etc.), make sure to
add / update an install script to document it and make it reproducible in the future.

## Credits

A lot of the commands here are taken from [mathiasbynens](https://github.com/mathiasbynens/dotfiles), [webpro](https://github.com/webpro/dotfiles), and [anishathalye](https://github.com/anishathalye/dotfiles).

[This article](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789) was also really helpful in structuring my files.
