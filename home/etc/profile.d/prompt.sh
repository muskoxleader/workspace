# vim: nu: tabstop=8: softtabstop=8: shiftwidth=8

# Prompt command
__gen_ps1() {

	# Store previous exit code. This has to come first.
	local EC="$?"

	# Define colors used
	local RED="\[\033[00;31m\]"
	local GRN="\[\033[00;32m\]"
	local MAG="\[\033[00;35m\]"
	local WHT="\[\033[00m\]"

	# Colorize previous exit code
	if [ "$EC" != '0' ]; then
		EC="$RED$EC$WHT"
	else
		EC="$GRN$EC$WHT"
	fi  

	# Colorize current path
	local CP="$MAG\w$WHT"

	# Get git status for current path if git-prompt.sh has been executed
	if [ -n "$(set | grep ^__git_ps1)" ]; then
		local GS="$(__git_ps1 "[%s]")"
	fi

	# Get timestamp
	local TS="$MAG\t$WHT"

	# Get user and hostname
	local UH="$PS1_UH_COLOR\u@\h$WHT"

	# Set PS1 if PS1 is not an empty string.
	if [ -n "$PS1" ]; then
		PS1="$TS[$UH]$GS:$CP\n[$EC]\\$ "
	fi  
}
