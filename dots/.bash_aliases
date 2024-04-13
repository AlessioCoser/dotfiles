#!/usr/bin/env bash
alias ll="ls -laF"
alias la='ls -A'
alias l='ls -CF'
alias g="git"
alias gc="git commit"
alias gd="git diff"
alias gst="git status"
alias gss="git status -s"
alias ga="git add"
alias gaa="git add --all"
alias doc="docker"
alias doco="docker compose"
alias dops="docker ps --format \"table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}\" $@"
alias docker-clean="docker ps -aqf status=exited|xargs docker rm; docker images -qf dangling=true|xargs docker rmi"
alias http-server="python -m http.server"
alias listen="lsof -w -n -i $1"

function jekyll () {
	mkdir -p "$PWD/vendor/bundle"
	docker run \
		--platform linux/amd64 \
		--volume="$PWD:/srv/jekyll" \
		--volume="$PWD/vendor/bundle:/usr/local/bundle" \
	       	--env "JEKYLL_GID=$GID" \
		--env "JEKYLL_UID=$UID" \
		-p "4000:4000" \
		-it "jekyll/jekyll:4" \
		jekyll $@
}

function subdir () {
  reset="\033[0m"
  red="\033[01;31m"
  cyan="\033[01;36m"

  if [[ $# -eq 0 ]]; then
    echo "${red}There is no command to run on each subdir${red}"
  else
    ls -d */ | xargs -n1 bash -c 'cd $0; echo -e "'"${reset}${cyan}"'-------------------------\n--- '"$(echo "$@")"' (in $0)\n-------------------------'"${cyan}${reset}"'";'"$(echo "$@")"';echo -e "\n"'
  fi
}
