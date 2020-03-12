# LOKI 16-bit color - custom zsh theme based upon aussiegeek and crunch for 16-bit color terminals

# colors referenced below (denoted by _c suffix) can be looked up here:
#  https://misc.flogisoft.com/bash/tip_colors_and_formatting

reset_c="%{$reset_color%}"
brace_c="$FG[008]"
time_c="$FG[002]"
userhost_c="$FG[006]"
dir_c="$FG[010]"
git_branch_c="$FG[002]"
git_tag_c="$FG[011]"
git_ahead_c="$FG[001]"
git_clean_c="$FG[002]"
git_dirty_c="$FG[001]"

ZSH_THEME_GIT_PROMPT_PREFIX="${git_branch_c}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" ${git_clean_c}✓" 
ZSH_THEME_GIT_PROMPT_DIRTY=" ${git_dirty_c}✗"

time_="${brace_c}"["${time_c}%t${brace_c}"]"${reset_c}"
user_host_dir_="${brace_c}"["${userhost_c}%n@%m${reset_c}:${dir_c}%~${brace_c}"]"${reset_c}"
git_="\$(git_prompt_info) ${git_tag_c}\$(git_current_tag) ${git_ahead_c}\$(git_commits_ahead_of_tag)${reset_c}"
PROMPT="${time_} ${user_host_dir_} ${git_}
$ "
