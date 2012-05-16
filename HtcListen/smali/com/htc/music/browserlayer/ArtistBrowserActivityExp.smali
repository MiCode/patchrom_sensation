.class public Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "ArtistBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final ARTIST_ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[ArtistBrowserActivityExp]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final TYPE_ALBUM:I = 0x2

.field private static final TYPE_ARTIST:I = 0x1


# instance fields
.field albumTitleLen:I

.field private mActivityResultBacked:Z

.field mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

.field private mAdapterSent:Z

.field mAlbumCols:[Ljava/lang/String;

.field mArtistCols:[Ljava/lang/String;

.field mAsyncQuerying:Z

.field mBusy:Z

.field mContext:Landroid/content/Context;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field mCursor:Landroid/database/Cursor;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeleteType:I

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFilter:Ljava/lang/String;

.field private mIsDestroy:Z

.field mLayoutlist:[I

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mNodeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;"
        }
    .end annotation
.end field

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

.field private mSelectPosition:I

.field private preSearchTime:J

.field scanning:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "number_of_albums"

    aput-object v2, v0, v1

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const-string v1, "numsongs"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "minyear"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "maxyear"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_art"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    .line 116
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    .line 118
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mContext:Landroid/content/Context;

    .line 120
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 122
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mBusy:Z

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    .line 143
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mIsDestroy:Z

    .line 145
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mLayoutlist:[I

    .line 214
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->scanning:Z

    .line 215
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->albumTitleLen:I

    .line 308
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAsyncQuerying:Z

    .line 314
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$1;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 348
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$2;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    .line 1244
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$3;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 1250
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$4;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 1355
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    .line 1356
    iput v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    .line 1840
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1841
    iput v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    .line 2099
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    .line 2101
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    .line 2102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->preSearchTime:J

    .line 2103
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$7;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    return-void

    .line 145
    nop

    :array_0
    .array-data 0x4
        0x84t 0x0t 0x9t 0x2t
        0x75t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setTitle()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setActivitTitle(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method private afterDeleting()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1889
    const-string v4, "[ArtistBrowserActivityExp]"

    const-string v5, "@@@@ afterDeleting()"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v4, :cond_0

    .line 1891
    const/4 v2, 0x0

    .line 1892
    .local v2, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    const/4 v3, -0x1

    .line 1894
    .local v3, parentPosition:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 1895
    .local v0, level:I
    packed-switch v0, :pswitch_data_0

    .line 1911
    :goto_0
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1929
    .end local v0           #level:I
    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v3           #parentPosition:I
    :cond_0
    :goto_1
    return-void

    .line 1897
    .restart local v0       #level:I
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    .restart local v3       #parentPosition:I
    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v2

    .line 1898
    iget v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    .line 1899
    goto :goto_0

    .line 1901
    :pswitch_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1902
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 1903
    goto :goto_0

    .line 1906
    :pswitch_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1907
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    goto :goto_0

    .line 1914
    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 1915
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    .line 1919
    :cond_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v1

    .line 1920
    .local v1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    iget v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v6, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v6, :cond_5

    .line 1922
    :cond_4
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    .line 1926
    :cond_5
    iget v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->delChildNode(I)V

    goto :goto_1

    .line 1895
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 426
    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "@@@@ getArtistCursor() - start"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    const/16 p2, 0x0

    .line 431
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "artist != \'\' "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, " AND artist != \'<unknown>\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const/4 v7, 0x0

    .line 436
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_2

    const/4 v13, 0x1

    .line 437
    .local v13, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 439
    const v1, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 440
    .local v16, unknownArtist:Ljava/lang/String;
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 441
    .local v14, searchWords:[Ljava/lang/String;
    array-length v1, v14

    new-array v7, v1, [Ljava/lang/String;

    .line 442
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 443
    .local v9, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 444
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v14

    if-ge v10, v1, :cond_3

    .line 445
    aget-object v1, v14, v10

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    const/4 v13, 0x1

    .line 447
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v14, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    .line 444
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 436
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v13           #searchContainsUnkown:Z
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownArtist:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 449
    .restart local v9       #col:Ljava/text/Collator;
    .restart local v10       #i:I
    .restart local v13       #searchContainsUnkown:Z
    .restart local v14       #searchWords:[Ljava/lang/String;
    .restart local v16       #unknownArtist:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    :goto_2
    array-length v1, v14

    if-ge v10, v1, :cond_4

    .line 450
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, "artist LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 459
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownArtist:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 461
    .local v6, whereclause:Ljava/lang/String;
    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "getArtistCursor() - 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v11, 0x0

    .line 463
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_7

    .line 464
    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "getArtistCursor() - 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAsyncQuerying:Z

    .line 466
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_5
    :goto_3
    if-eqz v11, :cond_6

    if-eqz p1, :cond_6

    .line 483
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setTitle()V

    .line 487
    :cond_6
    return-object v11

    .line 469
    :cond_7
    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "getArtistCursor() - 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sget-object v4, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 472
    if-eqz v13, :cond_5

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getUnknownArtist()Landroid/database/Cursor;

    move-result-object v15

    .line 474
    .local v15, unknown:Landroid/database/Cursor;
    if-eqz v15, :cond_5

    .line 475
    new-instance v12, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v2, 0x1

    aput-object v15, v1, v2

    invoke-direct {v12, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v11           #ret:Landroid/database/Cursor;
    .local v12, ret:Landroid/database/Cursor;
    move-object v11, v12

    .end local v12           #ret:Landroid/database/Cursor;
    .restart local v11       #ret:Landroid/database/Cursor;
    goto :goto_3
.end method

.method private getDeleteDesc()Ljava/lang/String;
    .locals 12

    .prologue
    const v11, 0x7f070016

    const v10, 0x7f070015

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1749
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v6, :cond_0

    .line 1750
    const-string v2, ""

    .line 1818
    :goto_0
    return-object v2

    .line 1753
    :cond_0
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1754
    :cond_1
    const v6, 0x7f070043

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1758
    .local v4, headerTitle:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v5, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 1759
    .local v5, level:I
    packed-switch v5, :pswitch_data_0

    .line 1818
    :cond_2
    const-string v2, ""

    goto :goto_0

    .line 1756
    .end local v4           #headerTitle:Ljava/lang/String;
    .end local v5           #level:I
    :cond_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    .restart local v4       #headerTitle:Ljava/lang/String;
    goto :goto_1

    .line 1762
    .restart local v5       #level:I
    :pswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1763
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1768
    .local v3, format:Ljava/lang/String;
    :goto_2
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1769
    .local v2, desc:Ljava/lang/String;
    goto :goto_0

    .line 1765
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #format:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #format:Ljava/lang/String;
    goto :goto_2

    .line 1774
    .end local v3           #format:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1775
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1780
    .restart local v3       #format:Ljava/lang/String;
    :goto_3
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1781
    .restart local v2       #desc:Ljava/lang/String;
    goto :goto_0

    .line 1777
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #format:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #format:Ljava/lang/String;
    goto :goto_3

    .line 1798
    .end local v3           #format:Ljava/lang/String;
    :pswitch_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v1, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1799
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v6, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1800
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    .line 1801
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, albumName:Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v6, "<unknown>"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1803
    :cond_6
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1807
    :cond_7
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1808
    const v6, 0x7f070018

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1813
    .restart local v3       #format:Ljava/lang/String;
    :goto_4
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1814
    .restart local v2       #desc:Ljava/lang/String;
    goto/16 :goto_0

    .line 1810
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #format:Ljava/lang/String;
    :cond_8
    const v6, 0x7f070017

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #format:Ljava/lang/String;
    goto :goto_4

    .line 1759
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectList(ZLcom/htc/music/NpCategory;)[I
    .locals 4
    .parameter "needPrepare"
    .parameter "npc"

    .prologue
    const/4 v2, 0x0

    .line 2026
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 2070
    :cond_1
    :goto_0
    return-object v1

    .line 2028
    :cond_2
    const/4 v1, 0x0

    .line 2029
    .local v1, list:[I
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v3, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 2033
    .local v0, level:I
    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 2034
    :cond_3
    if-eqz p1, :cond_4

    .line 2035
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;I)[I

    move-result-object v1

    .line 2037
    if-eqz p2, :cond_1

    .line 2038
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 2041
    :cond_4
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v1

    goto :goto_0

    .line 2058
    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 2059
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    if-nez v3, :cond_6

    move-object v1, v2

    .line 2060
    goto :goto_0

    .line 2061
    :cond_6
    if-eqz p1, :cond_7

    .line 2062
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I

    move-result-object v1

    .line 2063
    if-eqz p2, :cond_1

    .line 2064
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 2067
    :cond_7
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    goto :goto_0
.end method

.method private getSelectedItemType()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1822
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v3, :cond_0

    .line 1837
    :goto_0
    return v1

    .line 1825
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v3, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 1826
    .local v0, level:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 1828
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 1831
    goto :goto_0

    .line 1834
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 1826
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setActivitTitle(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 415
    const-string v0, ""

    .line 417
    .local v0, fancyName:Ljava/lang/CharSequence;
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 420
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setTitle(Ljava/lang/CharSequence;)V

    .line 422
    return-void
.end method

.method private setArtistAlbumInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V
    .locals 8
    .parameter "node"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1517
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-nez v4, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    iget-object v0, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1521
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1526
    iget v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1528
    iget v1, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 1530
    .local v1, level:I
    packed-switch v1, :pswitch_data_0

    .line 1565
    .end local v1           #level:I
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1566
    :cond_3
    const v4, 0x7f070043

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    goto :goto_0

    .line 1532
    .restart local v1       #level:I
    :pswitch_0
    iget-object v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    .line 1533
    iget-object v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    .line 1534
    iput-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    .line 1535
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    goto :goto_1

    .line 1539
    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1540
    .local v2, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1542
    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    .line 1543
    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    .line 1544
    iput-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    .line 1545
    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    goto :goto_1

    .line 1549
    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    :pswitch_2
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1550
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1551
    .local v3, parentNode2:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v4, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1553
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    .line 1554
    iget-object v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    .line 1555
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    .line 1556
    iget-object v4, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    goto :goto_1

    .line 1530
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setActivitTitle(I)V

    .line 412
    return-void
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 1614
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method public delChildNode(I)V
    .locals 12
    .parameter "pos"

    .prologue
    const/4 v11, 0x0

    .line 1967
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v8, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 1969
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1970
    .local v4, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1971
    .local v5, parentNode2:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v8, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v9, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1973
    iget-object v8, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1974
    .local v0, artistId:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v9, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getArtistAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v8, v9, v10, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$1600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1976
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 1979
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1981
    iget v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 1982
    .local v6, parentPos:I
    const/4 v2, 0x0

    .line 1984
    .local v2, cursorPosition:I
    add-int/lit8 v3, v6, 0x2

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 1985
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1987
    .local v7, tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v8, :cond_3

    .line 2005
    .end local v7           #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_2
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v8, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setDatasetChanged(Z)V

    .line 2006
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V

    goto :goto_0

    .line 1990
    .restart local v7       #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_3
    iget v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 1991
    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-ne v7, v8, :cond_5

    .line 1984
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1994
    :cond_5
    iget-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1995
    iget-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1996
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1999
    :cond_6
    iput-object v1, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 2000
    iput v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 2002
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public delRootNode(I)V
    .locals 8
    .parameter "pos"

    .prologue
    const/4 v7, 0x0

    .line 1932
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v5, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 1934
    invoke-direct {p0, v7, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1935
    .local v2, rootCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 1936
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 1964
    :goto_0
    return-void

    .line 1940
    :cond_1
    if-eqz v2, :cond_5

    .line 1941
    iput-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 1942
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getCount()I

    move-result v3

    .line 1943
    .local v3, size:I
    const/4 v0, 0x0

    .line 1944
    .local v0, cursorPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 1945
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1946
    .local v4, tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v5, :cond_2

    .line 1947
    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1944
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1950
    :cond_3
    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1951
    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1952
    iput-object v7, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1954
    :cond_4
    iput-object v2, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1955
    iput v0, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 1957
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1962
    .end local v0           #cursorPosition:I
    .end local v1           #i:I
    .end local v3           #size:I
    .end local v4           #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_5
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setDatasetChanged(Z)V

    .line 1963
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V

    goto :goto_0
.end method

.method getUnknownArtist()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 491
    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    const-string v3, "artist = \'<unknown>\'"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 494
    .local v6, cur:Landroid/database/Cursor;
    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 379
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showDatabaseError()V

    .line 381
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->closeContextMenu()V

    .line 382
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->closeContextMenu()V

    .line 374
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showDatabaseError()V

    goto :goto_0

    .line 386
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 388
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->hideEmptyErrorView()V

    .line 394
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setFastScrollEnabled(Z)V

    .line 396
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setTextFilterEnabled(Z)V

    .line 397
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 398
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    .line 399
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    .line 400
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->init(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/database/Cursor;)V

    .line 401
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)V

    .line 402
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const-string v2, "Artist"

    iput-object v2, v1, Lcom/htc/music/browserlayer/HTCCursorAdapter;->tag:Ljava/lang/String;

    .line 405
    const-string v1, "[ArtistBrowserActivityExp]"

    const-string v2, "@@@@ init(Cursor c) ok"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 2011
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mActivityResultBacked:Z

    .line 2012
    packed-switch p1, :pswitch_data_0

    .line 2023
    :cond_0
    :goto_0
    return-void

    .line 2014
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 2015
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    .line 2016
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 2017
    const-string v2, "playlist"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2018
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 2012
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1572
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1609
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 1574
    :sswitch_0
    new-instance v3, Lcom/htc/music/NpCategory;

    invoke-direct {v3, v6}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 1575
    .local v3, npc:Lcom/htc/music/NpCategory;
    invoke-direct {p0, v4, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v2

    .line 1576
    .local v2, list:[I
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1577
    const/4 v3, 0x0

    .line 1579
    :cond_1
    if-eqz v2, :cond_0

    .line 1580
    invoke-static {p0, v2, v6, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 1586
    .end local v2           #list:[I
    .end local v3           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    invoke-direct {p0, v6, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    .line 1588
    .local v0, addToPlaylistData:[I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1589
    .local v1, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1590
    const-string v5, "pickermode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1591
    const-string v5, "AddToPlaylistData"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1592
    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1597
    .end local v0           #addToPlaylistData:[I
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0, v6, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v2

    .line 1598
    .restart local v2       #list:[I
    if-eqz v2, :cond_0

    .line 1599
    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[I)V

    goto :goto_0

    .line 1604
    .end local v2           #list:[I
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectedItemType()I

    move-result v5

    iput v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    .line 1605
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1572
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->requestWindowFeature(I)Z

    .line 166
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setVolumeControlStream(I)V

    .line 167
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    .line 168
    iput-boolean v9, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mIsDestroy:Z

    .line 170
    iput-object p0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mContext:Landroid/content/Context;

    .line 171
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setContentView(I)V

    .line 179
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 184
    const-string v0, "[ArtistBrowserActivityExp]"

    const-string v1, "start query"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mLayoutlist:[I

    const/16 v7, 0x10

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;[II)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    .line 186
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    invoke-direct {p0, v9}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setActivitTitle(I)V

    .line 189
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setActivity(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    .line 190
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 204
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 206
    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setSearchHint(I)V

    .line 207
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->enableSearch()V

    .line 209
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 212
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v8, 0x0

    .line 1359
    const/4 v6, 0x5

    const v7, 0x7f07004e

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1360
    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1361
    const/16 v6, 0xa

    const v7, 0x20c01fc

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1364
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    .local v3, mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    const/4 v2, 0x0

    .line 1372
    .local v2, headerTitle:Ljava/lang/String;
    iget v5, v3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 1373
    .local v5, position:I
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    .line 1374
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v6, :cond_0

    .line 1375
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v6, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v4

    .line 1376
    .local v4, node:Lcom/htc/music/browserlayer/HtcListNode;
    iput v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    .line 1377
    iput-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    .line 1378
    if-eqz v4, :cond_0

    .line 1379
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    .line 1380
    invoke-direct {p0, v4, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setArtistAlbumInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    .line 1382
    iget v6, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v6, :pswitch_data_0

    .line 1399
    :goto_0
    if-eqz v2, :cond_0

    .line 1400
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1405
    .end local v2           #headerTitle:Ljava/lang/String;
    .end local v3           #mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v4           #node:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v5           #position:I
    :cond_0
    :goto_1
    return-void

    .line 1365
    :catch_0
    move-exception v1

    .line 1366
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v6, "ArtistBrowserActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1385
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #headerTitle:Ljava/lang/String;
    .restart local v3       #mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v4       #node:Lcom/htc/music/browserlayer/HtcListNode;
    .restart local v5       #position:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    .line 1386
    goto :goto_0

    .line 1389
    :pswitch_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1390
    :cond_1
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1393
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    goto :goto_0

    .line 1382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 1298
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1300
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1301
    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1302
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    const/16 v0, 0x16

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1306
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 1882
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDeletionCompleted()V

    .line 1883
    const-string v0, "ArtistBrowserActivityExp"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    iget v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1885
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->afterDeleting()V

    .line 1886
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 240
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapterSent:Z

    if-nez v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 252
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 253
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 254
    const/4 v0, 0x0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->destroy()V

    .line 257
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    .line 259
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mIsDestroy:Z

    .line 265
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_4

    .line 273
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 276
    :cond_4
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 277
    return-void

    .line 244
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 12
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 1660
    sparse-switch p1, :sswitch_data_0

    .line 1742
    :cond_0
    :goto_0
    return v11

    .line 1662
    :sswitch_0
    new-instance v5, Lcom/htc/music/NpCategory;

    invoke-direct {v5, v8}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 1663
    .local v5, npc:Lcom/htc/music/NpCategory;
    invoke-direct {p0, v11, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v4

    .line 1664
    .local v4, list:[I
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1665
    const/4 v5, 0x0

    .line 1667
    :cond_1
    if-eqz v4, :cond_0

    .line 1668
    invoke-static {p0, v4, v8, v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 1674
    .end local v4           #list:[I
    .end local v5           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1675
    .local v2, intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v2, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1676
    const-string v7, "pickermode"

    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1677
    invoke-virtual {p0, v2, v11}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1683
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectedItemType()I

    move-result v6

    .line 1684
    .local v6, type:I
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1688
    :pswitch_0
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1689
    :catch_0
    move-exception v1

    .line 1690
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "[ArtistBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click artist item, NumberFormatException e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1691
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 1692
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "[ArtistBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click artist item, RemoteException e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1698
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v8, v9, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditions(III)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 1699
    :catch_2
    move-exception v1

    .line 1700
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "[ArtistBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click album item, NumberFormatException e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1701
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 1702
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "[ArtistBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click album item, RemoteException e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1711
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v6           #type:I
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getSelectedItemType()I

    move-result v7

    iput v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDeleteType:I

    .line 1712
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1717
    :sswitch_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v7, :cond_2

    .line 1718
    const-string v7, "[ArtistBrowserActivityExp]"

    const-string v8, "select node is null in Search. return "

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1722
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v3, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 1723
    .local v3, level:I
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 1725
    .local v0, context:Landroid/content/Context;
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 1727
    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1731
    :pswitch_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1735
    :pswitch_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1660
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_2
        0x11 -> :sswitch_4
    .end sparse-switch

    .line 1684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1725
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1409
    const/4 v1, 0x0

    .line 1410
    .local v1, headerTitle:Ljava/lang/String;
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    .line 1411
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v6, :cond_1

    .line 1412
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v6, p3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v5

    .line 1413
    .local v5, node:Lcom/htc/music/browserlayer/HtcListNode;
    iput p3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectPosition:I

    .line 1414
    iput-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    .line 1415
    if-eqz v5, :cond_1

    .line 1416
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumId:Ljava/lang/String;

    .line 1417
    invoke-direct {p0, v5, p3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setArtistAlbumInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    .line 1419
    const/4 v3, 0x0

    .line 1421
    .local v3, isUnknown:Z
    iget v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    packed-switch v6, :pswitch_data_0

    .line 1442
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 1443
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1444
    .local v2, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 1445
    .local v0, dlnaMode:I
    if-nez v3, :cond_5

    .line 1446
    if-nez v0, :cond_4

    .line 1448
    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const v7, 0x7f070050

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const v7, 0x20c01fc

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const v7, 0x20c0138

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1455
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x5

    new-array v2, v6, [I

    .end local v2           #ids:[I
    fill-array-data v2, :array_0

    .line 1508
    .restart local v2       #ids:[I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->hideHtcContextMenu()V

    .line 1509
    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1512
    .end local v0           #dlnaMode:I
    .end local v2           #ids:[I
    .end local v3           #isUnknown:Z
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v5           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_1
    const/4 v6, 0x0

    return v6

    .line 1424
    .restart local v3       #isUnknown:Z
    .restart local v5       #node:Lcom/htc/music/browserlayer/HtcListNode;
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentArtistName:Ljava/lang/String;

    .line 1425
    const v6, 0x7f070043

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-ne v1, v6, :cond_0

    .line 1426
    const/4 v3, 0x1

    goto :goto_0

    .line 1431
    :pswitch_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1432
    :cond_2
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1433
    const/4 v3, 0x1

    goto :goto_0

    .line 1436
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCurrentAlbumName:Ljava/lang/String;

    goto :goto_0

    .line 1464
    .restart local v0       #dlnaMode:I
    .restart local v2       #ids:[I
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :cond_4
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const v7, 0x20c01fc

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const v7, 0x20c0138

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1470
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x4

    new-array v2, v6, [I

    .end local v2           #ids:[I
    fill-array-data v2, :array_1

    .restart local v2       #ids:[I
    goto :goto_1

    .line 1478
    :cond_5
    if-nez v0, :cond_6

    .line 1480
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const v7, 0x7f070050

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const v7, 0x20c01fc

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1486
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x4

    new-array v2, v6, [I

    .end local v2           #ids:[I
    fill-array-data v2, :array_2

    .restart local v2       #ids:[I
    goto/16 :goto_1

    .line 1494
    :cond_6
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const v7, 0x7f07004f

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const v7, 0x20c01fc

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1499
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x3

    new-array v2, v6, [I

    .end local v2           #ids:[I
    fill-array-data v2, :array_3

    .restart local v2       #ids:[I
    goto/16 :goto_1

    .line 1421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1455
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 1470
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 1486
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 1499
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 156
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->notifyDataSetInvalidated()V

    .line 159
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1332
    const/4 v0, 0x0

    .line 1334
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1352
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 1342
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 1344
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1347
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1348
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1334
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->isDatesetChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setDatasetChanged(Z)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequery(ZZ)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 363
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 364
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 1312
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1317
    .local v0, enabled:Ljava/lang/Boolean;
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1318
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 1319
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1320
    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1321
    if-eqz v1, :cond_1

    .line 1322
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1323
    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1324
    if-eqz v1, :cond_2

    .line 1325
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1327
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 1312
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 281
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 282
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setTitle()V

    .line 283
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1, v5, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequery(ZZ)V

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mActivityResultBacked:Z

    if-nez v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->isDatesetChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-direct {p0, v2, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 289
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 290
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setDatasetChanged(Z)V

    .line 294
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mActivityResultBacked:Z

    .line 296
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showSpinner(Z)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showSpinner(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outcicle"

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 2081
    packed-switch p2, :pswitch_data_0

    .line 2096
    :cond_0
    :goto_0
    return-void

    .line 2083
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_1

    .line 2084
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 2085
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 2088
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequery(Z)V

    goto :goto_0

    .line 2092
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    .line 2081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 2075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->preSearchTime:J

    .line 2076
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    .line 2077
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2078
    return-void
.end method

.method public playAllAction(Z)Z
    .locals 12
    .parameter "forceShuffle"

    .prologue
    .line 1619
    const/4 v7, 0x0

    .line 1620
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1621
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    const-string v0, " AND artist != \'\' "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1628
    const/4 v9, 0x0

    .line 1629
    .local v9, unknown:Landroid/database/Cursor;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1630
    .local v11, whereUnknown:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    const-string v0, " AND artist= \'<unknown>\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1637
    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    .line 1638
    new-instance v8, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-direct {v8, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v7           #cursor:Landroid/database/Cursor;
    .local v8, cursor:Landroid/database/Cursor;
    move-object v7, v8

    .line 1642
    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    .line 1643
    const/4 v6, 0x0

    .line 1644
    .local v6, category:Lcom/htc/music/NpCategory;
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1645
    new-instance v6, Lcom/htc/music/NpCategory;

    .end local v6           #category:Lcom/htc/music/NpCategory;
    const/4 v0, 0x5

    invoke-direct {v6, v0}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 1647
    .restart local v6       #category:Lcom/htc/music/NpCategory;
    :cond_1
    if-eqz p1, :cond_4

    .line 1648
    invoke-static {p0, v7, v6}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 1651
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1652
    const/4 v7, 0x0

    .line 1654
    .end local v6           #category:Lcom/htc/music/NpCategory;
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1639
    :cond_3
    if-eqz v9, :cond_0

    .line 1640
    move-object v7, v9

    goto :goto_0

    .line 1650
    .restart local v6       #category:Lcom/htc/music/NpCategory;
    :cond_4
    invoke-static {p0, v7, v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_1
.end method

.method protected showDeleteDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "desc"

    .prologue
    .line 1843
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1844
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 1846
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_1

    .line 1847
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c01fc

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$6;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$6;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$5;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$5;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1874
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1875
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1876
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1877
    return-void
.end method
