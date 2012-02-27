.class Lcom/htc/launcher/Launcher$15;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 4923
    iput-object p1, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private end()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4942
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mIsLoading:Z
    invoke-static {v2, v8}, Lcom/htc/launcher/Launcher;->access$3302(Lcom/htc/launcher/Launcher;Z)Z

    .line 4944
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v2, :cond_0

    .line 4945
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->show()V

    .line 4946
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateInitFrame()V

    .line 4947
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->changeScreensVisibility(Z)V

    .line 4956
    :cond_0
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " loading time total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mLoadingTime:J
    invoke-static {v6}, Lcom/htc/launcher/Launcher;->access$4000(Lcom/htc/launcher/Launcher;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->drawAllScreens()V

    .line 4960
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->unlock()V

    .line 4961
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->isKeyguardOnWhenOnResume:Z
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$4100(Lcom/htc/launcher/Launcher;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsPause:Z
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$3400(Lcom/htc/launcher/Launcher;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4962
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v2

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgets(I)V

    .line 4963
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mOnConfigChangedReloading:Z
    invoke-static {v2, v8}, Lcom/htc/launcher/Launcher;->access$4202(Lcom/htc/launcher/Launcher;Z)Z

    .line 4964
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mPrepareScreensCacheIndex:I
    invoke-static {v2, v8}, Lcom/htc/launcher/Launcher;->access$3802(Lcom/htc/launcher/Launcher;I)I

    .line 4965
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "Rosie"

    const-string v3, "Send intent(com.htc.launcher.intent.LOADING_COMPLETE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4966
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.launcher.intent.LOADING_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4967
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2, v0}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 4969
    new-instance v1, Lcom/htc/launcher/Launcher$15$1;

    invoke-direct {v1, p0}, Lcom/htc/launcher/Launcher$15$1;-><init>(Lcom/htc/launcher/Launcher$15;)V

    .line 4975
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4976
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/DesktopItemController;->updatePendingSyncPackages()V

    .line 4977
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v8, v3, v4}, Lcom/htc/launcher/Launcher;->startCreateScenePreviewThread(ZJ)V

    .line 4978
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4979
    iget-object v2, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v2, v3, v4}, Lcom/htc/launcher/Launcher;->forceCreateScenePreviewDelay(J)V

    .line 4980
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4926
    iget-object v1, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 4927
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mPrepareScreensCacheIndex:I
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$3800(Lcom/htc/launcher/Launcher;)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 4931
    iget-object v1, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$3808(Lcom/htc/launcher/Launcher;)I

    .line 4933
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mPrepareScreensCacheIndex:I
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$3800(Lcom/htc/launcher/Launcher;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 4934
    invoke-direct {p0}, Lcom/htc/launcher/Launcher$15;->end()V

    .line 4938
    :goto_0
    return-void

    .line 4936
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/Launcher$15;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->runInNextEvLoop(Ljava/lang/Runnable;)V
    invoke-static {v1, p0}, Lcom/htc/launcher/Launcher;->access$3900(Lcom/htc/launcher/Launcher;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
