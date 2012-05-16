.class public Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
.super Lcom/htc/music/widget/HTCListActivity;
.source "ComposerBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final COMPOSER_DEFAULT_SORT_ORDER:Ljava/lang/String; = "composer COLLATE NOCASE ASC"

.field private static final DELETE_ALBUM:I = 0x2

.field private static final DELETE_ARTIST:I = 0x1

.field private static final DELETE_COMPOSER:I = 0x0

.field private static NODE_INDEX_ALBUMS:I = 0x0

.field private static NODE_INDEX_ARTIST:I = 0x0

.field private static NODE_INDEX_SONGS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[ComposerBrowserActivityExp]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field albumTitleLen:I

.field private mActivityResultBacked:Z

.field mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

.field private mAdapterSent:Z

.field mAlbumCols:[Ljava/lang/String;

.field private mAlbumId:Ljava/lang/String;

.field mArtistCols:[Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field mBusy:Z

.field private mComposerName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeleteType:I

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFilter:Ljava/lang/String;

.field private mIsDestroy:Z

.field mLayoutlist:[I

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMenuTitle:Ljava/lang/String;

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

.field mSongCols:[Ljava/lang/String;

.field private preSearchTime:J

.field scanning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->NODE_INDEX_SONGS:I

    .line 98
    const/4 v0, 0x1

    sput v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->NODE_INDEX_ALBUMS:I

    .line 99
    const/4 v0, 0x2

    sput v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->NODE_INDEX_ARTIST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Lcom/htc/music/widget/HTCListActivity;-><init>()V

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "number_of_albums"

    aput-object v1, v0, v6

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "numsongs"

    aput-object v1, v0, v7

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

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    .line 122
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "album_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSongCols:[Ljava/lang/String;

    .line 130
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    .line 132
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mContext:Landroid/content/Context;

    .line 134
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 136
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mBusy:Z

    .line 140
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mActivityResultBacked:Z

    .line 142
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mLayoutlist:[I

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    .line 154
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mIsDestroy:Z

    .line 219
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->scanning:Z

    .line 221
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->albumTitleLen:I

    .line 313
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAsyncQuerying:Z

    .line 319
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$1;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 354
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$2;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    .line 417
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    .line 419
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    .line 420
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    .line 421
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    .line 422
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    .line 808
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 809
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    .line 1119
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$5;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 1128
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$6;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 2483
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    .line 2485
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    .line 2486
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->preSearchTime:J

    .line 2487
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$7;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    return-void

    .line 142
    :array_0
    .array-data 0x4
        0x84t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
        0x75t 0x0t 0x9t 0x2t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setActivitTitle(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method private afterDeleting()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 862
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v4, :cond_1

    .line 863
    const/4 v2, 0x0

    .line 864
    .local v2, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    const/4 v3, -0x1

    .line 866
    .local v3, parentPosition:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 867
    .local v0, level:I
    packed-switch v0, :pswitch_data_0

    .line 885
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 906
    .end local v0           #level:I
    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v3           #parentPosition:I
    :cond_1
    :goto_1
    return-void

    .line 869
    .restart local v0       #level:I
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    .restart local v3       #parentPosition:I
    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v2

    .line 870
    iget v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    .line 871
    goto :goto_0

    .line 873
    :pswitch_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v6, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getParentNode(II)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v2

    .line 874
    if-eqz v2, :cond_0

    .line 875
    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    goto :goto_0

    .line 878
    :pswitch_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 879
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    if-eqz v2, :cond_0

    .line 880
    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    goto :goto_0

    .line 891
    :cond_2
    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 892
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    .line 896
    :cond_4
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v1

    .line 897
    .local v1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    iget v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v7, :cond_6

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v7, :cond_6

    .line 899
    :cond_5
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    .line 903
    :cond_6
    iget v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->delChildNode(I)V

    goto :goto_1

    .line 867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 1014
    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    const/16 p2, 0x0

    .line 1016
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "is_music>=1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    const-string v1, " AND composer is not null"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    const-string v1, " AND composer != \'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const-string v1, " AND composer != \'<unknown>\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    const/4 v7, 0x0

    .line 1025
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_2

    const/4 v13, 0x1

    .line 1026
    .local v13, searchContainsUnkown:Z
    :goto_0
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DISTINCT composer"

    aput-object v2, v5, v1

    .line 1033
    .local v5, cols:[Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1034
    const v1, 0x7f070045

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 1036
    .local v16, unknownComposer:Ljava/lang/String;
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1037
    .local v14, searchWords:[Ljava/lang/String;
    array-length v1, v14

    new-array v7, v1, [Ljava/lang/String;

    .line 1038
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 1039
    .local v9, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 1040
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v14

    if-ge v10, v1, :cond_3

    .line 1041
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

    .line 1042
    aget-object v1, v14, v10

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    const/4 v13, 0x1

    .line 1040
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1025
    .end local v5           #cols:[Ljava/lang/String;
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v13           #searchContainsUnkown:Z
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownComposer:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1045
    .restart local v5       #cols:[Ljava/lang/String;
    .restart local v9       #col:Ljava/text/Collator;
    .restart local v10       #i:I
    .restart local v13       #searchContainsUnkown:Z
    .restart local v14       #searchWords:[Ljava/lang/String;
    .restart local v16       #unknownComposer:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    :goto_2
    array-length v1, v14

    if-ge v10, v1, :cond_4

    .line 1046
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    const-string v1, "composer LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1052
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownComposer:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1055
    .local v6, whereclause:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1056
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_6

    .line 1057
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAsyncQuerying:Z

    .line 1058
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "composer COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    :cond_5
    :goto_3
    return-object v11

    .line 1061
    :cond_6
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "composer COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1064
    if-eqz v13, :cond_5

    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getUnknownComposer()Landroid/database/Cursor;

    move-result-object v15

    .line 1066
    .local v15, unknown:Landroid/database/Cursor;
    if-eqz v15, :cond_5

    .line 1067
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
    .locals 11

    .prologue
    const v8, 0x7f070019

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 699
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v7, :cond_0

    .line 700
    const-string v3, ""

    .line 774
    :goto_0
    return-object v3

    .line 702
    :cond_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v5, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 703
    .local v5, level:I
    packed-switch v5, :pswitch_data_0

    .line 774
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 705
    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, format:Ljava/lang/String;
    const/4 v3, 0x0

    .line 708
    .local v3, desc:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 709
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 711
    :cond_2
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 716
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 717
    .restart local v4       #format:Ljava/lang/String;
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 718
    .restart local v3       #desc:Ljava/lang/String;
    goto :goto_0

    .line 734
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/HtcListNode;

    .line 735
    .local v6, parent:Lcom/htc/music/browserlayer/HtcListNode;
    iget v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v7, v9, :cond_6

    .line 736
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 737
    .local v2, cursor:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 738
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    .line 739
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, albumName:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v7, "<unknown>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 741
    :cond_3
    const v7, 0x7f070044

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 743
    :cond_4
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 744
    const v7, 0x7f070018

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 749
    .restart local v4       #format:Ljava/lang/String;
    :goto_1
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 750
    .restart local v3       #desc:Ljava/lang/String;
    goto/16 :goto_0

    .line 746
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :cond_5
    const v7, 0x7f070017

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #format:Ljava/lang/String;
    goto :goto_1

    .line 753
    .end local v0           #albumName:Ljava/lang/String;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v4           #format:Ljava/lang/String;
    :cond_6
    iget v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 754
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 755
    .restart local v2       #cursor:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 756
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    .line 757
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, artisName:Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v7, "<unknown>"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 759
    :cond_7
    const v7, 0x7f070043

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 761
    :cond_8
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 762
    const v7, 0x7f070016

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 767
    .restart local v4       #format:Ljava/lang/String;
    :goto_2
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 768
    .restart local v3       #desc:Ljava/lang/String;
    goto/16 :goto_0

    .line 764
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :cond_9
    const v7, 0x7f070015

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #format:Ljava/lang/String;
    goto :goto_2

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDeleteType()I
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 782
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v6, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v2

    .line 785
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 786
    .local v0, level:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 788
    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 791
    goto :goto_0

    .line 794
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 795
    .local v1, parent:Lcom/htc/music/browserlayer/HtcListNode;
    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v3, v5, :cond_2

    move v2, v4

    .line 797
    goto :goto_0

    .line 799
    :cond_2
    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v3, v4, :cond_0

    move v2, v5

    .line 801
    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSelectList(ZLcom/htc/music/NpCategory;)[I
    .locals 10
    .parameter "needPrepare"
    .parameter "npc"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 559
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v6, :cond_1

    .line 560
    const/4 v3, 0x0

    .line 626
    :cond_0
    :goto_0
    return-object v3

    .line 562
    :cond_1
    const/4 v3, 0x0

    .line 563
    .local v3, list:[I
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v2, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 564
    .local v2, level:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v1, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 565
    .local v1, cursorPosition:I
    if-eqz v2, :cond_2

    if-ne v2, v8, :cond_5

    .line 566
    :cond_2
    if-eqz p1, :cond_4

    .line 567
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForComposerAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v3

    .line 568
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    .line 569
    .local v5, tempComposer:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 570
    const-string v5, "<unknown>"

    .line 572
    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p2, v5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 574
    .end local v5           #tempComposer:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForComposer(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_0

    .line 597
    :cond_5
    if-ne v2, v9, :cond_0

    .line 598
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 599
    .local v4, parent:Lcom/htc/music/browserlayer/HtcListNode;
    iget v6, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v6, v8, :cond_7

    .line 600
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v0, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 601
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v6, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 602
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    .line 603
    if-eqz p1, :cond_6

    .line 604
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I

    move-result-object v3

    .line 605
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 607
    :cond_6
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v3

    goto :goto_0

    .line 612
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_7
    iget v6, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v6, v9, :cond_0

    .line 613
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v0, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 614
    .restart local v0       #cursor:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v6, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 615
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    .line 617
    if-eqz p1, :cond_8

    .line 618
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;I)[I

    move-result-object v3

    .line 619
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto/16 :goto_0

    .line 621
    :cond_8
    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v3

    goto/16 :goto_0
.end method

.method private setActivitTitle(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 2356
    const-string v0, ""

    .line 2358
    .local v0, fancyName:Ljava/lang/CharSequence;
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2361
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle(Ljava/lang/CharSequence;)V

    .line 2363
    return-void
.end method

.method private setContextMenuInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V
    .locals 7
    .parameter "node"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 485
    if-nez p1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 489
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 492
    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    .line 493
    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;

    .line 494
    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    .line 496
    iget v5, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 498
    iget v1, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 499
    .local v1, level:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 501
    :pswitch_0
    iget-object v4, p1, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 502
    .local v4, tempName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 503
    :cond_2
    const-string v5, "<unknown>"

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    .line 508
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto :goto_0

    .line 506
    :cond_3
    iput-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_1

    .line 508
    :cond_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_2

    .line 514
    .end local v4           #tempName:Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v5, :cond_0

    .line 518
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 519
    .local v2, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v4, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 520
    .restart local v4       #tempName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 521
    :cond_5
    const-string v5, "<unknown>"

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    .line 526
    :goto_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto :goto_0

    .line 524
    :cond_6
    iput-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_3

    .line 526
    :cond_7
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_4

    .line 531
    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v4           #tempName:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v5, :cond_0

    .line 534
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 535
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/HtcListNode;

    .line 536
    .local v3, parentNode2:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v5, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v6, v3, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 537
    iget-object v4, v3, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 539
    .restart local v4       #tempName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 540
    :cond_8
    const-string v5, "<unknown>"

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    .line 545
    :goto_5
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    .line 546
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 547
    :cond_9
    iget-object v5, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const v6, 0x7f070099

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 548
    const v5, 0x7f070044

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 543
    :cond_a
    iput-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    goto :goto_5

    .line 550
    :cond_b
    const v5, 0x7f070043

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 499
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
    .line 2351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setActivitTitle(I)V

    .line 2353
    return-void
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 2432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method public delChildNode(I)V
    .locals 11
    .parameter "pos"

    .prologue
    const/4 v10, 0x0

    .line 944
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v8, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 946
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 947
    .local v4, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    .line 948
    .local v5, parentNode2:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v8, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v9, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 949
    const/4 v1, 0x0

    .line 952
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const v9, 0x7f070099

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 954
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget-object v9, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    invoke-static {v8, v9, v10}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1000(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v1

    .line 962
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 992
    :cond_0
    :goto_1
    return-void

    .line 958
    :cond_1
    iget-object v8, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, composer:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v8, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$1100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 966
    .end local v0           #composer:Ljava/lang/String;
    :cond_2
    iget v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 967
    .local v6, parentPos:I
    const/4 v2, 0x0

    .line 969
    .local v2, cursorPosition:I
    add-int/lit8 v3, v6, 0x2

    .local v3, i:I
    :goto_2
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 970
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/HtcListNode;

    .line 972
    .local v7, tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v8, :cond_4

    .line 990
    .end local v7           #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_3
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v8, v10}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatasetChanged(Z)V

    .line 991
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)V

    goto :goto_1

    .line 975
    .restart local v7       #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_4
    iget v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 976
    iget-object v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-ne v7, v8, :cond_6

    .line 969
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 979
    :cond_6
    iget-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_7

    .line 980
    iget-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 981
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 984
    :cond_7
    iput-object v1, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 985
    iput v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 987
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public delRootNode(I)V
    .locals 8
    .parameter "pos"

    .prologue
    const/4 v7, 0x0

    .line 909
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v5, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 911
    invoke-direct {p0, v7, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 912
    .local v2, rootCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 913
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 941
    :goto_0
    return-void

    .line 917
    :cond_1
    if-eqz v2, :cond_5

    .line 918
    iput-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 919
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getCount()I

    move-result v3

    .line 920
    .local v3, size:I
    const/4 v0, 0x0

    .line 921
    .local v0, cursorPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 922
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 923
    .local v4, tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v5, :cond_2

    .line 924
    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 921
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 927
    :cond_3
    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 928
    iget-object v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 929
    iput-object v7, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 931
    :cond_4
    iput-object v2, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 932
    iput v0, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 939
    .end local v0           #cursorPosition:I
    .end local v1           #i:I
    .end local v3           #size:I
    .end local v4           #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_5
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatasetChanged(Z)V

    .line 940
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)V

    goto :goto_0
.end method

.method getUnknownComposer()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 1078
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 1082
    const-string v5, "random() desc limit 1"

    .line 1084
    .local v5, sortOrder:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "composer"

    aput-object v1, v2, v0

    .line 1088
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1091
    .local v6, ret:Landroid/database/Cursor;
    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 386
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showDatabaseError()V

    .line 388
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->closeContextMenu()V

    .line 389
    iget-boolean v1, p0, Lcom/htc/music/widget/HTCListActivity;->mIsExpActivityPaused:Z

    if-nez v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showDatabaseError()V

    .line 381
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->closeContextMenu()V

    goto :goto_0

    .line 393
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 394
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    .line 395
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->hideEmptyErrorView()V

    .line 401
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setFastScrollEnabled(Z)V

    .line 403
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setTextFilterEnabled(Z)V

    .line 404
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 405
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    .line 407
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    .line 408
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->init(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/database/Cursor;)V

    .line 409
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)V

    .line 410
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const-string v2, "Composer"

    iput-object v2, v1, Lcom/htc/music/browserlayer/HTCCursorAdapter;->tag:Ljava/lang/String;

    .line 412
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 996
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mActivityResultBacked:Z

    .line 997
    packed-switch p1, :pswitch_data_0

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 999
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1000
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    .line 1001
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 1002
    const-string v2, "playlist"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1003
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 997
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

    const/4 v4, 0x1

    .line 631
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 665
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 633
    :sswitch_0
    new-instance v2, Lcom/htc/music/NpCategory;

    invoke-direct {v2, v7}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 634
    .local v2, npc:Lcom/htc/music/NpCategory;
    invoke-direct {p0, v4, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    .line 636
    .local v1, list:[I
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    .line 637
    :cond_1
    if-eqz v1, :cond_0

    .line 638
    invoke-static {p0, v1, v7, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 644
    .end local v1           #list:[I
    .end local v2           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 645
    .local v0, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 646
    const-string v5, "pickermode"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    invoke-virtual {p0, v0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 652
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "playlist"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 653
    .local v3, playlist:I
    const/4 v5, 0x0

    invoke-direct {p0, v7, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    .line 654
    .restart local v1       #list:[I
    if-eqz v1, :cond_0

    .line 655
    int-to-long v5, v3

    invoke-static {p0, v1, v5, v6}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 660
    .end local v1           #list:[I
    .end local v3           #playlist:I
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getDeleteType()I

    move-result v5

    iput v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    .line 661
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const-string v0, "[ComposerBrowserActivityExp]"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->requestWindowFeature(I)Z

    .line 170
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setVolumeControlStream(I)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    .line 172
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mIsDestroy:Z

    .line 174
    iput-object p0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mContext:Landroid/content/Context;

    .line 175
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setContentView(I)V

    .line 183
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 187
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-nez v0, :cond_1

    .line 188
    const-string v0, "####"

    const-string v1, "start query"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    const/16 v6, 0x10

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    .line 191
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setActivitTitle(I)V

    .line 194
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setActivity(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    .line 195
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 211
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setSearchHint(I)V

    .line 212
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->enableSearch()V

    .line 214
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 217
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setActivity(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    .line 198
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatesetUpdateCount(I)V

    .line 199
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 201
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 203
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v7, 0x0

    .line 426
    const/4 v5, 0x5

    const v6, 0x7f07004e

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 427
    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 428
    const/16 v5, 0xa

    const v6, 0x20c01fc

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 431
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .local v2, mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v4, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 438
    .local v4, position:I
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    .line 439
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v5, :cond_0

    .line 440
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v3

    .line 441
    .local v3, node:Lcom/htc/music/browserlayer/HtcListNode;
    iput v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    .line 442
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    .line 443
    if-eqz v3, :cond_0

    .line 444
    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setContextMenuInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    .line 446
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 447
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 451
    .end local v2           #mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v3           #node:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v4           #position:I
    :cond_0
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "ArtistBrowserActivity"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 2367
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2369
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2370
    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809ea

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2371
    const/4 v0, 0x1

    return v0
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 853
    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onDeletionCompleted()V

    .line 854
    const-string v0, "ComposerBrowserActivityExp"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 856
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->afterDeleting()V

    .line 857
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapterSent:Z

    if-nez v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 258
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 260
    const/4 v0, 0x0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->destroy()V

    .line 263
    iput-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    .line 264
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mIsDestroy:Z

    .line 270
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 277
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_3

    .line 278
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 281
    :cond_3
    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onDestroy()V

    .line 282
    return-void

    .line 250
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 670
    sparse-switch p1, :sswitch_data_0

    .line 695
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onHtcContextItemSelected(I)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 672
    :sswitch_0
    new-instance v2, Lcom/htc/music/NpCategory;

    const/16 v4, 0x12

    invoke-direct {v2, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 673
    .local v2, npc:Lcom/htc/music/NpCategory;
    invoke-direct {p0, v3, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    .line 674
    .local v1, list:[I
    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 675
    :cond_1
    if-eqz v1, :cond_0

    .line 676
    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 682
    .end local v1           #list:[I
    .end local v2           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 683
    .local v0, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 684
    const-string v4, "pickermode"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    invoke-virtual {p0, v0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 690
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getDeleteType()I

    move-result v4

    iput v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I

    .line 691
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 455
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    .line 456
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v3, p3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v2

    .line 458
    .local v2, node:Lcom/htc/music/browserlayer/HtcListNode;
    iput p3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectPosition:I

    .line 459
    iput-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    .line 460
    if-eqz v2, :cond_0

    .line 461
    invoke-direct {p0, v2, p3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setContextMenuInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    .line 466
    new-array v1, v6, [Ljava/lang/CharSequence;

    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x1

    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const v4, 0x20c01fc

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 471
    .local v1, items:[Ljava/lang/CharSequence;
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 477
    .local v0, ids:[I
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 481
    .end local v0           #ids:[I
    .end local v1           #items:[Ljava/lang/CharSequence;
    .end local v2           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_0
    return v5

    .line 471
    :array_0
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
    .line 158
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 159
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->notifyDataSetInvalidated()V

    .line 162
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 2396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2427
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 2404
    :pswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 2406
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2396
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->isDatesetChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatasetChanged(Z)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequery(ZZ)V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 370
    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onPause()V

    .line 371
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 2377
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2382
    .local v0, enabled:Ljava/lang/Boolean;
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2383
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 2384
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2385
    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2386
    if-eqz v1, :cond_1

    .line 2387
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2389
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 2377
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 286
    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onResume()V

    .line 287
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setTitle()V

    .line 288
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1, v5, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequery(ZZ)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mActivityResultBacked:Z

    if-nez v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->isDatesetChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-direct {p0, v2, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 294
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 295
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setDatasetChanged(Z)V

    .line 299
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mActivityResultBacked:Z

    .line 301
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showSpinner(Z)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showSpinner(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outcicle"

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 2466
    packed-switch p2, :pswitch_data_0

    .line 2481
    :cond_0
    :goto_0
    return-void

    .line 2468
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_1

    .line 2469
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 2470
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 2473
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequery(Z)V

    goto :goto_0

    .line 2477
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    .line 2466
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
    .line 2460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->preSearchTime:J

    .line 2461
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    .line 2462
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2463
    return-void
.end method

.method public playAllAction(Z)Z
    .locals 9
    .parameter "forceShuffle"

    .prologue
    const/4 v8, 0x1

    .line 2437
    const/4 v6, 0x0

    .line 2438
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "album_id"

    aput-object v0, v2, v8

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "composer COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2443
    if-eqz v6, :cond_1

    .line 2444
    const/4 v7, 0x0

    .line 2445
    .local v7, npc:Lcom/htc/music/NpCategory;
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2446
    new-instance v7, Lcom/htc/music/NpCategory;

    .end local v7           #npc:Lcom/htc/music/NpCategory;
    const/16 v0, 0x13

    invoke-direct {v7, v0}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 2448
    .restart local v7       #npc:Lcom/htc/music/NpCategory;
    :cond_0
    if-eqz p1, :cond_2

    .line 2449
    invoke-static {p0, v6, v7}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 2452
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2453
    const/4 v6, 0x0

    .line 2455
    .end local v7           #npc:Lcom/htc/music/NpCategory;
    :cond_1
    return v8

    .line 2451
    .restart local v7       #npc:Lcom/htc/music/NpCategory;
    :cond_2
    invoke-static {p0, v6, v7}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_0
.end method

.method protected showDeleteDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "desc"

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 812
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_1

    .line 815
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

    new-instance v3, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$3;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$3;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 846
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 848
    return-void
.end method
