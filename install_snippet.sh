#!/bin/bash
# vim: nu: tabstop=8: softtabstop=8: shiftwidth=8
set -e
. ./home/etc/profile.d/puke.sh

append_snippet() {
	local SOURCE=$1
	local TARGET=$2
	puke appending snippet to end of $TARGET
	gsed -i "\$r $SOURCE" $TARGET
}

install_snippet() {
	local SOURCE=$1
	local TARGET=$2
	if [ ! -f $TARGET ]; then
		puke $TARGET does not exist, creating it
		echo > $TARGET
	fi
	if [ -z "$(grep '### BEGIN INSERT' $TARGET)" ]; then
		append_snippet $SOURCE $TARGET
	else
		update_snippet '### BEGIN INSERT.*### END INSERT' $SOURCE $TARGET
	fi
}

update_snippet() {
	local PATTERN=$1
	local SOURCE=$2
	local TARGET=$3
	puke updating $TARGET snippet
	gsed -i "/$PATTERN/{
			s/$PATTERN//
			r $SOURCE
		}" $TARGET
}

install_snippet $@
