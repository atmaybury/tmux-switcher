CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
tmux bind-key f run-shell "$CURRENT_DIR/scripts/switch.sh"
