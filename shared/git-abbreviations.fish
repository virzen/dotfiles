#=== git ===#
abbr --add gs 'git status --short'
abbr --add gsl 'git status'

abbr --add ga 'git add'
abbr --add gaa 'git add --all'
abbr --add gap 'git add --patch'
abbr --add gaN 'git add -N'
abbr --add gaNa 'git add -N .'

abbr --add gc 'git commit --verbose'
abbr --add gcm 'git commit --verbose -m'
abbr --add gc! 'git commit --verbose --amend'
abbr --add gca 'git commit --verbose --amend'
abbr --add gcnv 'git commit --no-verify'
abbr --add gcae 'git commit --allow-empty'

abbr --add gr 'git reset'
abbr --add grp 'git reset --patch'
abbr --add grs 'git reset --soft'
abbr --add grh 'git reset --hard'

abbr --add gu 'git undo'

abbr --add gbs 'git bisect'

abbr --add gl 'git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'

abbr --add gco 'git checkout'
abbr --add gcob 'git checkout -b'
abbr --add gcom 'git checkout master'
abbr --add gcor 'git checkout redesign'

abbr --add gb 'git branch'
abbr --add gbd 'git branch -d'
abbr --add gbD 'git branch -D'

abbr --add gd 'git diff'
abbr --add gds 'git diff --staged'

abbr --add gsh 'git show'

abbr --add gst 'git stash save'
abbr --add gstu 'git stash save -u'
abbr --add gstki 'git stash save --keep-index'
abbr --add gstuki 'git stash save -u --keep-index'
abbr --add gsta 'git stash apply'
abbr --add gstd 'git stash drop'
abbr --add gstp 'git stash pop'
abbr --add gstl 'git stash list'
abbr --add gstsh 'git stash show -p'

abbr --add gf 'git fetch'

abbr --add gpl 'git pull'

abbr --add gps 'git push'
abbr --add gpsnv 'git push --no-verify'
abbr --add gpsf 'git push --force-with-lease'

abbr --add grb 'git rebase'
abbr --add grba 'git rebase --abort'
abbr --add grbc 'git rebase --continue'
abbr --add grbs 'git rebase --skip'
abbr --add grbi 'git rebase --interactive'
abbr --add grbicb 'git rebase -i `git merge-base HEAD master`'

abbr --add gm 'git merge'

abbr --add gcl 'git clone'
