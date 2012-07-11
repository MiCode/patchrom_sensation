.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseCode;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z


# instance fields
.field private final BUFFER_SIZE:I

.field private TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private mDaemonLock:Ljava/lang/Object;

.field private mLocSocket:Landroid/net/LocalSocket;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mResponseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSocket:Ljava/lang/String;

.field private mbNetdTest:Ljava/lang/Boolean;

.field private miNoRespCnt:I


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "callbacks"
    .parameter "socket"
    .parameter "responseQueueSize"
    .parameter "logTag"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "NativeDaemonConnector"

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 56
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 77
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 78
    if-eqz p4, :cond_0

    .line 79
    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 80
    :cond_0
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mbNetdTest:Ljava/lang/Boolean;

    .line 83
    iput v1, p0, Lcom/android/server/NativeDaemonConnector;->miNoRespCnt:I

    .line 84
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v1, "NetdConnector"

    if-ne v0, v1, :cond_1

    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mbNetdTest:Ljava/lang/Boolean;

    .line 86
    :cond_1
    return-void
.end method

.method private doCommandLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 274
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->sendCommandLocked(Ljava/lang/String;)V

    .line 277
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v5, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 279
    .local v1, complete:Z
    const/4 v0, -0x1

    .line 282
    .local v0, code:I
    :goto_0
    if-nez v1, :cond_2

    .line 286
    :try_start_0
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v9, 0x1e

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v9, v10, v11}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    .local v3, line:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, tokens:[Ljava/lang/String;
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/NativeDaemonConnector;->miNoRespCnt:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 292
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 298
    const/16 v8, 0xc8

    if-lt v0, v8, :cond_0

    const/16 v8, 0x258

    if-ge v0, v8, :cond_0

    .line 299
    const/4 v1, 0x1

    .line 301
    :cond_0
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 302
    .end local v3           #line:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 303
    .local v2, ex:Ljava/lang/InterruptedException;
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v9, "Failed to process response"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    new-instance v8, Lcom/android/server/NativeDaemonConnectorException;

    const-string v9, "failed from daemon"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, p1, v9}, Lcom/android/server/NativeDaemonConnectorException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 293
    .end local v2           #ex:Ljava/lang/InterruptedException;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v7       #tokens:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 294
    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v8, Lcom/android/server/NativeDaemonConnectorException;

    const-string v9, "Invalid response from daemon (%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 306
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v7           #tokens:[Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 307
    .local v2, ex:Ljava/lang/NullPointerException;
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v9, "Failed to get response"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    iget v8, p0, Lcom/android/server/NativeDaemonConnector;->miNoRespCnt:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/NativeDaemonConnector;->miNoRespCnt:I

    .line 310
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No Resp times="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/NativeDaemonConnector;->miNoRespCnt:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mbNetdTest:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 312
    iget v8, p0, Lcom/android/server/NativeDaemonConnector;->miNoRespCnt:I

    const/16 v9, 0xa

    if-lt v8, v9, :cond_1

    .line 313
    iput v12, p0, Lcom/android/server/NativeDaemonConnector;->miNoRespCnt:I

    .line 314
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mLocSocket:Landroid/net/LocalSocket;

    if-eqz v8, :cond_1

    .line 316
    :try_start_4
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v9, "Restart socket"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mLocSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownInput()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 324
    :cond_1
    :goto_1
    new-instance v8, Lcom/android/server/NativeDaemonConnectorException;

    const-string v9, "mResponseQueue is not available"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, p1, v9}, Lcom/android/server/NativeDaemonConnectorException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 318
    :catch_3
    move-exception v6

    .line 319
    .local v6, sEx:Ljava/io/IOException;
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v9, "IOException in mLocSocket.shutdownInput"

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 330
    .end local v2           #ex:Ljava/lang/NullPointerException;
    .end local v6           #sEx:Ljava/io/IOException;
    :cond_2
    const/16 v8, 0x190

    if-lt v0, v8, :cond_3

    const/16 v8, 0x257

    if-gt v0, v8, :cond_3

    .line 336
    new-instance v9, Lcom/android/server/NativeDaemonConnectorException;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v0, p1, v8}, Lcom/android/server/NativeDaemonConnectorException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 339
    :cond_3
    return-object v5
.end method

