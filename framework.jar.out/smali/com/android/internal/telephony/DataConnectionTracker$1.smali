.class Lcom/android/internal/telephony/DataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 411
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v3, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 414
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v3, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mScreenActionFlag:Z

    .line 416
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 417
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 419
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v4, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 421
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v3, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mScreenActionFlag:Z

    .line 423
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 424
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentReconnectAlarm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reconnect alarm. Previous state was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 428
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentDataStallAlarm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 429
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 430
    :cond_4
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 431
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 433
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    iput-boolean v3, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    .line 434
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 435
    const-string/jumbo v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    move v1, v3

    .line 438
    .local v1, enabled:Z
    :goto_2
    if-nez v1, :cond_0

    .line 441
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v4, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto/16 :goto_0

    .end local v1           #enabled:Z
    :cond_7
    move v1, v4

    .line 435
    goto :goto_2

    .line 443
    :cond_8
    const-string v4, "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "fail_data_setup_counter"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    .line 445
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v4, "fail_data_setup_fail_cause"

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 448
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set mFailDataSetupCounter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mFailDataSetupFailCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
