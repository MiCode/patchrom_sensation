.class public abstract Lcom/htc/music/browserlayer/HTCCursorAdapter;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "HTCCursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/htc/music/browserlayer/HtcCursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field private static final ENABLE_AUTO_REQUERY_DELAY:I = 0x1388

.field private static final REQUERY_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "[HTCCursorAdapter]"


# instance fields
.field public mAutoRequery:Z

.field mAutoRequeryLock:Z

.field protected mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Lcom/htc/music/browserlayer/HtcCursorFilter;

.field mDataDirty:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field private mDatesetChanged:Z

.field private mDatesetUpdateCount:I

.field mEnableAutoRequery:Ljava/lang/Runnable;

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field private mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field protected mNodeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;"
        }
    .end annotation
.end field

.field mRequery:Ljava/lang/Runnable;

.field mRequeryInQueue:Z

.field protected mRowIDColumn:I

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/LinkedList;Z)V
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter
    .parameter "autoRequery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p3}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 51
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    .line 52
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequeryInQueue:Z

    .line 53
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataDirty:Z

    .line 61
    iput-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRowIDColumn:I

    .line 73
    new-instance v0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;Lcom/htc/music/browserlayer/HTCCursorAdapter$1;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 85
    new-instance v0, Lcom/htc/music/browserlayer/HTCCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter$1;-><init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequery:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;-><init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    .line 138
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetUpdateCount:I

    .line 536
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->tag:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mContext:Landroid/content/Context;

    .line 119
    iput-boolean p4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    .line 120
    iput-object p2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 123
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    new-instance v0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;-><init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/HTCCursorAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/HTCCursorAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/HTCCursorAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->syncNodeList()V

    return-void
.end method

