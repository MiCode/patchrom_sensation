.class public Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAppUsageStatsServiceAmsListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcAppUsageStats"


# instance fields
.field mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 22
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/htc/server/HtcAppUsageStatsService;

    invoke-direct {v0}, Lcom/htc/server/HtcAppUsageStatsService;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    goto :goto_0
.end method


# virtual methods
.method public afterStartActivityUncheckedLocked()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppUsageStatsService;->setMayRedecideRootActivity(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public beforeStartActivityUncheckedLocked()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppUsageStatsService;->setMayRedecideRootActivity(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;
    .locals 1
    .parameter "task"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddRecentTaskLocked(Lcom/android/server/am/HtcWrapTaskRecord;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "task"
    .parameter "history"

    .prologue
    .line 73
    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v4, :cond_0

    .line 74
    iget-object v4, p1, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 76
    .local v2, size:I
    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 77
    new-instance v3, Lcom/android/server/am/HtcWrapActivityRecord;

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    .line 78
    .local v3, top:Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/HtcWrapActivityRecord;->task:Lcom/android/server/am/HtcWrapTaskRecord;

    iget-object v4, v4, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    iget-object v5, v3, Lcom/android/server/am/HtcWrapActivityRecord;->task:Lcom/android/server/am/HtcWrapTaskRecord;

    invoke-virtual {v4, v5}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, prev:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v4, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, curr:Ljava/lang/String;
    if-eq v1, v0, :cond_0

    .line 83
    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v4, p1}, Lcom/htc/server/HtcAppUsageStatsService;->noteRecentTaskChange(Lcom/android/server/am/HtcWrapTaskRecord;)V

    .line 91
    .end local v0           #curr:Ljava/lang/String;
    .end local v1           #prev:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #top:Lcom/android/server/am/HtcWrapActivityRecord;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v2       #size:I
    :cond_1
    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v4, p1}, Lcom/htc/server/HtcAppUsageStatsService;->noteRecentTaskChange(Lcom/android/server/am/HtcWrapTaskRecord;)V

    goto :goto_0
.end method

.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .parameter "process"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppUsageStatsService;->noteAppDied(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 38
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v5, :cond_2

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 43
    .local v0, data:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 44
    .local v2, removedPackageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 46
    .local v3, replacing:Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .local v4, ssp:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 49
    .local v1, intentExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 57
    :cond_0
    if-nez v3, :cond_1

    .line 58
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v5, v4, v2}, Lcom/htc/server/HtcAppUsageStatsService;->notePackageRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0           #data:Landroid/net/Uri;
    .end local v1           #intentExtras:Landroid/os/Bundle;
    .end local v2           #removedPackageName:Ljava/lang/String;
    .end local v3           #replacing:Z
    .end local v4           #ssp:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v5, :cond_1

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 64
    .restart local v0       #data:Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #ssp:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 66
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v5, v4}, Lcom/htc/server/HtcAppUsageStatsService;->notePackageAdded(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHibernate()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0}, Lcom/htc/server/HtcAppUsageStatsService;->shutdown()V

    .line 103
    :cond_0
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1
    .parameter "service"
    .parameter "context"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0, p2}, Lcom/htc/server/HtcAppUsageStatsService;->publish(Landroid/content/Context;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onShutdown()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0}, Lcom/htc/server/HtcAppUsageStatsService;->shutdown()V

    .line 109
    :cond_0
    return-void
.end method

.method public onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 4
    .parameter "prev"
    .parameter "curr"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, prevLabel:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, currLabel:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v2, :cond_0

    if-eq v1, v0, :cond_0

    .line 130
    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    iget-object v3, p2, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3, p2}, Lcom/htc/server/HtcAppUsageStatsService;->changeRootActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/HtcWrapTaskRecord;)V

    .line 132
    :cond_0
    return-void
.end method
