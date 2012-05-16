.class Lcom/htc/music/MediaPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mHandler:Landroid/os/Handler;

.field private mHasValidRights:Z

.field private mIsInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mVolume:F

.field preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 5342
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5334
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 5336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5338
    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHasValidRights:Z

    .line 5340
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mVolume:F

    .line 5494
    new-instance v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer$1;-><init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 5509
    new-instance v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;-><init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 5515
    new-instance v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer$3;-><init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 5343
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 5344
    return-void
.end method

.method static synthetic access$6100(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5333
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5333
    iput-boolean p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5333
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/htc/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5333
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method


# virtual methods
.method public duration()J
    .locals 5

    .prologue
    .line 5574
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-long v0, v2

    .line 5575
    .local v0, duration:J
    const-string v2, "[MediaPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaPlayer.getDuration(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5576
    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 5607
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 5603
    iget v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mVolume:F

    return v0
.end method

.method public hasValidRights()Z
    .locals 1

    .prologue
    .line 5440
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHasValidRights:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5445
    iget-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 5487
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 5483
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 5484
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 5580
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 5478
    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 5479
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 5480
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 5593
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 5594
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5375
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHasValidRights:Z

    .line 5377
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5379
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 5380
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 5381
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5382
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5394
    :goto_0
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "setDataSource finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5395
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5396
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "prepare"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5397
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 5398
    const-string v1, "[MediaPlaybackService]"

    const-string v2, "prepare finished"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 5432
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5433
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 5435
    iput-boolean v5, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5436
    :goto_1
    return-void

    .line 5385
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 5399
    :catch_0
    move-exception v0

    .line 5401
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5402
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5403
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5405
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 5407
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5408
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 5409
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5412
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 5414
    .local v0, ex:Ljava/security/AccessControlException;
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5415
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHasValidRights:Z

    .line 5416
    invoke-virtual {v0}, Ljava/security/AccessControlException;->printStackTrace()V

    .line 5417
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5425
    .end local v0           #ex:Ljava/security/AccessControlException;
    :catch_3
    move-exception v0

    .line 5427
    .local v0, ex:Ljava/lang/Exception;
    iput-boolean v4, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5429
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public setDataSourceAsync(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 5348
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 5349
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 5350
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 5351
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 5352
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5367
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5368
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 5370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5371
    :goto_0
    return-void

    .line 5353
    :catch_0
    move-exception v0

    .line 5355
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    .line 5357
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 5359
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    .line 5361
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 5363
    .local v0, ex:Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5364
    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSourceAsync path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 5491
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 5492
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 5598
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 5599
    iput p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mVolume:F

    .line 5600
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 5449
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5451
    const-string v0, "Original"

    .line 5452
    .local v0, style:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5460
    .end local v0           #style:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 5462
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->addRecentAlbumList()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5900(Lcom/htc/music/MediaPlaybackService;)V

    .line 5463
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->addRecentPlayedPlaylist()V
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$6000(Lcom/htc/music/MediaPlaybackService;)V

    .line 5464
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v2, "com.htc.music.recentplayedchanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 5465
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->printATSPlayMusicLog()V

    .line 5466
    return-void

    .line 5455
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/music/util/SoundEffectHelper;->enableCurrentSoundEffect(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 5469
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "MultiPlayer.stop()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 5471
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 5472
    return-void
.end method
