export PATH=/bin:/usr/local/opt/gettext/bin:~/.bin:~/.dotfiles/bin:~/.local/bin:$PATH
export EDITOR=vim

for DOTFILE in `find ~/.dotfiles`; do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

source ~/.dotfiles/system/.alias
source ~/.dotfiles/system/.functions

source ~/.git-completion.bash
source ~/.bashrc
