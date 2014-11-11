#!/usr/bin/env zsh

session=${1:-${USER}}

if tmux has-session -t ${session} &>/dev/null
then
    tmux attach-session -t ${session}
else
    tmux new-session -s ${session}
fi
