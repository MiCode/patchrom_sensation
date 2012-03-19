.class public Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;
.super Landroid/os/Handler;
.source "HtcSimCardAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;,
        Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    }
.end annotation


# static fields
.field private static final AKA_COMMAND_LENGTH:I = 0x27

.field private static final EVENT_REQUEST_AKA_AUTHENTICATION_DONE:I = 0x6

.field private static final EVENT_REQUEST_GSM_AUTHENTICATION_DONE:I = 0x5

.field private static final GSM_COMMAND_2G_LENGTH:I = 0x15

.field private static final GSM_COMMAND_3G_LENGTH:I = 0x16

.field private static final GSM_KC_LENGTH:I = 0x8

.field static final GSM_RAND_LENGTH:I = 0x10

.field private static final GSM_SRES_LENGTH:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "HtcSimCardAuthenticator"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mService:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mService:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->publish()V

    .line 79
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 5
    .parameter "hexString"

    .prologue
    .line 286
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-gt v3, v4, :cond_0

    .line 287
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 288
    .local v0, hex:[B
    const/4 v2, 0x0

    .line 289
    .local v2, result:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 290
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v0           #hex:[B
    .end local v1           #i:I
    .end local v2           #result:I
    :cond_0
    const/4 v2, -0x1

    :cond_1
    return v2
.end method

.method private static parseLong(Ljava/lang/String;)J
    .locals 8
    .parameter "hexString"

    .prologue
    .line 300
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    .line 301
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 302
    .local v0, hex:[B
    const-wide/16 v2, 0x0

    .line 303
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 304
    aget-byte v4, v0, v1

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    array-length v6, v0

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v0           #hex:[B
    .end local v1           #i:I
    .end local v2           #result:J
    :cond_0
    const-wide/16 v2, -0x1

    :cond_1
    return-wide v2
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "htc.sim_authentication"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mService:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 88
    const-string v0, "HtcSimCardAuthenticator"

    const-string/jumbo v1, "published"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V
    .locals 1
    .parameter "response"
    .parameter "result"
    .parameter "error"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    :goto_1
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 282
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 318
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 460
    :goto_0
    return-void

    .line 320
    :pswitch_0
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "< REQUEST_GSM_AUTHENTICATION_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 322
    .local v5, ar:Landroid/os/AsyncResult;
    iget-object v4, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    .line 323
    .local v4, ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 324
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v19, v22

    check-cast v19, [Ljava/lang/String;

    .line 326
    .local v19, response:[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v19, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 328
    .local v15, length:I
    iget-boolean v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->is3gSim:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 331
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ne v15, v0, :cond_0

    .line 332
    new-instance v20, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    const/16 v22, 0x1

    aget-object v22, v19, v22

    const/16 v23, 0x2

    const/16 v24, 0xa

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    aget-object v23, v19, v23

    const/16 v24, 0xc

    const/16 v25, 0x1c

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;-><init>(IJ)V

    .line 334
    .local v20, result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_0

    .line 337
    .end local v20           #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :cond_0
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Authentication Rejected!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 344
    :cond_1
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-ne v15, v0, :cond_2

    .line 345
    new-instance v20, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    const/16 v22, 0x1

    aget-object v22, v19, v22

    const/16 v23, 0x0

    const/16 v24, 0x8

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    aget-object v23, v19, v23

    const/16 v24, 0x8

    const/16 v25, 0x18

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;-><init>(IJ)V

    .line 347
    .restart local v20       #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 350
    .end local v20           #result:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :cond_2
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Authentication Rejected!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 355
    .end local v15           #length:I
    .end local v19           #response:[Ljava/lang/String;
    :cond_3
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Failed to request GSM Authentication!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 361
    .end local v4           #ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    .end local v5           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "< REQUEST_AKA_AUTHENTICATION_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 363
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v4, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    .line 364
    .restart local v4       #ac:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    .line 365
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v19, v22

    check-cast v19, [Ljava/lang/String;

    .line 377
    .restart local v19       #response:[Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v22, v19, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v15

    .line 379
    .restart local v15       #length:I
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 380
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Incorrect length of response!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 385
    :cond_4
    const/16 v22, 0x1

    aget-object v22, v19, v22

    add-int/lit8 v23, v15, -0x4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 387
    .local v21, statusWord:Ljava/lang/String;
    const-string v22, "9000"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 388
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const-string v23, "DB"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 393
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Sucessful Authentication!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/16 v18, 0x2

    .line 396
    .local v18, resLengthStartPosition:I
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 398
    .local v17, resLength:I
    mul-int/lit8 v22, v17, 0x2

    add-int/lit8 v11, v22, 0x4

    .line 399
    .local v11, ckLengthStartPosition:I
    const/16 v22, 0x1

    aget-object v22, v19, v22

    add-int/lit8 v23, v11, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 401
    .local v10, ckLength:I
    mul-int/lit8 v22, v10, 0x2

    add-int v22, v22, v11

    add-int/lit8 v14, v22, 0x2

    .line 402
    .local v14, ikLengthStartPosition:I
    const/16 v22, 0x1

    aget-object v22, v19, v22

    add-int/lit8 v23, v14, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 405
    .local v13, ikLength:I
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const/16 v23, 0x4

    mul-int/lit8 v24, v17, 0x2

    add-int/lit8 v24, v24, 0x4

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v16

    .line 407
    .local v16, res:[B
    const/16 v22, 0x1

    aget-object v22, v19, v22

    add-int/lit8 v23, v11, 0x2

    add-int/lit8 v24, v11, 0x2

    mul-int/lit8 v25, v10, 0x2

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 409
    .local v9, ck:[B
    const/16 v22, 0x1

    aget-object v22, v19, v22

    add-int/lit8 v23, v14, 0x2

    add-int/lit8 v24, v14, 0x2

    mul-int/lit8 v25, v13, 0x2

    add-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 413
    .local v12, ik:[B
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v12, v1}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;-><init>([B[B[B)V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 415
    .end local v9           #ck:[B
    .end local v10           #ckLength:I
    .end local v11           #ckLengthStartPosition:I
    .end local v12           #ik:[B
    .end local v13           #ikLength:I
    .end local v14           #ikLengthStartPosition:I
    .end local v16           #res:[B
    .end local v17           #resLength:I
    .end local v18           #resLengthStartPosition:I
    :cond_5
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const-string v23, "DC"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 420
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Synchronization Failure!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v8, 0x2

    .line 423
    .local v8, autsLengthStartPosition:I
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 426
    .local v7, autsLength:I
    const/16 v22, 0x1

    aget-object v22, v19, v22

    const/16 v23, 0x4

    mul-int/lit8 v24, v7, 0x2

    add-int/lit8 v24, v24, 0x4

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 429
    .local v6, auts:[B
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;-><init>([B)V

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 432
    .end local v6           #auts:[B
    .end local v7           #autsLength:I
    .end local v8           #autsLengthStartPosition:I
    :cond_6
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Unknown response!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 437
    :cond_7
    const-string v22, "98"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 438
    const-string v22, "64"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 439
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "No such authentication!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 443
    :cond_8
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Authentication rejected!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 448
    :cond_9
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Unknown Status Words!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 454
    .end local v15           #length:I
    .end local v19           #response:[Ljava/lang/String;
    .end local v21           #statusWord:Ljava/lang/String;
    :cond_a
    const-string v22, "HtcSimCardAuthenticator"

    const-string v23, "Failed to request AKA Authentication!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;->onComplete:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestAkaAuthentication([B[BLandroid/os/Message;)V
    .locals 10
    .parameter "rand"
    .parameter "autn"
    .parameter "onComplete"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 201
    const-string v5, "gsm.sim.types"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, simType:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "Not a USIM for AKA authentication!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    .line 270
    :goto_0
    return-void

    .line 210
    :cond_0
    if-eqz p1, :cond_3

    array-length v5, p1

    if-lez v5, :cond_3

    .line 212
    if-eqz p2, :cond_2

    array-length v5, p2

    if-lez v5, :cond_2

    .line 216
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x27

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 219
    .local v2, outStream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 221
    const/16 v5, 0x88

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 223
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 225
    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    array-length v5, p1

    add-int/lit8 v1, v5, 0x1

    .line 229
    .local v1, length:I
    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    .line 230
    array-length v5, p2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v5

    .line 232
    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 234
    array-length v5, p1

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 237
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    array-length v5, p2

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    const/4 v5, 0x6

    new-instance v6, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    invoke-direct {v6, v9, p3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;-><init>(ZLandroid/os/Message;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 258
    .local v3, response:Landroid/os/Message;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "> REQUEST_AKA_AUTHENTICATION"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 239
    .end local v3           #response:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/io/IOException;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "cannot write RAND buffer into Command string."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 250
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "cannot write AUTN buffer into Command string."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_0

    .line 262
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #length:I
    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_2
    const-string v5, "HtcSimCardAuthenticator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inavlid autn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2, v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0

    .line 267
    :cond_3
    const-string v5, "HtcSimCardAuthenticator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inavlid rand: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p3, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_0
.end method

.method public requestGsmAuthentication([BLandroid/os/Message;)V
    .locals 12
    .parameter "rand"
    .parameter "onComplete"

    .prologue
    const/16 v11, 0x88

    const/4 v10, 0x1

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 110
    if-eqz p1, :cond_2

    array-length v5, p1

    if-ne v5, v9, :cond_2

    .line 112
    const-string v5, "gsm.sim.types"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, simType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 117
    .local v1, is3gSim:Z
    const/4 v2, 0x0

    .line 119
    .local v2, outStream:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    const/4 v1, 0x1

    .line 123
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x16

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 126
    .restart local v2       #outStream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 128
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 130
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 132
    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 136
    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 139
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    const/4 v5, 0x5

    new-instance v6, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;

    invoke-direct {v6, v1, p2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$AuthenticationContext;-><init>(ZLandroid/os/Message;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 179
    .local v3, response:Landroid/os/Message;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "> REQUEST_GSM_AUTHENTICATION"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6, v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->genericSimIO(Ljava/lang/String;Landroid/os/Message;)V

    .line 187
    .end local v1           #is3gSim:Z
    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #response:Landroid/os/Message;
    .end local v4           #simType:Ljava/lang/String;
    :goto_1
    return-void

    .line 141
    .restart local v1       #is3gSim:Z
    .restart local v2       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #simType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/IOException;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "cannot write RAND buffer into Command string."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p2, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_1

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x15

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 152
    .restart local v2       #outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xa0

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 154
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 156
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "HtcSimCardAuthenticator"

    const-string v6, "cannot write RAND buffer into Command string."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p2, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_1

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const-string v5, "HtcSimCardAuthenticator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SimType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p2, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto :goto_1

    .line 183
    .end local v1           #is3gSim:Z
    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #simType:Ljava/lang/String;
    :cond_2
    const-string v5, "HtcSimCardAuthenticator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inavlid rand: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v5, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {p0, p2, v8, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->sendResult(Landroid/os/Message;Ljava/lang/Object;Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    goto/16 :goto_1
.end method
