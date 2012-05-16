.class Lcom/htc/music/MediaPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 831
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "BroadcastReceiver onReceive"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, action:Ljava/lang/String;
    const-string v6, "command"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, cmd:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 835
    const-string v6, "[MediaPlaybackService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_0
    const-string v6, "forcePlay"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 838
    .local v2, forcePlay:Z
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 839
    .local v5, tm:Landroid/telephony/TelephonyManager;
    if-nez v5, :cond_2

    .line 840
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "TelephonyManager NULL"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_1
    :goto_0
    return-void

    .line 843
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v3, 0x1

    .line 844
    .local v3, isPhoneIdle:Z
    :goto_1
    if-nez v3, :cond_5

    .line 848
    const-string v6, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 849
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 850
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "Phone is not idle && ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 843
    .end local v3           #isPhoneIdle:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 857
    .restart local v3       #isPhoneIdle:Z
    :cond_4
    const-string v6, "resume"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "pause"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "stop"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 858
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "call state is not idle && !CMDRESUME.equals(cmd) && !CMDPAUSE.equals(cmd) && !CMDSTOP.equals(cmd) => return"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_5
    const-string v6, "next"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "com.android.music.musicservicecommand.next"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 863
    :cond_6
    if-eqz v2, :cond_7

    .line 864
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 865
    :cond_7
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 866
    :cond_8
    const-string v6, "previous"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 867
    :cond_9
    if-eqz v2, :cond_a

    .line 868
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPlayOnNextPrev:Z
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$1702(Lcom/htc/music/MediaPlaybackService;Z)Z

    .line 869
    :cond_a
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->prev()V

    goto/16 :goto_0

    .line 870
    :cond_b
    const-string v6, "togglepause"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 871
    :cond_c
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 872
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 875
    :cond_d
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 877
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 878
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_e

    .line 879
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 880
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    .line 882
    :cond_e
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    .line 883
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 886
    :cond_f
    const-string v6, "pause"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 887
    :cond_10
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 888
    :cond_11
    const-string v6, "play"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 889
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 890
    :cond_12
    const-string v6, "stop"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 891
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    .line 892
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 893
    :cond_13
    const-string v6, "ffstart"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 894
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2202(Lcom/htc/music/MediaPlaybackService;I)I

    .line 895
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x1

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2402(Lcom/htc/music/MediaPlaybackService;I)I

    .line 896
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 897
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x104

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 898
    .end local v4           #msg:Landroid/os/Message;
    :cond_14
    const-string v6, "rwstart"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 899
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mRepcnt:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2202(Lcom/htc/music/MediaPlaybackService;I)I

    .line 900
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x2

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2402(Lcom/htc/music/MediaPlaybackService;I)I

    .line 901
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 902
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x104

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 903
    .end local v4           #msg:Landroid/os/Message;
    :cond_15
    const-string v6, "ffstop"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "rwstop"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 904
    :cond_16
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mFFRWRepeat:I
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$2402(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    .line 905
    :cond_17
    const-string v6, "resume"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 906
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3400(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 908
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->startAndFadeIn()V
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$3600(Lcom/htc/music/MediaPlaybackService;)V

    .line 909
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    const/4 v7, 0x0

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v6, v7}, Lcom/htc/music/MediaPlaybackService;->access$3402(Lcom/htc/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 918
    :cond_18
    const-string v6, "android.htc.intent.action.PLAYBACK_RINGTONE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 921
    :cond_19
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/htc/music/MediaPlaybackService;->noisy_action_time:J
    invoke-static {v6, v7, v8}, Lcom/htc/music/MediaPlaybackService;->access$3702(Lcom/htc/music/MediaPlaybackService;J)J

    .line 927
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 928
    const-string v6, "[MediaPlaybackService]"

    const-string v7, "Phone Idel && ACTION_AUDIO_BECOMING_NOISY && FADEIN"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1300(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 930
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 931
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v6}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v6

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 932
    :cond_1a
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 934
    :cond_1b
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 935
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$3;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/htc/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0
.end method
