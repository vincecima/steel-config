# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "financial"

# Split window into panes.
split_v 50

run_cmd "watch -t hledger networth" 0
send_keys "hledger add" 1

# Set active pane.
select_pane 1
