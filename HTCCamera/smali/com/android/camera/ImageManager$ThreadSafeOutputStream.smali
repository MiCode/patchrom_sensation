.class Lcom/android/camera/ImageManager$ThreadSafeOutputStream;
.super Ljava/io/OutputStream;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadSafeOutputStream"
.end annotation


# instance fields
.field mClosed:Z

.field mDelegateStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "delegate"

    .prologue
    .line 4083
    iput-object p1, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4084
    iput-object p2, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    .line 4085
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4090
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mClosed:Z

    .line 4091
    iget-object v0, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4095
    :goto_0
    monitor-exit p0

    return-void

    .line 4090
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4092
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4099
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4100
    monitor-exit p0

    return-void

    .line 4099
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4123
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4126
    :goto_0
    monitor-exit p0

    return-void

    .line 4125
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)V
    .locals 2
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4108
    :goto_0
    if-lez p3, :cond_0

    .line 4109
    monitor-enter p0

    .line 4110
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mClosed:Z

    if-eqz v1, :cond_1

    .line 4111
    monitor-exit p0

    .line 4119
    :cond_0
    return-void

    .line 4113
    :cond_1
    const/16 v1, 0x2000

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4114
    .local v0, writeLength:I
    iget-object v1, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 4115
    add-int/2addr p2, v0

    .line 4116
    sub-int/2addr p3, v0

    .line 4117
    monitor-exit p0

    goto :goto_0

    .end local v0           #writeLength:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
