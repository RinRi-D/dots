# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox" 
export LC_CTYPE=ru_RU.UTF-8

fzfcd () {
	cd "$(fd --type d --follow --exclude .git --exclude node_modules | fzf)"
}
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
HISTSIZE=100000
SAVEHIST=100000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rinri/.zshrc'

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	

bindkey -s '^o' 'fzfcd\n'

# End of lines added by compinstall
source ~/src/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# fzf things
export FZF_DEFAULT_COMMAND="fd --color=never --type f --type l --follow --exclude .git --exclude node_modules"
export FZF_DEFAULT_OPTS="--height 50% -1 --reverse --multi --inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
if [ -e /home/rinri/.nix-profile/etc/profile.d/nix.sh ]; then . /home/rinri/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
