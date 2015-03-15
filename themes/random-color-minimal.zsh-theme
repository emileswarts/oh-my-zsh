function prompt_char {
    echo '%{$fg[red]%}❤ '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

local current_dir='${PWD/#$HOME/~}'

PROMPT="
%{$FG[166]%}%n%{$reset_color%} %{$FG[64]%}at%{$reset_color%} %{$terminfo[bold]$FG[82]%}$(box_name) %{$reset_color%}%{$FG[191]%}𝛌%{$reset_color%} %{$terminfo[bold]$FG[136]%}in%{$reset_color%} %{$terminfo[bold]$FG[108]%}${current_dir}%{$reset_color%}
$(prompt_char) "

local return_status=""
RPROMPT='${return_status}%{$reset_color%}'
