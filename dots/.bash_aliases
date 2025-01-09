#!/usr/bin/env bash
. /usr/share/bash-completion/completions/git

alias vi="vim"
alias j="z"
alias ll="ls -laF"
alias la='ls -A'
alias l='ls -CF'
alias g="git"
__git_complete g _git_main
alias gc="git commit"
__git_complete gc _git_commit
alias gco="git checkout"
__git_complete gco _git_checkout
alias gd="git diff"
__git_complete gd _git_diff
alias gs="git status"
__git_complete gs _git_status
alias gss="git status -s"
__git_complete gss _git_status
alias ga="git add"
__git_complete ga _git_add
alias gaa="git add --all"
__git_complete gaa _git_add
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
