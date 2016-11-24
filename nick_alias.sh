# docker aliases
#-------------------
# clean up dangling dingleberry images
alias docker_clean='docker rmi $(docker images -f "dangling=true" -q)'

# git aliases 
#-----------------
alias gp='git add -A && git commit -m "upd" && git push origin master'
