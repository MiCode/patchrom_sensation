.class Lcom/android/internal/policy/impl/KeyguardViewMediator$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 985
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 988
    const-string v6, "seq"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 993
    .local v3, sequence:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v6

    .line 994
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 997
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v7, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v5, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$102(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 999
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1001
    :cond_0
    monitor-exit v6

    .line 1074
    .end local v3           #sequence:I
    :cond_1
    :goto_0
    return-void

    .line 1001
    .restart local v3       #sequence:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1002
    .end local v3           #sequence:I
    :cond_2
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1004
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v2

    .line 1006
    .local v2, phoneState:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 1008
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v6

    .line 1009
    :try_start_1
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1022
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1024
    :cond_3
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 1027
    .end local v2           #phoneState:Ljava/lang/String;
    :cond_4
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1028
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    .line 1030
    .local v1, enabled:Z
    :goto_1
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd1

    if-ne v5, v6, :cond_9

    .line 1031
    if-nez v1, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCard$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1032
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1033
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1051
    :cond_5
    :goto_2
    if-eqz v1, :cond_1

    .line 1052
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    .line 1053
    .local v4, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_1

    .line 1056
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimAbsent()V

    .line 1057
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-wide/16 v6, 0x64

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked(J)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;J)V

    goto/16 :goto_0

    .end local v1           #enabled:Z
    .end local v4           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    move v1, v5

    .line 1028
    goto :goto_1

    .line 1035
    .restart local v1       #enabled:Z
    :cond_8
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_2

    .line 1040
    :cond_9
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isStuckNetworkLock()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1041
    if-nez v1, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCard$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1042
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1043
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_2

    .line 1045
    :cond_a
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_2

    .line 1063
    .end local v1           #enabled:Z
    :cond_b
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1064
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBootCompleted:Z
    invoke-static {v5, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1002(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    goto/16 :goto_0

    .line 1068
    :cond_c
    const-string v5, "com.htc.intent.action.LOCKSCREEN_DO_KEYGUARD"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1069
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1070
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0
.end method
