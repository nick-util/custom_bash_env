# docker aliases
#-------------------
# clean up dangling dingleberry images
alias docker_clean='docker rmi $(docker images -f "dangling=true" -q)'

# git aliases 
#-----------------
alias gp='git add -A && git commit -m "upd" && git push origin master'


# get ssh finger print for an AWS pem file!
# This is useful for testing to see if your key matches the one stored up in AWS!
#------------------
function aws_1 () {
        openssl pkcs8 -in "$1" -inform PEM -outform DER -topk8 -nocrypt | openssl sha1 -c
}
alias aws_pem_fingerprint=aws_1



alias alias_test='echo "test alias"'
echo "Alias File Loaded"
