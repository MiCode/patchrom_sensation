.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field public static final ENCODING_7BIT_ASCII:I = 0x2

.field public static final ENCODING_EXTENDED_PROTOCOL_MESSAGE:I = 0x1

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_KOREAN:I = 0x6

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_LATIN_HEBREW:I = 0x7

.field public static final ENCODING_SHIFT_JIS:I = 0x5

.field public static final ENCODING_UNICODE:I = 0x4

.field public static final ENCODING_UNSPECIFIED:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 22
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 209
    if-nez p2, :cond_1

    .line 210
    const-string v15, ""

    .line 322
    :cond_0
    :goto_0
    return-object v15

    .line 212
    :cond_1
    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 213
    aget-byte v19, p0, p1

    const/16 v20, -0x80

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 214
    add-int/lit8 v19, p2, -0x1

    div-int/lit8 v18, v19, 0x2

    .line 215
    .local v18, ucslen:I
    const/16 v16, 0x0

    .line 218
    .local v16, ret:Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/lang/String;

    add-int/lit8 v19, p1, 0x1

    mul-int/lit8 v20, v18, 0x2

    const-string/jumbo v21, "utf-16be"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16           #ret:Ljava/lang/String;
    .local v17, ret:Ljava/lang/String;
    move-object/from16 v16, v17

    .line 224
    .end local v17           #ret:Ljava/lang/String;
    .restart local v16       #ret:Ljava/lang/String;
    :goto_1
    if-eqz v16, :cond_3

    .line 227
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    .line 228
    :goto_2
    if-lez v18, :cond_2

    add-int/lit8 v19, v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const v20, 0xffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 229
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 219
    :catch_0
    move-exception v9

    .line 220
    .local v9, ex:Ljava/io/UnsupportedEncodingException;
    const-string v19, "IccUtils"

    const-string/jumbo v20, "implausible UnsupportedEncodingException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 231
    .end local v9           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 236
    .end local v16           #ret:Ljava/lang/String;
    .end local v18           #ucslen:I
    :cond_3
    const/4 v10, 0x0

    .line 237
    .local v10, isucs2:Z
    const/4 v5, 0x0

    .line 238
    .local v5, base:C
    const/4 v13, 0x0

    .line 240
    .local v13, len:I
    const/16 v19, 0x3

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    aget-byte v19, p0, p1

    const/16 v20, -0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 241
    add-int/lit8 v19, p1, 0x1

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v13, v0, 0xff

    .line 242
    add-int/lit8 v19, p2, -0x3

    move/from16 v0, v19

    if-le v13, v0, :cond_4

    .line 243
    add-int/lit8 v13, p2, -0x3

    .line 245
    :cond_4
    add-int/lit8 v19, p1, 0x2

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x7

    move/from16 v0, v19

    int-to-char v5, v0

    .line 246
    add-int/lit8 p1, p1, 0x3

    .line 247
    const/4 v10, 0x1

    .line 259
    :cond_5
    :goto_3
    if-eqz v10, :cond_b

    .line 260
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v16, ret:Ljava/lang/StringBuilder;
    :goto_4
    if-lez v13, :cond_a

    .line 265
    aget-byte v19, p0, p1

    if-gez v19, :cond_6

    .line 266
    aget-byte v19, p0, p1

    and-int/lit8 v19, v19, 0x7f

    add-int v19, v19, v5

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 p1, p1, 0x1

    .line 268
    add-int/lit8 v13, v13, -0x1

    .line 273
    :cond_6
    const/4 v6, 0x0

    .line 274
    .local v6, count:I
    :goto_5
    if-ge v6, v13, :cond_9

    add-int v19, p1, v6

    aget-byte v19, p0, v19

    if-ltz v19, :cond_9

    .line 275
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 248
    .end local v6           #count:I
    .end local v16           #ret:Ljava/lang/StringBuilder;
    :cond_7
    const/16 v19, 0x4

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    aget-byte v19, p0, p1

    const/16 v20, -0x7e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 249
    add-int/lit8 v19, p1, 0x1

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v13, v0, 0xff

    .line 250
    add-int/lit8 v19, p2, -0x4

    move/from16 v0, v19

    if-le v13, v0, :cond_8

    .line 251
    add-int/lit8 v13, p2, -0x4

    .line 253
    :cond_8
    add-int/lit8 v19, p1, 0x2

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    add-int/lit8 v20, p1, 0x3

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-char v5, v0

    .line 255
    add-int/lit8 p1, p1, 0x4

    .line 256
    const/4 v10, 0x1

    goto :goto_3

    .line 277
    .restart local v6       #count:I
    .restart local v16       #ret:Ljava/lang/StringBuilder;
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    add-int p1, p1, v6

    .line 281
    sub-int/2addr v13, v6

    .line 282
    goto :goto_4

    .line 284
    .end local v6           #count:I
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 287
    .end local v16           #ret:Ljava/lang/StringBuilder;
    :cond_b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 288
    .local v14, resource:Landroid/content/res/Resources;
    const-string v7, ""

    .line 290
    .local v7, defaultCharset:Ljava/lang/String;
    const v19, 0x1040020

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 297
    :goto_6
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 298
    .local v15, result:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0x50

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0xd2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 303
    :cond_c
    move/from16 v12, p1

    .line 304
    .local v12, ksclen:I
    move/from16 v12, p1

    :goto_7
    move/from16 v0, p2

    if-ge v12, v0, :cond_d

    .line 305
    :try_start_2
    aget-byte v19, p0, v12

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 309
    :cond_d
    sub-int v12, v12, p1

    .line 310
    new-instance v11, Ljava/lang/String;

    const-string v19, "EUC-KR"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v11, v0, v1, v12, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 313
    .local v11, kscString:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v19

    move/from16 v0, v19

    if-ge v0, v12, :cond_0

    .line 315
    move-object v15, v11

    goto/16 :goto_0

    .line 304
    .end local v11           #kscString:Ljava/lang/String;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 317
    :catch_1
    move-exception v8

    .line 318
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 292
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .end local v12           #ksclen:I
    .end local v15           #result:Ljava/lang/String;
    :catch_2
    move-exception v19

    goto :goto_6
