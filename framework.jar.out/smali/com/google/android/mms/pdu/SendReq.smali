.class public Lcom/google/android/mms/pdu/SendReq;
.super Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.source "SendReq.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SendReq"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    .line 33
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V

    .line 34
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    .line 37
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x60

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 40
    const-string v1, "application/vnd.wap.multipart.related"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 43
    :goto_0
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string/jumbo v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 44
    invoke-direct {p0}, Lcom/google/android/mms/pdu/SendReq;->generateTransactionId()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V

    .line 50
    return-void

    .line 42
    :cond_0
    const-string v1, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v1, "SendReq"

    const-string v2, "Unexpected InvalidHeaderValueException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .parameter "headers"
    .parameter "body"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 96
    return-void
.end method

.method public constructor <init>([BLcom/google/android/mms/pdu/EncodedStringValue;I[B)V
    .locals 1
    .parameter "contentType"
    .parameter "from"
    .parameter "mmsVersion"
    .parameter "transactionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    .line 72
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    .line 76
    invoke-virtual {p0, p4}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V

    .line 77
    return-void
.end method

.method private generateTransactionId()[B
    .locals 4

    .prologue
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, transactionId:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addBcc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 115
    return-void
.end method

.method public addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 144
    return-void
.end method

.method public getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getContentTypeApplicationId()[B
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-string v1, "Application-ID"

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getExtraTextString(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContentTypeReplyToApplicationId()[B
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-string v1, "Reply-To-Application-ID"

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getExtraTextString(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getDeliveryTime()J
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpiry()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()[B
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageSize()J
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadReport()I
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setBcc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 125
    return-void
.end method

.method public setCc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 154
    return-void
.end method

.method public setContentType([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 173
    return-void
.end method

.method public setContentTypeApplicationId([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-string v1, "Application-ID"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setExtraTextString([BLjava/lang/String;)V

    .line 361
    return-void
.end method

.method public setContentTypeReplyToApplicationId([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const-string v1, "Reply-To-Application-ID"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setExtraTextString([BLjava/lang/String;)V

    .line 380
    return-void
.end method

.method public setDeliveryReport(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 192
    return-void
.end method

.method public setDeliveryTime(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x87

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 342
    return-void
.end method

.method public setExpiry(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 213
    return-void
.end method

.method public setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 255
    return-void
.end method

.method public setMessageClass([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 276
    return-void
.end method

.method public setMessageSize(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 234
    return-void
.end method

.method public setReadReport(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 295
    return-void
.end method

.method public setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 305
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 324
    return-void
.end method
