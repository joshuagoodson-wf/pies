#!/bin/bash


OPTIND=1

config=""

while getopts "c:" opt; do
	case "$opt" in
	c)  config=$OPTARG
		;;
	esac
done

shift $((OPTIND-1))

[ "$1" = "--" ] && shift

echo "config=$config, Leftovers: $@"

yes
