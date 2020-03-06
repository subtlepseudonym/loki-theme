# Returns 0 if working directory is a git repo, 1 otherwise
function git_is_repo() {
	$(command git symbolic-ref HEAD 2> /dev/null) || \
	$(command git rev-parse --short HEAD 2> /dev/null) || \
	return 1
}

# Outputs the name of the current branch
#
# Copied with minor modification from
# github.com/robbyrussell/oh-my-zsh@2eb3e9d57cf69f3c2fa557f9047e0a648d80b235
function git_current_branch() {
	local ref
	ref=$(command git symbolic-ref --quiet HEAD 2> /dev/null) || \
		ref=$(command git rev-parse --short HEAD 2> /dev/null)
	local ret=$?
	if [[ $ret != 0 ]]; then
		[[ $ret == 128 ]] && return  # no git repo.
		ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
	fi
	echo "${ref#refs/heads/}"
}

# Checks whether working tree is dirty and outputs apropriate
# prompt variable
func git_working_tree_status() {
	local status
	status=$(command git status --porcelain 2> /dev/null | tail -n1)
	if [ -n $status ]; then
		echo "${PROMPT_GIT_DIRTY}"
	else
		echo "${PROMPT_GIT_CLEAN}"
	fi
}

# Outputs the current tag if one exists
function git_current_tag() {
	local ref
	ref=$(command git describe --tags --abbrev=0 2> /dev/null)
	local ret=$?
	[[ $ret != 0 ]] && return # lazy
	echo $(echo "($ref)" | tr -d "\n")
}

# Outputs the number of commits ahead of the latest tag
function git_commits_ahead_of_tag() {
	local ref
	ref=$(command git describe --tags --long 2> /dev/null)
	local ret=$?
	[[ $ret != 0 ]] && return
	echo $(echo $ref | rev | cut -f 2 -d "-" | rev)
}
