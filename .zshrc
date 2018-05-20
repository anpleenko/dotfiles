# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/qa/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="pmcgee"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git yarn npm)

source $ZSH/oh-my-zsh.sh

alias pl='cd ~/Project/trash'
alias gs='git status'
alias gst='git stash'
alias gsa='git stash apply'
alias gl='git pull'
alias gp='git push origin $(git symbolic-ref --short -q HEAD)'
alias gu='git stash; git pull; git stash apply'
alias dmb="git branch --merged | grep -v '*' | xargs git branch -D"
alias dab='git branch | grep -v "develop" | grep -v "master" | xargs git branch -D'
alias ncu='sudo npm-check -u'

qc() {
	if git diff | grep "<<<<<<<"
	then
		echo "pleace resolve conflicts"
		return
	fi

	if git status | grep "nothing to commit"
	then
		echo "nothing to commit"
		return
	fi

	if [ "$*" =  "" ]
	then
		echo "Please inter text to commit"
		return
	fi

	echo -e "\e[32mCheck status\e[0m";
	git status;
	echo -e "\e[32mGit stash\e[0m";
	git stash;
	echo -e "\e[32mGit pull\e[0m";
	git pull;
	echo -e "\e[32mGet stash\e[0m";
	if git stash pop | grep "CONFLICT"
	then
	else
		echo -e "\e[32mAdd all files\e[0m";
		git add .;
		echo -e "\e[32mCommit\e[0m";
		git commit -m "$*";
		echo -e "\e[32mPUSH!!!\e[0m";
		git push origin $(git symbolic-ref --short -q HEAD)
	fi
}

alias c='clear'
alias edit='subl'
#alias hosts='sudo subl /private/etc/hosts'
alias hosts='sudo subl /etc/hosts'
alias zshrc='sudo subl ~/.zshrc'
alias lserver='light-server -s . -p 7000'
alias sources='source ~/.zshrc'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

del() {
	sudo rm -rf "$*"
}

feature() {
	git stash -u
	git checkout -b feature/"$*"
	git stash pop
}

bug() {
	git stash -u
	git checkout -b bugfix/"$*"
	git stash pop
}

fix() {
	git stash -u
	git checkout -b hotfix/"$*"
	git stash pop
}

cm() {
	git add .
	git commit -m "$*"
}

cmt() {
	git add .
	git commit -m "$*"
	git push origin $(git symbolic-ref --short -q HEAD)
}

# git merge default branch
gitsync(){
	defaultBranch=$(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')
	currentBranch=$(git rev-parse --abbrev-ref HEAD)
	changeFiles=false

	if [ $defaultBranch = $currentBranch ]
	then
		echo -e "\e[32m===> $defaultBranch eq $currentBranch\e[0m";
		return
	fi

	if git status | grep "Changes not staged for commit"
	then
		echo -e "\e[32m===> create stash\e[0m";
		changeFiles=true
		git stash -u
	fi

	echo -e "\e[32m===> checkout $defaultBranch\e[0m";
	git checkout $defaultBranch

	echo -e "\e[32m===> git pull\e[0m";
	git pull

	echo -e "\e[32m===> checkout $currentBranch\e[0m";
	git checkout $currentBranch

	echo -e "\e[32m===> merge $defaultBranch to $currentBranch\e[0m";
	git merge --no-edit $defaultBranch

	if $changeFiles
	then
		echo -e "\e[32m===> stash pop\e[0m";
		git stash pop
	fi
}

copyComponents(){
# 	# rm -rf ~/Projects/dasreda/portal/node_modules/eco-components-portal/src
# 	# cp -avr ~/Projects/dasreda/eco-components-portal/src ~/Projects/dasreda/portal/node_modules/eco-components-portal
# 	# make build_modules
# 	#
# 	#

    cd ~/project/dasreda/eco-components-portal
    ./node_modules/.bin/babel src/ -d dist --copy-files
    rm -rf ~/project/dasreda/portal/node_modules/eco-components-portal/dist
    cp -avr ~/project/dasreda/eco-components-portal/dist ~/project/dasreda/portal/node_modules/eco-components-portal
    cd ~/project/dasreda/portal

    cd ~/project/dasreda/eco-components-portal
	./node_modules/.bin/babel src/ -d dist --copy-files
	rm -rf ~/project/dasreda/eco-admin/node_modules/eco-components-portal/dist
	cp -avr ~/project/dasreda/eco-components-portal/dist ~/project/dasreda/eco-admin/node_modules/eco-components-portal
	cd ~/project/dasreda/portal
}

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
