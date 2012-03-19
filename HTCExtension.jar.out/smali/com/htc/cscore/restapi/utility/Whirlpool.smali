.class public Lcom/htc/cscore/restapi/utility/Whirlpool;
.super Ljava/lang/Object;
.source "Whirlpool.java"


# static fields
.field private static C:[[J = null

.field public static final DIGESTBITS:I = 0x200

.field public static final DIGESTBYTES:I = 0x40

.field private static final LONG_ITERATION:I = 0x5f5e100

.field protected static final R:I = 0xa

.field private static rc:[J = null

.field private static final sbox:Ljava/lang/String; = "\u1823\uc6e8\u87b8\u014f\u36a6\ud2f5\u796f\u9152\u60bc\u9b8e\ua30c\u7b35\u1de0\ud7c2\u2e4b\ufe57\u1577\u37e5\u9ff0\u4ada\u58c9\u290a\ub1a0\u6b85\ubd5d\u10f4\ucb3e\u0567\ue427\u418b\ua77d\u95d8\ufbee\u7c66\udd17\u479e\uca2d\ubf07\uad5a\u8333\u6302\uaa71\uc819\u49d9\uf2e3\u5b88\u9a26\u32b0\ue90f\ud580\ubecd\u3448\uff7a\u905f\u2068\u1aae\ub454\u9322\u64f1\u7312\u4008\uc3ec\udba1\u8d3d\u9700\ucf2b\u7682\ud61b\ub5af\u6a50\u45f3\u30ef\u3f55\ua2ea\u65ba\u2fc0\ude1c\ufd4d\u9275\u068a\ub2e6\u0e1f\u62d4\ua896\uf9c5\u2559\u8472\u394c\u5e78\u388c\ud1a5\ue261\ub321\u9c1e\u43c7\ufc04\u5199\u6d0d\ufadf\u7e24\u3bab\uce11\u8f4e\ub7eb\u3c81\u94f7\ub913\u2cd3\ue76e\uc403\u5644\u7fa9\u2abb\uc153\udc0b\u9d6c\u3174\uf646\uac89\u14e1\u163a\u6909\u70b6\ud0ed\ucc42\u98a4\u285c\uf886"


# instance fields
.field protected K:[J

.field protected L:[J

.field protected bitLength:[B

.field protected block:[J

.field protected buffer:[B

.field protected bufferBits:I

.field protected bufferPos:I

.field protected hash:[J

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .prologue
    .line 129
    const/16 v19, 0x8

    const/16 v20, 0x100

    filled-new-array/range {v19 .. v20}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[J

    sput-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    .line 130
    const/16 v19, 0xb

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    sput-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->rc:[J

    .line 133
    const/16 v18, 0x0

    .local v18, x:I
    :goto_0
    const/16 v19, 0x100

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 134
    const-string v19, "\u1823\uc6e8\u87b8\u014f\u36a6\ud2f5\u796f\u9152\u60bc\u9b8e\ua30c\u7b35\u1de0\ud7c2\u2e4b\ufe57\u1577\u37e5\u9ff0\u4ada\u58c9\u290a\ub1a0\u6b85\ubd5d\u10f4\ucb3e\u0567\ue427\u418b\ua77d\u95d8\ufbee\u7c66\udd17\u479e\uca2d\ubf07\uad5a\u8333\u6302\uaa71\uc819\u49d9\uf2e3\u5b88\u9a26\u32b0\ue90f\ud580\ubecd\u3448\uff7a\u905f\u2068\u1aae\ub454\u9322\u64f1\u7312\u4008\uc3ec\udba1\u8d3d\u9700\ucf2b\u7682\ud61b\ub5af\u6a50\u45f3\u30ef\u3f55\ua2ea\u65ba\u2fc0\ude1c\ufd4d\u9275\u068a\ub2e6\u0e1f\u62d4\ua896\uf9c5\u2559\u8472\u394c\u5e78\u388c\ud1a5\ue261\ub321\u9c1e\u43c7\ufc04\u5199\u6d0d\ufadf\u7e24\u3bab\uce11\u8f4e\ub7eb\u3c81\u94f7\ub913\u2cd3\ue76e\uc403\u5644\u7fa9\u2abb\uc153\udc0b\u9d6c\u3174\uf646\uac89\u14e1\u163a\u6909\u70b6\ud0ed\ucc42\u98a4\u285c\uf886"

    div-int/lit8 v20, v18, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 135
    .local v2, c:C
    and-int/lit8 v19, v18, 0x1

    if-nez v19, :cond_3

    ushr-int/lit8 v19, v2, 0x8

    move/from16 v0, v19

    int-to-long v6, v0

    .line 136
    .local v6, v1:J
    :goto_1
    const/16 v19, 0x1

    shl-long v8, v6, v19

    .line 137
    .local v8, v2:J
    const-wide/16 v19, 0x100

    cmp-long v19, v8, v19

    if-ltz v19, :cond_0

    .line 138
    const-wide/16 v19, 0x11d

    xor-long v8, v8, v19

    .line 140
    :cond_0
    const/16 v19, 0x1

    shl-long v10, v8, v19

    .line 141
    .local v10, v4:J
    const-wide/16 v19, 0x100

    cmp-long v19, v10, v19

    if-ltz v19, :cond_1

    .line 142
    const-wide/16 v19, 0x11d

    xor-long v10, v10, v19

    .line 144
    :cond_1
    xor-long v12, v10, v6

    .line 145
    .local v12, v5:J
    const/16 v19, 0x1

    shl-long v14, v10, v19

    .line 146
    .local v14, v8:J
    const-wide/16 v19, 0x100

    cmp-long v19, v14, v19

    if-ltz v19, :cond_2

    .line 147
    const-wide/16 v19, 0x11d

    xor-long v14, v14, v19

    .line 149
    :cond_2
    xor-long v16, v14, v6

    .line 153
    .local v16, v9:J
    sget-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x38

    shl-long v20, v6, v20

    const/16 v22, 0x30

    shl-long v22, v6, v22

    or-long v20, v20, v22

    const/16 v22, 0x28

    shl-long v22, v10, v22

    or-long v20, v20, v22

    const/16 v22, 0x20

    shl-long v22, v6, v22

    or-long v20, v20, v22

    const/16 v22, 0x18

    shl-long v22, v14, v22

    or-long v20, v20, v22

    const/16 v22, 0x10

    shl-long v22, v12, v22

    or-long v20, v20, v22

    const/16 v22, 0x8

    shl-long v22, v8, v22

    or-long v20, v20, v22

    or-long v20, v20, v16

    aput-wide v20, v19, v18

    .line 159
    const/4 v5, 0x1

    .local v5, t:I
    :goto_2
    const/16 v19, 0x8

    move/from16 v0, v19

    if-ge v5, v0, :cond_4

    .line 160
    sget-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    aget-object v19, v19, v5

    sget-object v20, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    add-int/lit8 v21, v5, -0x1

    aget-object v20, v20, v21

    aget-wide v20, v20, v18

    const/16 v22, 0x8

    ushr-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    add-int/lit8 v23, v5, -0x1

    aget-object v22, v22, v23

    aget-wide v22, v22, v18

    const/16 v24, 0x38

    shl-long v22, v22, v24

    or-long v20, v20, v22

    aput-wide v20, v19, v18

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 135
    .end local v5           #t:I
    .end local v6           #v1:J
    .end local v8           #v2:J
    .end local v10           #v4:J
    .end local v12           #v5:J
    .end local v14           #v8:J
    .end local v16           #v9:J
    :cond_3
    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v6, v0

    goto/16 :goto_1

    .line 133
    .restart local v5       #t:I
    .restart local v6       #v1:J
    .restart local v8       #v2:J
    .restart local v10       #v4:J
    .restart local v12       #v5:J
    .restart local v14       #v8:J
    .restart local v16       #v9:J
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 186
    .end local v2           #c:C
    .end local v5           #t:I
    .end local v6           #v1:J
    .end local v8           #v2:J
    .end local v10           #v4:J
    .end local v12           #v5:J
    .end local v14           #v8:J
    .end local v16           #v9:J
    :cond_5
    sget-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->rc:[J

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    aput-wide v21, v19, v20

    .line 187
    const/4 v4, 0x1

    .local v4, r:I
    :goto_3
    const/16 v19, 0xa

    move/from16 v0, v19

    if-gt v4, v0, :cond_6

    .line 188
    add-int/lit8 v19, v4, -0x1

    mul-int/lit8 v3, v19, 0x8

    .line 189
    .local v3, i:I
    sget-object v19, Lcom/htc/cscore/restapi/utility/Whirlpool;->rc:[J

    sget-object v20, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aget-wide v20, v20, v3

    const-wide/high16 v22, -0x100

    and-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x1

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x1

    aget-wide v22, v22, v23

    const-wide/high16 v24, 0xff

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x2

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x2

    aget-wide v22, v22, v23

    const-wide v24, 0xff0000000000L

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x3

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x3

    aget-wide v22, v22, v23

    const-wide v24, 0xff00000000L

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x4

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x4

    aget-wide v22, v22, v23

    const-wide v24, 0xff000000L

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x5

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x5

    aget-wide v22, v22, v23

    const-wide/32 v24, 0xff0000

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x6

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x6

    aget-wide v22, v22, v23

    const-wide/32 v24, 0xff00

    and-long v22, v22, v24

    xor-long v20, v20, v22

    sget-object v22, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    const/16 v23, 0x7

    aget-object v22, v22, v23

    add-int/lit8 v23, v3, 0x7

    aget-wide v22, v22, v23

    const-wide/16 v24, 0xff

    and-long v22, v22, v24

    xor-long v20, v20, v22

    aput-wide v20, v19, v4

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 211
    .end local v3           #i:I
    :cond_6
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 271
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    .line 229
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    .line 238
    iput v2, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    .line 247
    iput v2, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    .line 256
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    .line 257
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    .line 258
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    .line 263
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->block:[J

    .line 269
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    .line 272
    return-void
.end method

.method public static WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    .line 73
    const/16 v2, 0x40

    new-array v0, v2, [B

    .line 74
    .local v0, digest:[B
    new-instance v1, Lcom/htc/cscore/restapi/utility/Whirlpool;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;-><init>()V

    .line 75
    .local v1, wp:Lcom/htc/cscore/restapi/utility/Whirlpool;
    invoke-virtual {v1, p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 77
    invoke-static {v0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static display([B)Ljava/lang/String;
    .locals 6
    .parameter "array"

    .prologue
    .line 513
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [C

    .line 514
    .local v3, val:[C
    const-string v1, "0123456789ABCDEF"

    .line 515
    .local v1, hex:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 516
    aget-byte v4, p0, v2

    and-int/lit16 v0, v4, 0xff

    .line 517
    .local v0, b:I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v0, 0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 518
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v0           #b:I
    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 653
    invoke-static {}, Lcom/htc/cscore/restapi/utility/Whirlpool;->makeISOTestVectors()V

    .line 654
    return-void
.end method

.method public static makeISOTestVectors()V
    .locals 6

    .prologue
    .line 586
    new-instance v2, Lcom/htc/cscore/restapi/utility/Whirlpool;

    invoke-direct {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;-><init>()V

    .line 587
    .local v2, w:Lcom/htc/cscore/restapi/utility/Whirlpool;
    const/16 v3, 0x40

    new-array v1, v3, [B

    .line 588
    .local v1, digest:[B
    const v3, 0xf4240

    new-array v0, v3, [B

    .line 590
    .local v0, data:[B
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 592
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "1. In this example the data-string is the empty string, i.e. the string of length zero.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 594
    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 595
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 597
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "2. In this example the data-string consists of a single byte, namely the ASCII-coded version of the letter \'a\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 599
    const-string v3, "a"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 601
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 603
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "3. In this example the data-string is the three-byte string consisting of the ASCII-coded version of \'abc\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 605
    const-string v3, "abc"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 607
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "4. In this example the data-string is the 14-byte string consisting of the ASCII-coded version of \'message digest\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 611
    const-string v3, "message digest"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 613
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 615
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "5. In this example the data-string is the 26-byte string consisting of the ASCII-coded version of \'abcdefghijklmnopqrstuvwxyz\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 617
    const-string v3, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 619
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "6. In this example the data-string is the 62-byte string consisting of the ASCII-coded version of \'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 623
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 625
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "7. In this example the data-string is the 80-byte string consisting of the ASCII-coded version of eight repetitions of \'1234567890\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 629
    const-string v3, "12345678901234567890123456789012345678901234567890123456789012345678901234567890"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 631
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 633
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "8. In this example the data-string is the 32-byte string consisting of the ASCII-coded version of \'abcdbcdecdefdefgefghfghighijhijk\'.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 635
    const-string v3, "abcdbcdecdefdefgefghfghighijhijk"

    invoke-virtual {v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 637
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 639
    const/16 v3, 0x61

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 640
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "9. In this example the data-string is the 1000000-byte string consisting of the ASCII-coded version of \'a\' repeated 10^6 times.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 642
    const-wide/32 v3, 0x7a1200

    invoke-virtual {v2, v0, v3, v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    .line 643
    invoke-virtual {v2, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 644
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The hash-code is the following 512-bit string.\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public static makeNESSIETestVectors()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x200

    const/16 v10, 0x80

    const/16 v9, 0x40

    const/4 v8, 0x0

    .line 540
    new-instance v4, Lcom/htc/cscore/restapi/utility/Whirlpool;

    invoke-direct {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;-><init>()V

    .line 541
    .local v4, w:Lcom/htc/cscore/restapi/utility/Whirlpool;
    new-array v1, v9, [B

    .line 542
    .local v1, digest:[B
    new-array v0, v10, [B

    .line 543
    .local v0, data:[B
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 544
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Message digests of strings of 0-bits and length L:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v5, 0x400

    if-ge v2, v5, :cond_0

    .line 546
    invoke-virtual {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 547
    int-to-long v5, v2

    invoke-virtual {v4, v0, v5, v6}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    .line 548
    invoke-virtual {v4, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 549
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, s:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 551
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    L ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Message digests of all 512-bit strings S containing a single 1-bit:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 554
    new-array v0, v9, [B

    .line 555
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 556
    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0x200

    if-ge v2, v5, :cond_1

    .line 558
    div-int/lit8 v5, v2, 0x8

    aget-byte v6, v0, v5

    rem-int/lit8 v7, v2, 0x8

    ushr-int v7, v10, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 559
    invoke-virtual {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 560
    invoke-virtual {v4, v0, v11, v12}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    .line 561
    invoke-virtual {v4, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 562
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    S = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 564
    div-int/lit8 v5, v2, 0x8

    aput-byte v8, v0, v5

    .line 556
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 566
    :cond_1
    const/4 v2, 0x0

    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 567
    aput-byte v8, v1, v2

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 569
    :cond_2
    const/4 v2, 0x0

    :goto_3
    const v5, 0x5f5e100

    if-ge v2, v5, :cond_3

    .line 570
    invoke-virtual {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEinit()V

    .line 571
    invoke-virtual {v4, v1, v11, v12}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    .line 572
    invoke-virtual {v4, v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEfinalize([B)V

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 574
    :cond_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iterated message digest computation (100000000 times): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->display([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 575
    return-void
.end method


# virtual methods
.method public NESSIEadd(Ljava/lang/String;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 503
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 505
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 506
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :cond_0
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->NESSIEadd([BJ)V

    .line 510
    .end local v0           #data:[B
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public NESSIEadd([BJ)V
    .locals 12
    .parameter "source"
    .parameter "sourceBits"

    .prologue
    .line 381
    const/4 v5, 0x0

    .line 382
    .local v5, sourcePos:I
    long-to-int v8, p2

    and-int/lit8 v8, v8, 0x7

    rsub-int/lit8 v8, v8, 0x8

    and-int/lit8 v4, v8, 0x7

    .line 383
    .local v4, sourceGap:I
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    and-int/lit8 v1, v8, 0x7

    .line 386
    .local v1, bufferRem:I
    move-wide v6, p2

    .line 387
    .local v6, value:J
    const/16 v3, 0x1f

    .local v3, i:I
    const/4 v2, 0x0

    .local v2, carry:I
    :goto_0
    if-ltz v3, :cond_2

    .line 388
    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    long-to-int v9, v6

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 389
    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    int-to-byte v9, v2

    aput-byte v9, v8, v3

    .line 390
    ushr-int/lit8 v2, v2, 0x8

    .line 391
    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    .line 387
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 402
    .local v0, b:I
    :cond_0
    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aget-byte v10, v8, v9

    ushr-int v11, v0, v1

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 403
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    rsub-int/lit8 v9, v1, 0x8

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    .line 404
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    const/16 v9, 0x200

    if-ne v8, v9, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->processBuffer()V

    .line 408
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    .line 410
    :cond_1
    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    rsub-int/lit8 v10, v1, 0x8

    shl-int v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 411
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    .line 413
    const-wide/16 v8, 0x8

    sub-long/2addr p2, v8

    .line 414
    add-int/lit8 v5, v5, 0x1

    .line 394
    .end local v0           #b:I
    :cond_2
    const-wide/16 v8, 0x8

    cmp-long v8, p2, v8

    if-lez v8, :cond_4

    .line 396
    aget-byte v8, p1, v5

    shl-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v4, 0x8

    ushr-int/2addr v9, v10

    or-int v0, v8, v9

    .line 398
    .restart local v0       #b:I
    if-ltz v0, :cond_3

    const/16 v8, 0x100

    if-lt v0, v8, :cond_0

    .line 399
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "LOGIC ERROR"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 418
    .end local v0           #b:I
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-lez v8, :cond_5

    .line 419
    aget-byte v8, p1, v5

    shl-int/2addr v8, v4

    and-int/lit16 v0, v8, 0xff

    .line 421
    .restart local v0       #b:I
    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aget-byte v10, v8, v9

    ushr-int v11, v0, v1

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 425
    :goto_1
    int-to-long v8, v1

    add-long/2addr v8, p2

    const-wide/16 v10, 0x8

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    .line 427
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    int-to-long v8, v8

    add-long/2addr v8, p2

    long-to-int v8, v8

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    .line 443
    :goto_2
    return-void

    .line 423
    .end local v0           #b:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #b:I
    goto :goto_1

    .line 430
    :cond_6
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    .line 431
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    rsub-int/lit8 v9, v1, 0x8

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    .line 432
    rsub-int/lit8 v8, v1, 0x8

    int-to-long v8, v8

    sub-long/2addr p2, v8

    .line 434
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    const/16 v9, 0x200

    if-ne v8, v9, :cond_7

    .line 436
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->processBuffer()V

    .line 438
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    .line 440
    :cond_7
    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    rsub-int/lit8 v10, v1, 0x8

    shl-int v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 441
    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    long-to-int v9, p2

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    goto :goto_2
.end method

.method public NESSIEfinalize([B)V
    .locals 12
    .parameter "digest"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/16 v9, 0x20

    .line 457
    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aget-byte v6, v4, v5

    const/16 v7, 0x80

    iget v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    and-int/lit8 v8, v8, 0x7

    ushr-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 458
    iget v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    .line 460
    iget v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    if-le v4, v9, :cond_1

    .line 461
    :goto_0
    iget v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    .line 462
    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aput-byte v10, v4, v5

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->processBuffer()V

    .line 467
    iput v10, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    .line 469
    :cond_1
    :goto_1
    iget v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    if-ge v4, v9, :cond_2

    .line 470
    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    iget v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    aput-byte v10, v4, v5

    goto :goto_1

    .line 473
    :cond_2
    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    invoke-static {v4, v10, v5, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->processBuffer()V

    .line 477
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v2, v11, :cond_3

    .line 478
    iget-object v4, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    aget-wide v0, v4, v2

    .line 479
    .local v0, h:J
    const/16 v4, 0x38

    ushr-long v4, v0, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 480
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x30

    ushr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 481
    add-int/lit8 v4, v3, 0x2

    const/16 v5, 0x28

    ushr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 482
    add-int/lit8 v4, v3, 0x3

    ushr-long v5, v0, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 483
    add-int/lit8 v4, v3, 0x4

    const/16 v5, 0x18

    ushr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 484
    add-int/lit8 v4, v3, 0x5

    const/16 v5, 0x10

    ushr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 485
    add-int/lit8 v4, v3, 0x6

    ushr-long v5, v0, v11

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 486
    add-int/lit8 v4, v3, 0x7

    long-to-int v5, v0

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 477
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x8

    goto :goto_2

    .line 488
    .end local v0           #h:J
    :cond_3
    return-void
.end method

.method public NESSIEinit()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bitLength:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 350
    iput v1, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferPos:I

    iput v1, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->bufferBits:I

    .line 351
    iget-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    aput-byte v1, v0, v1

    .line 352
    iget-object v0, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 353
    return-void
.end method

.method protected processBuffer()V
    .locals 15

    .prologue
    const-wide/16 v13, 0xff

    const/16 v12, 0x8

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v0, v12, :cond_0

    .line 287
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->block:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    aget-byte v6, v6, v1

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x2

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x3

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x4

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x5

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x6

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v12

    xor-long/2addr v6, v8

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->buffer:[B

    add-int/lit8 v9, v1, 0x7

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    .line 286
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 300
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v12, :cond_1

    .line 301
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->block:[J

    aget-wide v6, v6, v0

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    iget-object v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    aget-wide v9, v9, v0

    aput-wide v9, v8, v0

    xor-long/2addr v6, v9

    aput-wide v6, v5, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    :cond_1
    const/4 v2, 0x1

    .local v2, r:I
    :goto_2
    const/16 v5, 0xa

    if-gt v2, v5, :cond_8

    .line 310
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v12, :cond_3

    .line 311
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v0

    .line 312
    const/4 v4, 0x0

    .local v4, t:I
    const/16 v3, 0x38

    .local v3, s:I
    :goto_4
    if-ge v4, v12, :cond_2

    .line 313
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    aget-wide v6, v5, v0

    sget-object v8, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    sub-int v10, v0, v4

    and-int/lit8 v10, v10, 0x7

    aget-wide v9, v9, v10

    ushr-long/2addr v9, v3

    long-to-int v9, v9

    and-int/lit16 v9, v9, 0xff

    aget-wide v8, v8, v9

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    .line 312
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_4

    .line 310
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 316
    .end local v3           #s:I
    .end local v4           #t:I
    :cond_3
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v12, :cond_4

    .line 317
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 319
    :cond_4
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    const/4 v6, 0x0

    aget-wide v7, v5, v6

    sget-object v9, Lcom/htc/cscore/restapi/utility/Whirlpool;->rc:[J

    aget-wide v9, v9, v2

    xor-long/2addr v7, v9

    aput-wide v7, v5, v6

    .line 323
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v12, :cond_6

    .line 324
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->K:[J

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    .line 325
    const/4 v4, 0x0

    .restart local v4       #t:I
    const/16 v3, 0x38

    .restart local v3       #s:I
    :goto_7
    if-ge v4, v12, :cond_5

    .line 326
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    aget-wide v6, v5, v0

    sget-object v8, Lcom/htc/cscore/restapi/utility/Whirlpool;->C:[[J

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    sub-int v10, v0, v4

    and-int/lit8 v10, v10, 0x7

    aget-wide v9, v9, v10

    ushr-long/2addr v9, v3

    long-to-int v9, v9

    and-int/lit16 v9, v9, 0xff

    aget-wide v8, v8, v9

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    .line 325
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_7

    .line 323
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 329
    .end local v3           #s:I
    .end local v4           #t:I
    :cond_6
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v12, :cond_7

    .line 330
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    iget-object v6, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->L:[J

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 306
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 336
    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v12, :cond_9

    .line 337
    iget-object v5, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->hash:[J

    aget-wide v6, v5, v0

    iget-object v8, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->state:[J

    aget-wide v8, v8, v0

    iget-object v10, p0, Lcom/htc/cscore/restapi/utility/Whirlpool;->block:[J

    aget-wide v10, v10, v0

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 339
    :cond_9
    return-void
.end method
