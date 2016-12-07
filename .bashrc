alias dk='docker'
alias dkc='docker-compose'
alias play='ansible-playbook'

function dk-rm {
  docker rm $(docker ps -f 'status=exited' -q)
}

function dk-rmi {
  docker rmi $(docker images -f 'dangling=true' -q)
}
