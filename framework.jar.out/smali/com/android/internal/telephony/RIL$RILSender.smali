.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 326
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 330
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 327
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    .line 342
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/RILRequest;

    move-object v8, v10

    check-cast v8, Lcom/android/internal/telephony/RILRequest;

    .line 343
    .local v8, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v7, 0x0

    .line 345
    .local v7, req:Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 352
    :pswitch_0
    const/4 v1, 0x0

    .line 356
    .local v1, alreadySubtracted:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    .local v9, s:Landroid/net/LocalSocket;
    const/4 v6, 0x0

    .line 359
    .local v6, i:I
    :goto_1
    if-nez v9, :cond_1

    const/16 v10, 0xa

    if-gt v6, v10, :cond_1

    .line 361
    :try_start_1
    const-string v10, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTC.QCRIL.RILJ]: socket is null, sleep 1 sec ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 363
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v10, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 369
    :cond_1
    if-nez v9, :cond_3

    .line 370
    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 371
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 372
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v10, :cond_2

    .line 373
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 374
    :cond_2
    const/4 v1, 0x1

    .line 430
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V

    goto :goto_0

    .line 378
    :cond_3
    :try_start_3
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v10, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 379
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v12, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 381
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 383
    :try_start_5
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v10, :cond_4

    .line 384
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 385
    :cond_4
    const/4 v1, 0x1

    .line 389
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 390
    .local v3, data:[B
    iget-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 391
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    .line 393
    array-length v10, v3

    const/16 v11, 0x2000

    if-le v10, v11, :cond_9

    .line 394
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parcel larger than max bytes allowed! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 408
    .end local v3           #data:[B
    .end local v6           #i:I
    .end local v9           #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    .line 409
    .local v4, ex:Ljava/io/IOException;
    :try_start_6
    const-string v10, "RILJ"

    const-string v11, "IOException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 413
    if-nez v7, :cond_5

    if-nez v1, :cond_6

    .line 414
    :cond_5
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 415
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 430
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .end local v4           #ex:Ljava/io/IOException;
    :goto_2
    #calls: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V

    .line 433
    if-nez v1, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-lez v10, :cond_0

    .line 434
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    goto/16 :goto_0

    .line 381
    .restart local v6       #i:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catchall_0
    move-exception v10

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 417
    .end local v6           #i:I
    .end local v9           #s:Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    .line 418
    .local v5, exc:Ljava/lang/RuntimeException;
    :try_start_9
    const-string v10, "RILJ"

    const-string v11, "Uncaught exception "

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v11, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #calls: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 422
    if-nez v7, :cond_7

    if-nez v1, :cond_8

    .line 423
    :cond_7
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 424
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 430
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    goto :goto_2

    .line 400
    .end local v5           #exc:Ljava/lang/RuntimeException;
    .restart local v3       #data:[B
    .restart local v6       #i:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :cond_9
    :try_start_a
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-byte v14, v12, v13

    aput-byte v14, v10, v11

    .line 401
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x2

    array-length v12, v3

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 402
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x3

    array-length v12, v3

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 406
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 407
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 430
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    goto :goto_2

    .end local v3           #data:[B
    .end local v6           #i:I
    .end local v9           #s:Landroid/net/LocalSocket;
    :catchall_1
    move-exception v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->releaseWakeLockIfDone()V
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;)V

    throw v10

    .line 442
    .end local v1           #alreadySubtracted:Z
    :pswitch_1
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v10, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v11

    .line 443
    :try_start_b
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 453
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    if-eqz v10, :cond_b

    .line 454
    const-string v10, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTE: mReqWaiting is NOT 0 but"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v13, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " at TIMEOUT, reset!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " There still msg waitng for response"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    iput v12, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesWaiting:I

    .line 461
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v10, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 462
    :try_start_c
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 463
    .local v2, count:I
    const-string v10, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    if-ge v6, v2, :cond_a

    .line 467
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v8, v0

    .line 468
    const-string v10, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 471
    :cond_a
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 481
    .end local v2           #count:I
    .end local v6           #i:I
    :cond_b
    :try_start_d
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    if-eqz v10, :cond_c

    .line 482
    const-string v10, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERROR: mReqPending is NOT 0 but"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v13, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " at TIMEOUT, reset!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    iput v12, v10, Lcom/android/internal/telephony/RIL;->mRequestMessagesPending:I

    .line 487
    :cond_c
    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v10, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 489
    :cond_d
    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v10

    .line 471
    :catchall_3
    move-exception v10

    :try_start_e
    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 365
    .restart local v1       #alreadySubtracted:Z
    .restart local v6       #i:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_2
    move-exception v10

    goto/16 :goto_1

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method
