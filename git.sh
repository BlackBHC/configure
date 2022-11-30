########## Git(Hub) Commands Alias
#
git config --global color.ui true
git config --global init.defaultBranch main
#
### Ordinary submit
#
git config --global alias.co checkout
git config --global alias.ci "commit -m"
#
### Track back
#
git config --global alias.back "reset HEAD^"
#
### Git log
#
git config --global alias.last "log -1"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.di "diff HEAD --"
#
### Branch organize
#
git config --global alias.br branch
git config --global alias.sw switch
git config --global alias.me merge
git config --global alias.dbr "branch -d"
#
### Remote reponsitories organize
# 

