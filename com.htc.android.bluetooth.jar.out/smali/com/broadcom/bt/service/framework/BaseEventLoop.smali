.class public abstract Lcom/broadcom/bt/service/framework/BaseEventLoop;
.super Ljava/lang/Object;
.source "BaseEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBtService;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsFinish:Z

.field protected mIsStarted:Z

.field protected mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsStarted:Z

    .line 32
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 37
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public init()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 3
    .parameter "started"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    .line 52
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsStarted:Z

    .line 53
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V

    .line 59
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseEventLoop;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    :goto_1
    invoke-static {v2, v0}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 56
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 59
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 47
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
