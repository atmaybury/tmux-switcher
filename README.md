# tmux-session-switcher

Fuzzy session and window switcher for tmux using fzf.

## Features

- Switch between tmux sessions (excludes current session)
- Switch between windows across all sessions
- Live preview of session/window content
- Popup interface

## Requirements

- tmux 3.2+
- fzf

## Installation

### Via TPM

Add to `~/.tmux.conf`:

```
set -g @plugin 'atmaybury/tmux-switcher'
```

Press `prefix + I` to install.

### Manual

Clone the repo and source in `~/.tmux.conf`:

```
run-shell ~/path/to/tmux-session-switcher/plugin.tmux
```

## Usage

| Key | Action |
|-----|--------|
| `f` | Open session/window switcher |
