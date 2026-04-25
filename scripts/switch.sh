#!/usr/bin/env bash

if ! command -v fzf &>/dev/null; then
  tmux display-message "tmux-switcher: fzf not found"
  exit 1
fi

tmux display-popup -E "\
    tmux list-sessions -F '#{session_name}' | while read session; do \
        echo \"\$session\"; \
        tmux list-windows -t \"\$session\" -F '  → #{window_index} #{window_name}\t#{session_name}:#{window_index}'; \
    done | \
    fzf --reverse --header jump-to-window --delimiter '\t' --with-nth 1 --preview 'tmux capture-pane -pt \$(echo {} | cut -f2)' |\
    cut -f2 |\
    xargs tmux switch-client -t"
