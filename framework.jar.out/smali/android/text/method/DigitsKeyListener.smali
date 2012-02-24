.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final CHARACTERS:[[C = null

.field private static final DECIMAL:I = 0x2

.field private static final PHONE:I = 0x4

.field private static final SIGN:I = 0x1

.field private static sInstance:[Landroid/text/method/DigitsKeyListener;


# instance fields
.field private mAccepted:[C

.field private mDecimal:Z

.field private mPhone:Z

.field private mSign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x5

    .line 50
    new-array v0, v3, [[C

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [C

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x1b

    new-array v2, v2, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    .line 261
    new-array v0, v3, [Landroid/text/method/DigitsKeyListener;

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    return-void

    .line 50
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2et 0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
    .end array-data

    :array_4
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2ft 0x0t
        0x4et 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x3bt 0x0t
        0x70t 0x0t
        0x50t 0x0t
        0x77t 0x0t
        0x57t 0x0t
        0x24t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    .line 71
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3
    .parameter "sign"
    .parameter "decimal"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 79
    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 80
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 82
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    .line 83
    .local v0, kind:I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 84
    return-void

    .end local v0           #kind:I
    :cond_1
    move v2, v1

    .line 82
    goto :goto_0
.end method

.method public constructor <init>(ZZZ)V
    .locals 5
    .parameter "sign"
    .parameter "decimal"
    .parameter "phone"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 111
    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 112
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 113
    iput-boolean p3, p0, Landroid/text/method/DigitsKeyListener;->mPhone:Z

    .line 115
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    if-eqz p2, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v4, v2

    if-eqz p3, :cond_3

    move v2, v3

    :goto_2
    or-int v0, v4, v2

    .line 116
    .local v0, kind:I
    if-le v0, v3, :cond_0

    move v0, v1

    .line 118
    :cond_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 119
    return-void

    .end local v0           #kind:I
    :cond_1
    move v4, v1

    .line 115
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 4
    .parameter "accepted"

    .prologue
    const/4 v3, 0x0

    .line 141
    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 143
    .local v0, dim:Landroid/text/method/DigitsKeyListener;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 146
    return-object v0
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 3
    .parameter "sign"
    .parameter "decimal"

    .prologue
    const/4 v1, 0x0

    .line 99
    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    .line 101
    .local v0, kind:I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 102
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    .line 105
    :goto_1
    return-object v1

    .end local v0           #kind:I
    :cond_1
    move v2, v1

    .line 99
    goto :goto_0

    .line 104
    .restart local v0       #kind:I
    :cond_2
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    aput-object v2, v1, v0

    .line 105
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    goto :goto_1
.end method

.method public static getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;
    .locals 5
    .parameter "sign"
    .parameter "decimal"
    .parameter "phone"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 122
    if-eqz p0, :cond_1

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    if-eqz p1, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v4, v2

    if-eqz p2, :cond_3

    move v2, v3

    :goto_2
    or-int v0, v4, v2

    .line 123
    .local v0, kind:I
    if-le v0, v3, :cond_0

    move v0, v1

    .line 125
    :cond_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 126
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    .line 129
    :goto_3
    return-object v1

    .end local v0           #kind:I
    :cond_1
    move v4, v1

    .line 122
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    .line 128
    .restart local v0       #kind:I
    :cond_4
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(ZZZ)V

    aput-object v2, v1, v0

    .line 129
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    goto :goto_3
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 171
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 173
    .local v4, out:Ljava/lang/CharSequence;
    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v8, :cond_1

    .line 257
    .end local v4           #out:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v4

    .line 177
    .restart local v4       #out:Ljava/lang/CharSequence;
    :cond_1
    if-eqz v4, :cond_2

    .line 178
    move-object p1, v4

    .line 179
    const/4 p2, 0x0

    .line 180
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 183
    :cond_2
    const/4 v5, -0x1

    .line 184
    .local v5, sign:I
    const/4 v1, -0x1

    .line 185
    .local v1, decimal:I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 191
    .local v2, dlen:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p5, :cond_5

    .line 192
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 194
    .local v0, c:C
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_4

    .line 195
    move v5, v3

    .line 191
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 196
    :cond_4
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    .line 197
    move v1, v3

    goto :goto_2

    .line 200
    .end local v0           #c:C
    :cond_5
    move/from16 v3, p6

    :goto_3
    if-ge v3, v2, :cond_8

    .line 201
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 203
    .restart local v0       #c:C
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6

    .line 204
    const-string v4, ""

    goto :goto_0

    .line 205
    :cond_6
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_7

    .line 206
    move v1, v3

    .line 200
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 217
    .end local v0           #c:C
    :cond_8
    const/4 v7, 0x0

    .line 219
    .local v7, stripped:Landroid/text/SpannableStringBuilder;
    add-int/lit8 v3, p3, -0x1

    :goto_4
    if-lt v3, p2, :cond_12

    .line 220
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 221
    .restart local v0       #c:C
    const/4 v6, 0x0

    .line 223
    .local v6, strip:Z
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_d

    .line 224
    if-ne v3, p2, :cond_9

    if-eqz p5, :cond_b

    .line 225
    :cond_9
    const/4 v6, 0x1

    .line 239
    :cond_a
    :goto_5
    if-eqz v6, :cond_11

    .line 240
    add-int/lit8 v8, p2, 0x1

    if-ne p3, v8, :cond_f

    .line 241
    const-string v4, ""

    goto :goto_0

    .line 226
    :cond_b
    if-ltz v5, :cond_c

    .line 227
    const/4 v6, 0x1

    goto :goto_5

    .line 229
    :cond_c
    move v5, v3

    goto :goto_5

    .line 231
    :cond_d
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_a

    .line 232
    if-ltz v1, :cond_e

    .line 233
    const/4 v6, 0x1

    goto :goto_5

    .line 235
    :cond_e
    move v1, v3

    goto :goto_5

    .line 244
    :cond_f
    if-nez v7, :cond_10

    .line 245
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7           #stripped:Landroid/text/SpannableStringBuilder;
    invoke-direct {v7, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 248
    .restart local v7       #stripped:Landroid/text/SpannableStringBuilder;
    :cond_10
    sub-int v8, v3, p2

    add-int/lit8 v9, v3, 0x1

    sub-int/2addr v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 219
    :cond_11
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 252
    .end local v0           #c:C
    .end local v6           #strip:Z
    :cond_12
    if-eqz v7, :cond_13

    move-object v4, v7

    .line 253
    goto :goto_0

    .line 254
    :cond_13
    if-nez v4, :cond_0

    .line 257
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x2

    .line 151
    .local v0, contentType:I
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_0

    .line 152
    or-int/lit16 v0, v0, 0x1000

    .line 154
    :cond_0
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_1

    .line 155
    or-int/lit16 v0, v0, 0x2000

    .line 160
    :cond_1
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mPhone:Z

    if-eqz v1, :cond_2

    .line 161
    const/4 v0, 0x3

    .line 165
    :cond_2
    return v0
.end method
