#!/bin/bash
cd ~/environment/coder/
tmux new-session -d -s coder
tmux rename-window coding
tmux split-window -h 
tmux send-keys 'git st; git log --oneline -3' Enter
tmux split-window -v
tmux send-keys './coder' Enter
tmux select-pane -L
tmux new-window -n packaging
tmux split-window -h
tmux send-keys 'git st; git log --oneline -3' Enter
cd ~/environment/coder/
tmux split-window -v
tmux send-keys 'cd ~/rpmbuild' Enter
tmux send-keys 'vim SPECS/coder.spec' Enter
tmux select-pane -L
tmux split-window -v
tmux send-keys 'cd ~/rpmbuild' Enter
tmux send-keys 'ls' Enter
tmux next-window
tmux attach-session -t coder
