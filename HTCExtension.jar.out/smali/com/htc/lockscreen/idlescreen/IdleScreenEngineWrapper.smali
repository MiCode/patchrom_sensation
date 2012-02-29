.class public Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;
.super Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;
.source "IdleScreenEngineWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper$MyHandler;
    }
.end annotation


# static fields
.field static final DO_ATTACH:I = 0xa

.field static final DO_DETACH:I = 0x14

.field static final DO_SET_DESIRED_SIZE:I = 0x1e

.field static final MSG_IDLESCREEN_COMMAND:I = 0x2729

.field static final MSG_LOCKSCREEN_COMMAND:I = 0x2742

.field static final MSG_LOCKSCREEN_SHOW_LIVEWALLPAPER:I = 0x274c

.field static final MSG_TOUCH_EVENT:I = 0x2738

.field static final MSG_UPDATE_SURFACE:I = 0x2710

.field static final MSG_VISIBILITY_CHANGED:I = 0x271a

.field static final MSG_WINDOW_RESIZED:I = 0x272e

.field private static final PREFIX:Ljava/lang/String; = "IdleScreenEngineWrapper"


# instance fields
.field mCaller:Landroid/os/Handler;

.field mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

.field mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

.field final mFormat:I

.field mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

.field final mIsPreview:Z

.field mReqHeight:I

.field mReqWidth:I

.field final mWindowAnimation:I

.field final mWindowFlag:I

.field mWindowToken:Landroid/os/IBinder;

