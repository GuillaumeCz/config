Source: https://thevaluable.dev/tmux-config-mouseless/

A window is composed of 1* sessions.
A session is composed of 1* panes.

- List existing sessions: `tmux list-sessions`
- Attach to existing session: `tmux attach-session -t <sessionNbr | sessionName>`
- Create a new session named "hello": `tmux create-session -s hello`
- Kill the "hello" session: `tmux kill-session -t hello`
- Kill all the existing sessions: `tmux kill-server` 

Increase / decrease the size of the current pane: `prefix key + arrow key`

Change the window: `prefix key + <number>`

Activate copy mode: `prefix key + [`
Navigate with vim keys. Select with `v` and copy with `y`.

