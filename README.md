dotfiles based on [thoughtbot](https://github.com/thoughtbot/dotfiles)

For easy rc management install [rcm](https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)

For beautiful diffs install `grc`

For faster searching, completions and general sanity, install `ag` (It is like grep or ack, but faster.)

For personal settings create a `dotfiles-local` folder in your home folder and create the files there. For example:

File: 
~/dotfiles-local/gitconfig.local

Contents:
[user]
  email = simon@nonofyarbusiness.aaarg
  name = Simon the Pirate

These .local files are symlinked into the home folder (~/.gitconfig.local) and sourced or included by the files in this repo.