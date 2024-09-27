# ================================
# Powerlevel10k Instant Prompt
# ================================
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ================================
# Oh My Zsh Configuration
# ================================

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set the theme to Powerlevel10k.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Enable plugins.
plugins=(
  alias-finder
  aliases
  docker
  docker-compose
  git
  laravel-sail
  nvm
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Load Oh My Zsh.
source "$ZSH/oh-my-zsh.sh"

# Zstyle config
zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' longer yes
zstyle ':omz:plugins:alias-finder' exact yes
zstyle ':omz:plugins:alias-finder' cheaper yes
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# ================================
# Powerlevel10k Configuration
# ================================
# Load Powerlevel10k configuration if it exists.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# ===============================
# Android & Java
# ===============================
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools


# ================================
# PNPM Configuration
# ================================
export PNPM_HOME="/Users/anstapol/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


# ================================
# Custom Alises
# ================================
# Network
alias ip='dig @resolver4.opendns.com myip.opendns.com +short'
alias ip6='dig @resolver1.ipv6-sandbox.opendns.com AAAA myip.opendns.com +short -6'

