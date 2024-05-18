# tmux-script-for-laravel
Source code for the script shown in the video https://youtu.be/hQW4Qbu2WN8


In this script:

We create a new tmux session named `my_services`.
We split the window into four panes.
We send the appropriate commands to each pane to start each service.
The `-d` flag starts the tmux session detached, which means it will run in the background.
The `send-keys` command simulates typing into the tmux pane and `C-m` simulates pressing Enter. (C-m is equivalent to Control+M)
At the end of the script, we attach to the session, bringing it to the foreground so you can interact with it.
Make the Script Executable Run `chmod +x start_services_tmux.sh` to make your script executable.

Run Your Script Execute the script with `./start_services_tmux.sh` to start your services within a tmux environment.

With this setup, you can press `Ctrl+b` then use the arrow keys to navigate between panes. To detach and leave everything running in the background, press `Ctrl+b` then `d`. To reattach to your session, use `tmux attach -t my_services`.

Before running the script, make sure that all the commands you want to use can be run interactively without requiring additional input or environment setup, as that could cause them to hang waiting for user input.

For more advanced tmux configurations, you can customize your setup with a `.tmux.conf` file or modify the script further to handle sessions and windows in a way that fits your workflow. The tmux manual (accessible with man tmux) is a great resource for learning more about tmux and its capabilities.
