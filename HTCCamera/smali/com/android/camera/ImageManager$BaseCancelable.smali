.class public abstract Lcom/android/camera/ImageManager$BaseCancelable;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$ICancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseCancelable"
.end annotation


# instance fields
.field mCancel:Z

.field mFinished:Z

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mFinished:Z

    return-void
.end method


# virtual methods
.method protected acknowledgeCancel()V
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mFinished:Z

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    if-nez v0, :cond_0

    .line 147
    monitor-exit p0

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 151
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v1, :cond_0

    .line 157
    monitor-exit p0

    .line 171
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mFinished:Z

    if-eqz v1, :cond_1

    .line 160
    monitor-exit p0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 162
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseCancelable;->doCancelWork()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 166
    .local v0, retVal:Z
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected checkCanceled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/ImageManager$CanceledException;
        }
    .end annotation

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lcom/android/camera/ImageManager$CanceledException;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {v0, v1}, Lcom/android/camera/ImageManager$CanceledException;-><init>(Lcom/android/camera/ImageManager;)V

    throw v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    return-void
.end method

.method public abstract doCancelWork()Z
.end method
