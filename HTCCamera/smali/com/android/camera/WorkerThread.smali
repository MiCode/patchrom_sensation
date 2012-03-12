.class public Lcom/android/camera/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


# static fields
.field private static final FLAG_EXITED:I = 0x4

.field private static final FLAG_EXITING:I = 0x2

.field private static final FLAG_RUNNING:I = 0x1

.field private static final MSG_EXIT:I = -0x1


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private volatile m_Flags:I

.field private m_Handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/WorkerThread;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final declared-synchronized exit()V
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    .line 40
    iget v0, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    .line 41
    iget v0, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/WorkerThread;->m_Handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/WorkerThread;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/WorkerThread;->onExit()V

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 64
    :cond_0
    return-void
.end method

.method public final isExiting()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onEnter()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected onExit()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    iget v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 107
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    iget v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    .line 137
    iget v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    :goto_0
    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    .line 139
    return-void

    .line 110
    :cond_0
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 111
    new-instance v1, Lcom/android/camera/WorkerThread$1;

    invoke-direct {v1, p0}, Lcom/android/camera/WorkerThread$1;-><init>(Lcom/android/camera/WorkerThread;)V

    iput-object v1, p0, Lcom/android/camera/WorkerThread;->m_Handler:Landroid/os/Handler;

    .line 121
    iget v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/WorkerThread;->onEnter()V

    .line 125
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    iget v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    .line 137
    iget v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_6
    iget-object v1, p0, Lcom/android/camera/WorkerThread;->TAG:Ljava/lang/String;

    const-string v2, "Unhandled exception"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 136
    iget v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    .line 137
    iget v1, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    goto :goto_0

    .line 136
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    iget v2, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v2, v2, -0x4

    iput v2, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    .line 137
    iget v2, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/camera/WorkerThread;->m_Flags:I

    .line 136
    throw v1
.end method
