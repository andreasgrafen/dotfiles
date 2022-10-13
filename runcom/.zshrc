
# ----- Z S H R C ----- #
# ------ profile ------ #


[ -z "$PS1" ] && return


# set dotfiles dir
READLINK=$(which greadlink 2>/dev/null || which readlink)
CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
  SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
  DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/.dotfiles" ]; then
  DOTFILES_DIR="$HOME/.dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi


# make utilities available
PATH="$DOTFILES_DIR/bin:$PATH"
export GPG_TTY=$(tty)


# source the dotfiles (order matters)
for DOTFILE in "$DOTFILES_DIR"/system/.{prompt,function,function_*,path,alias,grep,nvm,pfetch,exa}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

if is-macos; then
  for DOTFILE in "$DOTFILES_DIR"/system/.{alias,function,path}.macos; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
  done
fi


# hook for extra/custom stuff
DOTFILES_EXTRA_DIR="$HOME/.extra"

if [ -d "$DOTFILES_EXTRA_DIR" ]; then
  for EXTRAFILE in "$DOTFILES_EXTRA_DIR"/runcom/*.sh; do
    [ -f "$EXTRAFILE" ] && . "$EXTRAFILE"
  done
fi


export DOTFILES_DIR DOTFILES_EXTRA_DIR


# cd autocomplete caseinsensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# set window title to current directory
settitle() { printf "\e]0;$(basename "$PWD")\a" }
chpwd_functions=(settitle)


# history autocompletion
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=0"
