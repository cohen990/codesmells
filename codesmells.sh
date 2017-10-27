#! /bin/bash
# a script that will use the command line arguments to navigate the directory structure and output the relevant information

get_DIR(){
  if [ -L "$0" ]
  then
    DIR="$( dirname "$(readlink -f "$0")")"
  else
    dir="$( cd "$( dirname "${bash_source[0]}" )" && pwd )"
  fi
  echo $DIR
}

print_help_if_asked_for_help() {
  help_directory=$1
  help_command=$2
  if [ "$2" = "--help" ]
  then
    cat $help_directory/.help
    exit 0
  fi
}

fail_if_invalid_arguments() {
  if [ ! -d $1 ]
  then
    echo "invalid arguments try 'codesmells --help'"
    exit 1
  fi
}

print_help_if_requires_more_arguments() {
  PARENT_DIRECTORY=$1
  CHILD_DIRECTORY=$2
  if [ "$CHILD_DIRECTORY" = "" ] 
  then
    cat $PARENT_DIRECTORY/.help
    exit 0
  fi
}

output_description() {
  cat $1
}

get_DIR

print_help_if_asked_for_help $DIR $1
print_help_if_asked_for_help $DIR/$1 $2

fail_if_invalid_arguments $DIR/$1
fail_if_invalid_arguments $DIR/$1/$2

print_help_if_requires_more_arguments $DIR $1
print_help_if_requires_more_arguments $DIR/$1 $2

output_description $DIR/$1/$2/description.md
exit 0
