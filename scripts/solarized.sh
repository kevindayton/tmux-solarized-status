# Define Solarized Theme colors
tmux_solarized_dark_base03="#002b36"
tmux_solarized_dark_base02="#073642"
tmux_solarized_dark_base01="#586e75"
tmux_solarized_dark_base00="#657b83"
tmux_solarized_dark_base0="#839496"
tmux_solarized_dark_base1="#93a1a1"
tmux_solarized_dark_base2="#eee8d5"
tmux_solarized_dark_base3="#fdf6e3"
tmux_solarized_dark_yellow="#b58900"
tmux_solarized_dark_orange="#cb4b16"
tmux_solarized_dark_red="#d30102"
tmux_solarized_dark_magenta="#d33682"
tmux_solarized_dark_violet="#6c71c4"
tmux_solarized_dark_blue="#268bd2"
tmux_solarized_dark_cyan="#2aa198"
tmux_solarized_dark_green="#859900"

# Define Icons
tmux_solarized_icon_user=""
tmux_solarized_icon_left_ending=""
tmux_solarized_icon_right_ending=""
tmux_solarized_icon_tmux=""
tmux_solarized_icon_application="󰣆"
tmux_solarized_icon_narrow_ending_right=""
arrow_up=""

# Status bar colors.
tmux set-window-option -g status-style fg=$tmux_solarized_dark_yellow,bg=$tmux_solarized_dark_base02,none

# Window list colors.
tmux set-window-option -g window-status-style fg=$tmux_solarized_dark_base3,bg=$tmux_solarized_dark_base03,none
tmux set-window-option -g window-status-current-style fg=$tmux_solarized_dark_base3,bg=$tmux_solarized_dark_cyan,bold
tmux set-window-option -g window-status-activity-style fg=$tmux_solarized_dark_base3,bg=$tmux_solarized_dark_yellow,none

# Pane divider colors.
tmux set-option -g pane-border-style fg=$tmux_solarized_dark_base01,bg=default
tmux set-option -g pane-active-border-style fg=$tmux_solarized_dark_yellow,bg=default

# Command-line messages colors.
tmux set-option message-style fg=$tmux_solarized_dark_base03,bg=$tmux_solarized_dark_blue

# Set left and right sections.
tmux set-option -g status-left-length 80
tmux set-option -g status-left "#[bg=$tmux_solarized_dark_orange, fg=$tmux_solarized_dark_base02] #{window_panes} #[fg=$tmux_solarized_dark_orange,bg=$tmux_solarized_dark_base1]$tmux_solarized_icon_right_ending#[bg=$tmux_solarized_dark_base1,fg=$tmux_solarized_dark_base03] #S \
#[bg=$tmux_solarized_dark_base02, fg=$tmux_solarized_dark_base1]$tmux_solarized_icon_right_ending"

tmux set-option -g status-right-length 240
tmux set-option -g status-right " \
#[bg=$tmux_solarized_dark_base02, fg=$tmux_solarized_dark_base1]#[bg=$tmux_solarized_dark_base02, fg=$tmux_solarized_dark_base1]󰻠 #{cpu_percentage} $tmux_solarized_icon_narrow_ending_right $arrow_up #{uptime} \
#[bg=$tmux_solarized_dark_base1, fg=$tmux_solarized_dark_base02]$tmux_solarized_icon_right_ending #[bg=$tmux_solarized_dark_base1, fg=$tmux_solarized_dark_base02] %d %b %Y #[bg=$tmux_solarized_dark_yellow, fg=$tmux_solarized_dark_base1]$tmux_solarized_icon_right_ending #[bg=$tmux_solarized_dark_yellow, fg=$tmux_solarized_dark_base02] %I:%M %p \
#[bg=$tmux_solarized_dark_yellow,fg=$tmux_solarized_dark_orange]$tmux_solarized_icon_left_ending#[bg=$tmux_solarized_dark_orange,fg=$tmux_solarized_dark_base03] $tmux_solarized_icon_user #(whoami) "

# Set format of items in window list.
tmux setw -g window-status-format "\
#[bg=$tmux_solarized_dark_base02,fg=$tmux_solarized_dark_base01]$tmux_solarized_icon_left_ending#[bg=$tmux_solarized_dark_base01,fg=$tmux_solarized_dark_base2] $tmux_solarized_icon_tmux #I $tmux_solarized_icon_application #W#F \
#[bg=$tmux_solarized_dark_base02,fg=$tmux_solarized_dark_base01]$tmux_solarized_icon_right_ending"

tmux setw -g window-status-current-format "\
#[bg=$tmux_solarized_dark_base02,fg=$tmux_solarized_dark_blue]$tmux_solarized_icon_left_ending#[bg=$tmux_solarized_dark_blue,fg=$tmux_solarized_dark_base03] $tmux_solarized_icon_tmux #I $tmux_solarized_icon_application #W#F \
#[bg=$tmux_solarized_dark_base02,fg=$tmux_solarized_dark_blue]$tmux_solarized_icon_right_ending"

# Set alignment of windows list.
tmux set-option -g status-justify centre

# Identify activity in non-current windows.
tmux set-window-option -g monitor-activity on
tmux set-option -g visual-activity on
