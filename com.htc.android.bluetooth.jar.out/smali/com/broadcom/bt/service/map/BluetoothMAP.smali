.class public Lcom/broadcom/bt/service/map/BluetoothMAP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothMAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;,
        Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;
    }
.end annotation


# static fields
.field public static final BTLIF_MA_CHARSET_NATIVE:I = 0x0

.field public static final BTLIF_MA_CHARSET_UNKNOWN:I = 0x2

.field public static final BTLIF_MA_CHARSET_UTF_8:I = 0x1

.field public static final BTLIF_MA_PRI_STATUS_HIGH:I = 0x1

.field public static final BTLIF_MA_PRI_STATUS_NON_HIGH:I = 0x2

.field public static final BTLIF_MA_PRI_STATUS_NO_FILTERING:I = 0x0

.field private static final D:Z = true

.field public static final LIST_STATUS_NO_LIST:B = 0x2t

.field public static final LIST_STATUS_SUCCESS:B = 0x0t

.field public static final MAP_FAIL:I = 0x1

.field public static final MAP_FAILED_TO_CREATE_MAP_SERVICE:I = 0x1

.field public static final MAP_FILTER_MSGTYPE_EMAIL:B = 0x4t

.field public static final MAP_FILTER_MSGTYPE_MMS:B = 0x8t

.field public static final MAP_FILTER_MSGTYPE_SMS_CDMA:B = 0x2t

.field public static final MAP_FILTER_MSGTYPE_SMS_GSM:B = 0x1t

.field public static final MAP_LENGTH_ADJUSTER:I = 0x16

.field public static final MAP_MSG_MASK_ATTACHMENT_SIZE:I = 0x400

.field public static final MAP_MSG_MASK_DATETIME:I = 0x2

.field public static final MAP_MSG_MASK_PRIORITY:I = 0x800

.field public static final MAP_MSG_MASK_PROTECTED:I = 0x4000

.field public static final MAP_MSG_MASK_READ:I = 0x1000

.field public static final MAP_MSG_MASK_RECEPTION_STATUS:I = 0x100

.field public static final MAP_MSG_MASK_RECIPIENT_ADDRESSING:I = 0x20

.field public static final MAP_MSG_MASK_RECIPIENT_NAME:I = 0x10

.field public static final MAP_MSG_MASK_SENDER_ADDRESSING:I = 0x8

.field public static final MAP_MSG_MASK_SENDER_NAME:I = 0x4

.field public static final MAP_MSG_MASK_SENT:I = 0x2000

.field public static final MAP_MSG_MASK_SIZE:I = 0x80

.field public static final MAP_MSG_MASK_SUBJECT:I = 0x1

.field public static final MAP_MSG_MASK_TEXT:I = 0x200

.field public static final MAP_MSG_MASK_TYPE:I = 0x40

.field public static final MAP_MSG_REPLYTO_ADDRESSING:I = 0x8000

.field public static final MAP_MSG_STATUS_FAIL:I = 0x3

.field public static final MAP_MSG_STATUS_INVALID_PARENT_PATH:I = 0x1

.field public static final MAP_MSG_STATUS_NO_MESSAGES:I = 0x2

.field public static final MAP_MSG_STATUS_SUCCESS:I = 0x0

.field public static final MAP_MSG_TYPE_EMAIL:I = 0x1

.field public static final MAP_MSG_TYPE_MMS:I = 0x8

.field public static final MAP_MSG_TYPE_SMS_CDMA:I = 0x4

.field public static final MAP_MSG_TYPE_SMS_GSM:I = 0x2

.field public static final MAP_NOTIFICATION_ALLOW:I = 0x0

.field public static final MAP_NOTIFICATION_FORBID:I = 0x1

.field public static final MAP_RCV_STATUS_COMPLETE:I = 0x0

.field public static final MAP_RCV_STATUS_FRACTIONED:I = 0x1

.field public static final MAP_RCV_STATUS_NOTIFICATION:I = 0x2

.field public static final MAP_REMOTE_EXECUTION_ERROR:I = 0x2

.field public static final MAP_STATUS_TYPE_DELETED:I = 0x2

.field public static final MAP_STATUS_TYPE_READ:I = 0x1

.field public static final MAP_SUCCESS:I = 0x0

.field public static final PROVIDER_TYPE_EMAIL:B = 0x1t

.field public static final PROVIDER_TYPE_MMS:B = 0x8t

.field public static final PROVIDER_TYPE_SMS_CDMA:B = 0x4t

.field public static final PROVIDER_TYPE_SMS_GSM:B = 0x2t

.field private static REF_COUNT:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_map"

.field private static final TAG:Ljava/lang/String; = "MAP.BluetoothMAP"

.field private static final V:Z = true


# instance fields
.field protected mFeatureMessageFilter:Z

