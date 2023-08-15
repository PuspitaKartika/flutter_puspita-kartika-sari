Versioning adalah mengatur versi dari source code program. 

Tools : 
- Version Control System (VCS)
- Source Code Manager (SCM)
- Revision Control System (RCS)

GIT adalah salah satu version control system populer yang digunakan para developer untuk mengembangkan software secara bersama-sama. 

Install git for linux :
$ sudo apt-get update
$ sudo apt-get install git

cek versi git :
$ git --version

Set up git
1. git config
   $ git config --global user.name "your name"
   $ git config --global user.email "your email"
   
2. Start with init
   $ git init
   $ git remote add <remote_name> <remote_repo_url>
   $ git push -u <remote_name> <local_branch_name>
   
3. Start with existing project, start working on the project
   $ git clone ssh://john@example.com/path/to/my-project.git
   $ cd my-project
   
The Staging Area
- Working directory 
   |
   | -> (git add)
   |
- Staging area
   |
   | -> (git commit)
   |
- repository 

Git status, add, commit
  $ git status 
    
  $ git add <directory> (menambahkan 1 folder)
  $ git add hello.py (menambahkan 1 file)
  $ git add . (untuk semuanya)
  
  $ git sommit -m "add config file"
  

Commit message
Harus detail, if applied, this commit will your subject line here
ex : if applied, this commit will refactor subsystem X for readability

GIT DIFF & STASH
# git diff berfungsi untuk melihat perubahan file, 
# change file
#add staging area
$ git diff --staged

#stashing your work
$ git stash

#re-applying your stashed changes
$ git stash apply



== INSPECTING REPOSITORY ==
GIT LOG, CHECKOUT
# viewing an old revision
  $ git log --oneline

# pindah commit kita bisa pakai checkout
# b7119f2 Continuedoing crazy things
# 872fa7e Try something crazy
# a1e8fb5 Make some important changes to hello.txt
  $ git checkout a1e8fb5

GIT RESET
--soft (uncommit changes, changes are left staged(index))
--hard (uncommit + unstage + delete changes, nothing left)

ex : 
# view an old revision
$ git log --oneline

# b7119f2 Continuedoing crazy things
# 872fa7e Try something crazy
# a1e8fb5 Make some important changes to hello.txt
  $ git reset a1e8fb5 --soft
  
SYNCING
GIT PUSH, FETCH, & PULL
# git remote
$ git remote -v
$ git remote add origin http://dev.example.com/john.git

#fect and pull
$ git fect
$ git pull origin master

# push 
$ git push origin master
$ git push origin feature/login-user

BRANCHES (percabangan)
git branching
ex :
# show all branch
$ git branch --list

# create a new branch called <branch>
$ git branch <branch>

# force delete the specified branch
$ git branch -D <branch>

#list remote branch
$ git branch -a

git merge
ex : 
# Strat a new feature
$ git checkout -b new-feature master
# Edit some files
$ git add <file>
$ git commit -m "Start a feature"
# Edit some files
$ git add <file>
$ git commit -m "Finish a feature"
# Merge in the new-feature branch
$ git checkout master
$ git merge new-feature
$ git branch -d new-feature

PULL REQUEST
Klik "new pull request" di git hub
In case of fire
1. git commit 
2. git push
3. leave building

WORKFLOW COLLABORATION
<master>  []-----[]-----[]-----[]-----[]-----[]--
	       |
<develop>  ------[]-----[]-----[]-----[]-----[]--
		         |	    |	    |
<feature>	     |	     ------[]------
		         |
<feature>	     ------[]------[]---



