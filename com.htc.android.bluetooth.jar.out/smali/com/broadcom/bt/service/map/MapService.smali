.class public Lcom/broadcom/bt/service/map/MapService;
.super Ljava/lang/Object;
.source "MapService.java"


# static fields
.field private static final D:Z = true

.field private static final DISABLED_MAP_PROVIDERS:Ljava/lang/String; = "DisabledMapProviders"

.field private static REF_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MAP.MapService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFinished:Z

.field private mProviders:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    .line 46
    invoke-static {}, Lcom/broadcom/bt/service/map/MapService;->Native_InitMapService()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    .line 63
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 64
    sget v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    .line 65
    const-string v0, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor(): REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private native Native_BluetoothMapMSEFolderListingResponse(IBIILjava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V
.end method

.method private native Native_BluetoothMapMSEMsgEntryResponse(IBIIIIBBBBBJBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native Native_BluetoothMapMSEMsgListInfoResponse(IBILjava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSENotifyClients(IBJLjava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSENotifyRegistrationResponse(IB)V
.end method

.method private native Native_BluetoothMapMSEPushResponse(IJB)V
.end method

.method private native Native_BluetoothMapMSESetMsgStatusResponse(IBB)V
.end method

.method private native Native_BluetoothMapMSEStart(Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSEStop(I)V
.end method

.method private native Native_CleanupMapService()V
.end method

.method private static native Native_InitMapService()V
.end method


# virtual methods
.method public disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    .line 553
    const-string v3, "MAP.MapService"

    const-string v4, "disableProvider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 556
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 557
    const-string v3, "MAP.MapService"

    const-string v4, "context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-void

    .line 563
    :cond_0
    const-string v3, "DisabledMapProviders"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 564
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 565
    .local v1, se:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 566
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    .line 527
    const-string v4, "MAP.MapService"

    const-string v5, "enableProvider"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 530
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 531
    const-string v4, "MAP.MapService"

    const-string v5, "context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :goto_0
    return-void

    .line 536
    :cond_0
    const-string v4, "DisabledMapProviders"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 537
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 538
    .local v2, se:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 539
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 544
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v1, i:Landroid/content/Intent;
    const-string v4, "ds_id"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public enumRegisteredProviders()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 495
    const-string v10, "MAP.MapService"

    const-string v11, "enumRegisteredProviders"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 498
    .local v2, appContext:Landroid/content/Context;
    if-nez v2, :cond_1

    .line 499
    const-string v10, "MAP.MapService"

    const-string v11, "context is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-array v8, v12, [Ljava/lang/String;

    .line 523
    :cond_0
    return-object v8

    .line 503
    :cond_1
    const-string v10, "DisabledMapProviders"

    invoke-virtual {v2, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 504
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 505
    .local v1, allProps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v7, 0x0

    .line 506
    .local v7, mProvidersCopy:Ljava/util/Vector;
    iget-object v11, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v11

    .line 507
    :try_start_0
    iget-object v10, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/Vector;

    move-object v7, v0

    .line 508
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    add-int/2addr v10, v11

    new-array v8, v10, [Ljava/lang/String;

    .line 511
    .local v8, ret:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 513
    .local v5, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 514
    invoke-virtual {v7, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 515
    .local v3, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    new-instance v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":enabled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v5

    .line 516
    add-int/lit8 v5, v5, 0x1

    .line 517
    goto :goto_0

    .line 508
    .end local v3           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v5           #i:I
    .end local v8           #ret:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 519
    .restart local v5       #i:I
    .restart local v8       #ret:[Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 520
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v11, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":disabled"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v11, v8, v5

    .line 521
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 69
    sget v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    .line 70
    const-string v0, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize(): REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/MapService;->finish()V

    .line 73
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.MapService"

    const-string v1, "MapService.finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/MapService;->unregisterallProviders()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V
    .locals 11
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "folder_path"
    .parameter "status"
    .parameter "folder_info"

    .prologue
    .line 287
    const-string v1, "MAP.MapService"

    const-string v2, "FolderListingResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v10

    .line 294
    .local v10, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v10, :cond_2

    .line 295
    if-nez p5, :cond_1

    .line 296
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p6

    array-length v1, v0

    if-ge v9, v1, :cond_0

    .line 297
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolderListingResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p6, v9

    iget-wide v3, v3, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p6, v9

    iget-object v3, v3, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p6, v9

    iget-object v3, v3, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 300
    :cond_0
    move-object/from16 v0, p6

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    .line 303
    const/4 v4, 0x1

    const/4 v1, 0x0

    aget-object v1, p6, v1

    iget-wide v1, v1, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    long-to-int v5, v1

    const/4 v1, 0x0

    aget-object v1, p6, v1

    iget-object v1, v1, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolderNameWithoutPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    aget-object v1, p6, v1

    iget-object v7, v1, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, p6, v1

    iget-wide v1, v1, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    long-to-int v1, v1

    int-to-byte v8, v1

    move-object v1, p0

    move v2, p1

    move/from16 v3, p5

    invoke-virtual/range {v1 .. v8}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    .line 314
    .end local v9           #i:I
    :goto_1
    return-void

    .line 308
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p5

    invoke-virtual/range {v1 .. v8}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_1

    .line 311
    :cond_2
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolderListingResponse - session not found for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getCallback(I)Lcom/broadcom/bt/service/map/IMapCallback;
    .locals 5
    .parameter "mse_instance_id"

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, callback:Lcom/broadcom/bt/service/map/IMapCallback;
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v4

    .line 696
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 698
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 699
    .local v1, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget v3, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    if-ne v3, p1, :cond_1

    .line 700
    iget-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .line 704
    .end local v1           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    monitor-exit v4

    .line 705
    return-object v0

    .line 696
    .restart local v1       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    .end local v1           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .locals 5
    .parameter "mse_session_id"

    .prologue
    .line 680
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v4

    .line 681
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 682
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 683
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v2

    .line 684
    .local v2, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v2, :cond_0

    .line 685
    monitor-exit v4

    .line 689
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v2           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :goto_1
    return-object v2

    .line 681
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .restart local v2       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v2           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    monitor-exit v4

    .line 689
    const/4 v2, 0x0

    goto :goto_1

    .line 688
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "mse_instance_id"

    .prologue
    .line 651
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 652
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 654
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 655
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    if-ne v2, p1, :cond_0

    .line 656
    monitor-exit v3

    .line 660
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v0

    .line 652
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    monitor-exit v3

    .line 660
    const/4 v0, 0x0

    goto :goto_1

    .line 659
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getContext(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "mse_name"
    .parameter "mse_type"

    .prologue
    .line 637
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 638
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 640
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 641
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    monitor-exit v3

    .line 645
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v0

    .line 638
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_1

    .line 646
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "provider_id"
    .parameter "data_source_id"

    .prologue
    .line 609
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 610
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 612
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 613
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    monitor-exit v3

    .line 618
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v0

    .line 610
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    monitor-exit v3

    .line 618
    const/4 v0, 0x0

    goto :goto_1

    .line 617
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getContextByDsName(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "dsName"
    .parameter "mse_type"

    .prologue
    .line 623
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 624
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 626
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 627
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-byte v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p2, v2, :cond_0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 628
    monitor-exit v3

    .line 632
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v0

    .line 624
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    monitor-exit v3

    .line 632
    const/4 v0, 0x0

    goto :goto_1

    .line 631
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getContextFromSessionId(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "mse_session_id"

    .prologue
    .line 665
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 666
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 668
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 669
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 670
    monitor-exit v3

    .line 674
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v0

    .line 666
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    monitor-exit v3

    .line 674
    const/4 v0, 0x0

    goto :goto_1

    .line 673
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMsgFailResponse(IJB)V
    .locals 6
    .parameter "session_id"
    .parameter "message_id"
    .parameter "status"

    .prologue
    .line 442
    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    .line 445
    return-void
.end method

.method public getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_file_path"
    .parameter "virtual_folder_path"

    .prologue
    .line 427
    const-string v0, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetMsgResponse: Msg_Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", virtual_folder_path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-nez p5, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p4, p7}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    move-object v0, p0

    move v1, p1

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p4, p7}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "MAP.MapService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    .line 82
    return-void
.end method

.method isProviderDisabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "data_source_name"

    .prologue
    const/4 v3, 0x0

    .line 712
    const-string v4, "MAP.MapService"

    const-string v5, "isProviderDisabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 714
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 715
    const-string v4, "MAP.MapService"

    const-string v5, "context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    :goto_0
    return v3

    .line 718
    :cond_1
    const-string v4, "DisabledMapProviders"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 719
    .local v2, sp:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, sProp:Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 721
    const-string v3, "MAP.MapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v3, 0x1

    goto :goto_0
.end method

.method isRegistered(BLjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, ret:Z
    const-string v3, "MAP.MapService"

    const-string v4, "isRegistered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v4

    .line 596
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 598
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(BLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    const/4 v2, 0x1

    .line 603
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    monitor-exit v4

    .line 604
    return v2

    .line 596
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method isRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 577
    const/4 v2, 0x0

    .line 579
    .local v2, ret:Z
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v4

    .line 580
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 581
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 582
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    const/4 v2, 0x1

    .line 587
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    monitor-exit v4

    .line 588
    return v2

    .line 580
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .parameter "mse_session_id"
    .parameter "status"
    .parameter "refdata"
    .parameter "parameter_mask"
    .parameter "org_msg_size"
    .parameter "attachment_size"
    .parameter "is_text"
    .parameter "is_high_priority"
    .parameter "is_read"
    .parameter "is_sent"
    .parameter "is_protected"
    .parameter "msg_handle"
    .parameter "msg_type"
    .parameter "reception_status"
    .parameter "subject"
    .parameter "date_time"
    .parameter "sender_name"
    .parameter "sender_addressing"
    .parameter "recipient_name"
    .parameter "recipient_addressing"
    .parameter "replyto_addressing"
    .parameter "folder_path"

    .prologue
    .line 374
    const-string v2, "MAP.MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MsgEntryResponse: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Msg_Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", folder_path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-wide/16 v14, 0x0

    .line 379
    .local v14, nMapMsgHandle:J
    if-nez p2, :cond_0

    .line 380
    invoke-virtual/range {p0 .. p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v2

    iget-object v2, v2, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object/from16 v0, p12

    move-object/from16 v1, p22

    invoke-virtual {v2, v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    :cond_0
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    .line 385
    invoke-direct/range {v2 .. v24}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEMsgEntryResponse(IBIIIIBBBBBJBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 7
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "parent_path"
    .parameter "status"
    .parameter "mse_time"
    .parameter "new_msg"
    .parameter "msg_info"

    .prologue
    .line 324
    const-string v0, "MAP.MapService"

    const-string v1, "MsgListingResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v6

    .line 332
    .local v6, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v6, :cond_2

    .line 336
    const/4 v3, 0x0

    .line 337
    .local v3, listSize:I
    if-nez p5, :cond_0

    .line 338
    array-length v3, p8

    .line 340
    if-lez v3, :cond_1

    const/4 v0, 0x0

    aget-object v0, p8, v0

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "MAP.MapService"

    const-string v1, "Set session mMessageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-object p8, v6, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    :cond_0
    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p5

    move-object v4, p6

    move v5, p7

    .line 352
    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEMsgListInfoResponse(IBILjava/lang/String;B)V

    .line 358
    .end local v3           #listSize:I
    :goto_1
    return-void

    .line 347
    .restart local v3       #listSize:I
    :cond_1
    const-string v0, "MAP.MapService"

    const-string v1, "Reset session mMessageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    goto :goto_0

    .line 356
    .end local v3           #listSize:I
    :cond_2
    const-string v0, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No client session found for session id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 6
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    .line 401
    const-string v4, "MAP.MapService"

    const-string v5, "MsgPushResponse"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v2

    .line 407
    .local v2, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v2, :cond_1

    .line 408
    invoke-virtual {v2, p6}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, s_virtual_folder:Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 411
    .local v0, nMapMsgHandle:J
    if-nez p5, :cond_0

    .line 412
    iget-object v4, v2, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v4, p4, v3}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 415
    :cond_0
    invoke-direct {p0, p1, v0, v1, p5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEPushResponse(IJB)V

    .line 419
    .end local v0           #nMapMsgHandle:J
    .end local v3           #s_virtual_folder:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 12
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "notification_type"
    .parameter "message_id"
    .parameter "folder_path"
    .parameter "old_folder_path"
    .parameter "msg_type"

    .prologue
    .line 230
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotifyClient: notification type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", folder_path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old_folder_path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v10

    .line 233
    .local v10, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v10, :cond_5

    .line 234
    const/4 v9, 0x0

    .line 235
    .local v9, clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget-object v1, v10, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 236
    iget-object v1, v10, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    check-cast v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .line 243
    .restart local v9       #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 246
    .local v11, msg_virtual_folder:Ljava/lang/String;
    const/4 v1, 0x7

    if-eq p3, v1, :cond_0

    const/16 v1, 0x7d

    if-ne p3, v1, :cond_1

    .line 249
    :cond_0
    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v11}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeMAPMsgId(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_1
    const/16 v1, 0x7d

    if-ne p3, v1, :cond_3

    .line 273
    .end local v9           #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v11           #msg_virtual_folder:Ljava/lang/String;
    :goto_0
    return-void

    .line 238
    .restart local v9       #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotifyClient- error finding session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .restart local v11       #msg_virtual_folder:Ljava/lang/String;
    :cond_3
    const-string v1, "root"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, msg_virtual_folder_stripped:Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, msg_old_virtual_folder:Ljava/lang/String;
    const-string v1, "root/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    const-string v1, "root"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 265
    :cond_4
    iget v2, v10, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v11}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    move-object v1, p0

    move v3, p3

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSENotifyClients(IBJLjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 269
    .end local v6           #msg_virtual_folder_stripped:Ljava/lang/String;
    .end local v7           #msg_old_virtual_folder:Ljava/lang/String;
    .end local v9           #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v11           #msg_virtual_folder:Ljava/lang/String;
    :cond_5
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotifyClient- error finding context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status"

    .prologue
    .line 484
    const-string v0, "MAP.MapService"

    const-string v1, "NotifyRegistrationResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0, p1, p4}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSENotifyRegistrationResponse(IB)V

    .line 487
    return-void
.end method

.method public registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    .locals 10
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"
    .parameter "callback"

    .prologue
    .line 122
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisterDSProvider provider_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "provider name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0, p1, p2, p4}, Lcom/broadcom/bt/service/map/MapService;->isRegistered(BLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 128
    invoke-virtual {p0, p2, p4, p5}, Lcom/broadcom/bt/service/map/MapService;->isProviderDisabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    const/4 v1, 0x2

    if-eq v1, p1, :cond_0

    const/4 v1, 0x4

    if-ne v1, p1, :cond_1

    .line 136
    :cond_0
    const-string v1, "MAP.MapService"

    const-string v2, "[registerDSProvider] new SmsMapProviderContext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/broadcom/bt/service/map/SmsMapProviderContext;

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/map/SmsMapProviderContext;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V

    .line 148
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-void

    .line 142
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    const-string v1, "MAP.MapService"

    const-string v2, "[registerDSProvider] new MapProviderContext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/map/MapProviderContext;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V

    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    goto :goto_0

    .line 150
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_2
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    :cond_3
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    .locals 0
    .parameter "mse_session_id"
    .parameter "status"
    .parameter "ref_data"
    .parameter "file_size"
    .parameter "folder_name"
    .parameter "cr_time"
    .parameter "mode"

    .prologue
    .line 280
    invoke-direct/range {p0 .. p7}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEFolderListingResponse(IBIILjava/lang/String;Ljava/lang/String;B)V

    .line 282
    return-void
.end method

.method public setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "msg_folder"

    .prologue
    .line 452
    const-string v2, "MAP.MapService"

    const-string v3, "SetMsgStatusResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    .line 458
    .local v0, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p7}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, sVirtualFolder:Ljava/lang/String;
    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    if-nez p5, :cond_0

    .line 465
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v2, p6, v1}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeMAPMsgId(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .end local v1           #sVirtualFolder:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p4, p5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSESetMsgStatusResponse(IBB)V

    .line 477
    return-void

    .line 471
    .restart local v1       #sVirtualFolder:Ljava/lang/String;
    :cond_1
    if-nez p5, :cond_0

    .line 472
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    const-string v3, "root/telecom/msg/deleted"

    invoke-virtual {v2, p6, v3}, Lcom/broadcom/bt/service/map/MapProviderContext;->setMAPMsgFolder(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0
.end method

.method public startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    .line 191
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartMSEInstance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 195
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    .line 196
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartMSEInstance starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    iget-byte v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    invoke-direct {p0, v1, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEStart(Ljava/lang/String;Ljava/lang/String;B)V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartMSEInstance - error finding context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    .line 211
    const-string v1, "MAP.MapService"

    const-string v2, "stopMSEInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 214
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    .line 215
    iget v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEStop(I)V

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMSEInstance - error finding context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    .line 159
    const-string v4, "MAP.MapService"

    const-string v5, "unregisterDSProvider"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, foundCtx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v5

    .line 162
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 165
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    move-object v1, v0

    .line 167
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 171
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-eqz v1, :cond_1

    .line 175
    const-string v4, "MAP.MapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnregisterDSProvider - removing ctx for provider id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provider_ds_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_1
    iget-object v4, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_1
    :goto_1
    return-void

    .line 162
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 179
    :catch_0
    move-exception v3

    .line 180
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "MAP.MapService"

    const-string v5, "Error calling callback onMSEStateChanged()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterallProviders()V
    .locals 5

    .prologue
    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const-string v1, "MAP.MapService"

    const-string v3, "unregisterallProviders() - No Providers registered"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 103
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    const-string v1, "MAP.MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterallProviders - Stopping MSE instance Provider Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ProviderDSId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :catch_0
    move-exception v1

    .line 113
    :goto_1
    return-void

    .line 108
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :try_start_4
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapService;->Native_CleanupMapService()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
