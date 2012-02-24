.class Lcom/android/internal/telephony/AnrRecordLoader;
.super Landroid/os/Handler;
.source "AnrRecord.java"


# static fields
.field static final EVENT_ANR_LOAD_ALL_DONE:I = 0x2

.field static final EVENT_ANR_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x3

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field ef:I

.field mAnrPresentInIAP:Z

.field mExt1List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter
    .parameter "phone"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;",
            "Lcom/android/internal/telephony/PhoneBase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, ext1List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter
    .parameter "phone"
    .parameter "iccFileHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;",
            "Lcom/android/internal/telephony/PhoneBase;",
            "Lcom/android/internal/telephony/IccFileHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, ext1List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    .line 79
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 80
    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 255
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 377
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AnrRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 381
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 383
    :cond_1
    :goto_1
    return-void

    .line 260
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 261
    .local v9, ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    move-object v8, v0

    .line 263
    .local v8, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 264
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 365
    .end local v8           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v11

    .line 366
    .local v11, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 372
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 268
    .end local v11           #exc:Ljava/lang/RuntimeException;
    .restart local v8       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v9       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v15, v0

    .line 274
    .local v15, recordSize:[I
    array-length v2, v15

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v15, v3

    if-le v2, v3, :cond_4

    .line 275
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 279
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget v3, v15, v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mAnrPresentInIAP:Z

    invoke-virtual {v8, v2, v3, v5}, Lcom/android/internal/telephony/AnrRecord;->buildAnrString(Ljava/util/ArrayList;IZ)[B

    move-result-object v4

    .line 281
    .local v4, data:[B
    if-nez v4, :cond_5

    .line 282
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "worong ANR format"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 286
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_7

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 293
    .local v1, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v1, :cond_6

    .line 294
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 298
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "phone.mIccFileHandler is null"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 302
    .end local v1           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "phone is null"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 308
    .end local v4           #data:[B
    .end local v8           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v15           #recordSize:[I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 311
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 312
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "update EF email record failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 316
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 323
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 324
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v4, v0

    .line 326
    .restart local v4       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 327
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "load failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 330
    :cond_9
    new-instance v8, Lcom/android/internal/telephony/AnrRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    invoke-direct {v8, v2, v4}, Lcom/android/internal/telephony/AnrRecord;-><init>(I[B)V

    .line 331
    .restart local v8       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/AnrRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 336
    .end local v4           #data:[B
    .end local v8           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 337
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 339
    .local v10, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_a

    .line 340
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "load failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 343
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    .local v7, anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/AnrRecordLoader;->result:Ljava/lang/Object;

    .line 346
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, s:I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 347
    new-instance v8, Lcom/android/internal/telephony/AnrRecord;

    add-int/lit8 v3, v14, 0x1

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mAnrPresentInIAP:Z

    invoke-direct {v8, v3, v2, v5}, Lcom/android/internal/telephony/AnrRecord;-><init>(I[BZ)V

    .line 348
    .restart local v8       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v8}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    .line 352
    iget v13, v8, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 353
    .local v13, extindex:I
    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v13, v2, :cond_b

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AnrRecordLoader;->mExt1List:Ljava/util/ArrayList;

    add-int/lit8 v3, v13, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/HtcExt1Record;

    .line 355
    .local v12, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    invoke-virtual {v12}, Lcom/android/internal/telephony/HtcExt1Record;->getBytes()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/AnrRecord;->appendExtRecord([B)V

    .line 346
    .end local v12           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v13           #extindex:I
    :cond_b
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 358
    :cond_c
    const-string v2, "AnrRecord"

    const-string v3, "No Invalid EF_EXT1 records."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method loadAllFromEF(ILandroid/os/Message;)V
    .locals 3
    .parameter "ef"
    .parameter "response"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 131
    iput-object p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 139
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 151
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 145
    .restart local v0       #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    const-string v1, "GSM"

    const-string/jumbo v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loadAllFromEF(IZLandroid/os/Message;)V
    .locals 3
    .parameter "ef"
    .parameter "inIAP"
    .parameter "response"

    .prologue
    .line 157
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 158
    iput-boolean p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mAnrPresentInIAP:Z

    .line 159
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 167
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 168
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 179
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 173
    .restart local v0       #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    const-string v1, "GSM"

    const-string/jumbo v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loadFromEF(IILandroid/os/Message;)V
    .locals 3
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 99
    iput p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    .line 100
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 108
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 119
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 114
    .restart local v0       #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    const-string v1, "GSM"

    const-string/jumbo v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/AnrRecord;Landroid/os/Message;)V
    .locals 3
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "anrRecord"
    .parameter "response"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 197
    iput p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    .line 198
    iput-object p4, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 206
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 207
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 216
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 211
    .restart local v0       #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    const-string v1, "GSM"

    const-string/jumbo v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/AnrRecord;ZLandroid/os/Message;)V
    .locals 3
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "anrRecord"
    .parameter "inIAP"
    .parameter "response"

    .prologue
    .line 221
    iput p1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->ef:I

    .line 222
    iput p2, p0, Lcom/android/internal/telephony/AnrRecordLoader;->recordNumber:I

    .line 223
    iput-boolean p4, p0, Lcom/android/internal/telephony/AnrRecordLoader;->mAnrPresentInIAP:Z

    .line 224
    iput-object p5, p0, Lcom/android/internal/telephony/AnrRecordLoader;->userResponse:Landroid/os/Message;

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/internal/telephony/AnrRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 232
    .local v0, iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/AnrRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 243
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    return-void

    .line 237
    .restart local v0       #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    const-string v1, "GSM"

    const-string/jumbo v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    .end local v0           #iccFileHander:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
