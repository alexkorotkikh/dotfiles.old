if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  bash-completion2
  bash-git-prompt
  bats
  battery
  coreutils
  diff-so-fancy
  dockutil
  ffmpeg
  fasd
  gifsicle
  git
  git-extras
  gpg2
  gnu-sed --with-default-names
  go
  grep --with-default-names
  hub
  httpie
  imagemagick
  jq
  lynx
  mackup
  maven
  pandoc
  peco
  psgrep
  python
  scala
  shellcheck
  ssh-copy-id
  tree
  tmux
  unar
  wget
  wifi-password
)

brew install "${apps[@]}"

brew link tmux

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

