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
	echo "make framework-miui.jar"
	mkdir -p "out/framework-miui/smali"
	touch "out/framework-miui/apktool.yml"
	echo "version: 1.4.3" >> "out/framework-miui/apktool.yml"
	echo "apkFileName: framework-miui.jar" >> "out/framework-miui/apktool.yml"
	mv "out/framework/smali/miui" "out/framework-miui/smali"
	$APKTOOL b "out/framework-miui" "out/framework-miui.jar"
	mkdir -p "out/ZIP/system/framework"
	cp "out/framework-miui.jar" "out/ZIP/system/framework/framework-miui.jar"
	
	echo "make widget.jar"
	cp -r "widget.jar.out" "out/widget.jar.out" 

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
