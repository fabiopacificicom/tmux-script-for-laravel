#!/bin/bash

# Start a new tmux session
tmux new-session -d -s my_services

# Split the window into four panes
tmux split-window -h
tmux split-window -v
tmux select-pane -t 0
tmux split-window -v

# Start the Laravel server in the first pane
tmux send-keys -t my_services:0.0 'php artisan serve' C-m

# Start the Laravel queue worker in the second pane
tmux send-keys -t my_services:0.1 'php artisan queue:work' C-m

# Start the Ollama server in the third pane
tmux send-keys -t my_services:0.2 'ollama serve' C-m

# Start the Vite asset bundling in the fourth pane
tmux send-keys -t my_services:0.3 'npm run dev' C-m

# Attach to the tmux session
tmux attach -t my_services
