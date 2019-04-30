# vim: nu: tabstop=8: softtabstop=8: shiftwidth=8

function puke {
	local LEVEL=INFO
	local MESG=''
	case "$1" in
		DEBUG|ERROR|FATAL|INFO|WARN)
			LEVEL="$1" && shift
			MESG="$@"
			;;
		*)
			LEVEL=INFO
			MESG="$@"
			;;
	esac
	echo "$LEVEL> $MESG" 1>&2
}
