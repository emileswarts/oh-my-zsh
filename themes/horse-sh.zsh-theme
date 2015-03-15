function box { [ -f ~/.box-name ] && cat ~/.box-name || hostname -s }

function current_time { date +'%T' }

local reset="%{$reset_color%}"

local at="%{$FG[64]%}at$reset"

local star="%{$fg[red]%}★ $reset"

local horse="%{$FG[238]%}♞ $reset"

local box="%{$terminfo[bold]$FG[173]%}$(box) $reset"

local in="%{$terminfo[bold]$FG[136]%}in$reset"

local user="%{$FG[166]%}%n$reset"

local return_status=""

local pwd='${PWD/#$HOME/~}'

local current_directory="%{$terminfo[bold]$FG[216]%}$pwd$reset"

local current_date="%{$FG[131]%}$(current_time) $reset"

PROMPT="
$user $at $box$star $current_date$in $current_directory
$horse "

RPROMPT='${return_status}$reset'
