autoload colors && colors

setopt prompt_subst
autoload -U promptinit
promptinit

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo " ($(git_branch))"
    else
      echo " (%{$fg_bold[red]%}$(git_branch)%{$reset_color%})"
    fi
  fi
}

is_git() {
	git status -s &> /dev/null
}

is_home() {
	[ "$(pwd)" = $HOME ]
}

dir_info() {
	if is_home
	then
		echo -n "~" 
	elif is_git
	then
		echo -n "$(basename $(git rev-parse --show-toplevel))/$(git rev-parse --show-prefix)" | sed 's/\/$//' 
	else
		echo -n $(basename "$(pwd)")
	fi
}

PROMPT='%F{cyan}$(dir_info)%f$(git_dirty) %(?.%F{magenta}.%F{red})❯%f '
