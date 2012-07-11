.class public Landroid/telephony/HtcCmasMessage;
.super Ljava/lang/Object;
.source "HtcCmasMessage.java"


# static fields
.field public static final CERTAINTY_LIKELY:I = 0x1

.field public static final CERTAINTY_OBSERVED:I = 0x0

.field public static final FORMAT_CDMA:I = 0x2

.field public static final FORMAT_GSM:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final SEVERITY_EXTREME:I = 0x0

.field public static final SEVERITY_SEVERE:I = 0x1

.field public static final URGENCY_EXPECTED:I = 0x1

.field public static final URGENCY_IMMEDIATE:I


# instance fields
.field protected alertHandling:I

.field protected alertText:[B

.field protected alertTextStr:Ljava/lang/String;

.field protected category:I

.field protected certainty:I

.field protected charSetEncoding:I

.field protected charSetEncodingSet:Z

.field protected cmasFormat:I

.field protected cmasId:I

.field protected cmasType:I

.field protected expiredMillis:J

.field protected gs:I

.field protected language:I

.field protected mPdu:[B

.field protected messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field protected msgId:I

.field protected pageCount:I

.field protected pageSeg:I

.field protected protocolVersion:I

.field protected responseType:I

.field protected severity:I

.field protected sn:I

.field protected urgency:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    .line 71
    iput-boolean v1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    .line 76
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->category:I

    .line 77
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    .line 78
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    .line 79
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    .line 80
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    .line 83
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    .line 84
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    .line 85
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->language:I

    .line 96
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v0, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 111
    iput v1, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    return-void
.end method

.method public static getCmaeCategory(II)Ljava/lang/String;
    .locals 1
    .parameter "format"
    .parameter "cateId"

    .prologue
    .line 200
    packed-switch p0, :pswitch_data_0

    .line 205
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 202
    :pswitch_0
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCmaeCategory(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getCmaeCertainty(I)Ljava/lang/String;
    .locals 2
    .parameter "cerId"

    .prologue
    .line 258
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 265
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 261
    :pswitch_0
    const v1, 0x1040528

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 263
    :pswitch_1
    const v1, 0x1040529

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCmaeResponseType(II)Ljava/lang/String;
    .locals 1
    .parameter "format"
    .parameter "respId"

    .prologue
    .line 215
    packed-switch p0, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 217
    :pswitch_0
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCmaeResponseType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getCmaeSeverity(I)Ljava/lang/String;
    .locals 2
    .parameter "sevId"

    .prologue
    .line 228
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 235
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 231
    :pswitch_0
    const v1, 0x1040524

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 233
    :pswitch_1
    const v1, 0x1040525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCmaeUrgency(I)Ljava/lang/String;
    .locals 2
    .parameter "urgId"

    .prologue
    .line 243
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 244
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 250
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 246
    :pswitch_0
    const v1, 0x1040526

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 248
    :pswitch_1
    const v1, 0x1040527

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCmasMessage(I[B)Landroid/telephony/HtcCmasMessage;
    .locals 1
    .parameter "format"
    .parameter "pdu"

    .prologue
    .line 127
    packed-switch p0, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;-><init>()V

    .line 132
    .local v0, gsmCmas:Lcom/android/internal/telephony/gsm/GsmCmasMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->parseGsmPdu([B)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getGsmAllCmasChannelCount()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x3

    return v0
.end method

.method public static getGsmAllCmasChannelListStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "4370,4371,4372,4373,4374,4375,4376,4377,4378,4379,4380"

    return-object v0
.end method

.method public static getGsmCmasChannelList(I)[I
    .locals 3
    .parameter "c_type"

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 139
    packed-switch p0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 141
    :pswitch_0
    new-array v0, v0, [I

    const/16 v1, 0x1112

    aput v1, v0, v2

    goto :goto_0

    .line 143
    :pswitch_1
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 145
    :pswitch_2
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 147
    :pswitch_3
    new-array v0, v0, [I

    const/16 v1, 0x111b

    aput v1, v0, v2

    goto :goto_0

    .line 149
    :pswitch_4
    new-array v0, v0, [I

    const/16 v1, 0x111c

    aput v1, v0, v2

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 143
    :array_0
    .array-data 0x4
        0x13t 0x11t 0x0t 0x0t
        0x14t 0x11t 0x0t 0x0t
        0x15t 0x11t 0x0t 0x0t
        0x16t 0x11t 0x0t 0x0t
    .end array-data

    .line 145
    :array_1
    .array-data 0x4
        0x17t 0x11t 0x0t 0x0t
        0x18t 0x11t 0x0t 0x0t
        0x19t 0x11t 0x0t 0x0t
        0x1at 0x11t 0x0t 0x0t
    .end array-data
.end method

.method public static getGsmCmasChannelListStr(I)Ljava/lang/String;
    .locals 1
    .parameter "c_type"

    .prologue
    .line 155
    packed-switch p0, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    const-string v0, "4370"

    goto :goto_0

    .line 160
    :pswitch_1
    const-string v0, "4371-4374"

    goto :goto_0

    .line 162
    :pswitch_2
    const-string v0, "4375-4378"

    goto :goto_0

    .line 165
    :pswitch_3
    const-string v0, "4379"

    goto :goto_0

    .line 167
    :pswitch_4
    const-string v0, "4380"

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isGsmCmas(I)Z
    .locals 1
    .parameter "msgId"

    .prologue
    .line 185
    const/16 v0, 0x1112

    if-lt p0, v0, :cond_0

    const/16 v0, 0x111c

    if-gt p0, v0, :cond_0

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlertHandling()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    return v0
.end method

.method public getAlertText()[B
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    return-object v0
.end method

.method public getAlertTextStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->alertTextStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->category:I

    return v0
.end method

.method public getCertainty()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    return v0
.end method

.method public getCharSetEncoding()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    return v0
.end method

.method public getCmasFormat()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    return v0
.end method

.method public getCmasId()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    return v0
.end method

.method public getCmasType()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    return v0
.end method

.method public getExpiredMillis()J
    .locals 2

    .prologue
    .line 469
    iget-wide v0, p0, Landroid/telephony/HtcCmasMessage;->expiredMillis:J

    return-wide v0
.end method

.method public getGs()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->gs:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->language:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->msgId:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->pageCount:I

    return v0
.end method

.method public getPageSeg()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->pageSeg:I

    return v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->mPdu:[B

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->protocolVersion:I

    return v0
.end method

.method public getResponseType()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    return v0
.end method

.method public getSn()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->sn:I

    return v0
.end method

.method public getUrgency()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    return v0
.end method

.method public isCharSetEncodingSet()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    return v0
.end method

.method public parseGsmPdu([B)V
    .locals 0
    .parameter "pdu"

    .prologue
    .line 124
    return-void
.end method

.method public setAlertHandling(I)V
    .locals 0
    .parameter "alertHandling"

    .prologue
    .line 448
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    .line 449
    return-void
.end method

.method public setAlertText([B)V
    .locals 0
    .parameter "alertText"

    .prologue
    .line 336
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    .line 337
    return-void
.end method

.method public setAlertTextStr(Ljava/lang/String;)V
    .locals 0
    .parameter "alertTextStr"

    .prologue
    .line 350
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->alertTextStr:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 364
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->category:I

    .line 365
    return-void
.end method

.method public setCertainty(I)V
    .locals 0
    .parameter "certainty"

    .prologue
    .line 420
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    .line 421
    return-void
.end method

.method public setCharSetEncoding(I)V
    .locals 0
    .parameter "charSetEncoding"

    .prologue
    .line 308
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    .line 309
    return-void
.end method

.method public setCharSetEncodingSet(Z)V
    .locals 0
    .parameter "charSetEncodingSet"

    .prologue
    .line 322
    iput-boolean p1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    .line 323
    return-void
.end method

.method public setCmasFormat(I)V
    .locals 0
    .parameter "cmasFormat"

    .prologue
    .line 280
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    .line 281
    return-void
.end method

.method public setCmasId(I)V
    .locals 0
    .parameter "cmasId"

    .prologue
    .line 434
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    .line 435
    return-void
.end method

.method public setExpiredMillis(J)V
    .locals 0
    .parameter "expiredMillis"

    .prologue
    .line 476
    iput-wide p1, p0, Landroid/telephony/HtcCmasMessage;->expiredMillis:J

    .line 477
    return-void
.end method

.method public setGs(I)V
    .locals 0
    .parameter "gs"

    .prologue
    .line 504
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->gs:I

    .line 505
    return-void
.end method

.method public setLanguage(I)V
    .locals 0
    .parameter "language"

    .prologue
    .line 462
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->language:I

    .line 463
    return-void
.end method

.method public setMessageClass(Landroid/telephony/SmsMessage$MessageClass;)V
    .locals 0
    .parameter "messageClass"

    .prologue
    .line 532
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 533
    return-void
.end method

.method public setMsgId(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 518
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->msgId:I

    .line 519
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .parameter "pageCount"

    .prologue
    .line 560
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->pageCount:I

    .line 561
    return-void
.end method

.method public setPageSeg(I)V
    .locals 0
    .parameter "pageSeg"

    .prologue
    .line 546
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->pageSeg:I

    .line 547
    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 0
    .parameter "protocolVersion"

    .prologue
    .line 294
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->protocolVersion:I

    .line 295
    return-void
.end method

.method public setResponseType(I)V
    .locals 0
    .parameter "responseType"

    .prologue
    .line 378
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    .line 379
    return-void
.end method

.method public setSeverity(I)V
    .locals 0
    .parameter "severity"

    .prologue
    .line 392
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    .line 393
    return-void
.end method

.method public setSn(I)V
    .locals 0
    .parameter "sn"

    .prologue
    .line 490
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->sn:I

    .line 491
    return-void
.end method

.method public setUrgency(I)V
    .locals 0
    .parameter "urgency"

    .prologue
    .line 406
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    .line 407
    return-void
.end method

.method public setmPdu([B)V
    .locals 0
    .parameter "mPdu"

    .prologue
    .line 574
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->mPdu:[B

    .line 575
    return-void
.end method
