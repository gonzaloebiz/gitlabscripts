# gitlabscripts

Create a directory and copy the content of the repos directory to it
Make both scripts executable

In the updaterepo.sh script change this lines
```
gitlaburl="gitlab.xxxx.com"
githubowner="yourgithubuser"
gitlabowner="yourgitlabuser"
repodir="/root/repos"
```
to meet your requirements

In the wichtoupdate.sh change this lines
```
 updaterepodir="/var/www/html/satis/html/myrepostoupdate"
 satisdir="/var/www/html/satis"
 scriptsdir="/root/repos";
 ```
 to meet your requirements
 
 Then you can define a webhook in your github repo to automate the release process
 
![image](https://user-images.githubusercontent.com/6222792/181411655-af8b4f18-a1ac-46b3-9af7-be486281e26a.png)

And select only the Releases option
