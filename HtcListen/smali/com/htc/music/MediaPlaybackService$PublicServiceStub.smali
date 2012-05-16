.class Lcom/htc/music/MediaPlaybackService$PublicServiceStub;
.super Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PublicServiceStub"
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
    .line 6586
    invoke-direct {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;-><init>()V

    .line 6587
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 6588
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 6679
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6680
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 6682
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6671
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6672
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    .line 6674
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 6636
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6637
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    .line 6639
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6629
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6630
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 6632
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 6650
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6651
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistId()I

    move-result v0

    .line 6653
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6643
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6644
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 6646
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 1

    .prologue
    .line 6664
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6665
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    .line 6667
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6657
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6658
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6660
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 6717
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6718
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 6720
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 6705
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6706
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 6708
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6622
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6623
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 6625
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 6590
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6591
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 6593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 6617
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6618
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    .line 6619
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 6602
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6603
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 6604
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 6607
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6608
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->play()V

    .line 6609
    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 6686
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6687
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v0

    .line 6689
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 6612
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6613
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->prev()V

    .line 6614
    :cond_0
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 6693
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6694
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    .line 6696
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 6712
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6713
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 6714
    :cond_0
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 6700
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6701
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 6702
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 6597
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6598
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    .line 6599
    :cond_0
    return-void
.end method
