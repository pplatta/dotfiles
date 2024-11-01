export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/scripts
export PS1="\[\033[38;5;230m\]\u\[$(tput sgr0)\]\[\033[38;5;66m\][\[$(tput sgr0)\]\[\033[38;5;73m\]\w]\[$(tput sgr0)\][\A]\[$(tput sgr0)\]\[\033[38;5;121m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\n> \[$(tput sgr0)\]"
export EDITOR="nvim"

####### FZF config #######
source /usr/share/doc/fzf/examples/key-bindings.bash
# Append to the history file, don't overwrite it
shopt -s histappend
# Write the history to disk after each command
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# Increase history file size
HISTFILESIZE=10000
HISTSIZE=10000

####### ALIASES #######
alias gc='git checkout'
alias gr='git rebase'
alias gss='git status -s'
alias gsu='git status -u'
alias gst='git stash -u'
alias gstp='git stash pop'
alias gsta='git stash apply'
alias gf='git fetch origin --no-tags --prune'
alias gs='git status'
alias gl='git log'
alias gls='git log -s'
alias glo='git log --oneline'
alias glm='git log --author="Pawel Platta"'
alias gb='git branch --list'
alias gbd='git branch -D'
alias amend="git add . && git commit --amend --no-edit"
alias gp="git add . && git diff --staged --patch > changes.patch"
alias grs="git reset --soft HEAD^ && git restore --staged ."
alias gcs="git add . && git commit -s --no-edit"
alias gwl='git worktree list'
alias gwa='git worktree add'
alias sui='git submodule update --init'
alias grh='git reset --hard'
alias pnt='git pull --no-tags'
alias tmp='git add . && git commit -m "Tmp"'
alias lg='nvim -c "call timer_start(100, {->execute(\"normal 1 gg\")})"'
alias lazygit='lazygit'
alias n='nvim'
alias sp='source ~/.bash_profile'
alias gccV='sudo update-alternatives --config gcc'
alias clangV='sudo update-alternatives --config clang'
alias so='source ~/.bash_profile'
alias ls="exa"

####### ZOXIDE #######
#export _ZO_DATA_DIR='$HOME/.local/share'
#export _ZO_ECHO='1'
eval "$(zoxide init bash --no-cmd)"
alias cd="__zoxide_z"  #W/A, the default doesn't work for me...
alias zi="__zoxide_zi" #W/A, the default doesn't work for me...

if [ -f ~/.bash_profile_machine ]; then
	source ~/.bash_profile_machine
fi
