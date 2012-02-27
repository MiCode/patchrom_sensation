.class public Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;
.super Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RosieUnlockAnimationListener"
.end annotation


# instance fields
.field mAnimating:Z

.field mWallpaperMgr:Lcom/htc/launcher/WallpaperManager;

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V
    .locals 1
    .parameter
    .parameter "workspace"
    .parameter "fxWorkspace"

    .prologue
    .line 8403
    iput-object p1, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    .line 8404
    invoke-direct {p0, p2, p3}, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;-><init>(Lcom/htc/launcher/Workspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    .line 8400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->mAnimating:Z

    .line 8405
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->mWallpaperMgr:Lcom/htc/launcher/WallpaperManager;

    .line 8406
    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8416
    iget-boolean v2, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->mAnimating:Z

    if-nez v2, :cond_0

    .line 8432
    :goto_0
    return-void

    .line 8418
    :cond_0
    iput-boolean v0, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->mAnimating:Z

    .line 8419
    iget-object v2, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->onKeyguardOff()V
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$6200(Lcom/htc/launcher/Launcher;)V

    .line 8420
    iget-object v2, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->mWallpaperMgr:Lcom/htc/launcher/WallpaperManager;

    iget-object v3, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/htc/launcher/WallpaperManager;->pauseWallpaper(Landroid/os/IBinder;Z)V

    .line 8422
    iget-object v2, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8423
    iget-object v2, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    iget-object v4, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v4, v4, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v4}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v0}, Lcom/htc/android/rosie/home/HostWidgetManager;->onUserPresent(IZ)V

    .line 8424
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;

    move-result-object v0

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgets(IZ)V

    .line 8427
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->m_openFolderAfterUnlockAnimation:Lcom/htc/launcher/FolderInfo;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$9800(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8428
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->m_openFolderAfterUnlockAnimation:Lcom/htc/launcher/FolderInfo;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$9800(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->onClickFolder(Lcom/htc/launcher/FolderInfo;)V

    .line 8429
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/Launcher;->m_openFolderAfterUnlockAnimation:Lcom/htc/launcher/FolderInfo;
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$9802(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/FolderInfo;)Lcom/htc/launcher/FolderInfo;

    .line 8431
    :cond_3
    invoke-super {p0}, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->onAnimationEnd()V

    goto :goto_0
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 8410
    invoke-super {p0}, Lcom/htc/android/rosie/home/fxcontrol/UnlockAnimationListener;->onAnimationStart()V

    .line 8411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->mAnimating:Z

    .line 8412
    return-void
.end method
