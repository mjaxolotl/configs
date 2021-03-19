# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin/usr/local/sbin:$PATH

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Aliases
alias k="kubectl"
alias kx="kubectx"
alias exp-k="export GOOGLE_APPLICATION_CREDENTIALS=account.json"
alias cat="ccat"
alias tcd="~/JOB/TRYB/"
alias bcd="~/JOB/BAYC"
alias ccd="~/JOB/BAYC"
alias vi="nvim"
alias tfmd="terraform-docs markdown . > README.md"
alias pych="open -a PyCharm\ CE"
alias atom="open -a Atom"

# Kubernetes
zplugin light jonmosco/kube-ps1
PROMPT='$(kube_ps1)'$PROMPT

#export KUBE_PS1_SYMBOL_USE_IMG=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/mjmax/.oh-my-zsh"
export GROOVY_HOME=/usr/local/opt/groovy/libexec
#source <(kubectl completion zsh)

# Path to password
export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass.txt
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"

ZSH_THEME="agnoster"
USER=""

# PyEnv
eval "$(pyenv init -)"

plugins=(
  tmux
  pip
  python
  git 
  brew 
  vim-interaction
  iterm2 
  common-aliases 
  osx 
  kubectl 
  helm
  terraform
  ssh-agent
  docker
  vagrant
  kube-ps1
)

# source
source $ZSH/oh-my-zsh.sh
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mjmax/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mjmax/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mjmax/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mjmax/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
