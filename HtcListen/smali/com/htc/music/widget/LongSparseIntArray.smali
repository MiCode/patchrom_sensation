.class public Lcom/htc/music/widget/LongSparseIntArray;
.super Ljava/lang/Object;
.source "LongSparseIntArray.java"


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/music/widget/LongSparseIntArray;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 44
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    .line 45
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    .line 47
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 209
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 211
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 212
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 214
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 215
    move v2, v0

    goto :goto_0

    .line 217
    :cond_0
    move v1, v0

    goto :goto_0

    .line 220
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 221
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 225
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 222
    .restart local v1       #high:I
    :cond_3
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    .line 225
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 6

    .prologue
    .line 229
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    if-ge v0, v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 231
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    if-ge v1, v2, :cond_0

    .line 232
    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 229
    .end local v1           #j:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_2
    return-void
.end method


# virtual methods
.method public append(JI)V
    .locals 7
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 183
    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 206
    :goto_0
    return-void

    .line 188
    :cond_0
    iget v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    .line 189
    .local v3, pos:I
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 190
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 192
    .local v0, n:I
    new-array v1, v0, [J

    .line 193
    .local v1, nkeys:[J
    new-array v2, v0, [I

    .line 196
    .local v2, nvalues:[I
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iput-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    .line 200
    iput-object v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    .line 203
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[I
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 204
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aput p3, v4, v3

    .line 205
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    .line 176
    return-void
.end method

.method public delete(J)V
    .locals 6
    .parameter "key"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/music/widget/LongSparseIntArray;->binarySearch([JIIJ)I

    move-result v0

    .line 77
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    .line 82
    :cond_0
    return-void
.end method

.method public get(J)I
    .locals 1
    .parameter "key"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v0

    return v0
.end method

.method public get(JI)I
    .locals 4
    .parameter "key"
    .parameter "valueIfKeyNotFound"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/music/widget/LongSparseIntArray;->binarySearch([JIIJ)I

    move-result v0

    .line 64
    .local v0, i:I
    if-gez v0, :cond_0

    .line 67
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aget p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 5
    .parameter "key"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/widget/LongSparseIntArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 168
    .end local v0           #i:I
    :goto_1
    return v0

    .line 164
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JI)V
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/htc/music/widget/LongSparseIntArray;->binarySearch([JIIJ)I

    move-result v0

    .line 91
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 92
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aput p3, v4, v0

    .line 121
    :goto_0
    return-void

    .line 94
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 96
    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 97
    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 99
    .local v1, n:I
    new-array v2, v1, [J

    .line 100
    .local v2, nkeys:[J
    new-array v3, v1, [I

    .line 104
    .local v3, nvalues:[I
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    .line 108
    iput-object v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    .line 111
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[I
    :cond_1
    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 118
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aput p3, v4, v0

    .line 119
    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    return v0
.end method

.method public valueAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method
