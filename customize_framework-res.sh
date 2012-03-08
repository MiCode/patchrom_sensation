#!/bin/bash
#
# $1: dir for miui overlay framework-res
# $2: dir for target framework-res
#

if [ `basename $1` = "drawable-hdpi" ];then
	for file in `find "$1"`
	do
		newfile=`basename $file`
		newfile1=`echo $newfile | sed -e "s/^/zhtc_/"`
		targetfile="$2/drawable-hdpi/$newfile1"
        	if [ -f $targetfile ]
        	then
        	        mkdir -p `dirname $targetfile`
        	        echo "add miui res: $file"
			echo "           >> $targetfile"
        	        cp $file $targetfile
	       	fi

		newfile1=`echo $newfile | sed -e "s/^/zzz_/"`
		targetfile="$2/drawable-hdpi/$newfile1"
        	if [ -f $targetfile ]
        	then
        	        mkdir -p `dirname $targetfile`
    		        echo "add miui res: $file"
			echo "           >> $targetfile"
        	        cp $file $targetfile
	       	fi

	done
	rm -r "$2/drawable-hdpi/default_wallpaper.jpg"
fi

