.class public Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
.super Ljava/lang/Object;
.source "HtcCdmaSimTlv.java"


# instance fields
.field curDataLength:I

.field curDataOffset:I

.field curOffset:I

.field hasValidTlvObject:Z

.field record:[B

.field tlvLength:I

.field tlvOffset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .parameter "record"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->record:[B

    .line 46
    iput p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->tlvOffset:I

    .line 47
    iput p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->tlvLength:I

    .line 48
    iput p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->hasValidTlvObject:Z

    .line 51
    return-void
.end method

.method private parseCurrentTlvObject()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    aget-byte v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataLength:I

    .line 104
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataOffset:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataLength:I

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->tlvOffset:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->tlvLength:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    .line 120
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x81

    if-ne v2, v3, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataLength:I

    .line 108
    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataOffset:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method


# virtual methods
.method public getData()[B
    .locals 5

    .prologue
    .line 81
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->hasValidTlvObject:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataLength:I

    new-array v0, v1, [B

    .line 84
    .local v0, ret:[B
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->record:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataOffset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->hasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->record:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public isValidObject()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->hasValidTlvObject:Z

    return v0
.end method

.method public nextObject()Z
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->hasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 55
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataOffset:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->curOffset:I

    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->hasValidTlvObject:Z

    .line 57
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->hasValidTlvObject:Z

    goto :goto_0
.end method
