.class Lcom/htc/music/MediaPlaybackService$LocalPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalPlayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 5614
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/MediaPlaybackService;Lcom/htc/music/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5614
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;-><init>(Lcom/htc/music/MediaPlaybackService;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5614
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5614
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->pause()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/MediaPlaybackService$LocalPlayer;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5614
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 5614
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5614
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5614
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/MediaPlaybackService$LocalPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5614
    invoke-direct {p0, p1}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->prev(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/MediaPlaybackService$LocalPlayer;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5614
    invoke-direct {p0, p1, p2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5614
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/htc/music/MediaPlaybackService$LocalPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 5614
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method private duration()J
    .locals 2

    .prologue
    .line 5935
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5936
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 5938
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getAudioSessionId()I
    .locals 1

    .prologue
    .line 5955
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5956
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    .line 5958
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 5951
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    return v0
.end method

.method private next(ZZ)V
    .locals 5
    .parameter "force"
    .parameter "playAnim"

    .prologue
    const/4 v4, 0x2

    .line 5636
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$6500(Lcom/htc/music/MediaPlaybackService;)V

    .line 5637
    monitor-enter p0

    .line 5638
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$6900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 5639
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "No play queue"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5640
    monitor-exit p0

    .line 5715
    :goto_0
    return-void

    .line 5643
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-boolean v2, v2, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5644
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "==========skip one next"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5645
    monitor-exit p0

    goto :goto_0

    .line 5714
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5648
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5649
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.rotatequickly"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 5653
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 5654
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7300(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 5656
    :cond_3
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7300(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    .line 5657
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7300(Lcom/htc/music/MediaPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 5660
    :cond_4
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$6900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_b

    .line 5662
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-nez v2, :cond_9

    if-nez p1, :cond_9

    .line 5664
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$6700(Lcom/htc/music/MediaPlaybackService;)V

    .line 5665
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.playbackcomplete"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 5666
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$1402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5667
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$7202(Lcom/htc/music/MediaPlaybackService;I)I

    .line 5677
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$6800(Lcom/htc/music/MediaPlaybackService;)V

    .line 5679
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5680
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$6202(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5682
    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    .line 5683
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p2, :cond_d

    .line 5684
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    #calls: Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I
    invoke-static {v2, v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;[II)I

    move-result v1

    .line 5685
    .local v1, now:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 5687
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 5688
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I
    invoke-static {v2, v1}, Lcom/htc/music/MediaPlaybackService;->access$7602(Lcom/htc/music/MediaPlaybackService;I)I

    .line 5689
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.rotateright"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 5693
    :goto_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$2002(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5711
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5712
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$6202(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5714
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    .line 5669
    .end local v1           #now:I
    :cond_9
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1600(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-eq v2, v4, :cond_a

    if-eqz p1, :cond_5

    .line 5670
    :cond_a
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$7202(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_1

    .line 5673
    :cond_b
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7208(Lcom/htc/music/MediaPlaybackService;)I

    goto/16 :goto_1

    .line 5691
    .restart local v1       #now:I
    :cond_c
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.rotatecircle_next"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_2

    .line 5695
    .end local v1           #now:I
    :cond_d
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    #calls: Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I
    invoke-static {v2, v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;[II)I

    move-result v1

    .line 5696
    .restart local v1       #now:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I
    invoke-static {v2, v1}, Lcom/htc/music/MediaPlaybackService;->access$7602(Lcom/htc/music/MediaPlaybackService;I)I

    .line 5697
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)V

    .line 5698
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next mPlayOnNextPrev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5699
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5700
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    .line 5702
    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5703
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "animationtype"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5704
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v2, v3, v0}, Lcom/htc/music/MediaPlaybackService;->access$7700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5706
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_7

    .line 5707
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method private pause()V
    .locals 4

    .prologue
    .line 5617
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$6500(Lcom/htc/music/MediaPlaybackService;)V

    .line 5618
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    monitor-enter v1

    .line 5619
    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5620
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5621
    const-string v0, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause() mPlayOnNextPrev= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5622
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 5624
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFFToEndIsPlaying:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$6600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5625
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$6700(Lcom/htc/music/MediaPlaybackService;)V

    .line 5626
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$1402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5627
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 5630
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$6800(Lcom/htc/music/MediaPlaybackService;)V

    .line 5632
    :cond_1
    monitor-exit v1

    .line 5633
    return-void

    .line 5632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private play()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 5746
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "!!!!! @@@@@ play() - 1"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5748
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8000(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$7900(Lcom/htc/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 5750
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5752
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$6500(Lcom/htc/music/MediaPlaybackService;)V

    .line 5753
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5754
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "call play() and mediaplayer is initialized"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5758
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$4100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 5759
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mMuteByTransientLossOfFocusCanDuck:Z
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$4102(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5760
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 5763
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pauseOtherPlayer()V
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8100(Lcom/htc/music/MediaPlaybackService;)V

    .line 5779
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/MediaPlaybackService;->wasDrmContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1800(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5780
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Check if the DRM File to play is legal"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5781
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    #calls: Lcom/htc/music/MediaPlaybackService;->checkExpirationAndConsumeRights(Landroid/net/Uri;)Z
    invoke-static {v4, v5}, Lcom/htc/music/MediaPlaybackService;->access$8200(Lcom/htc/music/MediaPlaybackService;Landroid/net/Uri;)Z

    move-result v0

    .line 5782
    .local v0, isLegal:Z
    if-nez v0, :cond_3

    .line 5783
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Cannot play drm file because the rights has been expired."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5784
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v5, 0x7f07008b

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(II)V
    invoke-static {v4, v5, v1}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;II)V

    .line 5785
    const/16 v2, 0xa

    .line 5786
    .local v2, min:I
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$6900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$6900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-le v4, v3, :cond_1

    .line 5787
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$6900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    .line 5788
    :cond_1
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$8308(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-ge v4, v2, :cond_2

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$6900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 5789
    invoke-direct {p0, v1, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->next(ZZ)V

    .line 5825
    .end local v0           #isLegal:Z
    .end local v2           #min:I
    :cond_2
    :goto_0
    return-void

    .line 5792
    .restart local v0       #isLegal:Z
    :cond_3
    const-string v4, "[MediaPlaybackService]"

    const-string v5, "Legal rights to play drm file"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5793
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mDrmConsumed:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$1802(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5794
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$8302(Lcom/htc/music/MediaPlaybackService;I)I

    .line 5797
    .end local v0           #isLegal:Z
    :cond_4
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5798
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$1400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v3

    .line 5799
    .local v1, isStateChange:Z
    :cond_5
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$1402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5800
    const-string v3, "[MediaPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play() mPlayOnNextPrev= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5802
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 5805
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->updateNotification()V
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$8400(Lcom/htc/music/MediaPlaybackService;)V

    .line 5807
    if-eqz v1, :cond_2

    .line 5809
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v4, "com.htc.music.playstatechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 5811
    .end local v1           #isStateChange:Z
    :cond_6
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$6900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    if-gtz v4, :cond_7

    .line 5815
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_0

    .line 5820
    :cond_7
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$2000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5821
    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v4, v3}, Lcom/htc/music/MediaPlaybackService;->access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto :goto_0

    .line 5823
    :cond_8
    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const v4, 0x7f07005d

    #calls: Lcom/htc/music/MediaPlaybackService;->showToastInUiThread(II)V
    invoke-static {v3, v4, v1}, Lcom/htc/music/MediaPlaybackService;->access$8500(Lcom/htc/music/MediaPlaybackService;II)V

    goto :goto_0
.end method

.method private position()J
    .locals 2

    .prologue
    .line 5928
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5929
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    .line 5931
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private prev(Z)V
    .locals 6
    .parameter "playAnim"

    .prologue
    .line 5828
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$6500(Lcom/htc/music/MediaPlaybackService;)V

    .line 5829
    monitor-enter p0

    .line 5830
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-boolean v2, v2, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5831
    const-string v2, "[MediaPlaybackService]"

    const-string v3, "===========skip one prev"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5832
    monitor-exit p0

    .line 5925
    :goto_0
    return-void

    .line 5835
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->position()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/MusicUtils;->canRewind(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5836
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->seek(J)J

    .line 5837
    monitor-exit p0

    goto :goto_0

    .line 5924
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5841
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAnimation:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7000(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5842
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.rotatequickly"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 5855
    :cond_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-lez v2, :cond_6

    .line 5856
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7210(Lcom/htc/music/MediaPlaybackService;)I

    .line 5882
    :goto_1
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$6800(Lcom/htc/music/MediaPlaybackService;)V

    .line 5884
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5885
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$6202(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5887
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->stop(Z)V

    .line 5888
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p1, :cond_8

    .line 5889
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    #calls: Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I
    invoke-static {v2, v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;[II)I

    move-result v1

    .line 5890
    .local v1, now:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/music/MediaPlaybackService;->mTest:Z

    .line 5898
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7600(Lcom/htc/music/MediaPlaybackService;)I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 5899
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I
    invoke-static {v2, v1}, Lcom/htc/music/MediaPlaybackService;->access$7602(Lcom/htc/music/MediaPlaybackService;I)I

    .line 5900
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.rotateleft"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 5904
    :goto_2
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsWaitAnimation:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$2002(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5921
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5922
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->m_bUpdateBeatsLogo:Z
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$6202(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5924
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    .line 5858
    .end local v1           #now:I
    :cond_6
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$6900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$7202(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_1

    .line 5902
    .restart local v1       #now:I
    :cond_7
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.rotatecircle_previous"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_2

    .line 5906
    .end local v1           #now:I
    :cond_8
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mAlbumList:[I
    invoke-static {v3}, Lcom/htc/music/MediaPlaybackService;->access$7400(Lcom/htc/music/MediaPlaybackService;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/htc/music/MediaPlaybackService;->access$7200(Lcom/htc/music/MediaPlaybackService;)I

    move-result v4

    #calls: Lcom/htc/music/MediaPlaybackService;->getAlbumPos([II)I
    invoke-static {v2, v3, v4}, Lcom/htc/music/MediaPlaybackService;->access$7500(Lcom/htc/music/MediaPlaybackService;[II)I

    move-result v1

    .line 5907
    .restart local v1       #now:I
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mLastAlbumPos:I
    invoke-static {v2, v1}, Lcom/htc/music/MediaPlaybackService;->access$7602(Lcom/htc/music/MediaPlaybackService;I)I

    .line 5908
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->openCurrent()V
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1500(Lcom/htc/music/MediaPlaybackService;)V

    .line 5909
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$1700(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5910
    invoke-direct {p0}, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->play()V

    .line 5912
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5913
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "animationtype"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5914
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v2, v3, v0}, Lcom/htc/music/MediaPlaybackService;->access$7700(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5916
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mActivityIsLive:Z
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackService;->access$7100(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    .line 5917
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v3, "com.htc.music.changeart"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 5942
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5943
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 5944
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 5945
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 5947
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private stop(Z)V
    .locals 4
    .parameter "remove_status_icon"

    .prologue
    const/4 v3, 0x0

    .line 5718
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->checkIfStopFFRWRepeat()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$6500(Lcom/htc/music/MediaPlaybackService;)V

    .line 5720
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5721
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 5723
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/htc/music/MediaPlaybackService;->access$1202(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    .line 5724
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7800(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5726
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$7800(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5727
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$7802(Lcom/htc/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5735
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5736
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->gotoIdleState()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$6700(Lcom/htc/music/MediaPlaybackService;)V

    .line 5740
    :cond_2
    if-eqz p1, :cond_3

    .line 5741
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$1402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 5743
    :cond_3
    return-void

    .line 5729
    :catch_0
    move-exception v0

    .line 5730
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$LocalPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, v3}, Lcom/htc/music/MediaPlaybackService;->access$7802(Lcom/htc/music/MediaPlaybackService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 5731
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "stop: cursor close fail"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5732
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
