# LOKI - custom zsh theme based upon aussiegeek and crunch

# colors referenced below (denoted by _c suffix) can be looked up here:
#  https://misc.flogisoft.com/bash/tip_colors_and_formatting

reset_c="\e[0m"
brace_c="$FG[012]"
time_c="$FG[064]"
userhost_c="$FG[074]"
dir_c="$FG[107]"
git_branch_c="$FG[064]"
git_tag_c="$FG[178]"
git_ahead_c="$FG[001]"
git_clean_c="$FG[064]"
git_dirty_c="$FG[001]"

ZSH_THEME_GIT_PROMPT_PREFIX="${git_branch_c}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" ${git_clean_c}✔"
ZSH_THEME_GIT_PROMPT_DIRTY=" ${git_dirty_c}✗"

time_="${brace_c}"["${time_c}%t${brace_c}"]"%{$reset_color%}"
user_host_dir_="${brace_c}"["${userhost_c}%n@%m%{$reset_color%}:${dir_c}%~${brace_c}"]"%{$reset_color%}"
git_="\$(git_prompt_info) ${git_tag_c}\$(git_current_tag) ${git_ahead_c}\$(git_commits_ahead_of_tag)%{$reset_color%}"
PROMPT="${time_} ${user_host_dir_} ${git_}
$ "
