#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#
for file in `find $1 -name "*.smali"`
do
        newfile=${file/$1/$2}
        if [ ! -f "$newfile" ]
        then
                mkdir -p `dirname $newfile`
                echo "add smali from miui: $file"
                cp $file $newfile
        fi
done
if [ -z "$PORT_ROOT" ]
then
    KEYPATH=${KEY_PATH:=.}
else
    KEYPATH=${KEY_PATH:=$PORT_ROOT/tools}
fi

APKTOOL=$KEYPATH/apktool

if [ $2 = ".build/framework" ]
then
	rm -rf ".build/framework/smali/android/widget"
	mkdir -p ".build/framework-miui/smali"
	touch ".build/framework-miui/apktool.yml"
	echo "version: 1.4.3" >> ".build/framework-miui/apktool.yml"
	echo "apkFileName: framework-miui.jar" >> ".build/framework-miui/apktool.yml"
	mv ".build/framework/smali/miui" ".build/framework-miui/smali"
	$APKTOOL b ".build/framework-miui" ".build/framework-miui.jar"
	mkdir -p ".build/ZIP/system/framework"
	cp ".build/framework-miui.jar" ".build/ZIP/system/framework/framework-miui.jar"
fi
