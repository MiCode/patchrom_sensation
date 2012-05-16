.class Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;
.super Lcom/htc/music/IMusicPluginService$Stub;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DMPPlaybackServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/DMPMusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 3360
    invoke-direct {p0}, Lcom/htc/music/IMusicPluginService$Stub;-><init>()V

    .line 3361
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 3362
    return-void
.end method


# virtual methods
.method public clearAlbumArtRequests()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->clearAlbumArtRequests()V

    .line 3498
    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3501
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->clearNowplayingQueueRequests()V

    .line 3502
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumArtByIndex(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "index"

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtByIndex(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArtPath()V
    .locals 1

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtPath()V

    .line 3450
    return-void
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3509
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getBufferingPercent()I

    move-result v0

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getComposer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getGenre()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3489
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getNotifyIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNowplayingQueue(I)V
    .locals 4
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3514
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v2

    const/16 v3, 0x2aff

    invoke-virtual {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3515
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3516
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "interval"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3517
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3518
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3519
    return-void
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 1
    .parameter "shufflePosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3522
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    return v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 3365
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getQueueSize()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 3441
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 3433
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    return v0
.end method

.method public getTrackDetails(I)V
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3526
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getTrackDetails(I)V

    .line 3527
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3369
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPluginReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->checkBeforeNextOrPre()Z
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$5200(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3395
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v0

    const/16 v1, 0x2afa

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    .line 3398
    :goto_0
    return-void

    .line 3397
    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "** Press prev button too fast, ignore this time..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->pause()V

    .line 3378
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 3381
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->play()V

    .line 3382
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 3405
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->checkBeforeNextOrPre()Z
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$5200(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3387
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v0

    const/16 v1, 0x2af9

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    .line 3390
    :goto_0
    return-void

    .line 3389
    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "** Press prev button too fast, ignore this time..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/htc/music/IPluginIPCNotify;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->registerCallback(Lcom/htc/music/IPluginIPCNotify;)V

    .line 3466
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/DMPMusicPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3425
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->setQueuePosition(I)V

    .line 3426
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 3437
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->setRepeatMode(I)V

    .line 3438
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->setShuffleMode(I)V

    .line 3430
    return-void
.end method

.method public startPluginActivity()V
    .locals 1

    .prologue
    .line 3473
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->startPluginActivity()V

    .line 3474
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->stop()V

    .line 3374
    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->unregisterCallback()V

    .line 3470
    return-void
.end method
