.class public Lcom/htc/music/widget/MusicAlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "MusicAlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field public static final ALPHABET:Ljava/lang/String; = " ABCDEFGHIJKLMNOPQRSTUVWXYZ"


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;

.field private mSectionLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 76
    const-string v1, " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mSectionLabel:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 90
    iput p2, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    .line 91
    iput-object p3, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 92
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    .line 93
    iget v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 98
    if-eqz p1, :cond_1

    .line 99
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 102
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 103
    iget-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 104
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "word"
    .parameter "letter"

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, wordKey:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 148
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 21
    .parameter "sectionIndex"

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 163
    .local v2, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 165
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 166
    :cond_0
    const/4 v11, 0x0

    .line 278
    :cond_1
    :goto_0
    return v11

    .line 170
    :cond_2
    if-gtz p1, :cond_3

    .line 171
    const/4 v11, 0x0

    goto :goto_0

    .line 173
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    add-int/lit8 p1, v17, -0x1

    .line 177
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    .line 179
    .local v14, savedCursorPos:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 180
    .local v3, count:I
    const/4 v15, 0x0

    .line 181
    .local v15, start:I
    move v8, v3

    .line 184
    .local v8, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 185
    .local v10, letter:C
    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v16

    .line 186
    .local v16, targetLetter:Ljava/lang/String;
    move v9, v10

    .line 188
    .local v9, key:I
    const/high16 v17, -0x8000

    const/high16 v18, -0x8000

    move/from16 v0, v18

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .local v11, pos:I
    move/from16 v0, v17

    if-eq v0, v11, :cond_5

    .line 192
    if-gez v11, :cond_1

    .line 193
    neg-int v11, v11

    .line 194
    move v8, v11

    .line 202
    :cond_5
    if-lez p1, :cond_6

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 205
    .local v12, prevLetter:I
    const/high16 v17, -0x8000

    move/from16 v0, v17

    invoke-virtual {v2, v12, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 206
    .local v13, prevLetterPos:I
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-eq v13, v0, :cond_6

    .line 207
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 213
    .end local v12           #prevLetter:I
    .end local v13           #prevLetterPos:I
    :cond_6
    add-int v17, v8, v15

    div-int/lit8 v11, v17, 0x2

    .line 215
    :goto_1
    if-ge v11, v8, :cond_9

    .line 217
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, curName:Ljava/lang/String;
    if-eqz v4, :cond_7

    const-string v17, "<unknown>"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 228
    :cond_7
    move v8, v11

    .line 229
    add-int v17, v15, v8

    div-int/lit8 v11, v17, 0x2

    .line 230
    goto :goto_1

    .line 232
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 233
    .local v7, diff:I
    if-eqz v7, :cond_e

    .line 245
    if-gez v7, :cond_c

    .line 246
    add-int/lit8 v15, v11, 0x1

    .line 247
    if-lt v15, v3, :cond_d

    .line 248
    move v11, v3

    .line 267
    .end local v4           #curName:Ljava/lang/String;
    .end local v7           #diff:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mSectionLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    if-ge v11, v3, :cond_b

    .line 270
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, curName2:Ljava/lang/String;
    if-eqz v5, :cond_a

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mSectionLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-gez v17, :cond_b

    .line 273
    :cond_a
    move v11, v3

    .line 276
    .end local v5           #curName2:Ljava/lang/String;
    :cond_b
    invoke-virtual {v2, v9, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    invoke-interface {v6, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 252
    .restart local v4       #curName:Ljava/lang/String;
    .restart local v7       #diff:I
    :cond_c
    move v8, v11

    .line 264
    :cond_d
    :goto_2
    add-int v17, v15, v8

    div-int/lit8 v11, v17, 0x2

    .line 265
    goto :goto_1

    .line 256
    :cond_e
    if-eq v15, v11, :cond_9

    .line 261
    move v8, v11

    goto :goto_2
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 286
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 287
    .local v3, savedCursorPos:I
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 288
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, curName:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 292
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_1

    .line 293
    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 294
    .local v2, letter:C
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, targetLetter:Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/htc/music/widget/MusicAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 299
    .end local v1           #i:I
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :goto_1
    return v1

    .line 292
    .restart local v1       #i:I
    .restart local v2       #letter:C
    .restart local v4       #targetLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 308
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 309
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 317
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 318
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 123
    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 127
    return-void
.end method
