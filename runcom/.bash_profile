for DOTFILE in `find ~/.dotfiles`; do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

source ~/.git-completion.bash 

export PATH=/bin:/usr/local/opt/gettext/bin:~/.bin:$PATH
