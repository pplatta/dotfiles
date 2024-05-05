export PS1="\[\033[38;5;230m\]\u\[$(tput sgr0)\]\[\033[38;5;66m\][\[$(tput sgr0)\]\[\033[38;5;73m\]\w]\[$(tput sgr0)\][\A]\[$(tput sgr0)\]\[\033[38;5;121m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\n> \[$(tput sgr0)\]"
source /usr/share/doc/fzf/examples/key-bindings.bash

alias gc='git checkout'
alias gr='git rebase'
alias gss='git status -s'
alias gsu='git status -u'
alias gf='git fetch origin --no-tags'
alias gs='git status'
alias gl='git log'
alias gls='git log -s'
alias glo='git log --oneline'
alias glm='git log --author="Pawel Platta"'
alias gb='git branch --list'
alias gbd='git branch -D'
alias BIOS="cd /c/Source/bios"
alias amend="git add . && git commit --amend --no-edit"
alias gp="git add . && git diff --staged --patch > changes.patch"
alias grs="git reset --soft HEAD^ && git restore --staged ."
alias gcs="git add . && git commit -s --no-edit"
alias gwl='git worktree list'
alias gwa='git worktree add'
alias gcb='/home/pplatta/scripts/create_branch.sh'
alias manifest='python /home/pplatta/scripts/manifest_ui.py'
alias worktreeCreate='python /home/pplatta/scripts/worktree_proj.py'
alias sui='git submodule update --init'
alias grh='git reset --hard'
alias pnt='git pull --no-tags'

alias gccV='sudo update-alternatives --config gcc'
alias clangV='sudo update-alternatives --config clang'
alias n='nvim'
alias lg="lazygit"

### zoxide setup
#export _ZO_DATA_DIR='$HOME/.local/share'
#export _ZO_ECHO='1'
eval "$(zoxide init bash --no-cmd)"
alias cd="__zoxide_z"  #W/A, the default doesn't work for me...
alias zi="__zoxide_zi" #W/A, the default doesn't work for me...
