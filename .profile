function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

BLACK="\[\033[0;30m\]"
BLUE="\[\033[0;34m\]"
VIOLET="\[\033[1;35m\]"
CYAN="\[\033[0;36m\]"

PS1="\n[$CYAN\u:$BLUE\w$VIOLET \$(parse_git_branch)$BLACK]\n\$ "
