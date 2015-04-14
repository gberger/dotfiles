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

It also installs the following things:

* [Bundler] for managing Ruby libraries
* [Foreman] for managing web processes
* [gh] for interacting with the GitHub API
* [Heroku Toolbelt] for interacting with the Heroku API
* [Homebrew] for managing operating system libraries
* [ImageMagick] for cropping and resizing images
* [Node.js] and [NPM], for running apps and installing JavaScript packages
* [Qt] for headless JavaScript testing via Capybara Webkit
* [Rbenv] for managing versions of Ruby
* [Redis] for storing key-value data
* [Ruby Build] for installing Rubies
* [Ruby] stable for writing general-purpose code
* [The Silver Searcher] for finding things in files
* [Tmux] for saving project state and switching between projects
* [Zsh] as your shell

[Bundler]: http://bundler.io/
[Exuberant Ctags]: http://ctags.sourceforge.net/
[Foreman]: https://github.com/ddollar/foreman
[gh]: https://github.com/jingweno/gh
[Heroku Toolbelt]: https://toolbelt.heroku.com/
[Homebrew]: http://brew.sh/
[ImageMagick]: http://www.imagemagick.org/
[Node.js]: http://nodejs.org/
[NPM]: https://www.npmjs.org/\
[Qt]: http://qt-project.org/
[Rbenv]: https://github.com/sstephenson/rbenv
[Redis]: http://redis.io/
[Ruby Build]: https://github.com/sstephenson/ruby-build
[Ruby]: https://www.ruby-lang.org/en/
[The Silver Searcher]: https://github.com/ggreer/the_silver_searcher
[Tmux]: http://tmux.sourceforge.net/
[Zsh]: http://www.zsh.org/

## components

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


## other apps

Yo Gui, you should also install these:

* [Alfred](http://www.alfredapp.com/)
* [Captured](http://www.capturedapp.com/)
* [Dash](https://kapeli.com/dash)
* [Flux](https://justgetflux.com/)
* [GIMP](http://www.gimp.org/downloads/)
* [iTerm 2](http://iterm2.com/downloads.html))
* [Messenger.app](http://fbmacmessenger.rsms.me/)
* [Postgres.app](http://postgresapp.com/)
* [Pushbullet](https://www.pushbullet.com/apps)
* [RubyMine](https://www.jetbrains.com/ruby/download/)
* [Spotify](https://www.spotify.com/us/download/mac/)
* [Sublime Text 3](http://www.sublimetext.com/3)
* [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)
* [XtraFinder](https://www.trankynam.com/xtrafinder/)