.method private listenToSocket()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v14, 0x0

    .line 122
    .local v14, socket:Landroid/net/LocalSocket;
    const/4 v12, 0x0

    .line 125
    .local v12, receiveResponseFailed:Z
    :try_start_0
    new-instance v15, Landroid/net/LocalSocket;

    invoke-direct {v15}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 126
    .end local v14           #socket:Landroid/net/LocalSocket;
    .local v15, socket:Landroid/net/LocalSocket;
    :try_start_1
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mLocSocket:Landroid/net/LocalSocket;

    .line 127
    new-instance v2, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 130
    .local v2, address:Landroid/net/LocalSocketAddress;
    invoke-virtual {v15, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 132
    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 133
    .local v10, inputStream:Ljava/io/InputStream;
    invoke-virtual {v15}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 137
    const/16 v18, 0x1000

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 138
    .local v3, buffer:[B
    const/16 v16, 0x0

    .line 141
    .local v16, start:I
    :goto_0
    move/from16 v0, v16

    rsub-int v0, v0, 0x1000

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v10, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 142
    .local v5, count:I
    if-gez v5, :cond_3

    .line 143
    const/4 v12, 0x1

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Failed to read socket (%d)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 194
    if-eqz v12, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Failed to receive response from daemon"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6

    .line 203
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 204
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v18, :cond_1

    .line 206
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 210
    :goto_2
    const/16 v18, 0x0

    :try_start_5
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 212
    :cond_1
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 215
    if-eqz v15, :cond_2

    .line 217
    :try_start_6
    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 223
    :cond_2
    :goto_3
    return-void

    .line 150
    :cond_3
    add-int v5, v5, v16

    .line 151
    const/16 v16, 0x0

    .line 153
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    if-ge v9, v5, :cond_9

    .line 154
    :try_start_7
    aget-byte v18, v3, v9

    if-nez v18, :cond_4

    .line 155
    new-instance v7, Ljava/lang/String;

    sub-int v18, v9, v16

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v7, v3, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 158
    .local v7, event:Ljava/lang/String;
    const-string v18, " "

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v17

    .line 160
    .local v17, tokens:[Ljava/lang/String;
    const/16 v18, 0x0

    :try_start_8
    aget-object v18, v17, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 162
    .local v4, code:I
    const/16 v18, 0x258

    move/from16 v0, v18

    if-lt v4, v0, :cond_5

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 175
    .end local v4           #code:I
    :goto_5
    add-int/lit8 v16, v9, 0x1

    .line 153
    .end local v7           #event:Ljava/lang/String;
    .end local v17           #tokens:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 167
    .restart local v4       #code:I
    .restart local v7       #event:Ljava/lang/String;
    .restart local v17       #tokens:[Ljava/lang/String;
    :cond_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 168
    :catch_0
    move-exception v8

    .line 169
    .local v8, ex:Ljava/lang/InterruptedException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Failed to put response onto queue"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 172
    .end local v4           #code:I
    .end local v8           #ex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v11

    .line 173
    .local v11, nfe:Ljava/lang/NumberFormatException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Bad msg (%s)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 189
    .end local v2           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #buffer:[B
    .end local v5           #count:I
    .end local v7           #event:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v11           #nfe:Ljava/lang/NumberFormatException;
    .end local v16           #start:I
    .end local v17           #tokens:[Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object v14, v15

    .line 190
    .end local v15           #socket:Landroid/net/LocalSocket;
    .local v8, ex:Ljava/io/IOException;
    .restart local v14       #socket:Landroid/net/LocalSocket;
    :goto_6
    const/4 v12, 0x1

    .line 191
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Communications error"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 194
    .end local v8           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_7
    if-eqz v12, :cond_6

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Failed to receive response from daemon"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-interface/range {v19 .. v20}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3

    .line 203
    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 204
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v20, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v20, :cond_7

    .line 206
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 210
    :goto_9
    const/16 v20, 0x0

    :try_start_10
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 212
    :cond_7
    monitor-exit v19
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 215
    if-eqz v14, :cond_8

    .line 217
    :try_start_11
    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 194
    :cond_8
    :goto_a
    throw v18

    .line 181
    .end local v14           #socket:Landroid/net/LocalSocket;
    .restart local v2       #address:Landroid/net/LocalSocketAddress;
    .restart local v3       #buffer:[B
    .restart local v5       #count:I
    .restart local v9       #i:I
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v15       #socket:Landroid/net/LocalSocket;
    .restart local v16       #start:I
    :cond_9
    move/from16 v0, v16

    if-eq v0, v5, :cond_a

    .line 182
    move/from16 v0, v16

    rsub-int v13, v0, 0x1000

    .line 183
    .local v13, remaining:I
    const/16 v18, 0x0

    :try_start_12
    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v3, v0, v3, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    .line 184
    move/from16 v16, v13

    .line 185
    goto/16 :goto_0

    .line 186
    .end local v13           #remaining:I
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 199
    .end local v2           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #buffer:[B
    .end local v5           #count:I
    .end local v9           #i:I
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v15           #socket:Landroid/net/LocalSocket;
    .end local v16           #start:I
    .restart local v14       #socket:Landroid/net/LocalSocket;
    :catch_3
    move-exception v8

    .line 200
    .local v8, ex:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Failed to put response onto queue (InterruptedException)"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 212
    .end local v8           #ex:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v18

    :try_start_13
    monitor-exit v19
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    throw v18

    .line 219
    :catch_4
    move-exception v8

    .line 220
    .local v8, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Failed closing socket"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 207
    .end local v8           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 208
    .local v6, e:Ljava/io/IOException;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Failed closing output stream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_9

    .line 199
    .end local v6           #e:Ljava/io/IOException;
    .end local v14           #socket:Landroid/net/LocalSocket;
    .restart local v2       #address:Landroid/net/LocalSocketAddress;
    .restart local v3       #buffer:[B
    .restart local v5       #count:I
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v15       #socket:Landroid/net/LocalSocket;
    .restart local v16       #start:I
    :catch_6
    move-exception v8

    .line 200
    .local v8, ex:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Failed to put response onto queue (InterruptedException)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 212
    .end local v8           #ex:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v18

    :try_start_15
    monitor-exit v19
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v18

    .line 219
    :catch_7
    move-exception v8

    .line 220
    .local v8, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Failed closing socket"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 207
    .end local v8           #ex:Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 208
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, "Failed closing output stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_2

    .line 194
    .end local v2           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #buffer:[B
    .end local v5           #count:I
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v16           #start:I
    :catchall_3
    move-exception v18

    move-object v14, v15

    .end local v15           #socket:Landroid/net/LocalSocket;
    .restart local v14       #socket:Landroid/net/LocalSocket;
    goto/16 :goto_7

    .line 189
    :catch_9
    move-exception v8

    goto/16 :goto_6
.end method

.method private sendCommandLocked(Ljava/lang/String;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NativeDaemonConnector;->sendCommandLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private sendCommandLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "command"
    .parameter "argument"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 237
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 238
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 241
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "No connection to daemon"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    new-instance v2, Lcom/android/server/NativeDaemonConnectorException;

    const-string v3, "No output stream!"

    invoke-direct {v2, v3}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-void

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "IOException in sendCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    new-instance v2, Lcom/android/server/NativeDaemonConnectorException;

    const-string v3, "Failed to write to output stream!"

    invoke-direct {v2, v3}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->doCommandLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 17
    .parameter "cmd"
    .parameter "expectedResponseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 349
    .local v10, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    new-array v9, v12, [Ljava/lang/String;

    .line 350
    .local v9, rdata:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 352
    .local v3, idx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 353
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 355
    .local v7, line:Ljava/lang/String;
    :try_start_0
    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 356
    .local v11, tok:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 357
    .local v1, code:I
    move/from16 v0, p2

    if-ne v1, v0, :cond_0

    .line 358
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    const/4 v12, 0x0

    :try_start_1
    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_0

    .line 359
    :cond_0
    const/16 v12, 0xc8

    if-ne v1, v12, :cond_1

    .line 361
    :try_start_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 362
    .local v6, last:I
    if-eq v2, v6, :cond_3

    .line 363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v13, "Recv\'d %d lines after end of list {%s}"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sub-int v16, v6, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move v5, v2

    .local v5, j:I
    :goto_1
    if-gt v5, v6, :cond_3

    .line 365
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v13, "ExtraData <%s>"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 370
    .end local v5           #j:I
    .end local v6           #last:I
    :cond_1
    new-instance v12, Lcom/android/server/NativeDaemonConnectorException;

    const-string v13, "Expected list response %d, but got %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 374
    .end local v1           #code:I
    .end local v11           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 375
    .local v8, nfe:Ljava/lang/NumberFormatException;
    :goto_2
    new-instance v12, Lcom/android/server/NativeDaemonConnectorException;

    const-string v13, "Error reading code \'%s\'"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 379
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #nfe:Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v12, Lcom/android/server/NativeDaemonConnectorException;

    const-string v13, "Got an empty response"

    invoke-direct {v12, v13}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 368
    .restart local v1       #code:I
    .restart local v6       #last:I
    .restart local v7       #line:Ljava/lang/String;
    .restart local v11       #tok:[Ljava/lang/String;
    :cond_3
    return-object v9

    .line 374
    .end local v3           #idx:I
    .end local v6           #last:I
    .restart local v4       #idx:I
    :catch_1
    move-exception v8

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 106
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, event:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Unhandled event \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return v6

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Error handling \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 90
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".CallbackHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 96
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Error in NativeDaemonConnector"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
