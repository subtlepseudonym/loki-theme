# LOKI - custom zsh theme based upon aussiegeek and crunch

# colors referenced below (denoted by _c suffix) can be looked up here:
#  https://misc.flogisoft.com/bash/tip_colors_and_formatting

reset_c="\e[0m"

red_c="$FG{001}"
green_c="$FG{064}"
yellow_c="$FG{178}"
blue_c="$FG{012}"
light_blue_c="$FG{074}"
light_green_c="$FG{107}"

PROMPT_GIT_DIRTY="${red_c}✗"
PROMPT_GIT_CLEAN="${green_c}✔"

time_="${blue_c}"["${green_c}%t${blue_c}"]"%{$reset_c%}"
user_host_dir_="${blue_c}"["${light_blue_c}%n@%m%{$reset_c%}:${light_green_c}%~${blue_c}"]"%{$reset_c%}"
git_=$(git_is_repo || echo " ${green_c}\$(git_current_branch) \$(git_working_tree_status) ${yellow_c}\$(git_current_tag) ${red_c}\$(git_commits_ahead_of_tag)%{$reset_c%}")
PROMPT="${time_} ${user_host_dir_}${git_}
$ "
