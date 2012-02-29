.class public Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.super Ljava/lang/Object;
.source "IdleScreenEngine.java"

# interfaces
.implements Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "IdleScreenEngine"

.field public static final WAKELOCK_TIME:I = 0x3a98


# instance fields
.field mDestroyed:Z

.field private mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

.field mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

.field mInitializing:Z

.field private mIsResume:Z

.field final mLock:Ljava/lang/Object;

.field private mLockScreenState:I

.field mPendingMove:Landroid/view/MotionEvent;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

.field mRenderable:Z

.field mReportedVisible:Z

.field mScreenOn:Z

.field protected mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

.field mStarted:Z

.field mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

.field private mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

.field private mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    .line 76
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 77
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 78
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 82
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    .line 83
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;)V
    .locals 3
    .parameter "service"
    .parameter "windowBuilder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 60
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    .line 76
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 77
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 78
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 90
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    .line 91
    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    .line 92
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mWakeLockHelper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;

    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->setTag(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 337
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 338
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v0, 0x0

    .line 339
    .local v0, bScreenOn:Z
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 342
    :cond_0
    return v0
.end method


# virtual methods
.method attach(Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;)V
    .locals 5
    .parameter "wrapper"

    .prologue
    const/4 v4, 0x0

    .line 257
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    .line 267
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setSurfaceSize()V

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 269
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->attach()V

    .line 274
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 275
    new-instance v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$MyReceiver;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 277
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doCreate(Landroid/view/SurfaceHolder;)V

    .line 285
    iput-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mInitializing:Z

    .line 286
    invoke-virtual {p0, v4, v4, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    goto :goto_0
.end method

.method detach()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 565
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 596
    :goto_0
    return-void

    .line 569
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    .line 571
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v1, :cond_1

    .line 572
    iput-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 573
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowVisibility(I)V

    .line 574
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisibilityChanged(false): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onVisibilityChanged(Z)V

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->detach()V

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 584
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 585
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_2
    :goto_1
    const-string v1, "IdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doDestroy()V

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "IdleScreenEngine"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/idlescreen/ISLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dismissReminder(IJ)V
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 770
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 771
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "Key_ReminderType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    const-string v1, "Key_ReminderId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 773
    const-string v1, "idleScreenReminderDismiss"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 774
    return-void
.end method

.method doCommand(Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;)V
    .locals 25
    .parameter "cmd"

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v3, :cond_1

    .line 434
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    .line 435
    .local v10, action:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    .line 436
    .local v11, extras:Landroid/os/Bundle;
    const-string v3, "idleScreenTelephonyUpdate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    move-object/from16 v21, v0

    .line 438
    .local v21, telephonyListener:Lcom/htc/lockscreen/telephony/TelephonyListener;
    if-eqz v11, :cond_1

    .line 439
    const-string v3, "Key_TelephonyState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 440
    .local v20, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-eqz v21, :cond_0

    .line 441
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/htc/lockscreen/telephony/TelephonyListener;->onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V

    .line 443
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V

    .line 525
    .end local v10           #action:Ljava/lang/String;
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v20           #state:Lcom/htc/lockscreen/telephony/TelephonyState;
    .end local v21           #telephonyListener:Lcom/htc/lockscreen/telephony/TelephonyListener;
    :cond_1
    :goto_0
    return-void

    .line 446
    .restart local v10       #action:Ljava/lang/String;
    .restart local v11       #extras:Landroid/os/Bundle;
    :cond_2
    const-string v3, "idleScreenReminderUpdate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    move-object/from16 v16, v0

    .line 448
    .local v16, listener:Lcom/htc/lockscreen/reminder/ReminderListener;
    if-eqz v11, :cond_1

    .line 449
    const-string v3, "Key_ReminderState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/reminder/ReminderState;

    .line 450
    .local v20, state:Lcom/htc/lockscreen/reminder/ReminderState;
    const-string v3, "Key_ReminderType"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 451
    .local v22, type:I
    if-eqz v16, :cond_3

    .line 452
    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/htc/lockscreen/reminder/ReminderListener;->onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    .line 454
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V

    goto :goto_0

    .line 457
    .end local v16           #listener:Lcom/htc/lockscreen/reminder/ReminderListener;
    .end local v20           #state:Lcom/htc/lockscreen/reminder/ReminderState;
    .end local v22           #type:I
    :cond_4
    const-string v3, "idleScreenIsResume"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 458
    if-eqz v11, :cond_5

    .line 459
    const-string v3, "Key_IsResume"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    .line 461
    :cond_5
    const-string v3, "idleScreen_Survive"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    goto :goto_0

    .line 464
    :cond_6
    const-string v3, "idleScreenViewMode"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 465
    if-eqz v11, :cond_1

    .line 466
    const-string v3, "Key_ViewMode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    .line 468
    const-string v3, "IdleScreenEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_LOCKSCREEN_VIEW_MODE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onLockScreenStateChanged(I)V

    .line 470
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    if-nez v3, :cond_7

    const/16 v24, 0x1

    .line 471
    .local v24, windowShow:Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setWindowShow(Z)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    goto/16 :goto_0

    .line 470
    .end local v24           #windowShow:Z
    :cond_7
    const/16 v24, 0x0

    goto :goto_1

    .line 475
    :cond_8
    const-string v3, "idlescreen_Phone_state_update"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 476
    const-string v3, "Key_PhoneState"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/lockscreen/telephony/PhoneState;

    .line 477
    .local v20, state:Lcom/htc/lockscreen/telephony/PhoneState;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    goto/16 :goto_0

    .line 479
    .end local v20           #state:Lcom/htc/lockscreen/telephony/PhoneState;
    :cond_9
    const-string v3, "idleScreen_key_down"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 480
    if-eqz v11, :cond_1

    .line 481
    const-string v3, "Key_keycode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 482
    .local v14, keycode:I
    const-string v3, "Key_keyEvent"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/KeyEvent;

    .line 483
    .local v13, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onKeyDown(ILandroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 487
    .end local v13           #keyEvent:Landroid/view/KeyEvent;
    .end local v14           #keycode:I
    :cond_a
    const-string v3, "idleScreen_key_up"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 488
    if-eqz v11, :cond_1

    .line 489
    const-string v3, "Key_keycode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 490
    .restart local v14       #keycode:I
    const-string v3, "Key_keyEvent"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/view/KeyEvent;

    .line 491
    .restart local v13       #keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onKeyUp(ILandroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 495
    .end local v13           #keyEvent:Landroid/view/KeyEvent;
    .end local v14           #keycode:I
    :cond_b
    const-string v3, "idleScreen_remote_view"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 496
    if-eqz v11, :cond_1

    .line 497
    const-string v3, "Key_remoteView"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    .line 498
    .local v17, remoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    goto/16 :goto_0

    .line 501
    .end local v17           #remoteView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    :cond_c
    const-string v3, "idlescreen_shortcut_update"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 502
    if-eqz v11, :cond_1

    .line 503
    const/16 v19, 0x0

    .line 504
    .local v19, shortcutInfos:[Lcom/htc/lockscreen/widget/ShortcutInfo;
    const-string v3, "Key_shortcut_visibility"

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 505
    .local v23, visibility:I
    const-string v3, "Key_shortcut_list"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v18

    .line 506
    .local v18, shorcutArray:[Landroid/os/Parcelable;
    if-eqz v18, :cond_e

    .line 507
    move-object/from16 v0, v18

    array-length v15, v0

    .line 508
    .local v15, length:I
    new-array v0, v15, [Lcom/htc/lockscreen/widget/ShortcutInfo;

    move-object/from16 v19, v0

    .line 509
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v15, :cond_e

    .line 510
    aget-object v3, v18, v12

    if-eqz v3, :cond_d

    .line 511
    aget-object v3, v18, v12

    check-cast v3, Lcom/htc/lockscreen/widget/ShortcutInfo;

    aput-object v3, v19, v12

    .line 509
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 515
    .end local v12           #i:I
    .end local v15           #length:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onShortcutsUpdate([Lcom/htc/lockscreen/widget/ShortcutInfo;I)V

    goto/16 :goto_0

    .line 519
    .end local v18           #shorcutArray:[Landroid/os/Parcelable;
    .end local v19           #shortcutInfos:[Lcom/htc/lockscreen/widget/ShortcutInfo;
    .end local v23           #visibility:I
    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->y:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->z:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->sync:Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public doCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 102
    return-void
.end method

.method doDesiredSizeChanged(II)V
    .locals 3
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 308
    const-string v0, "IdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDesiredSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onDesiredSizeChanged(II)V

    .line 312
    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->pokeWakeLock(I)V

    .line 106
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 107
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    .line 108
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->doDestroy()V

    .line 111
    return-void
.end method

.method public doPause()V
    .locals 0

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onPause()V

    .line 639
    return-void
.end method

.method public doResume()V
    .locals 0

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onResume()V

    .line 635
    return-void
.end method

.method public doStart()V
    .locals 2

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onStart()V

    .line 630
    const-string v0, "idlescreen_surface_create"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 631
    return-void
.end method

.method public doStop()V
    .locals 0

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onStop()V

    .line 643
    return-void
.end method

.method doVisibilityChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v1, :cond_2

    .line 316
    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 317
    const/16 v0, 0x8

    .line 318
    .local v0, visibility:I
    if-eqz p1, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowVisibility(I)V

    .line 323
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v1, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToStart()V

    .line 330
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v2, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    .line 332
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportVisibility()V

    .line 334
    .end local v0           #visibility:I
    :cond_2
    return-void

    .line 326
    .restart local v0       #visibility:I
    :cond_3
    iget-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-nez v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToStop()V

    goto :goto_0
.end method

.method finishDrawing()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->finishDrawing()V

    .line 865
    return-void
.end method

.method public getDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getIdleWindow()Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    return-object v0
.end method

.method public getLockScreenViewMode()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    return v0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSession()Landroid/view/IWindowSession;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getWindowAnimation()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowAnimation:I

    .line 821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowFlag()I
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->getWindowFlag()I

    move-result v0

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    .line 807
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowType()I
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowType:I

    .line 814
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x67

    goto :goto_0
.end method

.method protected goToPause()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_0

    .line 412
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 413
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doPause()V

    .line 415
    :cond_0
    return-void
.end method

.method protected goToResume()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_2

    .line 399
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 400
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStart()V

    .line 401
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doResume()V

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    .line 404
    :cond_3
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 405
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doResume()V

    goto :goto_0
.end method

.method protected goToStart()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->NONE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    .line 392
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 393
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStart()V

    .line 395
    :cond_1
    return-void
.end method

.method protected goToStop()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->START:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    .line 428
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->STOP:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    .line 429
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->RESUME:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doPause()V

    .line 423
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mState:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    sget-object v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;->PAUSE:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$State;

    if-ne v0, v1, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    goto :goto_0
.end method

.method public handleAllReminder(Z)V
    .locals 2
    .parameter "bSnoozeAll"

    .prologue
    const/4 v1, 0x0

    .line 787
    if-eqz p1, :cond_0

    .line 788
    const-string v0, "idleScreenReminderSnoozeAll"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 793
    :goto_0
    return-void

    .line 791
    :cond_0
    const-string v0, "idleScreenReminderHandleAll"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-boolean v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isRenderable()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    return v0
.end method

.method public isResume()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    return v0
.end method

.method public isScreenStart()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 797
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 114
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keycode"
    .parameter "keyEvent"

    .prologue
    .line 748
    return-void
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keycode"
    .parameter "keyEvent"

    .prologue
    .line 752
    return-void
.end method

.method protected onLockScreenStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 616
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixelOffset"
    .parameter "yPixelOffset"

    .prologue
    .line 129
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 655
    return-void
.end method

.method protected onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 744
    return-void
.end method

.method protected onReminderStateChange(ILcom/htc/lockscreen/reminder/ReminderState;)V
    .locals 0
    .parameter "type"
    .parameter "state"

    .prologue
    .line 763
    return-void
.end method

.method protected onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 0
    .parameter "remoteView"

    .prologue
    .line 756
    return-void
.end method

.method public onRenderableChange(Z)V
    .locals 0
    .parameter "bRenderable"

    .prologue
    .line 384
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 651
    return-void
.end method

.method protected onScreenOnOffChanged(Z)V
    .locals 0
    .parameter "screenOn"

    .prologue
    .line 620
    return-void
.end method

.method protected onShortcutsUpdate([Lcom/htc/lockscreen/widget/ShortcutInfo;I)V
    .locals 0
    .parameter "shortcuts"
    .parameter "visibility"

    .prologue
    .line 760
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 143
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 154
    return-void
.end method

.method public onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 147
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 157
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 150
    return-void
.end method

.method protected onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 766
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 123
    return-void
.end method

.method protected onViewModeChange(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "viewMode"
    .parameter "extras"

    .prologue
    .line 740
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 120
    return-void
.end method

.method protected onWindowResize(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 626
    return-void
.end method

.method public pokeWakeLock()V
    .locals 1

    .prologue
    .line 670
    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->pokeWakeLock(I)V

    .line 671
    return-void
.end method

.method public pokeWakeLock(I)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 674
    const-string v0, "idleScreenWakeLock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 675
    return-void
.end method

.method public prepareUnlock()V
    .locals 2

    .prologue
    .line 543
    const-string v0, "idleScreenPrepareUnlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 544
    return-void
.end method

.method public registerReminderState(Lcom/htc/lockscreen/reminder/ReminderListener;)V
    .locals 2
    .parameter "reminderListener"

    .prologue
    .line 724
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    .line 725
    const-string v0, "idleScreenReminderRegister"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 726
    return-void
.end method

.method public registerTelephonyState(Lcom/htc/lockscreen/telephony/TelephonyListener;)V
    .locals 2
    .parameter "telephonyListener"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 713
    const-string v0, "idleScreenTelephonyRegister"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 714
    return-void
.end method

.method reportVisibility()V
    .locals 5

    .prologue
    .line 347
    const-string v2, "IdleScreenEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportVisibility mVisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsResume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockScreenState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-nez v2, :cond_1

    .line 352
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-static {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    .line 353
    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mScreenOn:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIsResume:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLockScreenState:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 354
    .local v1, visible:Z
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mStarted:Z

    .line 355
    .local v0, bRender:Z
    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    if-eq v2, v0, :cond_0

    .line 356
    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mRenderable:Z

    .line 357
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onRenderableChange(Z)V

    .line 359
    :cond_0
    iget-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    if-eq v2, v1, :cond_1

    .line 360
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReportedVisible:Z

    .line 361
    const-string v2, "IdleScreenEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVisibilityChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onVisibilityChanged(Z)V

    .line 372
    if-eqz v1, :cond_3

    .line 373
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToResume()V

    .line 380
    .end local v0           #bRender:Z
    .end local v1           #visible:Z
    :cond_1
    :goto_1
    return-void

    .line 353
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 376
    .restart local v0       #bRender:Z
    .restart local v1       #visible:Z
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->goToPause()V

    goto :goto_1
.end method

.method public reportWindowResized(Z)V
    .locals 5
    .parameter "reportDraw"

    .prologue
    const/4 v2, 0x0

    .line 848
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v4, 0x272e

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 851
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 853
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 849
    goto :goto_0
.end method

.method public reportWindowVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 856
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v4, 0x271a

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 859
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 861
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 857
    goto :goto_0
.end method

.method public requestUpdateSurface()V
    .locals 3

    .prologue
    .line 834
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public requestUpdateSurface(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 841
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    if-eqz v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 843
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 845
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "action"
    .parameter "extra"

    .prologue
    .line 235
    new-instance v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/os/HandlerCaller$SomeArgs;-><init>()V

    .line 236
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 237
    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 239
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v3, 0x2742

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 241
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mEngineWrapper:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setShowLiveWallpaper(Z)V

    .line 232
    return-void
.end method

.method setSurfaceFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setFormat(I)V

    .line 254
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 299
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 304
    :cond_0
    return-void
.end method

.method public setWindowFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowFlag(I)V

    .line 826
    return-void
.end method

.method setWindowShow(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "IdleScreenEngine"

    const-string v1, "updateSurface~ destroyed"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setWindowShow(Z)V

    .line 218
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 219
    return-void
.end method

.method public snoozeReminder(IJLjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "id"
    .parameter "action"

    .prologue
    .line 778
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 779
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "Key_ReminderType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 780
    const-string v1, "Key_ReminderId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 781
    const-string v1, "Key_ReminderAction"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v1, "idleScreenReminderSnooze"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 783
    return-void
.end method

.method public startActivityAndUnlock(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "KEY_ACTIVITY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 538
    const-string v1, "KEY_ACTIVITY_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v1, "KEY_ACTIVITY_CLASS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "ACTION_LOCKSCREEN_START_PENDING"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 541
    return-void
.end method

.method public startActivityAndUnlock(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "KEY_ACTIVITY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 530
    const-string v1, "KEY_ACTIVITY_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v1, "KEY_ACTIVITY_CLASS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v1, "startActivityAndUnlock"

    invoke-virtual {p0, v1, v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 533
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 662
    const-string v0, "idleScreenUnlock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 663
    return-void
.end method

.method public unlock(Landroid/os/Bundle;)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 666
    const-string v0, "idleScreenUnlock"

    invoke-virtual {p0, v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 667
    return-void
.end method

.method public unregisterReminderState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 730
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mReminderListener:Lcom/htc/lockscreen/reminder/ReminderListener;

    .line 731
    const-string v0, "idleScreenReminderUnRegister"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 732
    return-void
.end method

.method public unregisterTelephonyState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 718
    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mTeleListener:Lcom/htc/lockscreen/telephony/TelephonyListener;

    .line 719
    const-string v0, "idleScreenTelephonyUnRegister"

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 720
    return-void
.end method

.method updateSurface(ZZZ)V
    .locals 2
    .parameter "forceRelayout"
    .parameter "forceReport"
    .parameter "redrawNeeded"

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "IdleScreenEngine"

    const-string v1, "updateSurface~ destroyed"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mIdleWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 250
    return-void
.end method
