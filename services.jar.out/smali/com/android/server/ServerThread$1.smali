.class final Lcom/android/server/ServerThread$1;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->preserveSpace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 106
    const/4 v7, 0x0

    .line 108
    .local v7, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    const-string v11, "/data"

    invoke-direct {v1, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, dataFs:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    .line 110
    .local v0, blockSize:I
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v11, v11

    int-to-long v13, v0

    mul-long v4, v11, v13

    .line 112
    .local v4, freeSize:J
    move-wide v9, v4

    .line 114
    .local v9, sizeToReserve:J
    const-wide/32 v11, 0x100000

    cmp-long v11, v9, v11

    if-lez v11, :cond_0

    .line 115
    const-wide/32 v9, 0x100000

    .line 120
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v11, "/data/system/storage_reserve"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, file:Ljava/io/File;
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    invoke-direct {v8, v3, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .local v8, raf:Ljava/io/RandomAccessFile;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    int-to-long v11, v6

    int-to-long v13, v0

    :try_start_1
    div-long v13, v9, v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    .line 127
    mul-int v11, v0, v6

    int-to-long v11, v11

    invoke-virtual {v8, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 128
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 133
    :cond_1
    if-eqz v8, :cond_2

    .line 135
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v7, v8

    .line 141
    .end local v0           #blockSize:I
    .end local v1           #dataFs:Landroid/os/StatFs;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #freeSize:J
    .end local v6           #i:I
    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .end local v9           #sizeToReserve:J
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_2
    return-void

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v11, "SystemServer"

    const-string v12, "Reserve storage interrupted"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    if-eqz v7, :cond_3

    .line 135
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 136
    :catch_1
    move-exception v11

    goto :goto_2

    .line 133
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v7, :cond_4

    .line 135
    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 133
    :cond_4
    :goto_5
    throw v11

    .line 136
    :catch_2
    move-exception v12

    goto :goto_5

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #blockSize:I
    .restart local v1       #dataFs:Landroid/os/StatFs;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #freeSize:J
    .restart local v6       #i:I
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #sizeToReserve:J
    :catch_3
    move-exception v11

    goto :goto_1

    .line 133
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 130
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3
.end method
