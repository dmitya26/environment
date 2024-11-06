# aliases
alias python="python3"
alias ls="ls -a"
alias ll="ls -alFh"

# cmdline funcs
e() {
        if [ -e "$@" ]; then
                echo "found :)"
        else
                echo "not found :("
        fi
}


# helper funcs
function git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ' %F{009}('$branch')%F{104}'
  fi
}

function reset_zshrc () {
  if [[ $PWD == $HOME ]]; then
    source ~/.zshrc
  else
    source ~/.zshrc
  fi
}

chpwd_functions+=(reset_zshrc)

#user_val=$(sed 's#.*/##' <<< $(pwd))
PS1="%F{104}${USERNAME}@${HOST} $(basename "$PWD")$(git_branch_name) λ %F{white}"

# opam configuration
[[ ! -r /Users/$USER/.opam/opam-init/init.zsh ]] || source /Users/$USER/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
