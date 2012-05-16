.class Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;
.super Lcom/htc/music/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrivateServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 5970
    invoke-direct {p0}, Lcom/htc/music/IMediaPlaybackService$Stub;-><init>()V

    .line 5971
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 5972
    return-void
.end method


# virtual methods
.method public activityGoSleep()V
    .locals 1

    .prologue
    .line 6220
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6221
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->activityGoSleep()V

    .line 6222
    :cond_0
    return-void
.end method

.method public activityWakeup()V
    .locals 1

    .prologue
    .line 6225
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6226
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->activityWakeup()V

    .line 6227
    :cond_0
    return-void
.end method

.method public addToQueue(II)V
    .locals 1
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6530
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6531
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->addToQueue(II)V
    invoke-static {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->access$10700(Lcom/htc/music/MediaPlaybackService;II)V

    .line 6533
    :cond_0
    return-void
.end method

.method public addToQueueForMultiConditions(III)V
    .locals 1
    .parameter "type"
    .parameter "id"
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6536
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6537
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->addToQueueForMultiConditions(III)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->access$10800(Lcom/htc/music/MediaPlaybackService;III)V

    .line 6539
    :cond_0
    return-void
.end method

.method public bindPluginService(Ljava/lang/String;)V
    .locals 1
    .parameter "pluginClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6445
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6446
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->bindPluginService(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6447
    :cond_0
    return-void
.end method

.method public clearAlbumArtRequests()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6396
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6397
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->clearAlbumArtRequests()V

    .line 6398
    :cond_0
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
    .line 6427
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6428
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->clearNowplayingQueueRequests()V

    .line 6430
    :cond_0
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 6118
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6119
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 6121
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public endAnimation()V
    .locals 1

    .prologue
    .line 6189
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6190
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->endAnimation()V

    .line 6191
    :cond_0
    return-void
.end method

.method public enqueue([II)V
    .locals 1
    .parameter "list"
    .parameter "action"

    .prologue
    .line 6080
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6081
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->enqueue([II)V

    .line 6082
    :cond_0
    return-void
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6275
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6276
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    .line 6278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 6401
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6402
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 6404
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .parameter "shufflePosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6408
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6409
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    .line 6411
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 6059
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6060
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 6062
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6052
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6053
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 6055
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumQueue()[I
    .locals 1

    .prologue
    .line 6206
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6207
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueue()[I

    move-result-object v0

    .line 6209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumQueuePosition()I
    .locals 1

    .prologue
    .line 6213
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6214
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueuePosition()I

    move-result v0

    .line 6216
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumQueueSize()I
    .locals 1

    .prologue
    .line 6237
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6238
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumQueueSize()I

    move-result v0

    .line 6240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationStatus()Z
    .locals 1

    .prologue
    .line 6194
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6195
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAnimationStatus()Z

    move-result v0

    .line 6197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 6073
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6074
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistId()I

    move-result v0

    .line 6076
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6066
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6067
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 6069
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioEffect()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6552
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6553
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getAudioEffect()Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$11000(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v0

    .line 6555
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 1

    .prologue
    .line 6104
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6105
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 6107
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6514
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6515
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v0

    .line 6517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferingPercent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6382
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6383
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getBufferingPercent()I

    move-result v0

    .line 6385
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6354
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6355
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getComposer()Ljava/lang/String;

    move-result-object v0

    .line 6357
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExternalPluginCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6389
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6390
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getExternalPluginCount()I

    move-result v0

    .line 6392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6361
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6362
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 6364
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6368
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6369
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getGenre()Ljava/lang/String;

    move-result-object v0

    .line 6371
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastAudioEffect()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6568
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6569
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getLastAudioEffect()Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$11200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v0

    .line 6571
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6375
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6376
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 6378
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 6177
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6178
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    .line 6180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNowplaying()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6506
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6507
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getNowplaying()[I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10500(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v0

    .line 6509
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNowplayingQueue(I)V
    .locals 1
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6433
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6434
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getNowplayingQueue(I)V

    .line 6435
    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6097
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6098
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginClass(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6450
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6451
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginClass(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9800(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;

    move-result-object v0

    .line 6453
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    .line 6292
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6293
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginCount()I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v0

    .line 6295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 6325
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6326
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9300(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;

    move-result-object v0

    .line 6328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6318
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6319
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9200(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 6299
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6300
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginName(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9000(Lcom/htc/music/MediaPlaybackService;I)Ljava/lang/String;

    move-result-object v0

    .line 6302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6465
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6466
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10000(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v0

    .line 6468
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 6415
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6416
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    .line 6418
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getQueue()[I
    .locals 1

    .prologue
    .line 6085
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6086
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getQueue()[I

    move-result-object v0

    .line 6088
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 6001
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6002
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 6004
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 6230
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6231
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getQueueSize()I

    move-result v0

    .line 6233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentAlbumId()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6481
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6482
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getRecentAlbumId()[I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10200(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v0

    .line 6485
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentAlbumartPath([I)[Ljava/lang/String;
    .locals 1
    .parameter "albumIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6490
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6491
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getRecentAlbumartPath([I)[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$10300(Lcom/htc/music/MediaPlaybackService;[I)[Ljava/lang/String;

    move-result-object v0

    .line 6494
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentPlayedPlaylist()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6522
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6523
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getRecentPlayedPlaylist()[I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10600(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v0

    .line 6525
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 6170
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6171
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 6173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 6137
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6138
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 6140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 6438
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6439
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    .line 6441
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSongInfo(I)Ljava/lang/String;
    .locals 1
    .parameter "infoType"

    .prologue
    .line 5975
    const/4 v0, 0x0

    return-object v0
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
    .line 6422
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6423
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->getTrackDetails(I)V

    .line 6424
    :cond_0
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6045
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6046
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 6048
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDmcOrPushMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6457
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6458
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isDmcOrPushMode()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9900(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    .line 6460
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 6013
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6014
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 6016
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6311
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6312
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginMode()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$3800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    .line 6314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6473
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6474
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isPluginReady()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$10100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    .line 6476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 6347
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6348
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceConnected()Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    .line 6350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemReady()Z
    .locals 1

    .prologue
    .line 6254
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6255
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isSystemReady()Z

    move-result v0

    .line 6257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 6092
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6093
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->moveQueueItem(II)V

    .line 6094
    :cond_0
    return-void
.end method

.method public next()V
    .locals 2

    .prologue
    .line 6040
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6041
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    .line 6042
    :cond_0
    return-void
.end method

.method public nextAlbum()V
    .locals 2

    .prologue
    .line 6249
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6250
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->nextAlbum(Z)V

    .line 6251
    :cond_0
    return-void
.end method

.method public onPluginSelected(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 6282
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6283
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->onPluginSelected(I)V

    .line 6284
    :cond_0
    return-void
.end method

.method public open([II)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 5996
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5997
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openWithoutCategory([II)V
    invoke-static {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->access$8700(Lcom/htc/music/MediaPlaybackService;[II)V

    .line 5998
    :cond_0
    return-void
.end method

.method public openWithCategory([IILcom/htc/music/NpCategory;)V
    .locals 1
    .parameter "list"
    .parameter "position"
    .parameter "npc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6500
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6501
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->access$10400(Lcom/htc/music/MediaPlaybackService;[IILcom/htc/music/NpCategory;)V

    .line 6503
    :cond_0
    return-void
.end method

.method public openfile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 5991
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5992
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/music/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 5993
    :cond_0
    return-void
.end method

.method public openfileAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 5986
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5987
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->openAsync(Ljava/lang/String;)V

    .line 5988
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 6025
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6026
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 6027
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 6030
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6031
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 6032
    :cond_0
    return-void
.end method

.method public playAlbum(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 5979
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5980
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->playAlbum(I)I

    move-result v0

    .line 5982
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 6111
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6112
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v0

    .line 6114
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 6035
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6036
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->prev()V

    .line 6037
    :cond_0
    return-void
.end method

.method public prevAlbum()V
    .locals 1

    .prologue
    .line 6244
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6245
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->prevAlbum()V

    .line 6246
    :cond_0
    return-void
.end method

.method public refreshPlugin()V
    .locals 1

    .prologue
    .line 6306
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6307
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->refreshPlugin()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$9100(Lcom/htc/music/MediaPlaybackService;)V

    .line 6308
    :cond_0
    return-void
.end method

.method public reloadQueue()V
    .locals 1

    .prologue
    .line 6261
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6262
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->reloadQueue()V

    .line 6263
    :cond_0
    return-void
.end method

.method public removeQueueTracks([I)I
    .locals 1
    .parameter "list"

    .prologue
    .line 6158
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6159
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->removeQueueTracks([I)I

    move-result v0

    .line 6161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTrack(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 6151
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6152
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->removeTrack(I)I

    move-result v0

    .line 6154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTracks(II)I
    .locals 1
    .parameter "first"
    .parameter "last"

    .prologue
    .line 6144
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6145
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->removeTracks(II)I

    move-result v0

    .line 6147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTracksReduceBroadcast([I)I
    .locals 1
    .parameter "list"

    .prologue
    .line 6575
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6576
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->removeTracksReduceBroadcast([I)I

    move-result v0

    .line 6578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 6125
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6126
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    .line 6128
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setAlbumQueue([I)V
    .locals 1
    .parameter "list"

    .prologue
    .line 6201
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6202
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setAlbumQueue([I)V

    .line 6203
    :cond_0
    return-void
.end method

.method public setAudioEffect(Ljava/lang/String;ZI)V
    .locals 1
    .parameter "setting"
    .parameter "applySong"
    .parameter "saveStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6544
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6545
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->access$10900(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;ZI)V

    .line 6548
    :cond_0
    return-void
.end method

.method public setLastAudioEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "setting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6560
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6561
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$11100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 6564
    :cond_0
    return-void
.end method

.method public setMediaMode(Z)V
    .locals 0
    .parameter "mediaMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6267
    return-void
.end method

.method public setNpCategory(Lcom/htc/music/NpCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 6337
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6338
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setCategory(Lcom/htc/music/NpCategory;)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9500(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/NpCategory;)V

    .line 6339
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 6332
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6333
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->setOrientation(I)V
    invoke-static {v0, p1}, Lcom/htc/music/MediaPlaybackService;->access$9400(Lcom/htc/music/MediaPlaybackService;I)V

    .line 6334
    :cond_0
    return-void
.end method

.method public setPlaylist([I)V
    .locals 2
    .parameter "list"

    .prologue
    .line 6342
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6343
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/music/MediaPlaybackService;->setPlaylist([IZ)V

    .line 6344
    :cond_0
    return-void
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 6008
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6009
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setQueuePosition(I)V

    .line 6010
    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 6165
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6166
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 6167
    :cond_0
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 6132
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6133
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 6134
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 6184
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6185
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->startAnimation()V

    .line 6186
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 6020
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6021
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    .line 6022
    :cond_0
    return-void
.end method

.method public stopActivePlugin()V
    .locals 1

    .prologue
    .line 6287
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6288
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->stopActivePlugin()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8800(Lcom/htc/music/MediaPlaybackService;)V

    .line 6289
    :cond_0
    return-void
.end method

.method public syncNowPlayingQueue([I)V
    .locals 1
    .parameter "list"

    .prologue
    .line 6270
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6271
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PrivateServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->syncNowPlayingQueue([I)V

    .line 6272
    :cond_0
    return-void
.end method
