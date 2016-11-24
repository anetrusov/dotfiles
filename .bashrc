alias dk='docker'
alias dkc='docker-compose'
alias play='ansible-playbook'

function dk-rm {
  docker ps -a | \egrep -v 'Up|CONTAINER' | awk '{print $1}' | xargs docker rm
}

function dk-rmi {
  docker images | \grep '<none>' | awk '{print $3}' | xargs docker rmi
}
