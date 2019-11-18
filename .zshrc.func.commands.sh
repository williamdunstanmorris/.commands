function ecomm () {
  open -a "Atom" ~/.commands/.commands.sh
}

function enawk () {
  open -a "Atom" ~/.commands/.awkref.awk
}

function ncomm () {
  # readonly command=${1:?"Command must be specified."}

  for i
  do printf "$i\n" >> ~/.commands/.commands.sh
  done

  printf "\n" >> ~/.commands/.commands.sh
  # printf "$command\n" >> ~/.commands/commands.sh
}

function nawk () {
  # readonly command=${1:?"Command must be specified."}

  for i
  do printf "$i\n" >> ~/.commands/.awkref.awk
  done

  printf "\n" >> ~/.commands/.awkref.awk
  # printf "$command\n" >> ~/.commands/commands.sh
}

function ccomm () {
  cat ~/.commands/.commands.sh
}

function vimcom () {
  cat ~/.commands/.vim_cheats.md
}

function awkref() {
  cat ~/.commands/.awkref.awk
}
