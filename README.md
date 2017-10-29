This puts all the codesmelling information you need right at your fingertips.

# Installation Instructions

## With Root Permissions
- clone the repo
- change directory into the root directory of the repository
- `sudo ./install.sh`

## Without Root Permissions
- clone the repo
- add an alias into your ~/.bashrc or ~/.zshrc for `codesmells=<path-to-source>/codesmells.sh`

Now you have a cheat sheet for many code smells right at your fingertips. No internet required!

usage:

`codesmells`

`codesmells bloaters`

`codesmells bloaters primitive-obsession`

if you already know the name of the smell you can shortcut the category:

`codesmells primitive-obsession`

codesmells has a discoverable CLI - so just run `codesmells` and go from there
I am sourcing all of my information from https://sourcemaking.com/refactoring - the information there is richer so go ahead and check it out. Command line does have limitations after all ;)
