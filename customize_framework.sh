#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool

if [ $2 = "out/framework" ];then
	rm -rf "out/framework/smali/android/widget"
	mkdir -p "out/framework-miui/smali"
	touch "out/framework-miui/apktool.yml"
	echo "version: 1.4.3" >> "out/framework-miui/apktool.yml"
	echo "apkFileName: framework-miui.jar" >> "out/framework-miui/apktool.yml"
	mv "out/framework/smali/miui" "out/framework-miui/smali"
	$APKTOOL b "out/framework-miui" "out/framework-miui.jar"
	mkdir -p "out/ZIP/system/framework"
	cp "out/framework-miui.jar" "out/ZIP/system/framework/framework-miui.jar"
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
