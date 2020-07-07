alias play='ansible-playbook'

alias dk='docker'
alias dkc='docker-compose'

function dk-rm {
  docker rm $(docker ps -f 'status=exited' -q)
}

function dk-rmi {
  docker rmi $(docker images -f 'dangling=true' -q)
}

function dk-rmv {
  docker volume rm $(docker volume -f 'dangling=true' -q)
}
