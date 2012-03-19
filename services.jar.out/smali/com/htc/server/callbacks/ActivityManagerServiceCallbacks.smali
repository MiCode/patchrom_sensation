.class public Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.super Ljava/lang/Object;
.source "ActivityManagerServiceCallbacks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterStartActivityUncheckedLocked()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public beforeStartActivityUncheckedLocked()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onAddRecentTaskLocked(Lcom/android/server/am/HtcWrapTaskRecord;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "task"
    .parameter "history"

    .prologue
    .line 105
    return-void
.end method

.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 130
    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 85
    return-void
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 113
    return-void
.end method

.method public onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 147
    return-void
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 0
    .parameter "process"
    .parameter "crashInfo"

    .prologue
    .line 139
    return-void
.end method

.method public onFinishBooting()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 0
    .parameter "process"
    .parameter "pi"

    .prologue
    .line 95
    return-void
.end method

.method public onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "process"
    .parameter "condition"
    .parameter "activity"
    .parameter "shortMsg"
    .parameter "longMsg"
    .parameter "stackTrace"

    .prologue
    .line 225
    return-void
.end method

.method public onGoingToSleep()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onHandleApplicationCrash(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 121
    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 155
    return-void
.end method

.method public onHibernate()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 169
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "context"

    .prologue
    .line 22
    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 69
    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 77
    return-void
.end method

.method public onResumeFromHibernate()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onShutdown()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 0
    .parameter "prev"
    .parameter "curr"

    .prologue
    .line 208
    return-void
.end method

.method public onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 0
    .parameter "process"

    .prologue
    .line 60
    return-void
.end method

.method public onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter "process"
    .parameter "info"

    .prologue
    .line 52
    return-void
.end method

.method public onWakingUp()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
