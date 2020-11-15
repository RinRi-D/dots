# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



export LC_CTYPE=ru_RU.UTF-8
export EDITOR=nvim
alias ..="cd .."
alias ls="ls --color"
alias ll="ls -l --color"
alias la="ls -a --color"
alias lal="ls -al --color"
alias huion="xsetwacom set 'HUION Huion Tablet Pen stylus' Area 4384 3990 24384 15240"
alias dxyz="ssh root@rinri-d.xyz"
alias mrcon="mcrcon -H rinri-d.xyz -p -t"
alias vim="nvim"
alias minemus="mpv --no-video https://youtu.be/Dg0IjOzopYU"
alias weebcabin="~/scripts/anime.sh"
alias cal="cal -m"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rinri/.zshrc'

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# End of lines added by compinstall
source ~/src/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
if [ -e /home/rinri/.nix-profile/etc/profile.d/nix.sh ]; then . /home/rinri/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
