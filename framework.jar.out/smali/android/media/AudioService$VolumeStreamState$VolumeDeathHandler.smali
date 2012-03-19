.class Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService$VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeDeathHandler"
.end annotation


# instance fields
.field private mICallback:Landroid/os/IBinder;

.field private mMuteCount:I

.field final synthetic this$1:Landroid/media/AudioService$VolumeStreamState;


# direct methods
.method constructor <init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "cb"

    .prologue
    .line 2473
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2474
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    .line 2475
    return-void
.end method

.method static synthetic access$1300(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2469
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    return v0
.end method

.method static synthetic access$1302(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2469
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    return p1
.end method

.method static synthetic access$4200(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2469
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 2570
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume service client died for stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$3100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-eqz v0, :cond_0

    .line 2573
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 2574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 2576
    :cond_0
    return-void
.end method

.method public mute(Z)V
    .locals 6
    .parameter "state"

    .prologue
    .line 2478
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 2479
    if-eqz p1, :cond_5

    .line 2480
    :try_start_0
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    .line 2484
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 2485
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2487
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2489
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-nez v2, :cond_1

    .line 2491
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 2494
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x1

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 2495
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)I

    move-result v0

    .line 2496
    .local v0, backupHeadsetState:I
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2497
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$4002(Landroid/media/AudioService;I)I

    .line 2498
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 2499
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 2506
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$4002(Landroid/media/AudioService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2518
    .end local v0           #backupHeadsetState:I
    :cond_1
    :goto_1
    :try_start_2
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 2565
    :cond_2
    :goto_2
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2566
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2567
    :goto_3
    return-void

    .line 2502
    .restart local v0       #backupHeadsetState:I
    :cond_3
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$4002(Landroid/media/AudioService;I)I

    .line 2503
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 2504
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2509
    .end local v0           #backupHeadsetState:I
    :catch_0
    move-exception v1

    .line 2511
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->binderDied()V

    .line 2512
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2513
    monitor-exit v3

    goto :goto_3

    .line 2566
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 2516
    :cond_4
    :try_start_5
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$3100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was already muted by this client"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2520
    :cond_5
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez v2, :cond_6

    .line 2521
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected unmute for stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$3100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2523
    :cond_6
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    .line 2524
    iget v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez v2, :cond_2

    .line 2526
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2528
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    if-eqz v2, :cond_7

    .line 2529
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2531
    :cond_7
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2534
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$3100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRingerMode:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 2537
    :cond_8
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2538
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 2546
    :goto_4
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x1

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 2547
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)I

    move-result v0

    .line 2548
    .restart local v0       #backupHeadsetState:I
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2549
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$4002(Landroid/media/AudioService;I)I

    .line 2550
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 2551
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 2558
    :goto_5
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$4002(Landroid/media/AudioService;I)I

    goto/16 :goto_2

    .line 2540
    .end local v0           #backupHeadsetState:I
    :cond_9
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    goto :goto_4

    .line 2554
    .restart local v0       #backupHeadsetState:I
    :cond_a
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mHeadsetState:I
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$4002(Landroid/media/AudioService;I)I

    .line 2555
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 2556
    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object v2, v2, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    invoke-static {v2, v4, v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;Landroid/media/AudioService$VolumeStreamState;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5
.end method
