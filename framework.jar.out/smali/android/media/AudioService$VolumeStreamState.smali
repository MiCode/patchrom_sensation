.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIndexMax:I

.field private mIndex_Headset:I

.field private mLastAudibleIndex:I

.field private mLastAudibleIndex_Headset:I

.field private mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

.field private mLastAudibleVolumeIndexSettingName_Headset:Ljava/lang/String;

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field private mVolumeIndexSettingName_Headset:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "settingName"
    .parameter "streamType"

    .prologue
    .line 2332
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2334
    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->setVolumeIndexSettingName(Ljava/lang/String;)V

    .line 2336
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 2338
    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 2339
    .local v0, cr:Landroid/content/ContentResolver;
    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {p1}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 2340
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 2343
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 2346
    const/4 v1, 0x0

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p3, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 2347
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 2348
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 2349
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 2352
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName_Headset:Ljava/lang/String;

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 2355
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName_Headset:Ljava/lang/String;

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    .line 2359
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 2360
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    .line 2364
    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {p1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2365
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {p1, p3, v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;II)V

    .line 2370
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 2371
    return-void

    .line 2343
    :cond_0
    sget-object v1, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v1, p3

    goto :goto_0

    .line 2355
    :cond_1
    sget-object v1, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v1, p3

    goto :goto_1

    .line 2367
    :cond_2
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {p1, p3, v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;II)V

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2315
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    return v0
.end method

.method static synthetic access$1002(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2315
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    return p1
.end method

.method static synthetic access$1100(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$4400(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName_Headset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName_Headset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    return v0
.end method

.method static synthetic access$502(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2315
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    return p1
.end method

.method static synthetic access$5600(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$600(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return v0
.end method

.method static synthetic access$602(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2315
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return p1
.end method

.method static synthetic access$800(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2315
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2315
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return v0
.end method

.method static synthetic access$902(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2315
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return p1
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .locals 7
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 2603
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2605
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2606
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2607
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 2608
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$4200(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 2609
    monitor-exit v5

    move-object v1, v0

    .line 2620
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_1
    return-object v1

    .line 2606
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2614
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1
    if-eqz p2, :cond_2

    .line 2615
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .line 2620
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_1

    .line 2617
    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_2
    const-string v4, "AudioService"

    const-string/jumbo v6, "stream was not muted by this client"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    const/4 v0, 0x0

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_2

    .line 2621
    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getValidIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 2478
    if-gez p1, :cond_1

    .line 2479
    const/4 p1, 0x0

    .line 2484
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2480
    .restart local p1
    :cond_1
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_0

    .line 2481
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0
.end method

.method private muteCount()I
    .locals 4

    .prologue
    .line 2594
    const/4 v0, 0x0

    .line 2595
    .local v0, count:I
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2596
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2597
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1300(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2599
    :cond_0
    return v0
.end method


# virtual methods
.method public adjustIndex(I)Z
    .locals 2
    .parameter "deltaIndex"

    .prologue
    .line 2386
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    :goto_0
    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    goto :goto_0
.end method

.method public adjustLastAudibleIndex(I)V
    .locals 2
    .parameter "deltaIndex"

    .prologue
    .line 2461
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 2462
    return-void
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 2465
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public mute(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "cb"
    .parameter "state"

    .prologue
    .line 2469
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 2470
    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    .line 2471
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :goto_0
    return-void

    .line 2474
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    goto :goto_0
.end method

.method public setIndex(IZ)Z
    .locals 8
    .parameter "index"
    .parameter "lastAudible"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2412
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v5}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2414
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 2415
    .local v1, oldIndex:I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v5

    iput v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    .line 2416
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    if-eq v1, v5, :cond_2

    .line 2417
    if-eqz p2, :cond_0

    .line 2418
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    iput v4, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I

    .line 2421
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 2422
    .local v0, numStreamTypes:I
    add-int/lit8 v2, v0, -0x1

    .local v2, streamType:I
    :goto_0
    if-ltz v2, :cond_3

    .line 2423
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v4}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)[I

    move-result-object v4

    aget v4, v4, v2

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v4, v5, :cond_1

    .line 2424
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v6, v7, v2}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;III)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 2422
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0           #numStreamTypes:I
    .end local v2           #streamType:I
    :cond_2
    move v3, v4

    .line 2449
    :cond_3
    :goto_1
    return v3

    .line 2434
    .end local v1           #oldIndex:I
    :cond_4
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 2435
    .restart local v1       #oldIndex:I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v5

    iput v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .line 2436
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-eq v1, v5, :cond_7

    .line 2437
    if-eqz p2, :cond_5

    .line 2438
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iput v4, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 2441
    :cond_5
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 2442
    .restart local v0       #numStreamTypes:I
    add-int/lit8 v2, v0, -0x1

    .restart local v2       #streamType:I
    :goto_2
    if-ltz v2, :cond_3

    .line 2443
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v4, :cond_6

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v4}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)[I

    move-result-object v4

    aget v4, v4, v2

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v4, v5, :cond_6

    .line 2444
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v6, v7, v2}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;III)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 2442
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v0           #numStreamTypes:I
    .end local v2           #streamType:I
    :cond_7
    move v3, v4

    .line 2449
    goto :goto_1
.end method

.method public setLastAudibleIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2457
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    .line 2458
    return-void
.end method

.method public setVolumeIndexSettingName(Ljava/lang/String;)V
    .locals 2
    .parameter "settingName"

    .prologue
    .line 2374
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_last_audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_headset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName_Headset:Ljava/lang/String;

    .line 2378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_last_audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_headset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName_Headset:Ljava/lang/String;

    .line 2381
    return-void
.end method