.field protected mFolderMappings:[Ljava/lang/String;

.field protected mMapCallback:Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

.field protected mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

.field protected mMapService:Lcom/broadcom/bt/service/map/IMapService;

.field protected mProviderDisplayName:Ljava/lang/String;

.field protected mProviderDsDisplayName:Ljava/lang/String;

.field protected mProviderDsId:Ljava/lang/String;

.field protected mProviderId:Ljava/lang/String;

.field protected mProviderType:B

.field protected mfeatureMessageOffsetBrowsing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 152
    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    .line 153
    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    .line 278
    sget v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    .line 279
    const-string v0, "MAP.BluetoothMAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMAP(): instance= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 4
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 135
    const-string v2, "MAP.BluetoothMAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProxy() ctx = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p0, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "cb ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "bluetooth_map"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    const-string v1, "MAP.BluetoothMAP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x0

    .line 145
    :goto_2
    return v1

    :cond_0
    move-object v1, p0

    .line 135
    goto :goto_0

    :cond_1
    move-object v1, p1

    goto :goto_1

    .line 143
    :cond_2
    new-instance v0, Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/BluetoothMAP;-><init>()V

    .line 145
    .local v0, p:Lcom/broadcom/bt/service/map/BluetoothMAP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.MapService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_2
.end method

.method public static isValidMsgStatus(B)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v0, 0x1

    .line 118
    if-eq v0, p0, :cond_0

    const/4 v1, 0x2

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    .line 604
    const-string v1, "MAP.BluetoothMAP"

    const-string v2, "BluetoothMAP::disableProvider"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/map/IMapService;->disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    .line 594
    const-string v1, "MAP.BluetoothMAP"

    const-string v2, "BluetoothMAP::enableProvider"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/map/IMapService;->enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enumRegisteredProviders()[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 573
    const-string v5, "MAP.BluetoothMAP"

    const-string v8, "BluetoothMAP::enumRegisteredProviders"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :try_start_0
    iget-object v5, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v5}, Lcom/broadcom/bt/service/map/IMapService;->enumRegisteredProviders()[Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, providers:[Ljava/lang/String;
    array-length v5, v3

    new-array v4, v5, [Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    .line 578
    .local v4, rp:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 579
    aget-object v5, v3, v1

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, parts:[Ljava/lang/String;
    new-instance v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    invoke-direct {v5, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;-><init>(Lcom/broadcom/bt/service/map/BluetoothMAP;)V

    aput-object v5, v4, v1

    .line 581
    aget-object v5, v4, v1

    const/4 v8, 0x0

    aget-object v8, v2, v8

    iput-object v8, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    .line 582
    aget-object v5, v4, v1

    const/4 v8, 0x1

    aget-object v8, v2, v8

    iput-object v8, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    .line 583
    aget-object v5, v4, v1

    const/4 v8, 0x2

    aget-object v8, v2, v8

    iput-object v8, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    .line 584
    aget-object v8, v4, v1

    const/4 v5, 0x3

    aget-object v5, v2, v5

    const-string v9, "enabled"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_1
    iput-boolean v5, v8, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->fEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 584
    goto :goto_1

    .line 587
    .end local v1           #i:I
    .end local v2           #parts:[Ljava/lang/String;
    .end local v3           #providers:[Ljava/lang/String;
    .end local v4           #rp:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v4, 0x0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    return-object v4
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 285
    sget v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    .line 286
    const-string v0, "MAP.BluetoothMAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize(): REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 290
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    .line 293
    :cond_0
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "BluetoothMAP::finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "Finishing service reference..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapCallback:Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapCallback:Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapCallback:Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

    .line 333
    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I
    .locals 9
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "folder_path"
    .parameter "status"
    .parameter "folder_info"

    .prologue
    .line 449
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "BluetoothMAP::folderListingResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v8, 0x0

    .line 453
    .local v8, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 462
    :goto_0
    return v8

    .line 455
    :catch_0
    move-exception v7

    .line 456
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v8, 0x2

    .line 460
    goto :goto_0

    .line 458
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 459
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msgFilePath"
    .parameter "virtualFolderPath"

    .prologue
    .line 527
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "BluetoothMAP::getMsgResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v9, 0x0

    .line 532
    .local v9, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapService;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 540
    :goto_0
    return v9

    .line 534
    :catch_0
    move-exception v8

    .line 535
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v9, 0x2

    .line 539
    goto :goto_0

    .line 537
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 538
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/broadcom/bt/service/map/IMapEventHandler;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "mapEventHandler"
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"

    .prologue
    .line 341
    const-string v1, "MAP.BluetoothMAP"

    const-string v2, "BluetoothMAP::init(Context context, IMapEventHandler mapEventHandler, byte provider_type, String provider_id, String provider_display_name, String provider_ds_id, String provider_ds_display_name, boolean feature_message_filter, boolean feature_message_offset_browsing, String[] folder_mappings)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, ret:I
    iput-object p2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    .line 346
    iget-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    if-nez v1, :cond_0

    .line 347
    const-string v1, "MAP.BluetoothMAP"

    const-string v2, "BluetoothMAP::init - error getting map service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    .line 350
    :cond_0
    const-string v1, "MAP.BluetoothMAP"

    const-string v2, "init: skip registerReceiver(ACTION_DS_DISCOVER)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iput-byte p3, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderType:B

    .line 352
    iput-object p4, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderId:Ljava/lang/String;

    .line 353
    iput-object p5, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDisplayName:Ljava/lang/String;

    .line 354
    iput-object p6, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsId:Ljava/lang/String;

    .line 355
    iput-object p7, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsDisplayName:Ljava/lang/String;

    .line 356
    iput-boolean p8, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFeatureMessageFilter:Z

    .line 357
    iput-boolean p9, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mfeatureMessageOffsetBrowsing:Z

    .line 358
    iput-object p10, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFolderMappings:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 4
    .parameter "service"

    .prologue
    .line 304
    const-string v1, "MAP.BluetoothMAP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/map/IMapService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/map/IMapService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    const/4 v1, 0x1

    .line 312
    :goto_0
    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MAP.BluetoothMAP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I
    .locals 11
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "parentPath"
    .parameter "status"
    .parameter "mseTime"
    .parameter "newMsg"
    .parameter "msgInfo"

    .prologue
    .line 470
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "BluetoothMAP::msgListingResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v10, 0x0

    .line 474
    .local v10, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/map/IMapService;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 482
    :goto_0
    return v10

    .line 476
    :catch_0
    move-exception v9

    .line 477
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v10, 0x2

    .line 481
    goto :goto_0

    .line 479
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 480
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    .line 488
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "BluetoothMAP::msgPushResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v8, 0x0

    .line 493
    .local v8, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 501
    :goto_0
    return v8

    .line 494
    :catch_0
    move-exception v7

    .line 495
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v8, 0x2

    .line 499
    goto :goto_0

    .line 497
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 498
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I
    .locals 10
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "notification_type"
    .parameter "message_id"
    .parameter "folder_path"
    .parameter "old_folder_path"
    .parameter "msg_type"

    .prologue
    .line 429
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "BluetoothMAP::notifyClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v9, 0x0

    .line 434
    .local v9, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapService;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 443
    :goto_0
    return v9

    .line 436
    :catch_0
    move-exception v8

    .line 437
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v9, 0x2

    .line 441
    goto :goto_0

    .line 439
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 440
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I
    .locals 4
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "status"

    .prologue
    .line 547
    const-string v2, "MAP.BluetoothMAP"

    const-string v3, "BluetoothMAP::notifyRegistrationResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v1, 0x0

    .line 552
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/map/IMapService;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 560
    :goto_0
    return v1

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x2

    .line 558
    goto :goto_0

    .line 556
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 557
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDSProvider()I
    .locals 12

    .prologue
    .line 366
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "BluetoothMAP::registerDSProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v11, 0x0

    .line 370
    .local v11, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    iget-byte v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderType:B

    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDisplayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsDisplayName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFeatureMessageFilter:Z

    iget-boolean v7, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mfeatureMessageOffsetBrowsing:Z

    iget-object v8, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFolderMappings:[Ljava/lang/String;

    new-instance v9, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

    invoke-direct {v9, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;-><init>(Lcom/broadcom/bt/service/map/BluetoothMAP;)V

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/map/IMapService;->registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return v11

    .line 373
    :catch_0
    move-exception v10

    .line 374
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v11, 0x2

    goto :goto_0
.end method

.method public setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "requestId"
    .parameter "providerId"
    .parameter "dataSourceId"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "msg_folder"

    .prologue
    .line 507
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "BluetoothMAP::setMsgStatusResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v9, 0x0

    .line 512
    .local v9, ret:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapService;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    :goto_0
    return v9

    .line 514
    :catch_0
    move-exception v8

    .line 515
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v9, 0x2

    .line 519
    goto :goto_0

    .line 517
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 518
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startMSEInstance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    .line 397
    const-string v2, "MAP.BluetoothMAP"

    const-string v3, "BluetoothMAP::startMSEInstance"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/map/IMapService;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return v1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    .line 412
    const-string v2, "MAP.BluetoothMAP"

    const-string v3, "BluetoothMAP::stopMSEInstance"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x0

    .line 416
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/map/IMapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 423
    :goto_0
    return v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v1, 0x2

    .line 422
    goto :goto_0

    .line 420
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    .line 382
    const-string v2, "MAP.BluetoothMAP"

    const-string v3, "BluetoothMAP::unregisterDSProvider"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v1, 0x0

    .line 386
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/map/IMapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return v1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x2

    goto :goto_0
.end method
