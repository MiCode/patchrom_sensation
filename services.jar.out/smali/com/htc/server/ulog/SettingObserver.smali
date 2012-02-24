.class final Lcom/htc/server/ulog/SettingObserver;
.super Landroid/database/ContentObserver;
.source "SettingObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsErrorReportSettingEnabled:Z

.field private mIsSenseDotComSettingEnabled:Z

.field private mIsTellHTCSettingShown:Z

.field private mIsUserProfilingSettingEnabled:Z

.field private mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

.field private mPreferredNetworkSetting:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/htc/server/ulog/PolicyStore;)V
    .locals 1
    .parameter "handler"
    .parameter "ctx"
    .parameter "policyStore"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    .line 21
    iput-object p2, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isTellHTCSettingShown(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/ulog/SettingObserver;->mIsTellHTCSettingShown:Z

    .line 23
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isErrorReportSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/ulog/SettingObserver;->mIsErrorReportSettingEnabled:Z

    .line 24
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/ulog/SettingObserver;->mIsUserProfilingSettingEnabled:Z

    .line 25
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->getTellHtcPreferredNetworkSetting(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    .line 26
    iget-object v0, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->isSenseDotComEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/server/ulog/SettingObserver;->mIsSenseDotComSettingEnabled:Z

    .line 27
    iput-object p3, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    .line 28
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    const/4 v9, 0x1

    .line 31
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->isTellHTCSettingShown(Landroid/content/Context;)Z

    move-result v3

    .line 32
    .local v3, newTellHTCSettingShown:Z
    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsTellHTCSettingShown:Z

    if-eq v6, v3, :cond_1

    .line 33
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "htc_error_report_setting is changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    if-eqz v3, :cond_0

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "show_tellhtc_ui"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: show_tellhtc_ui"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iput-boolean v3, p0, Lcom/htc/server/ulog/SettingObserver;->mIsTellHTCSettingShown:Z

    .line 41
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v6, v9}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    .line 44
    :cond_1
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->isErrorReportSettingEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 45
    .local v1, newErrorReportSetting:Z
    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsErrorReportSettingEnabled:Z

    if-eq v6, v1, :cond_3

    .line 46
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send_htc_error_report is changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz v1, :cond_2

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "error_report"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: error_report"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iput-boolean v1, p0, Lcom/htc/server/ulog/SettingObserver;->mIsErrorReportSettingEnabled:Z

    .line 54
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v6, v9}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    .line 57
    :cond_3
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 58
    .local v4, newUserProfilingSettingEnabled:Z
    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsUserProfilingSettingEnabled:Z

    if-eq v6, v4, :cond_5

    .line 59
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send_htc_application_log is changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz v4, :cond_4

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "application_log"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: application_log"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iput-boolean v4, p0, Lcom/htc/server/ulog/SettingObserver;->mIsUserProfilingSettingEnabled:Z

    .line 67
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v6, v9}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    .line 70
    :cond_5
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->getTellHtcPreferredNetworkSetting(Landroid/content/Context;)I

    move-result v2

    .line 71
    .local v2, newPreferredNetwork:I
    iget v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    if-eq v6, v2, :cond_8

    .line 72
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "htc_error_report_prefer_network is changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-nez v2, :cond_7

    invoke-static {}, Lcom/htc/server/ulog/Utils;->is3GNetwork()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsTellHTCSettingShown:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsErrorReportSettingEnabled:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsUserProfilingSettingEnabled:Z

    if-eqz v6, :cond_7

    .line 75
    :cond_6
    iput v2, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "prefer_network"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: prefer_network"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    iput v2, p0, Lcom/htc/server/ulog/SettingObserver;->mPreferredNetworkSetting:I

    .line 84
    :cond_8
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/server/ulog/Utils;->isSenseDotComEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 85
    .local v5, senseDotComSettingEnabled:Z
    iget-boolean v6, p0, Lcom/htc/server/ulog/SettingObserver;->mIsSenseDotComSettingEnabled:Z

    if-eq v6, v5, :cond_a

    .line 86
    const-string v6, "UserBehaviorLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sense.com is enabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz v5, :cond_9

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "type"

    const-string v7, "sense_dot_com"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    const-string v6, "UserBehaviorLoggingService"

    const-string v7, "intent: com.htc.intent.action.TELLHTC_SETTING_CHANGE, type: sense.com"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    iput-boolean v5, p0, Lcom/htc/server/ulog/SettingObserver;->mIsSenseDotComSettingEnabled:Z

    .line 94
    iget-object v6, p0, Lcom/htc/server/ulog/SettingObserver;->mPolicyStore:Lcom/htc/server/ulog/PolicyStore;

    invoke-virtual {v6, v9}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    .line 96
    :cond_a
    return-void
.end method
