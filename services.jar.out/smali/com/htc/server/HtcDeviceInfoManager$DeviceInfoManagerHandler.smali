.class final Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;
.super Landroid/os/Handler;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceInfoManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcDeviceInfoManager;


# direct methods
.method public constructor <init>(Lcom/htc/server/HtcDeviceInfoManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    .line 661
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 662
    return-void
.end method

.method private generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;
    .locals 1

    .prologue
    .line 1279
    new-instance v0, Lcom/htc/util/weather/WSPRequest;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest;-><init>()V

    .line 1280
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {v0}, Lcom/htc/util/weather/WSPRequest;->setTypeCurrentLocation()V

    .line 1281
    return-object v0
.end method

.method private getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 1212
    const/4 v1, -0x1

    .line 1213
    .local v1, index:I
    const/4 v2, -0x1

    .line 1214
    .local v2, value:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1215
    if-ltz v1, :cond_0

    .line 1217
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1224
    :goto_0
    return v2

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1222
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 1255
    const/4 v1, -0x1

    .line 1256
    .local v1, index:I
    const/4 v2, 0x0

    .line 1257
    .local v2, value:Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1258
    if-ltz v1, :cond_0

    .line 1260
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1267
    :goto_0
    return-object v2

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1265
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcutInfoList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1228
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1251
    :goto_0
    return-object v2

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$2400()Landroid/net/Uri;

    move-result-object v1

    const-string v5, "shortcut_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1231
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .local v10, shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;>;"
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1237
    :cond_1
    const-string v0, "shortcut_app_name"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1238
    .local v6, appName:Ljava/lang/String;
    const-string v0, "shortcut_class_name"

    invoke-direct {p0, v8, v0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1239
    .local v7, className:Ljava/lang/String;
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;

    invoke-direct {v0, v7, v6}, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 1246
    .end local v6           #appName:Ljava/lang/String;
    .end local v7           #className:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_4

    .line 1247
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1248
    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_1
    move-object v2, v10

    .line 1251
    goto :goto_0

    .line 1243
    :catch_0
    move-exception v9

    .line 1244
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutAppList() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1246
    if-eqz v8, :cond_4

    .line 1247
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1248
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 1246
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    .line 1247
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1248
    :cond_6
    const/4 v8, 0x0

    :cond_7
    throw v0
.end method

.method private getShortcutVisibility()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1192
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1208
    :goto_0
    return v9

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$2300()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1195
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 1197
    .local v8, visible:Z
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    const-string v0, "shortcut_visibility"

    invoke-direct {p0, v6, v0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_4

    const/4 v8, 0x1

    .line 1203
    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    .line 1204
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1205
    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_2
    move v9, v8

    .line 1208
    goto :goto_0

    :cond_4
    move v8, v9

    .line 1198
    goto :goto_1

    .line 1200
    :catch_0
    move-exception v7

    .line 1201
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutVisibility() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    if-eqz v6, :cond_3

    .line 1204
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1205
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 1203
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 1204
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1205
    :cond_6
    const/4 v6, 0x0

    :cond_7
    throw v0
.end method

.method private getSimState()I
    .locals 2

    .prologue
    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, state:I
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mTelephony:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$1800(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mTelephony:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$1800(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 936
    :cond_0
    return v0
.end method

.method private getWeatherRes()Lcom/htc/weather/StateResources;
    .locals 2

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1272
    const/4 v0, 0x0

    .line 1275
    :goto_0
    return-object v0

    .line 1273
    :cond_0
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    .line 1274
    .local v0, mStateResources:Lcom/htc/weather/StateResources;
    iget-object v1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private logHWInfoTime()V
    .locals 2

    .prologue
    .line 1028
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_HWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method private logInstalledApp()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 989
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .local v6, plainText:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 995
    .local v7, pm:Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_0

    .line 997
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 999
    .local v0, aplist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, j:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1000
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    .line 1001
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1002
    .local v5, label:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    .end local v5           #label:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1005
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 1007
    const-string v8, ";"

    invoke-virtual {v6, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v1, ""

    .line 1010
    .local v1, cipherText:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    if-eqz v1, :cond_4

    .line 1012
    sget-object v8, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_INSTALLEDAPP_LIST:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v8, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :cond_4
    const/4 v6, 0x0

    .line 1018
    goto/16 :goto_0

    .line 1014
    :catch_0
    move-exception v2

    .line 1015
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "encrypt exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    const/4 v6, 0x0

    .line 1018
    goto/16 :goto_0

    .line 1017
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    const/4 v6, 0x0

    throw v8
.end method

.method private logLocationInfo()V
    .locals 14

    .prologue
    .line 1033
    iget-object v12, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v12

    if-nez v12, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1035
    :cond_0
    const-string v11, "unknown"

    .local v11, weather:Ljava/lang/String;
    const-string v5, "unknown"

    .local v5, location:Ljava/lang/String;
    const-string v1, "unknown"

    .local v1, city:Ljava/lang/String;
    const-string v6, "unknown"

    .local v6, network:Ljava/lang/String;
    const-string v10, "unknown"

    .line 1037
    .local v10, time:Ljava/lang/String;
    :try_start_0
    const-string v12, "gsm.operator.alpha"

    const-string v13, "unknown"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1038
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v8

    .line 1039
    .local v8, req:Lcom/htc/util/weather/WSPRequest;
    if-eqz v8, :cond_3

    .line 1040
    iget-object v12, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v2

    .line 1041
    .local v2, data:Lcom/htc/util/weather/WSPPData;
    if-eqz v2, :cond_3

    .line 1042
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1043
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getWeatherRes()Lcom/htc/weather/StateResources;

    move-result-object v9

    .line 1044
    .local v9, res:Lcom/htc/weather/StateResources;
    if-eqz v9, :cond_5

    .line 1045
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/htc/weather/StateResources;->getConditionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1046
    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1047
    const-string v11, "unknown"

    .line 1052
    .end local v9           #res:Lcom/htc/weather/StateResources;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1053
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    :cond_2
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 1056
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLatitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCityLongitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1064
    .end local v2           #data:Lcom/htc/util/weather/WSPPData;
    .end local v8           #req:Lcom/htc/util/weather/WSPRequest;
    :cond_3
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1065
    .local v7, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 1067
    .local v0, cipherText:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    if-eqz v0, :cond_4

    .line 1069
    sget-object v12, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCATION_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v12, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1074
    :cond_4
    const/4 v7, 0x0

    .line 1075
    goto/16 :goto_0

    .line 1050
    .end local v0           #cipherText:Ljava/lang/String;
    .end local v7           #plainText:Ljava/lang/StringBuilder;
    .restart local v2       #data:Lcom/htc/util/weather/WSPPData;
    .restart local v8       #req:Lcom/htc/util/weather/WSPRequest;
    .restart local v9       #res:Lcom/htc/weather/StateResources;
    :cond_5
    :try_start_2
    const-string v11, "unknown"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1060
    .end local v2           #data:Lcom/htc/util/weather/WSPPData;
    .end local v8           #req:Lcom/htc/util/weather/WSPRequest;
    .end local v9           #res:Lcom/htc/weather/StateResources;
    :catch_0
    move-exception v4

    .line 1061
    .local v4, ex:Ljava/lang/Exception;
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "logLocationInfo occures exception"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1071
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v0       #cipherText:Ljava/lang/String;
    .restart local v7       #plainText:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .line 1072
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    const-string v12, "HtcDeviceInfoManager"

    const-string v13, "encrypt exception"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1074
    const/4 v7, 0x0

    .line 1075
    goto/16 :goto_0

    .line 1074
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    const/4 v7, 0x0

    throw v12
.end method

.method private logLockscreenShortcutInfo()V
    .locals 11

    .prologue
    .line 1155
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1188
    :goto_0
    return-void

    .line 1157
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1158
    .local v5, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 1160
    .local v0, cipherText:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    iget-object v9, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v8

    const-string v10, "keyguard"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v9, v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2202(Lcom/htc/server/HtcDeviceInfoManager;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 1162
    iget-object v8, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v8}, Lcom/htc/server/HtcDeviceInfoManager;->access$2200(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->getIdleScreenLabel()Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, idleScreenLabel:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1164
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    :cond_1
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getShortcutVisibility()Z

    move-result v7

    .line 1167
    .local v7, visible:Z
    if-eqz v7, :cond_5

    .line 1168
    invoke-direct {p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getShortcutInfoList()Ljava/util/List;

    move-result-object v6

    .line 1169
    .local v6, shortcutAppList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;>;"
    if-eqz v6, :cond_2

    .line 1170
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, j:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 1171
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;

    iget-object v8, v8, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;

    iget-object v8, v8, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1175
    .end local v2           #i:I
    .end local v4           #j:I
    :cond_2
    const-string v8, "NO_LOCKSCREEN_SHORTCUT"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    .end local v6           #shortcutAppList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;>;"
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_4

    .line 1181
    sget-object v8, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCKSCREEN_SHORTCUT_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v8, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 1186
    :cond_4
    const/4 v5, 0x0

    .line 1187
    goto/16 :goto_0

    .line 1177
    :cond_5
    const-string v8, "NO_LOCKSCREEN_SHORTCUT"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1183
    .end local v3           #idleScreenLabel:Ljava/lang/String;
    .end local v7           #visible:Z
    :catch_0
    move-exception v1

    .line 1184
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "logLockscreenShortcutInfo exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    const/4 v5, 0x0

    .line 1187
    goto/16 :goto_0

    .line 1186
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    const/4 v5, 0x0

    throw v8
.end method

.method private logSWInfoTime()V
    .locals 2

    .prologue
    .line 1024
    sget-object v0, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_SWINFO_TIME:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method private logStatusbarInfo()V
    .locals 2

    .prologue
    .line 1080
    new-instance v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler$1;

    const-string v1, "logStatusbar"

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler$1;-><init>(Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;Ljava/lang/String;)V

    .line 1116
    .local v0, worker:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1117
    return-void
.end method

.method private logWallpaperInfo()V
    .locals 8

    .prologue
    .line 1121
    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1123
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .local v5, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 1125
    .local v0, cipherText:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1126
    .local v3, mWallpaperComponent:Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 1127
    .local v4, mWallpaperInfo:Landroid/app/WallpaperInfo;
    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    iget-object v7, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v6, v7}, Lcom/htc/server/HtcDeviceInfoManager;->access$2102(Lcom/htc/server/HtcDeviceInfoManager;Landroid/app/WallpaperManager;)Landroid/app/WallpaperManager;

    .line 1129
    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v6}, Lcom/htc/server/HtcDeviceInfoManager;->access$2100(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/WallpaperManager;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v6}, Lcom/htc/server/HtcDeviceInfoManager;->access$2100(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/WallpaperManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1130
    iget-object v6, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/server/HtcDeviceInfoManager;->access$2000(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1131
    .local v2, label:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1132
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1142
    .end local v2           #label:Ljava/lang/CharSequence;
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_1

    .line 1144
    sget-object v6, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_WALLPAPER_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v6, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :cond_1
    const/4 v5, 0x0

    .line 1150
    goto :goto_0

    .line 1135
    .restart local v2       #label:Ljava/lang/CharSequence;
    :cond_2
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1138
    .end local v2           #label:Ljava/lang/CharSequence;
    :cond_3
    new-instance v3, Landroid/content/ComponentName;

    .end local v3           #mWallpaperComponent:Landroid/content/ComponentName;
    const-string v6, "android"

    const-string v7, "ImageWallpaper"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .restart local v3       #mWallpaperComponent:Landroid/content/ComponentName;
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1146
    :catch_0
    move-exception v1

    .line 1147
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "HtcDeviceInfoManager"

    const-string v7, "logWallpaperInfo exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    const/4 v5, 0x0

    .line 1150
    goto/16 :goto_0

    .line 1149
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    const/4 v5, 0x0

    throw v6
.end method

.method private update(Ljava/lang/String;)V
    .locals 14
    .parameter "processName"

    .prologue
    .line 940
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 941
    .local v8, now:J
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v10

    iget-wide v10, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    sub-long v3, v8, v10

    .line 942
    .local v3, duration:J
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v10

    iget-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    add-long/2addr v11, v3

    iput-wide v11, v10, Landroid/app/HtcDeviceInfo;->totalDeviceAliveTime:J

    .line 943
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v10

    iput-wide v8, v10, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 945
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    .line 946
    .local v7, infos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 947
    .local v6, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    iget v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 949
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 951
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessStats:Lcom/android/internal/os/ProcessStats;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1900(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/android/internal/os/ProcessStats;

    move-result-object v10

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 952
    .local v1, CPUTime:J
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1300(Lcom/htc/server/HtcDeviceInfoManager;)J

    move-result-wide v10

    sub-long v3, v8, v10

    .line 953
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_1

    .line 954
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 956
    :cond_1
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 974
    .end local v1           #CPUTime:J
    :goto_1
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 975
    :try_start_0
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v6, v0

    .line 976
    if-eqz v6, :cond_2

    .line 977
    iget-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v12, v3

    iput-wide v12, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 979
    :cond_2
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 957
    :cond_3
    iget-object v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget-object v11, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mForegroundProcess:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/server/HtcDeviceInfoManager;->access$1400(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 959
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1300(Lcom/htc/server/HtcDeviceInfoManager;)J

    move-result-wide v10

    sub-long v3, v8, v10

    .line 960
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_4

    .line 961
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 963
    :cond_4
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static {v10, v8, v9}, Lcom/htc/server/HtcDeviceInfoManager;->access$1302(Lcom/htc/server/HtcDeviceInfoManager;J)J

    goto :goto_1

    .line 966
    :cond_5
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessStats:Lcom/android/internal/os/ProcessStats;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1900(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/android/internal/os/ProcessStats;

    move-result-object v10

    iget v11, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v1, v10, v12

    .line 967
    .restart local v1       #CPUTime:J
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    sub-long v3, v1, v10

    .line 968
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_6

    .line 969
    iget-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    add-long/2addr v10, v3

    iput-wide v10, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->totalCPUTime:J

    .line 971
    :cond_6
    iput-wide v1, v6, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_1

    .line 983
    .end local v1           #CPUTime:J
    .end local v6           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :cond_7
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 984
    iget-object v10, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static {v10}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->updateTime()V

    .line 986
    :cond_8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 666
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 667
    .local v19, processName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 668
    .local v9, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 929
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 672
    :pswitch_1
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$600()Landroid/os/PowerManager;

    move-result-object v23

    const/16 v24, 0x1

    const-string v25, "HtcUBFlushWakeLock"

    invoke-virtual/range {v23 .. v25}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v22

    .line 674
    .local v22, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 675
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->update(Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->getSimState()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/HtcDeviceInfo;->simState:I

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v24 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$800(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/HtcDeviceInfo;->diff(Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    move-result-object v5

    .line 678
    .local v5, diffInfo:Landroid/app/HtcDeviceInfo;
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logLocationInfo()V

    .line 679
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logStatusbarInfo()V

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logWallpaperInfo()V

    .line 681
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logLockscreenShortcutInfo()V

    .line 682
    sget-wide v23, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Landroid/app/HtcDeviceInfo;->flush(J)Z

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$900(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v24

    monitor-enter v24

    .line 684
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$900(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/app/HtcDeviceInfo;->add(Landroid/app/HtcDeviceInfo;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mStatisticsDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$900(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mFilePath:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/htc/server/HtcDeviceInfoManager;->access$1000(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/HtcDeviceInfo;->serializeToFile(Ljava/lang/String;)V

    .line 686
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v24 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/HtcDeviceInfo;->clone()Landroid/app/HtcDeviceInfo;

    move-result-object v24

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastFlushDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$802(Lcom/htc/server/HtcDeviceInfoManager;Landroid/app/HtcDeviceInfo;)Landroid/app/HtcDeviceInfo;

    .line 688
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_1

    .line 689
    const/16 v23, 0x0

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$1100()J

    move-result-wide v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 690
    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 686
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 695
    .end local v5           #diffInfo:Landroid/app/HtcDeviceInfo;
    .end local v22           #wl:Landroid/os/PowerManager$WakeLock;
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->update(Ljava/lang/String;)V

    .line 696
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_0

    .line 697
    const/16 v23, 0x1

    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$1200()J

    move-result-wide v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 702
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static/range {v23 .. v25}, Lcom/htc/server/HtcDeviceInfoManager;->access$1302(Lcom/htc/server/HtcDeviceInfoManager;J)J

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mForegroundProcess:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager;->access$1402(Lcom/htc/server/HtcDeviceInfoManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 708
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 710
    .restart local v9       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v9, :cond_2

    .line 711
    iget v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->numCrashes:I

    .line 712
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 713
    const-wide/16 v23, -0x1

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 715
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v24

    monitor-enter v24

    .line 716
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    monitor-exit v24

    goto/16 :goto_0

    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v23

    .line 722
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 724
    .restart local v9       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-eqz v9, :cond_0

    .line 725
    iget v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->numANRs:I

    goto/16 :goto_0

    .line 731
    :pswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 732
    .local v18, pid:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 733
    .local v8, group:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 734
    .restart local v9       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    if-nez v9, :cond_4

    .line 735
    new-instance v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .end local v9           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    invoke-direct {v9}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V

    .line 736
    .restart local v9       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    move-object/from16 v0, v19

    iput-object v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 737
    move/from16 v0, v18

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 738
    iput v8, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 739
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v24

    monitor-enter v24

    .line 747
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Landroid/app/HtcDeviceInfo$ProcessInfo;

    move-object v9, v0

    .line 748
    if-eqz v9, :cond_3

    .line 752
    :cond_3
    new-instance v10, Landroid/app/HtcDeviceInfo$ProcessInfo;

    invoke-direct {v10}, Landroid/app/HtcDeviceInfo$ProcessInfo;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 753
    .end local v9           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .local v10, info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    :try_start_4
    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/app/HtcDeviceInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 754
    move/from16 v0, v18

    iput v0, v10, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 755
    iput v8, v10, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 756
    const-wide/16 v25, 0x0

    move-wide/from16 v0, v25

    iput-wide v0, v10, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v9, v10

    .line 760
    .end local v10           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v9       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    goto/16 :goto_0

    .line 742
    :cond_4
    move/from16 v0, v18

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 743
    iput v8, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 744
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_1

    .line 758
    :catchall_2
    move-exception v23

    :goto_2
    :try_start_5
    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v23

    .line 764
    .end local v8           #group:I
    .end local v18           #pid:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 765
    .restart local v9       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->update(Ljava/lang/String;)V

    .line 766
    if-eqz v9, :cond_5

    .line 767
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 768
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 769
    const-wide/16 v23, -0x1

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    .line 771
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v24

    monitor-enter v24

    .line 772
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mProcessInfoMap:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1500(Lcom/htc/server/HtcDeviceInfoManager;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    monitor-exit v24

    goto/16 :goto_0

    :catchall_3
    move-exception v23

    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v23

    .line 778
    :pswitch_8
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->update(Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/HtcDeviceInfo;->processInfoMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 780
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 781
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    check-cast v9, Landroid/app/HtcDeviceInfo$ProcessInfo;

    .line 782
    .restart local v9       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->pid:I

    .line 783
    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->group:I

    .line 784
    const-wide/16 v23, -0x1

    move-wide/from16 v0, v23

    iput-wide v0, v9, Landroid/app/HtcDeviceInfo$ProcessInfo;->lastCPUUpdateTime:J

    goto :goto_3

    .line 790
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/HtcDeviceInfo$ProcessInfo;>;"
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    const-string v24, "ro.build.changelist"

    const-string v25, "unknown"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/app/HtcDeviceInfo;->changeListNo:Ljava/lang/String;

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/HtcDeviceInfo;->simState:I

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->lastDeviceAliveUpdateTime:J

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mLastForegroundUpdateTime:J
    invoke-static/range {v23 .. v25}, Lcom/htc/server/HtcDeviceInfoManager;->access$1302(Lcom/htc/server/HtcDeviceInfoManager;J)J

    goto/16 :goto_0

    .line 798
    :pswitch_a
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    .line 799
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    .line 800
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    .line 801
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    .line 802
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    .line 803
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    .line 804
    const/16 v23, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    .line 805
    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->removeMessages(I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 807
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    .line 808
    monitor-exit v24

    goto/16 :goto_0

    :catchall_4
    move-exception v23

    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v23

    .line 813
    :pswitch_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 814
    .local v16, now_on:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1600(Lcom/htc/server/HtcDeviceInfoManager;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    move-wide/from16 v23, v0

    sub-long v6, v16, v23

    .line 816
    .local v6, duration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    move-wide/from16 v24, v0

    add-long v24, v24, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 818
    .end local v6           #duration:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z
    invoke-static/range {v23 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$1602(Lcom/htc/server/HtcDeviceInfoManager;Z)Z

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-wide/from16 v0, v16

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    goto/16 :goto_0

    .line 824
    .end local v16           #now_on:J
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1600(Lcom/htc/server/HtcDeviceInfoManager;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 826
    .local v14, now_off:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->lastDeviceScreenOnUpdateTime:J

    move-wide/from16 v23, v0

    sub-long v6, v14, v23

    .line 827
    .restart local v6       #duration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    move-wide/from16 v24, v0

    add-long v24, v24, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->deviceScreenOnTime:J

    .line 829
    .end local v6           #duration:J
    .end local v14           #now_off:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/htc/server/HtcDeviceInfoManager;->mScreenOn:Z
    invoke-static/range {v23 .. v24}, Lcom/htc/server/HtcDeviceInfoManager;->access$1602(Lcom/htc/server/HtcDeviceInfoManager;Z)Z

    goto/16 :goto_0

    .line 833
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 837
    .local v4, b:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 840
    const-string v23, "time"

    const-wide/16 v24, -0x1

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 841
    .local v20, time:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->isVoiceInUse()Z

    move-result v23

    if-nez v23, :cond_a

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v12, v0, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    .line 843
    .local v12, last_time:J
    const-wide/16 v6, 0x0

    .line 844
    .restart local v6       #duration:J
    const-wide/16 v23, 0x0

    cmp-long v23, v20, v23

    if-lez v23, :cond_8

    const-wide/16 v23, 0x0

    cmp-long v23, v12, v23

    if-lez v23, :cond_8

    cmp-long v23, v12, v20

    if-gez v23, :cond_8

    .line 845
    sub-long v6, v20, v12

    .line 846
    sget-wide v23, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    cmp-long v23, v6, v23

    if-gtz v23, :cond_9

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    const-string v24, "user activity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v7, v1}, Lcom/htc/server/HtcDeviceInfoManager;->addDeviceUseTime(JLjava/lang/String;)V

    .line 862
    .end local v6           #duration:J
    .end local v12           #last_time:J
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$700(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/app/HtcDeviceInfo;

    move-result-object v23

    move-wide/from16 v0, v20

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    goto/16 :goto_0

    .line 850
    .restart local v6       #duration:J
    .restart local v12       #last_time:J
    :cond_9
    sget-boolean v23, Lcom/htc/server/HtcDeviceInfoManager;->VERBOSE:Z

    if-eqz v23, :cond_8

    .line 851
    const-string v23, "HtcDeviceInfoManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "userActivity, over max duration: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-wide v25, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 858
    .end local v6           #duration:J
    .end local v12           #last_time:J
    :cond_a
    sget-boolean v23, Lcom/htc/server/HtcDeviceInfoManager;->VERBOSE:Z

    if-eqz v23, :cond_8

    .line 859
    const-string v23, "HtcDeviceInfoManager"

    const-string v24, "userActivity, voiceInUse!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 867
    .end local v4           #b:Landroid/os/Bundle;
    .end local v20           #time:J
    :pswitch_e
    sget-boolean v23, Lcom/htc/server/HtcDeviceInfoManager;->VERBOSE:Z

    if-eqz v23, :cond_b

    .line 868
    const-string v23, "HtcDeviceInfoManager"

    const-string v24, "APP_DIED"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 873
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 874
    .restart local v4       #b:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 877
    const-string v23, "pid"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 878
    .restart local v18       #pid:I
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->stop(II)V

    goto/16 :goto_0

    .line 885
    .end local v4           #b:Landroid/os/Bundle;
    .end local v18           #pid:I
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->startPhoneCall()V

    goto/16 :goto_0

    .line 892
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mVoiceAppUsage:Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;
    invoke-static/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager;->access$1700(Lcom/htc/server/HtcDeviceInfoManager;)Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/server/HtcDeviceInfoManager$VoiceAppUsage;->stopPhoneCall()V

    .line 900
    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logInstalledApp()V

    goto/16 :goto_0

    .line 907
    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logSWInfoTime()V

    goto/16 :goto_0

    .line 914
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logHWInfoTime()V

    goto/16 :goto_0

    .line 921
    :pswitch_14
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logLocationInfo()V

    .line 922
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logInstalledApp()V

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logStatusbarInfo()V

    .line 924
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logWallpaperInfo()V

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logLockscreenShortcutInfo()V

    goto/16 :goto_0

    .line 758
    .end local v9           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v8       #group:I
    .restart local v10       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v18       #pid:I
    :catchall_5
    move-exception v23

    move-object v9, v10

    .end local v10           #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    .restart local v9       #info:Landroid/app/HtcDeviceInfo$ProcessInfo;
    goto/16 :goto_2

    .line 668
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
