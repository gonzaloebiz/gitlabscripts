#!/bin/bash
originalpwd=$PWD
gitlaburl="gitlab.xxxx.com"
githubowner="yourgithubuser"
gitlabowner="yourgitlabuser"
repodir="/root/repos"
cd $repodir
for repo in "$@"
do
	echo "### Updating repo $repo"
	git clone --bare --mirror git@github.com:$githubowner/$repo.git $repo
	cd $repo
	git fetch --prune
	git push --prune git@$gitlaburl:$gitlabowner/$repo.git +refs/heads/*:refs/heads/*  +refs/tags/*:refs/tags/*
	cd ..
	rm -rf $repo
done
cd $oringinalpwd
