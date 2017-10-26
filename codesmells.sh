#! /bin/bash
# a script that will use the command line arguments to navigate the directory structure and output the relevant information

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$1" = "" ] || [ "$1" = "--help" ]
then
  cat $DIR/.help
  exit 0
fi

test -d $DIR/$1 && 
	test -d $DIR/$1/$2 &&
		cat $DIR/$1/$2/.help &&
		exit 0
	cat $DIR/$1/.help && 
	exit 0
exit 1
