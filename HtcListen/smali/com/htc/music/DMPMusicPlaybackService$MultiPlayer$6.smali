.class Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;
.super Ljava/lang/Object;
.source "DMPMusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2157
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 9
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2159
    const-string v5, "[DMPMusicPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<< Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    sparse-switch p2, :sswitch_data_0

    .line 2254
    const-string v5, "[DMPMusicPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MultiPlayer...unhandled error....what = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v6, 0x1

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->stop(Z)V
    invoke-static {v5, v6}, Lcom/htc/music/DMPMusicPlaybackService;->access$2300(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    .line 2256
    const/4 v5, 0x1

    :goto_0
    return v5

    .line 2163
    :sswitch_0
    const-string v5, "[DMPMusicPlaybackService]"

    const-string v6, "MultiPlayer...MEDIA_ERROR_SERVER_DIED...."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 2165
    .local v4, status:Landroid/app/Notification;
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/htc/music/DMPMusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 2166
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    const/4 v6, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v5, v6}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4702(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Z)Z

    .line 2167
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5000(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2168
    const-string v5, "[DMPMusicPlaybackService]"

    const-string v6, "case MediaPlayer.MEDIA_ERROR_SERVER_DIED: call mMediaPlayer.release()..."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5000(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 2170
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    const/4 v6, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5, v6}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5002(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2177
    :cond_0
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$2100(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    move-result-object v5

    sget-object v6, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v5, v6, :cond_1

    .line 2178
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2180
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 2196
    .end local v4           #status:Landroid/app/Notification;
    :sswitch_1
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    const/4 v6, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v5, v6}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4702(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Z)Z

    .line 2197
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5000(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2198
    const-string v5, "[DMPMusicPlaybackService]"

    const-string v6, "case 1: call mMediaPlayer.release()..."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5000(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 2200
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    const/4 v6, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5, v6}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5002(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2203
    :cond_2
    const-string v5, "[DMPMusicPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "errorListener...mCurrentState => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v7}, Lcom/htc/music/DMPMusicPlaybackService;->access$2100(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$2100(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    move-result-object v5

    sget-object v6, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v5, v6, :cond_4

    .line 2207
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2208
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2209
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2210
    .local v0, data:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v5}, Lcom/htc/music/DMPMusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07005d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2211
    .local v1, errorReason:Ljava/lang/String;
    const-string v5, "error"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2213
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2216
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #errorReason:Ljava/lang/String;
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v5}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2217
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v6, v6, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I
    invoke-static {v6}, Lcom/htc/music/DMPMusicPlaybackService;->access$1100(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v6

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1100(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v2

    .line 2218
    .local v2, maxTimes:I
    :goto_1
    const-string v5, "[DMPMusicPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxTimes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPlayListLen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I
    invoke-static {v7}, Lcom/htc/music/DMPMusicPlaybackService;->access$1100(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$5108(Lcom/htc/music/DMPMusicPlaybackService;)I

    .line 2221
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1100(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$5100(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v5

    if-ge v5, v2, :cond_6

    .line 2223
    const-string v5, "[DMPMusicPlaybackService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try to go to next song....mPlayerErrorCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v7, v7, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayerErrorCount:I
    invoke-static {v7}, Lcom/htc/music/DMPMusicPlaybackService;->access$5100(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v5

    const/16 v6, 0x2b00

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2237
    .end local v2           #maxTimes:I
    :cond_4
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2217
    :cond_5
    const/16 v2, 0xa

    goto :goto_1

    .line 2227
    .restart local v2       #maxTimes:I
    :cond_6
    const-string v5, "[DMPMusicPlaybackService]"

    const-string v6, "errorListener...maxTimes is up..."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v5, v5, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v5}, Lcom/htc/music/DMPMusicPlaybackService;->stop()V

    goto :goto_2

    .line 2232
    .end local v2           #maxTimes:I
    :cond_7
    const-string v5, "[DMPMusicPlaybackService]"

    const-string v6, "errorListener...fail to prepare currnet song and current state is pause. Do nothing!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2248
    :sswitch_2
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    const/4 v6, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v5, v6}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4702(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Z)Z

    .line 2249
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5000(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 2250
    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2251
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2161
    nop

    :sswitch_data_0
    .sparse-switch
        -0x26 -> :sswitch_2
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
