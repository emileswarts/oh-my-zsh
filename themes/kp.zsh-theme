# Olive blood Theme by Korpz

if [ "x$OH_MY_ZSH_HG" = "x" ]; then
    OH_MY_ZSH_HG="hg"
fi

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '%{$fg[red]%}±' && return
    echo '%{$fg[red]%}❤ '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'

PROMPT="
%{$FG[028]%}%n%{$reset_color%} %{$FG[64]%}at%{$reset_color%} %{$terminfo[bold]$FG[82]%}$(box_name) %{$reset_color%}%{$FG[191]%}𝛌%{$reset_color%} %{$terminfo[bold]$FG[136]%}in%{$reset_color%} %{$terminfo[bold]$FG[108]%}${current_dir}%{$reset_color%}${parse_special}${git_info} %{$FG[160]%}
$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[196]%}on%{$reset_color%} %{$fg[196]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[196]%} ✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ✔"

local return_status=""
RPROMPT='${return_status}%{$reset_color%}'
