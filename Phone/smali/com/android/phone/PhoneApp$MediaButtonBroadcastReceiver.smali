.class Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 3920
    iput-object p1, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3920
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3923
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 3927
    .local v1, event:Landroid/view/KeyEvent;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x4f

    if-ne v5, v6, :cond_10

    .line 3928
    const/4 v0, 0x0

    .line 3929
    .local v0, consumed:Z
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7

    .line 3944
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1700()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3946
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3951
    :cond_0
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_6

    .line 3960
    const/4 v0, 0x1

    .line 3968
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3969
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4038
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1700()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4039
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4040
    const-string v5, "PhoneApp"

    const-string v6, "MediaButtonBroadcastReceiver : abortBroadcast()!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 4087
    .end local v0           #consumed:Z
    :cond_5
    :goto_2
    return-void

    .line 3961
    .restart local v0       #consumed:Z
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1700()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 3962
    const/4 v0, 0x1

    goto :goto_0

    .line 3972
    :cond_7
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 3973
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3974
    const-string v5, "PhoneApp"

    const-string v6, "MediaButtonBroadcastReceiver: HEADSETHOOK up!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    :cond_8
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3977
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3981
    :cond_9
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3982
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3986
    :cond_a
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$3700(Lcom/android/phone/PhoneApp;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 3987
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3988
    const-string v5, "PhoneApp"

    const-string v6, "MediaButtonBroadcastReceiver : headset plug-out!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3993
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1700()Z

    move-result v5

    if-nez v5, :cond_f

    .line 3994
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 3996
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3997
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->updateMenu()Z

    .line 4005
    :cond_c
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v6, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    if-ne v5, v6, :cond_e

    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v5, v5, Lcom/android/phone/PhoneApp;->mAcceptNextRedial:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 4006
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 4007
    .local v2, lEventTime:J
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleHeadsetHook(): lEventTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5300()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-gez v5, :cond_d

    .line 4009
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lcom/android/phone/PhoneApp;->access$5302(J)J

    .line 4010
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->reDialLastNumber()V
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$5400(Lcom/android/phone/PhoneApp;)V

    .line 4014
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/phone/PhoneApp;->mAcceptNextRedial:Z

    .line 4016
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x320

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 4018
    :cond_d
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$5302(J)J

    .line 4019
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4020
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleHeadsetHook(): mLastMediaButtonUpTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5300()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4025
    .end local v2           #lEventTime:J
    :cond_e
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lcom/android/phone/PhoneApp;->access$5302(J)J

    goto/16 :goto_1

    .line 4028
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1700()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 4029
    const/4 v0, 0x1

    .line 4030
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$1702(Z)Z

    goto/16 :goto_1

    .line 4044
    .end local v0           #consumed:Z
    :cond_10
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_5

    .line 4045
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_11

    .line 4046
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_11

    .line 4047
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_11

    .line 4048
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    .line 4049
    .local v4, muteState:Z
    if-nez v4, :cond_12

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4055
    .end local v4           #muteState:Z
    :cond_11
    iget-object v5, p0, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_5

    .line 4062
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp$MediaButtonBroadcastReceiver;->abortBroadcast()V

    goto/16 :goto_2

    .line 4049
    .restart local v4       #muteState:Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_3
.end method
