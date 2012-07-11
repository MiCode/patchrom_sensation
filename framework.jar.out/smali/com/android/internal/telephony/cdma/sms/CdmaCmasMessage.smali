.class public Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
.super Lcom/android/internal/telephony/CmasMessage;
.source "CdmaCmasMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    }
.end annotation


# static fields
.field public static final CATEGORY_CBRNE:I = 0xa

.field public static final CATEGORY_ENV:I = 0x7

.field public static final CATEGORY_FIRE:I = 0x5

.field public static final CATEGORY_GEO:I = 0x0

.field public static final CATEGORY_HEALTH:I = 0x6

.field public static final CATEGORY_INFRA:I = 0x9

.field public static final CATEGORY_MET:I = 0x1

.field public static final CATEGORY_OTHER:I = 0xb

.field public static final CATEGORY_RESCUE:I = 0x4

.field public static final CATEGORY_SAFETY:I = 0x2

.field public static final CATEGORY_SECURITY:I = 0x3

.field public static final CATEGORY_TRANSPORT:I = 0x8

.field public static final E_RECORD_TYPE_1:I = 0x1

.field public static final E_RECORD_TYPE_2:I = 0x2

.field public static final E_RECORD_TYPE_ALERT_TEXT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field public static final RESPONSE_TYPE_ASSESS:I = 0x6

.field public static final RESPONSE_TYPE_AVOID:I = 0x5

.field public static final RESPONSE_TYPE_EVACUATE:I = 0x1

.field public static final RESPONSE_TYPE_EXECUTE:I = 0x3

.field public static final RESPONSE_TYPE_MONITOR:I = 0x4

.field public static final RESPONSE_TYPE_NONE:I = 0x7

.field public static final RESPONSE_TYPE_PREPARE:I = 0x2

.field public static final RESPONSE_TYPE_SHELTER:I


# instance fields
.field protected expires:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

.field protected serviceCategory:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/CmasMessage;-><init>()V

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    .line 105
    return-void
.end method