.field final mWindowType:I


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;Landroid/os/IBinder;IIIIZIILandroid/os/Looper;)V
    .locals 3
    .parameter "service"
    .parameter "conn"
    .parameter "windowToken"
    .parameter "windowType"
    .parameter "windowAnimation"
    .parameter "windowFlag"
    .parameter "format"
    .parameter "isPreview"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .parameter "looper"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine$Stub;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    .line 62
    if-nez p11, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getMainLooper()Landroid/os/Looper;

    move-result-object p11

    .line 65
    :cond_0
    new-instance v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper$MyHandler;

    invoke-direct {v1, p0, p11}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper$MyHandler;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    .line 68
    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    .line 69
    iput-object p3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    .line 70
    iput p4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowType:I

    .line 71
    iput p5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowAnimation:I

    .line 72
    iput p6, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowFlag:I

    .line 73
    iput p7, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mFormat:I

    .line 74
    iput-boolean p8, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIsPreview:Z

    .line 75
    iput p9, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqWidth:I

    .line 76
    iput p10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mReqHeight:I

    .line 78
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 84
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v2, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 99
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iput-object p1, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mPendingMove:Landroid/view/MotionEvent;

    .line 103
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x2738

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 101
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 140
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 262
    const-string v10, "IdleScreenEngineWrapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown message type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 142
    :sswitch_0
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    if-eqz v10, :cond_0

    .line 146
    :try_start_0
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    invoke-interface {v10, p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;->attachEngine(Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v10}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-result-object v4

    .line 153
    .local v4, engine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    iget v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mFormat:I

    invoke-virtual {v4, v10}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setSurfaceFormat(I)V

    .line 154
    iget v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowFlag:I

    invoke-virtual {v4, v10}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->setWindowFlag(I)V

    .line 156
    iput-object v4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    .line 157
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v10, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->addEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 158
    invoke-virtual {v4, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->attach(Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;)V

    goto :goto_0

    .line 147
    .end local v4           #engine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    :catch_0
    move-exception v3

    .line 148
    .local v3, e:Landroid/os/RemoteException;
    const-string v10, "IdleScreenEngineWrapper"

    const-string v11, "IdleScreen host disappeared"

    invoke-static {v10, v11}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v3           #e:Landroid/os/RemoteException;
    :sswitch_1
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v10, :cond_1

    .line 163
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v11, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v10, v11}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->removeEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 164
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v10}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->detach()V

    .line 165
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    .line 167
    :cond_1
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    .line 168
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    goto :goto_0

    .line 172
    :sswitch_2
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v10, :cond_0

    .line 175
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v11, v12}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doDesiredSizeChanged(II)V

    goto :goto_0

    .line 179
    :sswitch_3
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v10, :cond_0

    .line 182
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    goto :goto_0

    .line 185
    :sswitch_4
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v10, :cond_0

    .line 188
    const-string v10, "IdleScreenEngineWrapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Visibility change in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v11, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doVisibilityChanged(Z)V

    .line 191
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->eventWakeLock(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 190
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 194
    :sswitch_5
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v10, :cond_0

    .line 197
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;

    .line 198
    .local v2, cmd:Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v10, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doCommand(Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;)V

    .line 199
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v11, 0x2729

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 200
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->commandWakeLock(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 205
    .end local v2           #cmd:Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;
    :sswitch_6
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v10, :cond_0

    .line 208
    const-string v10, "IdleScreenEngineWrapper"

    const-string v11, "MSG_WINDOW_RESIZED"

    invoke-static {v10, v11}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    .line 211
    .local v7, reportDraw:Z
    :goto_2
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v7}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->updateSurface(ZZZ)V

    goto/16 :goto_0

    .line 209
    .end local v7           #reportDraw:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 216
    :sswitch_7
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v10, :cond_0

    .line 219
    const/4 v9, 0x0

    .line 220
    .local v9, skip:Z
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/view/MotionEvent;

    .line 221
    .local v5, ev:Landroid/view/MotionEvent;
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 222
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v11, v10, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 223
    :try_start_1
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v10, v10, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mPendingMove:Landroid/view/MotionEvent;

    if-ne v10, v5, :cond_6

    .line 224
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const/4 v12, 0x0

    iput-object v12, v10, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mPendingMove:Landroid/view/MotionEvent;

    .line 229
    :goto_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_4
    if-nez v9, :cond_5

    .line 233
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v10, v5}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 235
    :cond_5
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 227
    :cond_6
    const/4 v9, 0x1

    goto :goto_3

    .line 229
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 238
    .end local v5           #ev:Landroid/view/MotionEvent;
    .end local v9           #skip:Z
    :sswitch_8
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    if-eqz v10, :cond_0

    .line 241
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 242
    .local v1, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v0, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, action:Ljava/lang/String;
    iget-object v6, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 244
    .local v6, extra:Landroid/os/Bundle;
    const-string v10, "IdleScreenEngineWrapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSG_LOCKSCREEN_COMMAND~ action:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :try_start_3
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mConnection:Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;

    invoke-interface {v10, v0, v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 248
    :catch_1
    move-exception v3

    .line 250
    .restart local v3       #e:Landroid/os/RemoteException;
    const-string v10, "IdleScreenEngineWrapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSG_LOCKSCREEN_COMMAND~ RemoteException:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v6           #extra:Landroid/os/Bundle;
    :sswitch_9
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    if-eqz v10, :cond_0

    .line 257
    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v8, 0x1

    .line 258
    .local v8, show:Z
    :goto_4
    iget-object v10, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v10}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getIdleWindow()Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->setShowLiveWallpaper(Z)V

    goto/16 :goto_0

    .line 257
    .end local v8           #show:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 140
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x2710 -> :sswitch_3
        0x271a -> :sswitch_4
        0x2729 -> :sswitch_5
        0x272e -> :sswitch_6
        0x2738 -> :sswitch_7
        0x2742 -> :sswitch_8
        0x274c -> :sswitch_9
    .end sparse-switch
.end method

.method public sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 4
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;

    invoke-direct {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;-><init>()V

    .line 126
    .local v0, command:Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;
    iput-object p1, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->action:Ljava/lang/String;

    .line 127
    iput p2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->x:I

    .line 128
    iput p3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->y:I

    .line 129
    iput p4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->z:I

    .line 130
    iput-object p5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->extras:Landroid/os/Bundle;

    .line 131
    iput-boolean p6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenCommand;->sync:Z

    .line 132
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v3, 0x2729

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 133
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->commandWakeLock(Landroid/content/Context;Z)V

    .line 136
    return-void
.end method

.method public setDesiredSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method public setVisibility(Z)V
    .locals 5
    .parameter "visible"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mIdleScreenService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-static {v3, v1}, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->eventWakeLock(Landroid/content/Context;Z)V

    .line 117
    iget-object v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    const/16 v4, 0x271a

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 117
    goto :goto_0
.end method
