#!/bin/bash

cp ~/miui-ics/out/target/product/crespo/system/app/StockSettings.apk .
apktool d -f StockSettings.apk
cp PSReceiver.smali ~/patchrom-ics_new/sensation/other/StockSettings/porting_build/StockSettings/smali/com/android/stocksettings/
cp PSReceiver\$1.smali ~/patchrom-ics_new/sensation/other/StockSettings/porting_build/StockSettings/smali/com/android/stocksettings/
rm StockSettings.apk 
apktool b StockSettings StockSettings.apk
sign.sh StockSettings.apk /system/app/StockSettings.apk
