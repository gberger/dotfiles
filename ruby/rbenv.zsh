# init according to man page
if (( $+commands[rbenv] ))
then
  eval "$(rbenv init - zsh --no-rehash)"
fi
