.class public Lcom/broadcom/bt/service/map/provider/ProviderHelper;
.super Ljava/lang/Object;
.source "ProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/ProviderHelper$1;,
        Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;,
        Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;
    }
.end annotation


# static fields
.field private static final MSG_NOTIFICATION:I = 0x1

.field private static final QP_ENCODING_LINE_MAX_LEN:I = 0x46

.field private static final TAG:Ljava/lang/String; = "ProviderHelper"


# instance fields
.field mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

.field mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

.field mProviderId:Ljava/lang/String;

.field mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;-><init>(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Lcom/broadcom/bt/service/map/provider/ProviderHelper$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    .line 183
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    .line 184
    iget-object v0, p1, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 185
    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static addFilter_DSDiscover(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    return-object p0
.end method

.method public static createIntent_DSDiscover()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getMSETime()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 189
    const-string v2, ""

    .line 194
    .local v2, sMSEDateTime:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 195
    .local v0, d:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "T"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    const-string v3, "ProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSEDateTime :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v2
.end method

.method private paramsValid(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    .line 480
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    :cond_0
    const-string v0, "ProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid param!. requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datasourceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_1

    const-string p2, "(null)"

    .end local p2
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_2

    const-string p3, "(null)"

    .end local p3
    :cond_2
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0

    .restart local p2
    .restart local p3
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "datasourceId"
    .parameter "notificationType"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"

    .prologue
    const/4 v0, 0x0

    .line 356
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 357
    :cond_0
    const-string v1, "ProviderHelper"

    const-string v2, "Unable to send notification. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return v0

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-boolean v1, v1, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-nez v1, :cond_2

    .line 361
    const-string v1, "ProviderHelper"

    const-string v2, "Unable to send notification. Notification is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-byte v7, v2, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I

    .line 367
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getStandardQPEncodingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "orgQPEncodingData"

    .prologue
    const/16 v7, 0x3d

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 500
    .local v4, startIndex:I
    const/4 v1, 0x0

    .line 501
    .local v1, endIndex:I
    const/4 v3, 0x0

    .line 502
    .local v3, lastByte:C
    const/4 v2, 0x0

    .line 504
    .local v2, last2ndByte:C
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 505
    add-int/lit8 v5, v1, 0x46

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 512
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v7, v5, :cond_0

    .line 514
    add-int/lit8 v1, v1, -0x1

    .line 519
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 520
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 521
    if-eq v7, v2, :cond_4

    const/16 v5, 0x9

    if-eq v5, v3, :cond_1

    const/16 v5, 0x20

    if-ne v5, v3, :cond_4

    .line 523
    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_2

    .line 531
    const-string v5, "=\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_2
    add-int/lit8 v4, v1, 0x1

    goto :goto_0

    .line 508
    :cond_3
    add-int/lit8 v1, v1, 0x45

    goto :goto_1

    .line 527
    :cond_4
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 537
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public returnMessage(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "msgCharset"
    .parameter "msgUri"
    .parameter "virtualFolderPath"

    .prologue
    .line 461
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    const-string v0, "ProviderHelper"

    const-string v1, "returnMessage(): invalid params. ignoring request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    const/4 v6, 0x0

    .line 451
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    const-string v0, "ProviderHelper"

    const-string v1, "returnNoMessage(): invalid params. ignoring request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendFolderInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "status"
    .parameter "folderInfo"

    .prologue
    const/4 v8, 0x0

    .line 330
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 331
    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 338
    :goto_0
    return v0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    move-result v7

    .line 338
    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method public sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    .line 289
    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p4, folderInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Lcom/broadcom/bt/service/map/FolderInfo;

    .line 301
    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-interface {p4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    .line 305
    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "folderNames"

    .prologue
    .line 309
    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_1

    .line 310
    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "No folders specified"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    array-length v0, p4

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .local v7, folderInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, p4

    if-ge v8, v0, :cond_2

    .line 317
    new-instance v9, Lcom/broadcom/bt/service/map/FolderInfo;

    invoke-direct {v9}, Lcom/broadcom/bt/service/map/FolderInfo;-><init>()V

    .line 318
    .local v9, info:Lcom/broadcom/bt/service/map/FolderInfo;
    aget-object v0, p4, v8

    iput-object v0, v9, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 319
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 321
    .end local v9           #info:Lcom/broadcom/bt/service/map/FolderInfo;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Lcom/broadcom/bt/service/map/FolderInfo;

    .line 322
    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    goto :goto_0
.end method

.method public sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 221
    .local v7, newMsg:B
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v8, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    .line 223
    return-void
.end method

.method public sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p4, msgInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 230
    .local v7, newMsg:B
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Lcom/broadcom/bt/service/map/MessageInfo;

    .line 231
    .local v8, msgInfoArray:[Lcom/broadcom/bt/service/map/MessageInfo;
    invoke-interface {p4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 232
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 235
    invoke-interface {p4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MessageInfo;

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    if-nez v0, :cond_1

    .line 236
    const/4 v7, 0x1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    .line 242
    return-void

    .line 232
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public sendMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msgFilePath"
    .parameter "virtualFolderPath"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 276
    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send sendMsg. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 281
    .local v8, ret:I
    if-nez v8, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMsgListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)Z
    .locals 10
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "parentPath"
    .parameter "status"
    .parameter "mseTime"
    .parameter "newMsg"
    .parameter "msgInfo"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 247
    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send MsgListInfo. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 252
    :cond_1
    if-nez p6, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object p6

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    move-result v9

    .line 259
    .local v9, ret:I
    if-nez v9, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "dataSourceId"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 344
    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 350
    .local v8, ret:I
    if-nez v8, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendNotification_DeleteFromMAPOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/16 v1, 0x7d

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public sendNotification_DeliveryFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/4 v1, 0x3

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/4 v1, 0x1

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public sendNotification_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/4 v1, 0x7

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public sendNotification_MessageDelivered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/4 v1, 0x1

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public sendNotification_MessageShift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/16 v1, 0x8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/4 v1, 0x0

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/4 v1, 0x4

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mNotifHandler:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;

    const/4 v1, 0x2

    const-string v5, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public sendPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    const/4 v8, 0x0

    .line 265
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 266
    :cond_0
    const-string v0, "ProviderHelper"

    const-string v1, "Unable to send sendPushResponse. Proxy or datasource is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 270
    :goto_0
    return v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    move-result v7

    .line 270
    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method public setMsgPushStatus_Error(ILjava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x1

    const-string v6, ""

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    .line 477
    return-void
.end method

.method public setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    .line 472
    return-void
.end method
