# gberger does dotfiles

## install

Run this:

```sh
git clone https://github.com/gberger/dotfiles.git ~/dotfiles
cd ~/dotfiles
./yo.sh
```

This will symlink the appropriate files in `dotfiles` to your home directory.
Everything is configured and tweaked within `~/dotfiles`.

## special files

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## components

```
./dart/install.sh
./git/install.sh
./heroku/install.sh
./node/install.sh
./postgres/install.sh
./redis/install.sh
./ruby/install.sh
```