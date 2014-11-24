# Git Cheatsheet

## Status, Tags, Brances and Remote
* <code>git remote -v</code> Get information for the remote
* <code>git branch -a</code> Get branches information
* <code>git tag -l</code> Get tags information
* <code>git push origin --delete [branch]</code> Remove a branch from remote
* <code>git remote -D [branch]</code> Remove local branch

## Status and history
* <code>git status -s -b -unormal</code> Get git status
* <code>git log --color --graph --abbrev-commit --</code> Get branch commit and flow history
* <code>git log --graph --max-count=10</code>Get flow of the last 10 commits

## Stash
* <code>git stash save "snapshot: $(date)"</code>Save snapshot
* <code>git stash save "snapshot: $(date)" && git stash apply 'stash@{0}</code> Save snapshot and reapply it
* <code>git stash list --grep snapshot</code> List all snapshots

# Commit
* <code>git cherry-pick -x</code> Cherry pick

## Clean, undo and correct
* <code>git clean -dfx</code> Clean all untracked files
* <code>git reset HEAD</code> Clean staged files
* <code>git reset --hard HEAD</code> Clean and discard all stagged files
* <code>git reset --soft HEAD^</code> Undo last commit
* <code>git push -f origin HEAD^:master</code> Undo last commit
* <code>git commit --amend</code> Amend last commit comment

## Diff
* <code>git diff --color --color-words --abbrev</code> Diff current files
* <code>git diff HEAD^</code> Diff last commit

## Search
* <code>git grep -I</code> Grep git controlled files

## Stats
* <code>git shortlog --numbered --summary --email --no-merges --since='3 months'</code> Get rank of committers for the last 3 months
* <code>git shortlog -sn</code>Get rank of committer since the beggining of the project
