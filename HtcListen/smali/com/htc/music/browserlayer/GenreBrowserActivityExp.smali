.class public Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
.super Lcom/htc/music/widget/HTCListActivity;
.source "GenreBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC, track"

.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final GENRE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static NODE_INDEX_ALBUMS:I = 0x0

.field private static NODE_INDEX_ARTIST:I = 0x0

.field private static NODE_INDEX_SONGS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[GenreBrowserActivityExp]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final TYPE_ALBUM:I = 0x2

.field private static final TYPE_ARTIST:I = 0x1

.field private static final TYPE_GENRES:I = 0x0

.field private static final UNKNOWN_GENRE:J = -0x1L


# instance fields
.field albumTitleLen:I

.field private mActivityResultBacked:Z

.field mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

.field private mAdapterSent:Z

.field mAlbumCols:[Ljava/lang/String;

.field private mAlbumId:Ljava/lang/String;

.field mArtistCols:[Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field mBusy:Z

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDeleteType:I

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFilter:Ljava/lang/String;

.field mGenreCols:[Ljava/lang/String;

.field private mGenresId:Ljava/lang/String;

.field private mGenresName:Ljava/lang/String;

.field private mIsDestroy:Z

.field private mIsInited:Z

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
    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->NODE_INDEX_SONGS:I

    .line 87
    const/4 v0, 0x1

    sput v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->NODE_INDEX_ALBUMS:I

    .line 88
    const/4 v0, 0x2

    sput v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->NODE_INDEX_ARTIST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Lcom/htc/music/widget/HTCListActivity;-><init>()V

    .line 101
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    .line 107
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "album_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSongCols:[Ljava/lang/String;

    .line 125
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenreCols:[Ljava/lang/String;

    .line 129
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    .line 131
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    .line 133
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 135
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mBusy:Z

    .line 139
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mActivityResultBacked:Z

    .line 145
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsInited:Z

    .line 147
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsDestroy:Z

    .line 149
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mLayoutlist:[I

    .line 160
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    .line 216
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->scanning:Z

    .line 218
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->albumTitleLen:I

    .line 334
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAsyncQuerying:Z

    .line 340
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$1;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$2;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    .line 441
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    .line 442
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    .line 443
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    .line 444
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    .line 445
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    .line 446
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    .line 447
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;

    .line 906
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 907
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDeleteType:I

    .line 2510
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$5;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 2515
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$6;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 2838
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    .line 2840
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mFilter:Ljava/lang/String;

    .line 2841
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->preSearchTime:J

    .line 2842
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$7;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    return-void

    .line 149
    :array_0
    .array-data 0x4
        0x84t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
        0x85t 0x0t 0x9t 0x2t
        0x75t 0x0t 0x9t 0x2t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->checkDataset(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsInited:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setTitle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setActivitTitle(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDeleteType:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method private afterDeleting()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 960
    const-string v4, "[GenreBrowserActivityExp]"

    const-string v5, "@@@@ afterDeleting"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v4, :cond_0

    .line 963
    const/4 v2, 0x0

    .line 964
    .local v2, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    const/4 v3, -0x1

    .line 966
    .local v3, parentPosition:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 967
    .local v0, level:I
    packed-switch v0, :pswitch_data_0

    .line 982
    :goto_0
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1000
    .end local v0           #level:I
    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v3           #parentPosition:I
    :cond_0
    :goto_1
    return-void

    .line 969
    .restart local v0       #level:I
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    .restart local v3       #parentPosition:I
    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    iget v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v2

    .line 970
    iget v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    .line 971
    goto :goto_0

    .line 973
    :pswitch_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 974
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 975
    goto :goto_0

    .line 977
    :pswitch_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .end local v2           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 978
    .restart local v2       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v3, v2, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    goto :goto_0

    .line 985
    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 986
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    .line 990
    :cond_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v1

    .line 991
    .local v1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    iget v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v6, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-eq v4, v6, :cond_5

    .line 993
    :cond_4
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->delRootNode(I)V

    goto :goto_1

    .line 997
    :cond_5
    iget v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->delChildNode(I)V

    goto :goto_1

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkDataset(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1282
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "@@@@ checkDataset()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    if-nez p1, :cond_0

    .line 1285
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "@@@@ checkDataset() cursor is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const/4 v1, 0x0

    .line 1297
    :goto_0
    return-object v1

    .line 1289
    :cond_0
    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@ checkDataset() cursor - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mergeUnknown(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1291
    .local v0, cur:Landroid/database/Cursor;
    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@ checkDataset() cur - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->checkGenres(Landroid/database/Cursor;)V

    .line 1294
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1295
    const/4 v0, 0x0

    .line 1297
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private checkGenre(I)V
    .locals 6
    .parameter "genreId"

    .prologue
    const/4 v5, 0x0

    .line 1157
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    .line 1161
    .local v0, list:[I
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    .line 1162
    :cond_2
    sget-object v2, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1164
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkGenres(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 1154
    return-void
.end method

.method private checkIfDatasetChanged()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->isDatesetChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsInited:Z

    if-nez v1, :cond_0

    .line 318
    :cond_2
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "@@@@ Dataset changed!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 320
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 321
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->checkGenres(Landroid/database/Cursor;)V

    .line 322
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 324
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 325
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setDatasetChanged(Z)V

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsInited:Z

    goto :goto_0
.end method

.method private getDeleteDesc()Ljava/lang/String;
    .locals 13

    .prologue
    const v12, 0x7f070046

    const v11, 0x7f070014

    const v8, 0x7f070013

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 671
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v7, :cond_0

    .line 672
    const-string v3, ""

    .line 763
    :goto_0
    return-object v3

    .line 674
    :cond_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v5, v7, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 675
    .local v5, level:I
    packed-switch v5, :pswitch_data_0

    .line 763
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 678
    :pswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 679
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 683
    .local v4, format:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    .line 684
    .local v3, desc:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    const-string v8, "<unknown>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 685
    :cond_2
    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 681
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #format:Ljava/lang/String;
    goto :goto_1

    .line 687
    .restart local v3       #desc:Ljava/lang/String;
    :cond_4
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 693
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 694
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 698
    .restart local v4       #format:Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    .line 699
    .restart local v3       #desc:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    const-string v8, "<unknown>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 700
    :cond_5
    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 696
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #format:Ljava/lang/String;
    goto :goto_2

    .line 702
    .restart local v3       #desc:Ljava/lang/String;
    :cond_7
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 719
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/HtcListNode;

    .line 720
    .local v6, parent:Lcom/htc/music/browserlayer/HtcListNode;
    iget v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v7, v9, :cond_b

    .line 721
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 723
    .local v2, cursor:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 724
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    .line 725
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, albumName:Ljava/lang/String;
    if-eqz v0, :cond_8

    const-string v7, "<unknown>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 727
    :cond_8
    const v7, 0x7f070044

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    :cond_9
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 730
    const v7, 0x7f070018

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 734
    .restart local v4       #format:Ljava/lang/String;
    :goto_3
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 735
    .restart local v3       #desc:Ljava/lang/String;
    goto/16 :goto_0

    .line 732
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :cond_a
    const v7, 0x7f070017

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #format:Ljava/lang/String;
    goto :goto_3

    .line 738
    .end local v0           #albumName:Ljava/lang/String;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v4           #format:Ljava/lang/String;
    :cond_b
    iget v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 739
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v2, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 740
    .restart local v2       #cursor:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 741
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;

    .line 742
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, artisName:Ljava/lang/String;
    if-eqz v1, :cond_c

    const-string v7, "<unknown>"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 744
    :cond_c
    const v7, 0x7f070043

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 747
    :cond_d
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 748
    const v7, 0x7f070016

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 753
    .restart local v4       #format:Ljava/lang/String;
    :goto_4
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 754
    .restart local v3       #desc:Ljava/lang/String;
    goto/16 :goto_0

    .line 750
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #format:Ljava/lang/String;
    :cond_e
    const v7, 0x7f070015

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #format:Ljava/lang/String;
    goto :goto_4

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getGenresCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, v0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 1169
    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1170
    const/16 p2, 0x0

    .line 1172
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1173
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "name != \'\' AND name NOT LIKE \'(%)\' "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    const/4 v7, 0x0

    .line 1181
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_2

    const/4 v13, 0x1

    .line 1183
    .local v13, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1184
    const v1, 0x7f070046

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 1185
    .local v16, unknownGenre:Ljava/lang/String;
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1186
    .local v14, searchWords:[Ljava/lang/String;
    array-length v1, v14

    new-array v7, v1, [Ljava/lang/String;

    .line 1187
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 1188
    .local v9, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 1189
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v14

    if-ge v10, v1, :cond_3

    .line 1190
    aget-object v1, v14, v10

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1191
    const/4 v13, 0x1

    .line 1192
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

    .line 1193
    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keywords("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v7, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1181
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v13           #searchContainsUnkown:Z
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownGenre:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1195
    .restart local v9       #col:Ljava/text/Collator;
    .restart local v10       #i:I
    .restart local v13       #searchContainsUnkown:Z
    .restart local v14       #searchWords:[Ljava/lang/String;
    .restart local v16       #unknownGenre:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    :goto_2
    array-length v1, v14

    if-ge v10, v1, :cond_4

    .line 1196
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    const-string v1, "name LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1202
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownGenre:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1205
    .local v6, whereclause:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1206
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_6

    .line 1207
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAsyncQuerying:Z

    .line 1208
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenreCols:[Ljava/lang/String;

    const-string v8, "name COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    move-object v1, v11

    .line 1223
    :goto_4
    return-object v1

    .line 1211
    :cond_6
    sget-object v4, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenreCols:[Ljava/lang/String;

    const-string v8, "name COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1213
    if-eqz v13, :cond_5

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getUnknownGenre()Landroid/database/Cursor;

    move-result-object v15

    .line 1216
    .local v15, unknown:Landroid/database/Cursor;
    if-nez v15, :cond_7

    if-nez v11, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    .line 1218
    :cond_7
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

.method private getSelectList(ZLcom/htc/music/NpCategory;)[I
    .locals 9
    .parameter "needPrepare"
    .parameter "npc"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 610
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v5, :cond_1

    .line 611
    const/4 v3, 0x0

    .line 667
    :cond_0
    :goto_0
    return-object v3

    .line 613
    :cond_1
    const/4 v3, 0x0

    .line 614
    .local v3, list:[I
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v2, v5, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 615
    .local v2, level:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v1, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 616
    .local v1, cursorPosition:I
    if-eqz v2, :cond_2

    if-ne v2, v7, :cond_4

    .line 617
    :cond_2
    if-eqz p1, :cond_3

    .line 618
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForGenreAndPrepare(Landroid/content/Context;I)[I

    move-result-object v3

    .line 619
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 621
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v3

    goto :goto_0

    .line 639
    :cond_4
    if-ne v2, v8, :cond_0

    .line 640
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 641
    .local v4, parent:Lcom/htc/music/browserlayer/HtcListNode;
    iget v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v5, v7, :cond_6

    .line 642
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v0, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 643
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v5, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 644
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    .line 645
    if-eqz p1, :cond_5

    .line 646
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I

    move-result-object v3

    .line 647
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 649
    :cond_5
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v3

    goto :goto_0

    .line 653
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_6
    iget v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v5, v8, :cond_0

    .line 654
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v0, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 655
    .restart local v0       #cursor:Landroid/database/Cursor;
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v5, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 656
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;

    .line 658
    if-eqz p1, :cond_7

    .line 659
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;I)[I

    move-result-object v3

    .line 660
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto/16 :goto_0

    .line 662
    :cond_7
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v3

    goto/16 :goto_0
.end method

.method private getSelectedItemType()I
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 771
    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v6, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v2

    .line 774
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v0, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 775
    .local v0, level:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 777
    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 780
    goto :goto_0

    .line 783
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    .line 785
    .local v1, parent:Lcom/htc/music/browserlayer/HtcListNode;
    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v3, v5, :cond_2

    move v2, v4

    .line 787
    goto :goto_0

    .line 789
    :cond_2
    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-ne v3, v4, :cond_0

    move v2, v5

    .line 791
    goto :goto_0

    .line 775
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mergeUnknown(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getUnknownGenre()Landroid/database/Cursor;

    move-result-object v1

    .line 1303
    .local v1, unknown:Landroid/database/Cursor;
    move-object v0, p1

    .line 1304
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1305
    const-string v2, "[GenreBrowserActivityExp]"

    const-string v3, "@@@@ mergeUnknown() - not null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    new-instance v0, Landroid/database/MergeCursor;

    .end local v0           #cur:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1310
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_0
    return-object v0
.end method

.method private setActivitTitle(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 2594
    const-string v0, ""

    .line 2596
    .local v0, fancyName:Ljava/lang/CharSequence;
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2599
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setTitle(Ljava/lang/CharSequence;)V

    .line 2601
    return-void
.end method

.method private setContextMenuInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V
    .locals 11
    .parameter "node"
    .parameter "position"

    .prologue
    const v10, 0x7f070046

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 530
    if-nez p1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 534
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 537
    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    .line 538
    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;

    .line 539
    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    .line 540
    iget v6, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 542
    iget v3, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 543
    .local v3, level:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 545
    :pswitch_0
    iget v6, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v6, :cond_2

    .line 546
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    .line 547
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    .line 549
    :cond_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 550
    :cond_3
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto :goto_0

    .line 552
    :cond_4
    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto :goto_0

    .line 557
    :pswitch_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v6, :cond_0

    .line 560
    iget v2, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 561
    .local v2, cursorPos:I
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 562
    .local v4, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v1, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 563
    .local v1, cursor2:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 565
    iget v6, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 566
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    .line 567
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    .line 569
    :cond_5
    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 570
    :cond_6
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto :goto_0

    .line 572
    :cond_7
    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto :goto_0

    .line 583
    .end local v1           #cursor2:Landroid/database/Cursor;
    .end local v2           #cursorPos:I
    .end local v4           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    :pswitch_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v6, :cond_0

    .line 586
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 587
    .restart local v4       #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    invoke-virtual {v4}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    .line 588
    .local v5, parentNode2:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 589
    iget-object v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    .line 590
    iget-object v6, v5, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    .line 592
    iget v6, p1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 593
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    .line 596
    :cond_8
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    .line 597
    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 598
    :cond_9
    iget-object v6, v4, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const v7, 0x7f070099

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 599
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 601
    :cond_a
    const v6, 0x7f070043

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 543
    nop

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
    .line 2589
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setActivitTitle(I)V

    .line 2591
    return-void
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 2735
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method public delChildNode(I)V
    .locals 10
    .parameter "pos"

    .prologue
    const/4 v9, 0x0

    .line 1043
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v7, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 1045
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1046
    .local v3, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    invoke-virtual {v3}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1047
    .local v4, parentNode2:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v7, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1048
    const/4 v0, 0x0

    .line 1051
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v7, v3, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    const v8, 0x7f070099

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1053
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    iget-object v8, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    invoke-static {v7, v8, v9}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$900(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1060
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 1090
    :cond_0
    :goto_1
    return-void

    .line 1057
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(I)Landroid/database/Cursor;
    invoke-static {v7, v8}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 1064
    :cond_2
    iget v5, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 1065
    .local v5, parentPos:I
    const/4 v1, 0x0

    .line 1067
    .local v1, cursorPosition:I
    add-int/lit8 v2, v5, 0x2

    .local v2, i:I
    :goto_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1068
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1070
    .local v6, tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v7, :cond_4

    .line 1088
    .end local v6           #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v7, v9}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setDatasetChanged(Z)V

    .line 1089
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)V

    goto :goto_1

    .line 1073
    .restart local v6       #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_4
    iget v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 1074
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-ne v6, v7, :cond_6

    .line 1067
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1077
    :cond_6
    iget-object v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1078
    iget-object v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1079
    const/4 v7, 0x0

    iput-object v7, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1082
    :cond_7
    iput-object v0, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1083
    iput v1, v6, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 1085
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public delRootNode(I)V
    .locals 11
    .parameter "pos"

    .prologue
    const/4 v10, 0x0

    .line 1003
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v7, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 1005
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1006
    .local v1, genresId:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 1007
    sget-object v7, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v1

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1008
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1011
    .end local v6           #uri:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, v10, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1012
    .local v3, rootCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 1013
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 1040
    :goto_0
    return-void

    .line 1017
    :cond_2
    if-eqz v3, :cond_6

    .line 1018
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 1019
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getCount()I

    move-result v4

    .line 1020
    .local v4, size:I
    const/4 v0, 0x0

    .line 1021
    .local v0, cursorPosition:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_6

    .line 1022
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1023
    .local v5, tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v7, :cond_3

    .line 1024
    iget-object v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1021
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1027
    :cond_4
    iget-object v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1028
    iget-object v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1029
    iput-object v10, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1031
    :cond_5
    iput-object v3, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 1032
    iput v0, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1039
    .end local v0           #cursorPosition:I
    .end local v2           #i:I
    .end local v4           #size:I
    .end local v5           #tmpNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_6
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)V

    goto :goto_0
.end method

.method getUnknownGenre()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1227
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1228
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    const-string v0, " AND is_music>=1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    const/4 v7, 0x0

    .line 1233
    .local v7, ret:Landroid/database/Cursor;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1234
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1238
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1239
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v9, unknownGenre:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1241
    .local v8, unknow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    .end local v7           #ret:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenreCols:[Ljava/lang/String;

    invoke-direct {v7, v0, v9}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1247
    .end local v8           #unknow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v9           #unknownGenre:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .restart local v7       #ret:Landroid/database/Cursor;
    :cond_0
    if-eqz v6, :cond_1

    .line 1248
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1249
    const/4 v6, 0x0

    .line 1251
    :cond_1
    return-object v7
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 397
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "init(Cursor c)"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 408
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showDatabaseError()V

    .line 410
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->closeContextMenu()V

    .line 411
    iget-boolean v1, p0, Lcom/htc/music/widget/HTCListActivity;->mIsExpActivityPaused:Z

    if-nez v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showDatabaseError()V

    .line 403
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->closeContextMenu()V

    goto :goto_0

    .line 415
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 416
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isSystemReady()Z

    .line 417
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setTitle()V

    .line 418
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    .line 422
    :cond_2
    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init(Cursor c) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->hideEmptyErrorView()V

    .line 426
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setFastScrollEnabled(Z)V

    .line 428
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setTextFilterEnabled(Z)V

    .line 429
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 430
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V

    .line 432
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V

    .line 433
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->init(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/database/Cursor;)V

    .line 434
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->updateAlphabetIndex()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)V

    .line 435
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const-string v2, "Genres"

    iput-object v2, v1, Lcom/htc/music/browserlayer/HTCCursorAdapter;->tag:Ljava/lang/String;

    .line 437
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setTitle()V

    .line 438
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "init(Cursor c) ok"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1094
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mActivityResultBacked:Z

    .line 1095
    packed-switch p1, :pswitch_data_0

    .line 1106
    :cond_0
    :goto_0
    return-void

    .line 1097
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1098
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    .line 1099
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 1100
    const-string v2, "playlist"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1101
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1095
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

    .line 801
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 835
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 803
    :sswitch_0
    new-instance v2, Lcom/htc/music/NpCategory;

    invoke-direct {v2, v7}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 804
    .local v2, npc:Lcom/htc/music/NpCategory;
    invoke-direct {p0, v4, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    .line 805
    .local v1, list:[I
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    .line 806
    :cond_1
    if-eqz v1, :cond_0

    .line 807
    invoke-static {p0, v1, v7, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 813
    .end local v1           #list:[I
    .end local v2           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 814
    .local v0, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 815
    const-string v5, "pickermode"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    invoke-virtual {p0, v0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 821
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "playlist"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 822
    .local v3, playlist:I
    const/4 v5, 0x0

    invoke-direct {p0, v7, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    .line 823
    .restart local v1       #list:[I
    if-eqz v1, :cond_0

    .line 824
    int-to-long v5, v3

    invoke-static {p0, v1, v5, v6}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 829
    .end local v1           #list:[I
    .end local v3           #playlist:I
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getSelectedItemType()I

    move-result v5

    iput v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDeleteType:I

    .line 830
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 801
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
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->requestWindowFeature(I)Z

    .line 170
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setVolumeControlStream(I)V

    .line 171
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    .line 172
    iput-boolean v9, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsDestroy:Z

    .line 174
    iput-object p0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    .line 175
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setContentView(I)V

    .line 183
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 185
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-nez v0, :cond_1

    .line 186
    const-string v0, "####"

    const-string v1, "start query"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mNodeList:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mLayoutlist:[I

    const/16 v7, 0x10

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;[II)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    .line 188
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    invoke-direct {p0, v9}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setActivitTitle(I)V

    .line 191
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setActivity(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    .line 192
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V

    .line 208
    const v0, 0x7f07009d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setSearchHint(I)V

    .line 209
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->enableSearch()V

    .line 211
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 214
    :cond_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setActivity(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    .line 195
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setDatesetUpdateCount(I)V

    .line 196
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 198
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 200
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setTitle()V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v7, 0x0

    .line 451
    const/4 v5, 0x5

    const v6, 0x7f07004e

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 452
    const/4 v5, 0x1

    const v6, 0x7f07004f

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 453
    const/16 v5, 0xa

    const v6, 0x20c01fc

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 456
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .local v2, mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v4, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 463
    .local v4, position:I
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    .line 464
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v3

    .line 466
    .local v3, node:Lcom/htc/music/browserlayer/HtcListNode;
    iput v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    .line 467
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    .line 468
    if-eqz v3, :cond_0

    .line 469
    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setContextMenuInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    .line 471
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 472
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 476
    .end local v2           #mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v3           #node:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v4           #position:I
    :cond_0
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v1

    .line 458
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

    .line 2605
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2607
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2608
    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a10

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2609
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2611
    const/16 v0, 0x16

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2613
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 953
    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onDeletionCompleted()V

    .line 954
    const-string v0, "GenreBrowserActivityExp"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDeleteType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 956
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->afterDeleting()V

    .line 957
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapterSent:Z

    if-nez v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 255
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v0, 0x0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->destroy()V

    .line 260
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsDestroy:Z

    .line 267
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_3

    .line 275
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 277
    :cond_3
    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onDestroy()V

    .line 278
    return-void

    .line 247
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 11
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 840
    sparse-switch p1, :sswitch_data_0

    .line 903
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onHtcContextItemSelected(I)Z

    move-result v6

    :cond_0
    :goto_0
    return v6

    .line 842
    :sswitch_0
    new-instance v4, Lcom/htc/music/NpCategory;

    invoke-direct {v4, v9}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 843
    .local v4, npc:Lcom/htc/music/NpCategory;
    invoke-direct {p0, v6, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v3

    .line 844
    .local v3, list:[I
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 v4, 0x0

    .line 845
    :cond_1
    if-eqz v3, :cond_0

    .line 846
    invoke-static {p0, v3, v9, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 852
    .end local v3           #list:[I
    .end local v4           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 853
    .local v2, intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v2, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 854
    const-string v7, "pickermode"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    const-string v7, "AddToPlaylistData"

    const/4 v8, 0x0

    invoke-direct {p0, v9, v8}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 856
    invoke-virtual {p0, v2, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 861
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getSelectedItemType()I

    move-result v5

    .line 862
    .local v5, type:I
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 866
    :pswitch_1
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 867
    :catch_0
    move-exception v1

    .line 868
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "[GenreBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click genre item, NumberFormatException e: "

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

    .line 869
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 870
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "[GenreBrowserActivityExp]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click genre item, RemoteException e: "

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

    .line 876
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_2
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    if-eqz v7, :cond_2

    .line 877
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v0, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 878
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v7, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 879
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    .line 883
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 884
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v8, v9, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditions(III)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 887
    :catch_2
    move-exception v1

    .line 888
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "[GenreBrowserActivityExp]"

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

    .line 886
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_2
    const-string v7, "[GenreBrowserActivityExp]"

    const-string v8, "ADD_TO_QUEUE, long click album item, albumId is null."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 889
    :catch_3
    move-exception v1

    .line 890
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "[GenreBrowserActivityExp]"

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

    .line 898
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v5           #type:I
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getSelectedItemType()I

    move-result v7

    iput v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDeleteType:I

    .line 899
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getDeleteDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 840
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_2
    .end sparse-switch

    .line 862
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 480
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    .line 481
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v4, :cond_0

    .line 482
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v4, p3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getNode(I)Lcom/htc/music/browserlayer/HtcListNode;

    move-result-object v3

    .line 483
    .local v3, node:Lcom/htc/music/browserlayer/HtcListNode;
    iput p3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectPosition:I

    .line 484
    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSelectNode:Lcom/htc/music/browserlayer/HtcListNode;

    .line 485
    if-eqz v3, :cond_0

    .line 486
    invoke-direct {p0, v3, p3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setContextMenuInfo(Lcom/htc/music/browserlayer/HtcListNode;I)V

    .line 491
    const/4 v2, 0x0

    .line 492
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 493
    .local v1, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 494
    .local v0, dlnaMode:I
    if-nez v0, :cond_1

    .line 496
    new-array v2, v9, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v4, 0x7f07004e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const v4, 0x7f070050

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const v4, 0x20c01fc

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 502
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v9, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_0

    .line 522
    .restart local v1       #ids:[I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mMenuTitle:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 526
    .end local v0           #dlnaMode:I
    .end local v1           #ids:[I
    .end local v2           #items:[Ljava/lang/CharSequence;
    .end local v3           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_0
    return v5

    .line 510
    .restart local v0       #dlnaMode:I
    .restart local v1       #ids:[I
    .restart local v2       #items:[Ljava/lang/CharSequence;
    .restart local v3       #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_1
    new-array v2, v6, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v4, 0x7f07004e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const v4, 0x20c01fc

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 515
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v6, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_1

    .restart local v1       #ids:[I
    goto :goto_0

    .line 502
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 515
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 2638
    const/4 v1, 0x0

    .line 2639
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 2640
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2730
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 2648
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 2650
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2725
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2726
    .restart local v1       #intent:Landroid/content/Intent;
    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2640
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 385
    const-string v0, "[GenreBrowserActivityExp]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@ onPause() isDatasetChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->isDatesetChanged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->isDatesetChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setDatasetChanged(Z)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setAutoRequery(ZZ)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 392
    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onPause()V

    .line 393
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 2618
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2623
    .local v0, enabled:Ljava/lang/Boolean;
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2624
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 2625
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2626
    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2627
    if-eqz v1, :cond_1

    .line 2628
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2629
    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2630
    if-eqz v1, :cond_2

    .line 2631
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2633
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 2618
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    invoke-super {p0}, Lcom/htc/music/widget/HTCListActivity;->onResume()V

    .line 283
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setTitle()V

    .line 284
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0, v4, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setAutoRequery(ZZ)V

    .line 286
    const-string v0, "[GenreBrowserActivityExp]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@ isDatesetChanged? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->isDatesetChanged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "@@@@ onResume()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "[GenreBrowserActivityExp]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@ isAsyncQuerying? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->isAsyncQuerying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "[GenreBrowserActivityExp]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@ mActivityResultBacked? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mActivityResultBacked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "[GenreBrowserActivityExp]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@ mIsInited? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mActivityResultBacked:Z

    if-nez v0, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->checkIfDatasetChanged()V

    .line 299
    :cond_1
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mActivityResultBacked:Z

    .line 301
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showSpinner(Z)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_4
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showSpinner(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outcicle"

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/htc/music/widget/HTCListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 2821
    packed-switch p2, :pswitch_data_0

    .line 2836
    :cond_0
    :goto_0
    return-void

    .line 2823
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v0, :cond_1

    .line 2824
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 2825
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 2828
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v0, :cond_0

    .line 2829
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setAutoRequery(Z)V

    goto :goto_0

    .line 2832
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    .line 2821
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
    .line 2815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->preSearchTime:J

    .line 2816
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mFilter:Ljava/lang/String;

    .line 2817
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2818
    return-void
.end method

.method public playAllAction(Z)Z
    .locals 24
    .parameter "forceShuffle"

    .prologue
    .line 2739
    const/4 v14, 0x0

    .line 2740
    .local v14, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 2741
    .local v23, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2746
    .local v5, whereclause:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const-string v7, "title COLLATE NOCASE ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 2750
    .local v22, results:Landroid/database/Cursor;
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "name COLLATE NOCASE ASC"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2754
    .local v17, genres:Landroid/database/Cursor;
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2756
    :cond_1
    if-eqz v22, :cond_2

    .line 2757
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2758
    const/16 v22, 0x0

    .line 2760
    :cond_2
    if-eqz v17, :cond_3

    .line 2761
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2762
    const/16 v17, 0x0

    .line 2764
    :cond_3
    const/4 v2, 0x1

    .line 2810
    :goto_0
    return v2

    .line 2766
    :cond_4
    const/4 v14, 0x0

    .line 2767
    if-nez v17, :cond_7

    const/16 v16, 0x0

    .line 2768
    .local v16, genreCount:I
    :goto_1
    move/from16 v20, v16

    .line 2769
    .local v20, len:I
    if-eqz v22, :cond_5

    .line 2770
    add-int/lit8 v20, v20, 0x1

    .line 2771
    move-object/from16 v14, v22

    .line 2774
    :cond_5
    move/from16 v0, v20

    new-array v15, v0, [Landroid/database/Cursor;

    .line 2775
    .local v15, cursors:[Landroid/database/Cursor;
    if-eqz v22, :cond_6

    .line 2777
    add-int/lit8 v2, v20, -0x1

    aput-object v22, v15, v2

    .line 2779
    :cond_6
    if-eqz v17, :cond_9

    .line 2780
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2781
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2782
    .local v13, colidx:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 2783
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2784
    .local v18, gid:I
    const-string v2, "external"

    move/from16 v0, v18

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "album COLLATE NOCASE ASC, track"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2788
    .local v12, c:Landroid/database/Cursor;
    aput-object v12, v15, v19

    .line 2789
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 2782
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 2767
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #colidx:I
    .end local v15           #cursors:[Landroid/database/Cursor;
    .end local v16           #genreCount:I
    .end local v18           #gid:I
    .end local v19           #i:I
    .end local v20           #len:I
    :cond_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v16

    goto :goto_1

    .line 2791
    .restart local v13       #colidx:I
    .restart local v15       #cursors:[Landroid/database/Cursor;
    .restart local v16       #genreCount:I
    .restart local v19       #i:I
    .restart local v20       #len:I
    :cond_8
    new-instance v14, Landroid/database/MergeCursor;

    .end local v14           #cursor:Landroid/database/Cursor;
    invoke-direct {v14, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 2794
    .end local v13           #colidx:I
    .end local v19           #i:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_9
    if-eqz v14, :cond_b

    .line 2795
    const/16 v21, 0x0

    .line 2796
    .local v21, npc:Lcom/htc/music/NpCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mFilter:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 2797
    new-instance v21, Lcom/htc/music/NpCategory;

    .end local v21           #npc:Lcom/htc/music/NpCategory;
    const/16 v2, 0x11

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 2799
    .restart local v21       #npc:Lcom/htc/music/NpCategory;
    :cond_a
    if-eqz p1, :cond_d

    .line 2800
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 2803
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2804
    const/4 v14, 0x0

    .line 2806
    .end local v21           #npc:Lcom/htc/music/NpCategory;
    :cond_b
    if-eqz v17, :cond_c

    .line 2807
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2808
    const/16 v17, 0x0

    .line 2810
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2802
    .restart local v21       #npc:Lcom/htc/music/NpCategory;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_3
.end method

.method protected showDeleteDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "desc"

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 910
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 912
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v1, :cond_1

    .line 913
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

    new-instance v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$3;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$3;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 945
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 946
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 948
    return-void
.end method