.method public static fromatTimeStamp([B)Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    .locals 11
    .parameter "data"

    .prologue
    const/16 v10, 0x3b

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 248
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;-><init>()V

    .line 250
    .local v5, ts:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    const/4 v7, 0x0

    aget-byte v7, p0, v7

    and-int/lit16 v6, v7, 0xff

    .line 251
    .local v6, year:I
    const/16 v7, 0x63

    if-gt v6, v7, :cond_0

    if-gez v6, :cond_1

    :cond_0
    move-object v5, v8

    .line 273
    .end local v5           #ts:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    :goto_0
    return-object v5

    .line 252
    .restart local v5       #ts:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    :cond_1
    const/16 v7, 0x60

    if-lt v6, v7, :cond_3

    add-int/lit16 v7, v6, 0x76c

    :goto_1
    iput v7, v5, Landroid/text/format/Time;->year:I

    .line 254
    aget-byte v7, p0, v9

    and-int/lit16 v3, v7, 0xff

    .line 255
    .local v3, month:I
    if-lt v3, v9, :cond_2

    const/16 v7, 0xc

    if-le v3, v7, :cond_4

    :cond_2
    move-object v5, v8

    goto :goto_0

    .line 252
    .end local v3           #month:I
    :cond_3
    add-int/lit16 v7, v6, 0x7d0

    goto :goto_1

    .line 256
    .restart local v3       #month:I
    :cond_4
    add-int/lit8 v7, v3, -0x1

    iput v7, v5, Landroid/text/format/Time;->month:I

    .line 258
    const/4 v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v0, v7, 0xff

    .line 259
    .local v0, day:I
    if-lt v0, v9, :cond_5

    const/16 v7, 0x1f

    if-le v0, v7, :cond_6

    :cond_5
    move-object v5, v8

    goto :goto_0

    .line 260
    :cond_6
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 262
    const/4 v7, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v1, v7, 0xff

    .line 263
    .local v1, hour:I
    if-ltz v1, :cond_7

    const/16 v7, 0x17

    if-le v1, v7, :cond_8

    :cond_7
    move-object v5, v8

    goto :goto_0

    .line 264
    :cond_8
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 266
    const/4 v7, 0x4

    aget-byte v7, p0, v7

    and-int/lit16 v2, v7, 0xff

    .line 267
    .local v2, minute:I
    if-ltz v2, :cond_9

    if-le v2, v10, :cond_a

    :cond_9
    move-object v5, v8

    goto :goto_0

    .line 268
    :cond_a
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 270
    const/4 v7, 0x5

    aget-byte v7, p0, v7

    and-int/lit16 v4, v7, 0xff

    .line 271
    .local v4, second:I
    if-ltz v4, :cond_b

    if-le v4, v10, :cond_c

    :cond_b
    move-object v5, v8

    goto :goto_0

    .line 272
    :cond_c
    iput v4, v5, Landroid/text/format/Time;->second:I

    goto :goto_0
.end method

.method public static getCmaeCategory(I)Ljava/lang/String;
    .locals 2
    .parameter "cateId"

    .prologue
    .line 167
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 194
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 170
    :pswitch_0
    const v1, 0x1040510

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 172
    :pswitch_1
    const v1, 0x1040511

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
    :pswitch_2
    const v1, 0x1040512

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :pswitch_3
    const v1, 0x1040513

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    :pswitch_4
    const v1, 0x1040514

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 180
    :pswitch_5
    const v1, 0x1040515

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 182
    :pswitch_6
    const v1, 0x1040516

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 184
    :pswitch_7
    const v1, 0x1040517

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 186
    :pswitch_8
    const v1, 0x1040518

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 188
    :pswitch_9
    const v1, 0x1040519

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 190
    :pswitch_a
    const v1, 0x104051a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 192
    :pswitch_b
    const v1, 0x104051b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getCmaeResponseType(I)Ljava/lang/String;
    .locals 2
    .parameter "respId"

    .prologue
    .line 199
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 218
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 202
    :pswitch_0
    const v1, 0x104051c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 204
    :pswitch_1
    const v1, 0x104051d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 206
    :pswitch_2
    const v1, 0x104051e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 208
    :pswitch_3
    const v1, 0x104051f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 210
    :pswitch_4
    const v1, 0x1040520

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 212
    :pswitch_5
    const v1, 0x1040521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 214
    :pswitch_6
    const v1, 0x1040522

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 216
    :pswitch_7
    const v1, 0x1040523

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getNumberOfFields(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;)I
    .locals 7
    .parameter "bCmas"

    .prologue
    .line 109
    iget-boolean v4, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    .line 111
    :cond_0
    iget v2, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    .line 112
    .local v2, encoding:I
    iget-object v1, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    .line 113
    .local v1, data:[B
    array-length v4, v1

    mul-int/lit8 v3, v4, 0x8

    .line 114
    .local v3, lenBits:I
    add-int/lit8 v3, v3, -0x5

    .line 115
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMAS:lenBits> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, count:I
    packed-switch v2, :pswitch_data_0

    .line 133
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 121
    :pswitch_1
    div-int/lit8 v0, v3, 0x8

    .line 126
    :pswitch_2
    div-int/lit8 v0, v3, 0x7

    .line 135
    :goto_1
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMAS:num of chars> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :pswitch_3
    div-int/lit8 v0, v3, 0x10

    .line 131
    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCmasType()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    if-nez v0, :cond_0

    .line 142
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->serviceCategory:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    return v0

    .line 144
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    goto :goto_0

    .line 147
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    goto :goto_0

    .line 150
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    goto :goto_0

    .line 153
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    goto :goto_0

    .line 156
    :pswitch_4
    const/4 v0, 0x5

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getExpires()Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->expires:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    return-object v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->serviceCategory:I

    return v0
.end method

.method public setExpires(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;)V
    .locals 0
    .parameter "expires"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->expires:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    .line 313
    return-void
.end method

.method public setServiceCategory(I)V
    .locals 0
    .parameter "serviceCategory"

    .prologue
    .line 326
    iput p1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->serviceCategory:I

    .line 327
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Cmas "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ protocolVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/HtcCmasMessage;->protocolVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgEncoding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    if-eqz v1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alertText=\'0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alertTextStr=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/HtcCmasMessage;->alertTextStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", \ncategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/HtcCmasMessage;->category:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", responseType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", severity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", urgency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", certainty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cmasId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alertHandling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/HtcCmasMessage;->language:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", expiredMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/HtcCmasMessage;->expiredMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 226
    :cond_1
    const-string/jumbo v1, "unset"

    goto/16 :goto_0
.end method
