.class final Lcom/htc/server/HtcAppWifiOffload$H;
.super Landroid/os/Handler;
.source "HtcAppUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppWifiOffload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final ACTIVITY_RESUME:I = 0x1f6

.field static final BOOT_COMPLETED:I = 0x1f5

.field static final PACKAGE_CHANGED:I = 0x1f8

.field static final PARSE_XML_LIST:I = 0x1f4

.field static final QUICKBOOT_POWERON:I = 0x1f7


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAppWifiOffload;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcAppWifiOffload;)V
    .locals 0
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1148
    return-void
.end method

.method private activityResumeHandler(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$400(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppWifiOffload$H;->isInternetApp(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1276
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$300(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifioffload.intent.INTERNETAPP_RESUMED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$300(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1280
    const-string v1, "HtcAppWifiOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brocast resume intent for internet app<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$400(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1287
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isInternetApp(Ljava/lang/String;)Z
    .locals 10
    .parameter "pkgName"

    .prologue
    const/4 v7, 0x0

    .line 1292
    iget-object v8, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/server/HtcAppWifiOffload;->access$600(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1293
    const/4 v1, 0x1

    .line 1317
    :cond_0
    :goto_0
    return v1

    .line 1296
    :cond_1
    iget-object v8, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/htc/server/HtcAppWifiOffload;->access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_2

    move v1, v7

    goto :goto_0

    .line 1299
    :cond_2
    const/4 v1, 0x0

    .line 1301
    .local v1, bFound:Z
    :try_start_0
    iget-object v8, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/htc/server/HtcAppWifiOffload;->access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x1000

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1304
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 1305
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 1306
    .local v6, str:Ljava/lang/String;
    const-string v8, "android.permission.INTERNET"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1308
    iget-object v8, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/server/HtcAppWifiOffload;->access$600(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    const/4 v1, 0x1

    .line 1310
    goto :goto_0

    .line 1305
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1315
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #str:Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v1, v7

    .line 1317
    goto :goto_0
.end method

.method private parseXMLListHandler()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 1184
    const/4 v3, 0x0

    .line 1186
    .local v3, fileReader:Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 1187
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 1188
    .local v10, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/FileReader;

    const-string v11, "/system/etc/wifioffloadpkg.xml"

    invoke-direct {v4, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1190
    .end local v3           #fileReader:Ljava/io/FileReader;
    .local v4, fileReader:Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 1191
    .local v6, isPkgTag:Z
    const/4 v5, 0x0

    .line 1192
    .local v5, isBlackTag:Z
    const/4 v7, 0x0

    .line 1194
    .local v7, isWhiteTag:Z
    :try_start_1
    invoke-interface {v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1195
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1196
    .local v1, eventType:I
    :goto_0
    if-eq v14, v1, :cond_7

    .line 1197
    packed-switch v1, :pswitch_data_0

    .line 1246
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1200
    :pswitch_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1201
    .local v8, strTag:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1202
    const-string v11, "BlackList"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1203
    const/4 v5, 0x1

    goto :goto_1

    .line 1204
    :cond_1
    const-string v11, "WhiteList"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1205
    const/4 v7, 0x1

    goto :goto_1

    .line 1206
    :cond_2
    const-string v11, "Package"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1207
    const/4 v6, 0x1

    goto :goto_1

    .line 1215
    .end local v8           #strTag:Ljava/lang/String;
    :pswitch_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1216
    .restart local v8       #strTag:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1217
    const-string v11, "BlackList"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1218
    const/4 v5, 0x0

    goto :goto_1

    .line 1219
    :cond_3
    const-string v11, "WhiteList"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1220
    const/4 v7, 0x0

    goto :goto_1

    .line 1221
    :cond_4
    const-string v11, "Package"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1222
    const/4 v6, 0x0

    goto :goto_1

    .line 1229
    .end local v8           #strTag:Ljava/lang/String;
    :pswitch_2
    if-ne v14, v6, :cond_0

    .line 1230
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    .line 1232
    .local v9, strText:Ljava/lang/String;
    if-ne v14, v5, :cond_5

    .line 1233
    iget-object v11, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    const-string v11, "HtcAppWifiOffload"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BlackList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_5
    if-ne v14, v7, :cond_0

    .line 1237
    iget-object v11, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/server/HtcAppWifiOffload;->access$600(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    const-string v11, "HtcAppWifiOffload"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WhiteList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    goto/16 :goto_1

    .line 1249
    .end local v1           #eventType:I
    .end local v9           #strText:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 1250
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .end local v5           #isBlackTag:Z
    .end local v6           #isPkgTag:Z
    .end local v7           #isWhiteTag:Z
    .end local v10           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :goto_2
    :try_start_2
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1256
    if-eqz v3, :cond_6

    .line 1258
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1264
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_3
    return-void

    .line 1256
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v5       #isBlackTag:Z
    .restart local v6       #isPkgTag:Z
    .restart local v7       #isWhiteTag:Z
    .restart local v10       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    if-eqz v4, :cond_8

    .line 1258
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_8
    :goto_4
    move-object v3, v4

    .line 1263
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .line 1251
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #isBlackTag:Z
    .end local v6           #isPkgTag:Z
    .end local v7           #isWhiteTag:Z
    .end local v10           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 1252
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_5
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1256
    if-eqz v3, :cond_6

    .line 1258
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 1259
    :catch_2
    move-exception v0

    .line 1260
    .local v0, e:Ljava/io/IOException;
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_6
    invoke-static {v11, v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1253
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1254
    .restart local v0       #e:Ljava/io/IOException;
    :goto_7
    :try_start_7
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1256
    if-eqz v3, :cond_6

    .line 1258
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 1259
    :catch_4
    move-exception v0

    .line 1260
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    .line 1256
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_8
    if-eqz v3, :cond_9

    .line 1258
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1256
    :cond_9
    :goto_9
    throw v11

    .line 1259
    :catch_5
    move-exception v0

    .line 1260
    .restart local v0       #e:Ljava/io/IOException;
    const-string v12, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1259
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 1260
    .local v0, e:Ljava/io/IOException;
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    .line 1259
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v5       #isBlackTag:Z
    .restart local v6       #isPkgTag:Z
    .restart local v7       #isWhiteTag:Z
    .restart local v10       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v0

    .line 1260
    .restart local v0       #e:Ljava/io/IOException;
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1256
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #eventType:I
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_8

    .line 1253
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_7

    .line 1251
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_5

    .line 1249
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #isBlackTag:Z
    .end local v6           #isPkgTag:Z
    .end local v7           #isWhiteTag:Z
    .end local v10           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v0

    goto :goto_2

    .line 1197
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateHomePackageName()V
    .locals 7

    .prologue
    .line 1323
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1345
    :cond_0
    return-void

    .line 1325
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1329
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    .line 1330
    const/4 v4, 0x1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1332
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$800(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1333
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1334
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1335
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.htc.android.htcsetupwizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1336
    const-string v4, "HtcAppWifiOffload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update HomePackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$800(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    :cond_3
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1341
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1180
    :goto_0
    return-void

    .line 1154
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload$H;->parseXMLListHandler()V

    goto :goto_0

    .line 1158
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/server/HtcAppWifiOffload$H;->activityResumeHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 1162
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload$H;->updateHomePackageName()V

    .line 1164
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$300(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z
    invoke-static {v0, v1}, Lcom/htc/server/HtcAppWifiOffload;->access$202(Lcom/htc/server/HtcAppWifiOffload;Z)Z

    goto :goto_0

    .line 1169
    :pswitch_3
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    #getter for: Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/server/HtcAppWifiOffload;->access$400(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1173
    :pswitch_4
    const-string v0, "HtcAppWifiOffload"

    const-string v1, "PACKAGE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload$H;->updateHomePackageName()V

    goto :goto_0

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
