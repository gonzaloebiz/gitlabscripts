#!/bin/bash
 updaterepodir="/var/www/html/satis/html/myrepostoupdate"
 satisdir="/var/www/html/satis"
 scriptsdir="/root/repos";
 cd $updaterepodir
 satis=0
 for filename in *; do
    if [ -f $filename ] ; then
	     onlyfilename="${filename%.*}"
       $scriptsdir/updaterepo.sh $onlyfilename
       rm $updaterepodir/$filename
       satis=1
    fi
 done
 if [ "$satis" -eq "1" ]; then
	 cd $satisdir
	 /usr/bin/php bin/satis -vv build satis.json html
 fi
