.class Lcom/android/phone/WorldPhoneModeSelection$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneModeSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/WorldPhoneModeSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WorldPhoneModeSelection;


# direct methods
.method constructor <init>(Lcom/android/phone/WorldPhoneModeSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const v6, 0x7f0e0163

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, stateExtra:Ljava/lang/String;
    const-string v0, "WorldPhoneModeSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastReceiver, stateExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "LOCKED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "INTENT_VALUE_ICC_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, lockedReason:Ljava/lang/String;
    const-string v0, "WorldPhoneModeSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$000(Lcom/android/phone/WorldPhoneModeSelection;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NETWORK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #setter for: Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheckLocked:Z
    invoke-static {v0, v3}, Lcom/android/phone/WorldPhoneModeSelection;->access$102(Lcom/android/phone/WorldPhoneModeSelection;Z)Z

    .line 87
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    invoke-virtual {v0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 88
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0160

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0167

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    invoke-static {v11}, Lcom/android/phone/WorldPhoneModeSelection;->access$302(Z)Z

    .line 95
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #calls: Lcom/android/phone/WorldPhoneModeSelection;->saveLastSimMode(Z)V
    invoke-static {v0, v11}, Lcom/android/phone/WorldPhoneModeSelection;->access$400(Lcom/android/phone/WorldPhoneModeSelection;Z)V

    .line 142
    .end local v9           #lockedReason:Ljava/lang/String;
    .end local v10           #stateExtra:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 97
    .restart local v10       #stateExtra:Ljava/lang/String;
    :cond_2
    const-string v0, "NOT_READY"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$000(Lcom/android/phone/WorldPhoneModeSelection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    const/16 v2, 0x518

    invoke-virtual {v1, v2}, Lcom/android/phone/WorldPhoneModeSelection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getHtcSimTypes(Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    const/16 v2, 0x517

    invoke-virtual {v1, v2}, Lcom/android/phone/WorldPhoneModeSelection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSimTypes(Landroid/os/Message;)V

    goto :goto_0

    .line 112
    .end local v10           #stateExtra:Ljava/lang/String;
    :cond_4
    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_5

    const-string v0, "factory2"

    const-string v1, "ro.bootmode"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #calls: Lcom/android/phone/WorldPhoneModeSelection;->checkNoService()V
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$500(Lcom/android/phone/WorldPhoneModeSelection;)V

    goto :goto_0

    .line 119
    :cond_5
    const-string v0, "com.android.internal.policy.CANCEL_UNLOCK_PIN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #calls: Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$600(Lcom/android/phone/WorldPhoneModeSelection;)I

    move-result v8

    .line 122
    .local v8, lastUserMode:I
    const-string v0, "WorldPhoneModeSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.internal.policy.CANCEL_UNLOCK_PIN, LastUserMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x7

    if-eq v8, v0, :cond_6

    const/4 v0, 0x3

    if-eq v8, v0, :cond_6

    const/16 v0, 0xa

    if-ne v8, v0, :cond_1

    .line 127
    :cond_6
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "cancel unlock pin, switch to CDMA mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    invoke-virtual {v0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 130
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v5, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 132
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e015f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0167

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 136
    .end local v8           #lastUserMode:I
    :cond_7
    const-string v0, "com.android.phone.emergencycall"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "com.android.phone.emergencycall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #setter for: Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z
    invoke-static {v0, v11}, Lcom/android/phone/WorldPhoneModeSelection;->access$002(Lcom/android/phone/WorldPhoneModeSelection;Z)Z

    .line 140
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    #getter for: Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/WorldPhoneModeSelection;->access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection$1;->this$0:Lcom/android/phone/WorldPhoneModeSelection;

    const/16 v2, 0x519

    invoke-interface {v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method
