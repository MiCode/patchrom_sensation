#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
ZIP_FILE=sensation_4.5.4.zip
 
if [ $2 = "out/framework" ];then
	echo "delete framework redundance files"
	rm -rf "out/framework/smali/android/widget"

	echo "make widget.jar"
	mkdir -p "out/ZIP/system/framework"
	cp -r "widget.jar.out" "out/widget.jar.out" 
	mv "out/framework/smali/miui" "out/widget.jar.out/smali"

	for file in `find "$1/smali/android/widget" -name "*.smali"`
	do
        	newfile=${file/$1/"out/widget.jar.out"}
        	if [ ! -f "$newfile" ]
        	then
        	        mkdir -p `dirname $newfile`
        	        echo "add widget smali from miui: $file"
        	        cp $file $newfile
       		fi
	done
	$APKTOOL b  "out/widget.jar.out" "out/widget.jar"
	cp "out/widget.jar" "out/ZIP/system/framework/widget.jar"

elif [ $2 = "out/android.policy" ];then
    curdir=`pwd`
    cd overlay/android.policy.jar.out
    for file in `find . -name *.smali`
    do
        dstfile="$curdir/out/android.policy/$file"
        cat $file >> $dstfile
    done
    cd -
fi
