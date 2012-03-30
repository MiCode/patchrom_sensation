#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
curdir=`pwd`

if [ $1 = "Phone" ];then
    for file in `find $1/smali -name *.part`
    do
	filepath=`dirname $file`
	filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
fi

if [ $1 = "Mms" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi
