.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# instance fields
.field private mBlockInputEventsBlocked:Z

.field private mBroadcastKeyEventEnabled:Z

.field private mBroadcastMotionEventEnabled:Z

.field private mBroadcastTrackballEventEnabled:Z

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStatusBarTouchEnabled:Z

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastKeyEventEnabled:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastMotionEventEnabled:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastTrackballEventEnabled:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mStatusBarTouchEnabled:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 467
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mBlockInputEventsBlocked:Z

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V
    .locals 3
    .parameter "windowHandle"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    if-nez v0, :cond_0

    .line 132
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/wm/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    .line 134
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 139
    return-void
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 142
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputManager;->setInputDispatchMode(ZZ)V

    .line 417
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 318
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 319
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 318
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 389
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 391
    :cond_0
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 3
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 310
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 311
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1

    .line 310
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 1
    .parameter "policyFlags"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/wm/InputApplicationHandle;Lcom/android/server/wm/InputWindowHandle;)J
    .locals 7
    .parameter "inputApplicationHandle"
    .parameter "inputWindowHandle"

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, appWindowToken:Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_1

    .line 95
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 96
    :try_start_0
    iget-object v2, p2, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 97
    .local v2, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    .line 98
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input event dispatching timed out sending to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 102
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v2           #windowState:Lcom/android/server/wm/WindowState;
    :cond_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 106
    iget-object v1, p1, Lcom/android/server/wm/InputApplicationHandle;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 107
    if-eqz v1, :cond_2

    .line 108
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event dispatching timed out sending to application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v3, :cond_3

    .line 118
    :try_start_1
    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v3}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z

    move-result v0

    .line 119
    .local v0, abort:Z
    if-nez v0, :cond_3

    .line 122
    iget-wide v3, v1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .end local v0           #abort:Z
    :goto_0
    return-wide v3

    .line 102
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 124
    :catch_0
    move-exception v3

    .line 127
    :cond_3
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public notifyCamSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCamSwitchChanged(JZ)V

    .line 289
    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 264
    :cond_0
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/wm/InputWindowHandle;)V
    .locals 5
    .parameter "inputWindowHandle"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 79
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 80
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 83
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 283
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .parameter "window"

    .prologue
    const/4 v1, 0x1

    .line 361
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_0

    .line 366
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 369
    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 372
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 380
    :cond_0
    return-void
.end method

.method public setBlockInputEventsLw(Z)V
    .locals 2
    .parameter "blocked"

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mBlockInputEventsBlocked:Z

    if-eq v0, p1, :cond_0

    .line 475
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mBlockInputEventsBlocked:Z

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mBlockInputEventsBlocked:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->setBlockInputEventsMode(Z)V

    .line 478
    :cond_0
    return-void
.end method

.method public setBroadcastKeyEventLw(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastKeyEventEnabled:Z

    if-eq v0, p1, :cond_0

    .line 425
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastKeyEventEnabled:Z

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastKeyEventEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->setBroadcastKeyEventMode(Z)V

    .line 428
    :cond_0
    return-void
.end method

.method public setBroadcastMotionEventLw(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastMotionEventEnabled:Z

    if-eq v0, p1, :cond_0

    .line 436
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastMotionEventEnabled:Z

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastMotionEventEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->setBroadcastMotionEventMode(Z)V

    .line 439
    :cond_0
    return-void
.end method

.method public setBroadcastTrackballEventLw(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastTrackballEventEnabled:Z

    if-eq v0, p1, :cond_0

    .line 447
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastTrackballEventEnabled:Z

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mBroadcastTrackballEventEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->setBroadcastTrackballEventMode(Z)V

    .line 450
    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 410
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 411
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 413
    :cond_0
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .parameter "newApp"

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputManager;->setFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V

    .line 358
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    .line 353
    .local v0, handle:Lcom/android/server/wm/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/InputApplicationHandle;->name:Ljava/lang/String;

    .line 354
    iget-wide v1, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Lcom/android/server/wm/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 356
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputManager;->setFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 2
    .parameter "newWindow"
    .parameter "updateInputWindows"

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1

    .line 331
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 339
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 341
    if-eqz p2, :cond_1

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 345
    :cond_1
    return-void
.end method

.method public setStatusBarTouchModeLw(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mStatusBarTouchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mStatusBarTouchEnabled:Z

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mStatusBarTouchEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputManager;->setStatusBarTouchMode(Z)V

    .line 462
    :cond_0
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 149
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 400
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 402
    :cond_0
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 19
    .parameter "force"

    .prologue
    .line 153
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 253
    :goto_0
    return-void

    .line 156
    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 168
    .local v16, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    const/4 v11, 0x1

    .line 169
    .local v11, inDrag:Z
    :goto_1
    if-eqz v11, :cond_1

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 174
    .local v5, dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    if-eqz v5, :cond_3

    .line 175
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V

    .line 182
    .end local v5           #dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 183
    .local v3, NFW:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v3, :cond_4

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/FakeWindowImpl;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V

    .line 183
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 168
    .end local v3           #NFW:I
    .end local v10           #i:I
    .end local v11           #inDrag:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 177
    .restart local v5       #dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    .restart local v11       #inDrag:Z
    :cond_3
    const-string v17, "WindowManager"

    const-string v18, "Drag is in progress but there is no drag window handle."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 187
    .end local v5           #dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    .restart local v3       #NFW:I
    .restart local v10       #i:I
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 188
    .local v2, N:I
    add-int/lit8 v10, v2, -0x1

    :goto_4
    if-ltz v10, :cond_c

    .line 189
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 190
    .local v4, child:Lcom/android/server/wm/WindowState;
    iget-object v12, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 191
    .local v12, inputChannel:Landroid/view/InputChannel;
    iget-object v13, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 192
    .local v13, inputWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    iget-boolean v0, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 188
    :cond_5
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 197
    :cond_6
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 198
    .local v6, flags:I
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 200
    .local v15, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_8

    const/4 v8, 0x1

    .line 201
    .local v8, hasFocus:Z
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v14

    .line 202
    .local v14, isVisible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_9

    const/16 v17, 0x7d4

    move/from16 v0, v17

    if-eq v15, v0, :cond_9

    const/4 v9, 0x1

    .line 207
    .local v9, hasWallpaper:Z
    :goto_7
    if-eqz v11, :cond_7

    if-eqz v14, :cond_7

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 212
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/server/wm/InputWindowHandle;->name:Ljava/lang/String;

    .line 213
    iput v6, v13, Lcom/android/server/wm/InputWindowHandle;->layoutParamsFlags:I

    .line 214
    iput v15, v13, Lcom/android/server/wm/InputWindowHandle;->layoutParamsType:I

    .line 215
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v13, Lcom/android/server/wm/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 216
    iput-boolean v14, v13, Lcom/android/server/wm/InputWindowHandle;->visible:Z

    .line 217
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/server/wm/InputWindowHandle;->canReceiveKeys:Z

    .line 218
    iput-boolean v8, v13, Lcom/android/server/wm/InputWindowHandle;->hasFocus:Z

    .line 219
    iput-boolean v9, v13, Lcom/android/server/wm/InputWindowHandle;->hasWallpaper:Z

    .line 220
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    move/from16 v17, v0

    :goto_8
    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/server/wm/InputWindowHandle;->paused:Z

    .line 221
    iget v0, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->layer:I

    .line 222
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->ownerPid:I

    .line 223
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->ownerUid:I

    .line 224
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->inputFeatures:I

    .line 226
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 227
    .local v7, frame:Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameLeft:I

    .line 228
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameTop:I

    .line 229
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameRight:I

    .line 230
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameBottom:I

    .line 232
    iget v0, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_b

    .line 236
    const/high16 v17, 0x3f80

    iget v0, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->scaleFactor:F

    .line 241
    :goto_9
    iget-object v0, v13, Lcom/android/server/wm/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 243
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V

    goto/16 :goto_5

    .line 200
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #hasFocus:Z
    .end local v9           #hasWallpaper:Z
    .end local v14           #isVisible:Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 202
    .restart local v8       #hasFocus:Z
    .restart local v14       #isVisible:Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 220
    .restart local v9       #hasWallpaper:Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 238
    .restart local v7       #frame:Landroid/graphics/Rect;
    :cond_b
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->scaleFactor:F

    goto :goto_9

    .line 247
    .end local v4           #child:Lcom/android/server/wm/WindowState;
    .end local v6           #flags:I
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #hasFocus:Z
    .end local v9           #hasWallpaper:Z
    .end local v12           #inputChannel:Landroid/view/InputChannel;
    .end local v13           #inputWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    .end local v14           #isVisible:Z
    .end local v15           #type:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/InputManager;->setInputWindows([Lcom/android/server/wm/InputWindowHandle;)V

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 272
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method
