.class public Landroid/ddm/DdmHandleProfiling;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleProfiling.java"


# static fields
.field public static final CHUNK_GPFF:I

.field public static final CHUNK_MLGE:I

.field public static final CHUNK_MLGS:I

.field public static final CHUNK_MPRE:I

.field public static final CHUNK_MPRQ:I

.field public static final CHUNK_MPRS:I

.field public static final CHUNK_MPSE:I

.field public static final CHUNK_MPSS:I

.field public static final CHUNK_SPFF:I

.field private static mInstance:Landroid/ddm/DdmHandleProfiling;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "MPRS"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    .line 39
    const-string v0, "MPRE"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    .line 40
    const-string v0, "MPSS"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    .line 41
    const-string v0, "MPSE"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    .line 42
    const-string v0, "MPRQ"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    .line 44
    const-string v0, "MLGS"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MLGS:I

    .line 45
    const-string v0, "MLGE"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MLGE:I

    .line 46
    const-string v0, "SPFF"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPFF:I

    .line 47
    const-string v0, "GPFF"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_GPFF:I

    .line 50
    new-instance v0, Landroid/ddm/DdmHandleProfiling;

    invoke-direct {v0}, Landroid/ddm/DdmHandleProfiling;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleGPFF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 21
    .parameter "request"

    .prologue
    .line 299
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileResume()Z

    move-result v15

    .line 300
    .local v15, resume:Z
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileLaunch()Z

    move-result v10

    .line 301
    .local v10, launch:Z
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v11

    .line 302
    .local v11, opencursor:Z
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v5

    .line 303
    .local v5, checkheap:Z
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v12

    .line 304
    .local v12, recyclebmp:Z
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckLowMemory()Z

    move-result v6

    .line 305
    .local v6, checklowmemory:Z
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugMonitor()Z

    move-result v7

    .line 306
    .local v7, debugmonitor:Z
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileKeyInputQueueDebugUpDown()Z

    move-result v9

    .line 307
    .local v9, keyInputQueue_debugUpDown:Z
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileWindowManagerServiceDebugUpDown()Z

    move-result v16

    .line 308
    .local v16, windowManagerService_debugUpDown:Z
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmapSize()I

    move-result v13

    .line 310
    .local v13, recyclebmpsize:I
    const/4 v8, 0x0

    .line 312
    .local v8, flags:I
    if-eqz v15, :cond_0

    add-int/lit8 v8, v8, 0x1

    .line 313
    :cond_0
    if-eqz v10, :cond_1

    add-int/lit8 v8, v8, 0x2

    .line 314
    :cond_1
    if-eqz v11, :cond_2

    add-int/lit8 v8, v8, 0x4

    .line 315
    :cond_2
    if-eqz v5, :cond_3

    add-int/lit8 v8, v8, 0x8

    .line 316
    :cond_3
    if-eqz v12, :cond_4

    add-int/lit8 v8, v8, 0x10

    .line 317
    :cond_4
    if-eqz v6, :cond_5

    add-int/lit8 v8, v8, 0x20

    .line 318
    :cond_5
    if-eqz v7, :cond_6

    add-int/lit8 v8, v8, 0x40

    .line 319
    :cond_6
    if-eqz v9, :cond_7

    add-int/lit16 v8, v8, 0x80

    .line 320
    :cond_7
    if-eqz v16, :cond_8

    add-int/lit16 v8, v8, 0x100

    .line 322
    :cond_8
    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 324
    .local v4, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 327
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .line 333
    .local v14, reply:[B
    new-instance v17, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v18, Landroid/ddm/DdmHandleProfiling;->CHUNK_GPFF:I

    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v14, v2, v3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v17
.end method

.method private handleMLGE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    .line 245
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ddm-prof"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message logging end failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0
.end method

.method private handleMLGS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .parameter "request"

    .prologue
    .line 226
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/LogPrinter;

    const/4 v3, 0x2

    const-string v4, "LOG_TAG"

    invoke-direct {v2, v3, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/4 v1, 0x0

    .line 230
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ddm-prof"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message logging start failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0
.end method

.method private handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .parameter "request"

    .prologue
    const/4 v6, 0x0

    .line 148
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v2, 0x0

    .line 157
    .local v2, result:B
    :goto_0
    const/4 v3, 0x1

    new-array v1, v3, [B

    aput-byte v2, v1, v6

    .line 158
    .local v1, reply:[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    array-length v5, v1

    invoke-direct {v3, v4, v1, v6, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v3

    .line 150
    .end local v1           #reply:[B
    .end local v2           #result:B
    :catch_0
    move-exception v0

    .line 151
    .local v0, re:Ljava/lang/RuntimeException;
    const-string v3, "ddm-heap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method profiling end failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v2, 0x1

    .restart local v2       #result:B
    goto :goto_0
.end method

.method private handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .parameter "request"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 209
    invoke-static {}, Landroid/os/Debug;->isMethodTracingActive()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 212
    .local v1, result:I
    :goto_0
    new-array v0, v2, [B

    int-to-byte v2, v1

    aput-byte v2, v0, v3

    .line 213
    .local v0, reply:[B
    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    array-length v5, v0

    invoke-direct {v2, v4, v0, v3, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v2

    .end local v0           #reply:[B
    .end local v1           #result:I
    :cond_0
    move v1, v3

    .line 209
    goto :goto_0
.end method

.method private handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .parameter "request"

    .prologue
    .line 123
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 125
    .local v3, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 126
    .local v0, bufferSize:I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 127
    .local v2, flags:I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 128
    .local v4, len:I
    invoke-static {v3, v4}, Landroid/ddm/DdmHandleProfiling;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, fileName:Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v0, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v6, 0x0

    .line 137
    :goto_0
    return-object v6

    .line 136
    :catch_0
    move-exception v5

    .line 137
    .local v5, re:Ljava/lang/RuntimeException;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v6

    goto :goto_0
.end method

.method private handleMPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .parameter "request"

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    const/4 v1, 0x0

    .line 202
    .local v1, result:B
    const/4 v2, 0x0

    .end local v1           #result:B
    :goto_0
    return-object v2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, re:Ljava/lang/RuntimeException;
    const-string v2, "ddm-heap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method prof stream end failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v2

    goto :goto_0
.end method

.method private handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .parameter "request"

    .prologue
    .line 165
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 167
    .local v2, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 168
    .local v0, bufferSize:I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 175
    .local v1, flags:I
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Debug;->startMethodTracingDdms(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const/4 v4, 0x0

    .line 178
    :goto_0
    return-object v4

    .line 177
    :catch_0
    move-exception v3

    .line 178
    .local v3, re:Ljava/lang/RuntimeException;
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    goto :goto_0
.end method

.method private handleSPFF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 16
    .parameter "request"

    .prologue
    .line 258
    invoke-static/range {p1 .. p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 260
    .local v2, data:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 261
    .local v5, flags:I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 263
    .local v10, recyclebmpsize:I
    and-int/lit8 v13, v5, 0x1

    if-eqz v13, :cond_0

    const/4 v11, 0x1

    .line 264
    .local v11, resume:Z
    :goto_0
    and-int/lit8 v13, v5, 0x2

    if-eqz v13, :cond_1

    const/4 v7, 0x1

    .line 265
    .local v7, launch:Z
    :goto_1
    and-int/lit8 v13, v5, 0x4

    if-eqz v13, :cond_2

    const/4 v8, 0x1

    .line 266
    .local v8, opencursor:Z
    :goto_2
    and-int/lit8 v13, v5, 0x8

    if-eqz v13, :cond_3

    const/4 v0, 0x1

    .line 267
    .local v0, checkheap:Z
    :goto_3
    and-int/lit8 v13, v5, 0x10

    if-eqz v13, :cond_4

    const/4 v9, 0x1

    .line 268
    .local v9, recyclebmp:Z
    :goto_4
    and-int/lit8 v13, v5, 0x20

    if-eqz v13, :cond_5

    const/4 v1, 0x1

    .line 269
    .local v1, checklowmemory:Z
    :goto_5
    and-int/lit8 v13, v5, 0x40

    if-eqz v13, :cond_6

    const/4 v3, 0x1

    .line 270
    .local v3, debugmonitor:Z
    :goto_6
    and-int/lit16 v13, v5, 0x80

    if-eqz v13, :cond_7

    const/4 v6, 0x1

    .line 271
    .local v6, keyInputQueue_debugUpDown:Z
    :goto_7
    and-int/lit16 v13, v5, 0x100

    if-eqz v13, :cond_8

    const/4 v12, 0x1

    .line 277
    .local v12, windowManagerService_debugUpDown:Z
    :goto_8
    :try_start_0
    invoke-static {v11}, Lcom/htc/profileflag/ProfileConfig;->setProfileResume(Z)V

    .line 278
    invoke-static {v7}, Lcom/htc/profileflag/ProfileConfig;->setProfileLaunch(Z)V

    .line 279
    invoke-static {v8}, Lcom/htc/profileflag/ProfileConfig;->setProfileOpenCursor(Z)V

    .line 280
    invoke-static {v0}, Lcom/htc/profileflag/ProfileConfig;->setCheckHeap(Z)V

    .line 281
    invoke-static {v9}, Lcom/htc/profileflag/ProfileConfig;->setRecycleBitmap(Z)V

    .line 282
    invoke-static {v10}, Lcom/htc/profileflag/ProfileConfig;->setRecycleBitmapSize(I)V

    .line 283
    invoke-static {v1}, Lcom/htc/profileflag/ProfileConfig;->setCheckLowMemory(Z)V

    .line 284
    invoke-static {v3}, Lcom/htc/profileflag/ProfileConfig;->setProfileDebugMonitor(Z)V

    .line 285
    invoke-static {v6}, Lcom/htc/profileflag/ProfileConfig;->setProfileKeyInputQueueDebugUpDown(Z)V

    .line 286
    invoke-static {v12}, Lcom/htc/profileflag/ProfileConfig;->setProfileWindowManagerServiceDebugUpDown(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    const/4 v13, 0x0

    .line 290
    :goto_9
    return-object v13

    .line 263
    .end local v0           #checkheap:Z
    .end local v1           #checklowmemory:Z
    .end local v3           #debugmonitor:Z
    .end local v6           #keyInputQueue_debugUpDown:Z
    .end local v7           #launch:Z
    .end local v8           #opencursor:Z
    .end local v9           #recyclebmp:Z
    .end local v11           #resume:Z
    .end local v12           #windowManagerService_debugUpDown:Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 264
    .restart local v11       #resume:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 265
    .restart local v7       #launch:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 266
    .restart local v8       #opencursor:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 267
    .restart local v0       #checkheap:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 268
    .restart local v9       #recyclebmp:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 269
    .restart local v1       #checklowmemory:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .line 270
    .restart local v3       #debugmonitor:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_7

    .line 271
    .restart local v6       #keyInputQueue_debugUpDown:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_8

    .line 288
    .restart local v12       #windowManagerService_debugUpDown:Z
    :catch_0
    move-exception v4

    .line 289
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "ddm-prof"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Set Profile flag failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v13, 0x1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v13

    goto :goto_9
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 60
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 61
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 62
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 63
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 64
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 66
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MLGS:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 67
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MLGE:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 68
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPFF:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 69
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_GPFF:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 71
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .parameter "request"

    .prologue
    .line 91
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 93
    .local v0, type:I
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    .line 95
    :cond_0
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    if-ne v0, v1, :cond_1

    .line 96
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 97
    :cond_1
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    if-ne v0, v1, :cond_2

    .line 98
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_2
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    if-ne v0, v1, :cond_3

    .line 100
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 101
    :cond_3
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    if-ne v0, v1, :cond_4

    .line 102
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_4
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MLGS:I

    if-ne v0, v1, :cond_5

    .line 105
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMLGS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_5
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MLGE:I

    if-ne v0, v1, :cond_6

    .line 107
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMLGE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_6
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPFF:I

    if-ne v0, v1, :cond_7

    .line 109
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleSPFF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_7
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_GPFF:I

    if-ne v0, v1, :cond_8

    .line 111
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleGPFF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
