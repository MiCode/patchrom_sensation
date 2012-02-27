.class Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 6137
    iput-object p1, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6137
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6141
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 6142
    const-string v0, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyguard intent received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6143
    :cond_0
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6144
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnlockAnimation, skip? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mSkipUnlockAnimation:Z
    invoke-static {v4}, Lcom/htc/launcher/Launcher;->access$5800(Lcom/htc/launcher/Launcher;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rotating? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mChangingOrientation:Z
    invoke-static {v4}, Lcom/htc/launcher/Launcher;->access$5900(Lcom/htc/launcher/Launcher;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6145
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->showUnlockAnimation()Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$6000(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mSkipUnlockAnimation:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$5800(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mChangingOrientation:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$5900(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6146
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mNeedLiveWallpaperSpin:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$6102(Lcom/htc/launcher/Launcher;Z)Z

    .line 6147
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->unlockAnimation()V

    .line 6149
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setUnlockframeFlag(Z)V

    .line 6173
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mSkipUnlockAnimation:Z
    invoke-static {v0, v2}, Lcom/htc/launcher/Launcher;->access$5802(Lcom/htc/launcher/Launcher;Z)Z

    .line 6178
    :cond_3
    :goto_1
    return-void

    .line 6152
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 6154
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->onKeyguardOff()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$6200(Lcom/htc/launcher/Launcher;)V

    .line 6156
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsPause:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$3400(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6157
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Lcom/htc/android/rosie/home/HostWidgetManager;->onUserPresent(IZ)V

    .line 6158
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgets(IZ)V

    .line 6160
    :cond_5
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mChangingOrientation:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$5900(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 6161
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->changeScreensVisibility(Z)V

    .line 6168
    :goto_3
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsPause:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$3400(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6169
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 6157
    goto :goto_2

    .line 6163
    :cond_7
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v3

    iget-object v4, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setCurrentScreen(II)V

    .line 6164
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/htc/launcher/WallpaperManager;->pauseWallpaper(Landroid/os/IBinder;Z)V

    goto :goto_3

    .line 6174
    :cond_8
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6175
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2500(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6176
    iget-object v0, p0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2500(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    goto/16 :goto_1
.end method