.end method

.method public static adnStringFieldToString([BIII)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "encodingType"

    .prologue
    .line 650
    const-string v1, ""

    .line 651
    .local v1, result:Ljava/lang/String;
    if-lez p2, :cond_0

    .line 652
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 653
    mul-int/lit8 v2, p2, 0x8

    div-int/lit8 v0, v2, 0x7

    .line 654
    .local v0, countSeptets:I
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 659
    .end local v0           #countSeptets:I
    :cond_0
    :goto_0
    return-object v1

    .line 656
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static bcdPlmnToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v6, 0x9

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 594
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    if-ne p2, v5, :cond_1

    .line 595
    const/16 v1, 0xf

    .line 596
    .local v1, endChar:I
    const/4 v0, 0x0

    .line 597
    .local v0, counter:I
    move v2, p1

    .local v2, i:I
    :goto_0
    add-int v5, p1, p2

    if-ge v2, v5, :cond_0

    .line 599
    add-int/lit8 v0, v0, 0x1

    .line 600
    aget-byte v5, p0, v2

    and-int/lit8 v4, v5, 0xf

    .line 601
    .local v4, v:I
    if-le v4, v6, :cond_2

    .line 613
    .end local v4           #v:I
    :cond_0
    const/16 v5, 0xa

    if-ge v1, v5, :cond_1

    .line 614
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    .end local v0           #counter:I
    .end local v1           #endChar:I
    .end local v2           #i:I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 602
    .restart local v0       #counter:I
    .restart local v1       #endChar:I
    .restart local v2       #i:I
    .restart local v4       #v:I
    :cond_2
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 605
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 606
    if-le v4, v6, :cond_3

    .line 597
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    :cond_3
    move v1, v4

    goto :goto_1

    .line 609
    :cond_4
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    .line 82
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 83
    .local v2, v:I
    if-le v2, v4, :cond_1

    .line 93
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 84
    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 88
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    if-gt v2, v4, :cond_0

    .line 90
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static bitToRGB(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 476
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 477
    const/4 v0, -0x1

    .line 479
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 373
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 389
    :goto_0
    return-object v3

    .line 375
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 380
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 382
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 386
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static bytesToHexString([BZ)Ljava/lang/String;
    .locals 6
    .parameter "bytes"
    .parameter "capitalized"

    .prologue
    .line 671
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 689
    :goto_0
    return-object v5

    .line 672
    :cond_0
    const-string v0, "0123456789abcdef"

    .line 673
    .local v0, HEX_CHARS:Ljava/lang/String;
    const-string v1, "0123456789ABCDEF"

    .line 675
    .local v1, HEX_CHARS_CAPITALIZED:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 677
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, p0

    if-ge v3, v5, :cond_3

    .line 680
    aget-byte v5, p0, v3

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 682
    .local v2, b:I
    if-eqz p1, :cond_1

    const-string v5, "0123456789ABCDEF"

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    aget-byte v5, p0, v3

    and-int/lit8 v2, v5, 0xf

    .line 686
    if-eqz p1, :cond_2

    const-string v5, "0123456789ABCDEF"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 677
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 682
    :cond_1
    const-string v5, "0123456789abcdef"

    goto :goto_2

    .line 686
    :cond_2
    const-string v5, "0123456789abcdef"

    goto :goto_3

    .line 689
    .end local v2           #b:I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 161
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 162
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 165
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 166
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 169
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x9

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 104
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 106
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 107
    .local v3, v:I
    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    .line 108
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 117
    .end local v3           #v:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 112
    .restart local v3       #v:I
    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 113
    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 114
    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getCLUT([BII)[I
    .locals 9
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 571
    if-nez p0, :cond_1

    .line 572
    const/4 v4, 0x0

    .line 586
    :cond_0
    return-object v4

    .line 575
    :cond_1
    new-array v4, p2, [I

    .line 576
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 577
    .local v3, endIndex:I
    move v5, p1

    .line 578
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 579
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 581
    .local v0, alpha:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 585
    if-ge v6, v3, :cond_0

    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 139
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 140
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 143
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 144
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 147
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 328
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 330
    :goto_0
    return v0

    .line 329
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 330
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 332
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 349
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 360
    :cond_0
    return-object v1

    .line 351
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 353
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 355
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 356
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 355
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static intToBcdByte(I)B
    .locals 2
    .parameter "n"

    .prologue
    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, ret:B
    rem-int/lit8 v1, p0, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v0, v1

    .line 629
    rem-int/lit8 v1, p0, 0xa

    sub-int v1, p0, v1

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    add-int/2addr v1, v0

    int-to-byte v0, v1

    .line 631
    return v0
.end method

.method public static intToCdmaBcdByte(I)B
    .locals 2
    .parameter "n"

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 639
    .local v0, ret:B
    rem-int/lit8 v1, p0, 0xa

    int-to-byte v0, v1

    .line 640
    rem-int/lit8 v1, p0, 0xa

    sub-int v1, p0, v1

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    add-int/2addr v1, v0

    int-to-byte v0, v1

    .line 642
    return v0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 521
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 522
    const-string v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 554
    :goto_0
    return-object v2

    .line 527
    :cond_0
    const/4 v0, 0x1

    .line 528
    .local v0, mask:I
    packed-switch p4, :pswitch_data_0

    .line 543
    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .line 544
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 545
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 546
    .end local p1
    .local v8, valueIndex:I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 547
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 548
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_3
    if-ge v6, v5, :cond_1

    .line 549
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 550
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 548
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_3

    .line 530
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_1
    const/4 v0, 0x1

    .line 531
    goto :goto_1

    .line 533
    :pswitch_2
    const/4 v0, 0x3

    .line 534
    goto :goto_1

    .line 536
    :pswitch_3
    const/16 v0, 0xf

    .line 537
    goto :goto_1

    .line 539
    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_1
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 553
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_2

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_2
    move p1, v8

    .line 554
    .end local v8           #valueIndex:I
    .restart local p1
    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 559
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 560
    const-string v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 565
    :cond_0
    new-array v0, p2, [I

    .line 567
    .local v0, resultArray:[I
    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 402
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_2

    .line 403
    :cond_0
    const-string v2, ""

    .line 440
    :cond_1
    :goto_0
    return-object v2

    .line 406
    :cond_2
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 427
    const-string v2, ""

    .line 435
    .local v2, ret:Ljava/lang/String;
    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto :goto_0

    .line 410
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 411
    .local v3, unusedBits:I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 412
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 413
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 417
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 419
    .end local v2           #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 420
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 421
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string/jumbo v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 450
    const/4 v8, 0x0

    .line 451
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 452
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 453
    .local v3, height:I
    mul-int v4, v10, v3

    .line 455
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 457
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 458
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 459
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 460
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 462
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 463
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 464
    const/4 v0, 0x7

    .line 466
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 469
    :cond_0
    if-eq v6, v4, :cond_1

    .line 470
    const-string v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    .line 493
    const/4 v6, 0x0

    .line 494
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 495
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 496
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 497
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 498
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 501
    .local v1, clutOffset:I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 502
    .local v2, colorIndexArray:[I
    const/4 v9, 0x1

    if-ne v9, p2, :cond_0

    .line 503
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 506
    :cond_0
    const/4 v5, 0x0

    .line 507
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 508
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 515
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 511
    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method