.method private syncNodeList()V
    .locals 8

    .prologue
    .line 178
    iget-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 182
    .local v2, s:J
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->clear()V

    .line 183
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->initNodeList()V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    .local v0, e:J
    const-string v4, "[HTCCursorAdapter]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncNodeList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, -0x1

    .line 477
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 478
    const-string v0, "[HTCCursorAdapter]"

    const-string v1, "@@@@ mCursor == cursor"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 489
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 503
    :cond_1
    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 504
    if-eqz p1, :cond_2

    .line 505
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 506
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 507
    iput v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRowIDColumn:I

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataValid:Z

    .line 510
    invoke-direct {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->syncNodeList()V

    .line 512
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 514
    :cond_2
    iput v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRowIDColumn:I

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataValid:Z

    .line 517
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    goto :goto_3

    .line 490
    :catch_1
    move-exception v0

    goto :goto_2

    .line 484
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 443
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 461
    :cond_0
    return-void

    .line 446
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 447
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 448
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 449
    .local v1, node:Lcom/htc/music/browserlayer/HtcListNode;
    if-nez v1, :cond_3

    .line 447
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_3
    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-lez v3, :cond_2

    .line 452
    iget-object v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4

    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-nez v3, :cond_4

    .line 453
    iget-object v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 454
    iget-object v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_4
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    goto :goto_1
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 132
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public cursorFilter(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "cursor"

    .prologue
    .line 174
    return-object p1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->clear()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    .line 466
    return-void
.end method

.method public exportSelected(IILandroid/database/Cursor;)V
    .locals 0
    .parameter "level"
    .parameter "cursorPosition"
    .parameter "cursor"

    .prologue
    .line 277
    return-void
.end method

.method public exportSelectedList()V
    .locals 6

    .prologue
    .line 264
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 273
    :cond_0
    return-void

    .line 266
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 267
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 268
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 269
    .local v1, node:Lcom/htc/music/browserlayer/HtcListNode;
    iget-boolean v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    if-eqz v3, :cond_2

    .line 270
    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    iget v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    iget-object v5, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->exportSelected(IILandroid/database/Cursor;)V

    .line 267
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;
    .locals 0
    .parameter "parentCursor"
    .parameter "cursorPosition"
    .parameter "position"
    .parameter "level"

    .prologue
    .line 410
    return-object p1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDatasetUpdateCount()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetUpdateCount:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursorFilter:Lcom/htc/music/browserlayer/HtcCursorFilter;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/htc/music/browserlayer/HtcCursorFilter;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/HtcCursorFilter;-><init>(Lcom/htc/music/browserlayer/HtcCursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursorFilter:Lcom/htc/music/browserlayer/HtcCursorFilter;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursorFilter:Lcom/htc/music/browserlayer/HtcCursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 241
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNode(I)Lcom/htc/music/browserlayer/HtcListNode;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/HtcListNode;

    goto :goto_0
.end method

.method public final getNodeList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getParentCurosr(II)Landroid/database/Cursor;
    .locals 4
    .parameter "position"
    .parameter "level"

    .prologue
    .line 325
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 326
    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 327
    .local v1, node:Lcom/htc/music/browserlayer/HtcListNode;
    iget v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-ne v2, p2, :cond_0

    .line 328
    iget-object v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 329
    iget-object v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 332
    .end local v1           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :goto_1
    return-object v2

    .line 325
    .restart local v1       #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 332
    .end local v1           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getParentNode(II)Lcom/htc/music/browserlayer/HtcListNode;
    .locals 3
    .parameter "position"
    .parameter "level"

    .prologue
    .line 336
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 337
    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 338
    .local v1, node:Lcom/htc/music/browserlayer/HtcListNode;
    iget v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-ne v2, p2, :cond_0

    .line 342
    .end local v1           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :goto_1
    return-object v1

    .line 336
    .restart local v1       #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
    .end local v1           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getParentPosition(II)I
    .locals 3
    .parameter "position"
    .parameter "level"

    .prologue
    .line 347
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 348
    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 349
    .local v1, node:Lcom/htc/music/browserlayer/HtcListNode;
    iget v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-ne v2, p2, :cond_0

    .line 353
    .end local v0           #i:I
    .end local v1           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :goto_1
    return v0

    .line 347
    .restart local v0       #i:I
    .restart local v1       #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 353
    .end local v1           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSelectedCount()I
    .locals 6

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, count:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v5, :cond_0

    move v1, v0

    .line 260
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    return v1

    .line 253
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 254
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 255
    iget-object v5, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/HtcListNode;

    .line 256
    .local v3, node:Lcom/htc/music/browserlayer/HtcListNode;
    iget-boolean v5, v3, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    if-eqz v5, :cond_1

    .line 257
    add-int/lit8 v0, v0, 0x1

    .line 254
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_2
    move v1, v0

    .line 260
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0
.end method

.method public init(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/database/Cursor;)V
    .locals 2
    .parameter "list"
    .parameter "cursor"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 153
    :cond_0
    const-string v0, "[HTCCursorAdapter]"

    const-string v1, "ViewGroup or cursor is null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_1
    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 160
    invoke-virtual {p0, p2}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 161
    invoke-direct {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->syncNodeList()V

    goto :goto_0
.end method

.method protected initNodeList()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public isDatesetChanged()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetChanged:Z

    return v0
.end method

.method public onClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V
    .locals 0
    .parameter "view"
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "level"
    .parameter "position"
    .parameter "isExpanded"

    .prologue
    .line 322
    return-void
.end method

.method public onDatasetChanged(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 539
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public final onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 304
    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/HtcListNode;

    .line 305
    .local v0, node:Lcom/htc/music/browserlayer/HtcListNode;
    iget-boolean v1, v0, Lcom/htc/music/browserlayer/HtcListNode;->isExpanded:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/htc/music/browserlayer/HtcListNode;->isExpanded:Z

    .line 306
    iget-boolean v1, v0, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    .line 308
    return-void

    :cond_0
    move v1, v3

    .line 305
    goto :goto_0

    :cond_1
    move v2, v3

    .line 306
    goto :goto_1
.end method

.method public onListItemCollapse(Landroid/view/View;Landroid/database/Cursor;III)V
    .locals 5
    .parameter "view"
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "level"
    .parameter "position"

    .prologue
    .line 417
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 418
    iget-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 419
    .local v3, totalNodes:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 420
    .local v2, tmpVec:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/music/browserlayer/HtcListNode;>;"
    add-int/lit8 v0, p5, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 421
    iget-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 422
    .local v1, node:Lcom/htc/music/browserlayer/HtcListNode;
    iget v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-le v4, p4, :cond_0

    .line 423
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    .end local v1           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 429
    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 430
    .restart local v1       #node:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 431
    iget-object v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-nez v4, :cond_1

    .line 432
    iget-object v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 433
    iget-object v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_1
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    .end local v1           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_2
    const/4 v2, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetChanged()V

    .line 440
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 473
    return-void
.end method

.method public removeNode(Lcom/htc/music/browserlayer/HtcListNode;I)V
    .locals 8
    .parameter "node"
    .parameter "position"

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 361
    .local v4, size:I
    iget v2, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 363
    .local v2, level:I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 364
    .local v6, tmpVec:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/music/browserlayer/HtcListNode;>;"
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 365
    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    .line 366
    .local v5, tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-gt v7, v2, :cond_2

    .line 373
    .end local v5           #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 374
    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    .line 375
    .restart local v5       #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 376
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 369
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 379
    .end local v5           #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 381
    const/4 v6, 0x0

    .line 383
    iget v7, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v7, :cond_5

    .line 384
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->requeryRootCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 385
    .local v3, rootCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 386
    iput-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 387
    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, cursorPosition:I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_5

    .line 390
    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    .line 391
    .restart local v5       #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v7, :cond_4

    .line 392
    iput-object v3, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 393
    iput v0, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 394
    add-int/lit8 v0, v0, 0x1

    .line 389
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 400
    .end local v0           #cursorPosition:I
    .end local v3           #rootCursor:Landroid/database/Cursor;
    .end local v5           #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public requeryRootCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public setAutoRequery(Z)V
    .locals 1
    .parameter "autoRequery"

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->setAutoRequery(ZZ)V

    goto :goto_0
.end method

.method public setAutoRequery(ZZ)V
    .locals 4
    .parameter "autoRequery"
    .parameter "lock"

    .prologue
    const/4 v3, 0x1

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, UpdateNoDelay:Z
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    if-ne v1, v3, :cond_0

    if-nez p2, :cond_0

    .line 632
    const/4 v0, 0x1

    .line 633
    :cond_0
    iput-boolean p2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    .line 634
    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    .line 636
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataDirty:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    if-eqz v1, :cond_1

    .line 637
    if-eqz v0, :cond_3

    .line 639
    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 640
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequeryInQueue:Z

    if-eqz v1, :cond_2

    .line 652
    :cond_1
    :goto_0
    return-void

    .line 643
    :cond_2
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequeryInQueue:Z

    .line 644
    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 649
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->onChange(Z)V

    goto :goto_0
.end method

.method public setAutoRequeryOffAndAutoOn()V
    .locals 4

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    .line 625
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setDatasetChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetChanged:Z

    .line 547
    return-void
.end method

.method public setDatesetUpdateCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 141
    if-gtz p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iput p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetUpdateCount:I

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .parameter "filterQueryProvider"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 534
    return-void
.end method

.method public setSelectAll()V
    .locals 4

    .prologue
    .line 281
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 288
    :cond_0
    return-void

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 284
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 285
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 286
    .local v1, node:Lcom/htc/music/browserlayer/HtcListNode;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setUnSelect()V
    .locals 4

    .prologue
    .line 291
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 298
    :cond_0
    return-void

    .line 293
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 294
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 295
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 296
    .local v1, node:Lcom/htc/music/browserlayer/HtcListNode;
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
