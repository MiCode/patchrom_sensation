.class public abstract Lcom/broadcom/bt/service/framework/BaseProxy;
.super Ljava/lang/Object;
.source "BaseProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final D:Z = false

.field public static final DEFAULT_BROADCAST_RECEIVER_PRIORITY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BaseProxy"


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field protected mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

.field protected mIsAvailable:Z

.field protected mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

.field protected mReceiverPriority:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/16 v0, 0xc8

    iput v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mReceiverPriority:I

    .line 138
    return-void
.end method

.method protected static actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "a1"
    .parameter "a2"
    .parameter "offset"

    .prologue
    .line 68
    if-ne p0, p1, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 74
    :goto_0
    return v1

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 71
    .local v0, a1length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 72
    const/4 v1, 0x0

    goto :goto_0

    .line 74
    :cond_1
    sub-int v1, v0, p2

    invoke-virtual {p0, p2, p1, p2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 210
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->finish()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_1
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finishEventCallbackHandler()V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->finish()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract init(Landroid/os/IBinder;)Z
.end method

.method protected declared-synchronized initEventCallbackHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;-><init>(Lcom/broadcom/bt/service/framework/BaseProxy;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    .line 112
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->start()V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 115
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mEventCallbackHandler:Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 249
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/service/framework/BaseProxy;->init(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    const-string v0, "BaseProxy"

    const-string v1, "Unable to create proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    invoke-interface {v0, p0}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mProxyAvailCb:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 263
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 0
    .parameter "opCode"
    .parameter "allow"
    .parameter "data"

    .prologue
    .line 206
    return-void
.end method
