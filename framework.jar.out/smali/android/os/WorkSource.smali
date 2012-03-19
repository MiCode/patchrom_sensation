.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 338
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 1
    .parameter "orig"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 48
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method private addLocked(I)V
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v1, :cond_0

    .line 312
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 313
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p1, v1, v3

    .line 314
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 325
    :goto_0
    return-void

    .line 317
    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 318
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 319
    .local v0, newuids:[I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 323
    .end local v0           #newuids:[I
    :cond_1
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    aput p1, v1, v2

    .line 324
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 14
    .parameter "other"
    .parameter "set"
    .parameter "returnNewbs"

    .prologue
    .line 224
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 225
    .local v0, N1:I
    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    .line 226
    .local v9, uids1:[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 227
    .local v1, N2:I
    iget-object v10, p1, Landroid/os/WorkSource;->mUids:[I

    .line 232
    .local v10, uids2:[I
    const/4 v2, 0x0

    .line 233
    .local v2, changed:Z
    const/4 v5, 0x0

    .line 234
    .local v5, i1:I
    const/4 v6, 0x0

    .local v6, i2:I
    :goto_0
    if-ge v6, v1, :cond_10

    .line 235
    if-ge v5, v0, :cond_0

    aget v12, v10, v6

    aget v13, v9, v5

    if-ge v12, v13, :cond_a

    .line 237
    :cond_0
    const/4 v2, 0x1

    .line 238
    if-nez v9, :cond_3

    .line 239
    const/4 v12, 0x4

    new-array v9, v12, [I

    .line 240
    const/4 v12, 0x0

    aget v13, v10, v6

    aput v13, v9, v12

    .line 265
    :goto_1
    if-eqz p3, :cond_1

    .line 266
    sget-object v12, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v12, :cond_9

    .line 267
    new-instance v12, Landroid/os/WorkSource;

    aget v13, v10, v6

    invoke-direct {v12, v13}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v12, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 272
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 273
    add-int/lit8 v5, v5, 0x1

    .line 234
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 241
    :cond_3
    array-length v12, v9

    if-lt v5, v12, :cond_6

    .line 242
    array-length v12, v9

    mul-int/lit8 v12, v12, 0x3

    div-int/lit8 v12, v12, 0x2

    new-array v7, v12, [I

    .line 243
    .local v7, newuids:[I
    if-lez v5, :cond_4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v12, v7, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    :cond_4
    if-ge v5, v0, :cond_5

    add-int/lit8 v12, v5, 0x1

    sub-int v13, v0, v5

    invoke-static {v9, v5, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_5
    move-object v9, v7

    .line 246
    aget v12, v10, v6

    aput v12, v9, v5

    goto :goto_1

    .line 248
    .end local v7           #newuids:[I
    :cond_6
    if-ge v5, v0, :cond_8

    .line 250
    sub-int v3, v0, v5

    .line 251
    .local v3, copylength:I
    add-int v4, v5, v3

    .line 252
    .local v4, finalposition:I
    array-length v12, v9

    add-int/lit8 v11, v12, -0x1

    .line 253
    .local v11, validfinalposition:I
    if-le v4, v11, :cond_7

    .line 256
    sub-int v3, v11, v5

    .line 260
    :cond_7
    add-int/lit8 v12, v5, 0x1

    invoke-static {v9, v5, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    .end local v3           #copylength:I
    .end local v4           #finalposition:I
    .end local v11           #validfinalposition:I
    :cond_8
    aget v12, v10, v6

    aput v12, v9, v5

    goto :goto_1

    .line 269
    :cond_9
    sget-object v12, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v13, v10, v6

    invoke-direct {v12, v13}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_2

    .line 275
    :cond_a
    if-nez p2, :cond_c

    .line 278
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 279
    if-ge v5, v0, :cond_2

    aget v12, v10, v6

    aget v13, v9, v5

    if-ge v12, v13, :cond_b

    goto :goto_3

    .line 282
    :cond_c
    move v8, v5

    .line 283
    .local v8, start:I
    :goto_4
    if-ge v5, v0, :cond_e

    aget v12, v10, v6

    aget v13, v9, v5

    if-le v12, v13, :cond_e

    .line 284
    sget-object v12, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-nez v12, :cond_d

    .line 285
    new-instance v12, Landroid/os/WorkSource;

    aget v13, v9, v5

    invoke-direct {v12, v13}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v12, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 289
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 287
    :cond_d
    sget-object v12, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v13, v9, v5

    invoke-direct {v12, v13}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_5

    .line 291
    :cond_e
    if-ge v8, v5, :cond_f

    .line 292
    sub-int v12, v5, v8

    invoke-static {v9, v5, v9, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    sub-int v12, v5, v8

    sub-int/2addr v0, v12

    .line 294
    move v5, v8

    .line 297
    :cond_f
    if-ge v5, v0, :cond_2

    aget v12, v10, v5

    aget v13, v9, v5

    if-ne v12, v13, :cond_2

    .line 298
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 304
    .end local v8           #start:I
    :cond_10
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 305
    iput-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    .line 307
    return v2
.end method


# virtual methods
.method public add(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    .line 171
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 173
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 155
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 156
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .locals 4
    .parameter "uid"

    .prologue
    .line 179
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 180
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 181
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 182
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 183
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .parameter "other"

    .prologue
    .line 162
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 163
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 164
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 165
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 81
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    .line 89
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 90
    .local v0, N:I
    iget v5, p1, Landroid/os/WorkSource;->mNum:I

    if-eq v0, v5, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v4

    .line 93
    :cond_1
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 94
    .local v2, uids1:[I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 95
    .local v3, uids2:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 96
    aget v5, v2, v1

    aget v6, v3, v1

    if-ne v5, v6, :cond_0

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 73
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 12
    .parameter "other"

    .prologue
    .line 188
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 189
    .local v0, N1:I
    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .line 190
    .local v7, uids1:[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 191
    .local v1, N2:I
    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    .line 192
    .local v8, uids2:[I
    const/4 v2, 0x0

    .line 193
    .local v2, changed:Z
    const/4 v5, 0x0

    .line 194
    .local v5, i1:I
    const/4 v6, 0x0

    .local v6, i2:I
    :goto_0
    if-ge v6, v1, :cond_3

    if-ge v5, v0, :cond_3

    .line 195
    aget v10, v8, v6

    aget v11, v7, v5

    if-ne v10, v11, :cond_1

    .line 196
    add-int/lit8 v0, v0, -0x1

    .line 197
    if-ge v5, v0, :cond_1

    .line 199
    sub-int v3, v0, v5

    .line 200
    .local v3, copylength:I
    add-int v4, v5, v3

    .line 201
    .local v4, finalposition:I
    array-length v10, v7

    add-int/lit8 v9, v10, -0x1

    .line 202
    .local v9, validfinalposition:I
    if-le v4, v9, :cond_0

    .line 205
    sub-int v3, v9, v5

    .line 209
    :cond_0
    add-int/lit8 v10, v5, 0x1

    invoke-static {v7, v10, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    .end local v3           #copylength:I
    .end local v4           #finalposition:I
    .end local v9           #validfinalposition:I
    :cond_1
    :goto_1
    if-ge v5, v0, :cond_2

    aget v10, v8, v6

    aget v11, v7, v5

    if-le v10, v11, :cond_2

    .line 214
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 194
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 218
    :cond_3
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 220
    return v2
.end method

.method public set(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 127
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 128
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 130
    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    iput v3, p0, Landroid/os/WorkSource;->mNum:I

    .line 123
    :goto_0
    return-void

    .line 113
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 114
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_1

    .line 116
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 134
    sget-object v2, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v2

    .line 135
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 136
    const/4 v1, 0x0

    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 137
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 138
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/os/WorkSource;

    .line 140
    .local v0, diffs:[Landroid/os/WorkSource;
    const/4 v1, 0x0

    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    .line 141
    const/4 v1, 0x1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    .line 142
    monitor-exit v2

    .line 144
    .end local v0           #diffs:[Landroid/os/WorkSource;
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 334
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 336
    return-void
.end method
