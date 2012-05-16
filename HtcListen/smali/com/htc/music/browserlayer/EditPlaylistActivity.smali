.class public Lcom/htc/music/browserlayer/EditPlaylistActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;
    }
.end annotation


# static fields
.field public static final PLAY_LIST_ID:Ljava/lang/String; = "playlistid"

.field public static final PLAY_LIST_NAME:Ljava/lang/String; = "playlistname"

.field private static TAG:Ljava/lang/String; = null

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final ADD_SONGS:I

.field private final SELECT_ALL:I

.field private final UNSELECT_ALL:I

.field private mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAddSongsBtnListener:Landroid/view/View$OnClickListener;

.field mAsyncQuerying:Z

.field private mCursorCols:[Ljava/lang/String;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mIsAddSongs:Z

.field private mIsDrop:Z

.field public mNewPlaylist:Z

.field private mOriginalPlaylistName:Ljava/lang/String;

.field private mPlayListName:Landroid/widget/AutoCompleteTextView;

.field mPlaylistItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPlaylistMemberCols:[Ljava/lang/String;

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedPlaylistId:Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "[EditPlaylistActivity]"

    sput-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    .line 73
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->ADD_SONGS:I

    .line 75
    const/16 v0, 0x22

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->SELECT_ALL:I

    .line 77
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->UNSELECT_ALL:I

    .line 90
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapterSent:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    .line 102
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    .line 112
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z

    .line 113
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsAddSongs:Z

    .line 391
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 1365
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$5;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAddSongsBtnListener:Landroid/view/View$OnClickListener;

    .line 1371
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setLandscapeIMEbutton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->goToPicker()V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/EditPlaylistActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSong(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/EditPlaylistActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/EditPlaylistActivity;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method private addSong(I)V
    .locals 2
    .parameter "audioId"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    invoke-direct {v1, p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    return-void
.end method

.method private createPlaylist(Ljava/lang/String;)I
    .locals 7
    .parameter "name"

    .prologue
    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 302
    :cond_0
    const/4 v0, -0x1

    .line 322
    :cond_1
    :goto_0
    return v0

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 305
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, id:I
    const/4 v2, 0x0

    .line 307
    .local v2, uri:Landroid/net/Uri;
    if-ltz v0, :cond_3

    .line 308
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 309
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    goto :goto_0

    .line 311
    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 312
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 314
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Landroid/net/Uri;)I

    move-result v0

    .line 317
    if-lez v0, :cond_1

    .line 318
    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifyCreatePlaylist(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getCheckedItemCount()I
    .locals 4

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 605
    .local v0, count:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    .line 606
    .local v2, item:Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
    iget-boolean v3, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    if-eqz v3, :cond_0

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    .end local v2           #item:Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
    :cond_1
    return v0
.end method

.method private getListCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 645
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;[Ljava/lang/String;)V

    .line 646
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 647
    const/4 v0, 0x0

    .line 648
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    return-object v0
.end method

.method private getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "async"
    .parameter "playlistId"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1427
    const/4 v9, 0x0

    .line 1428
    .local v9, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    .line 1429
    const-string v0, "title COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    .line 1430
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1431
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    const-string v0, "play_order"

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    .line 1434
    if-eqz p1, :cond_1

    .line 1435
    const-string v0, "external"

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const/4 v9, 0x0

    .line 1454
    :goto_1
    return-object v9

    .end local v10           #where:Ljava/lang/StringBuilder;
    :cond_0
    move v0, v1

    .line 1428
    goto :goto_0

    .line 1445
    .restart local v10       #where:Ljava/lang/StringBuilder;
    :cond_1
    const-string v0, "external"

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    move-object v3, p0

    move-object v7, v2

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1
.end method

.method private getPlaylistId(Landroid/net/Uri;)I
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 326
    if-nez p1, :cond_1

    .line 327
    const/4 v7, -0x1

    .line 340
    :cond_0
    :goto_0
    return v7

    .line 329
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v5, "name"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 332
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 333
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 338
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPlaylistId(Ljava/lang/String;)I
    .locals 9
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 344
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 350
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 351
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 356
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 357
    const/4 v6, 0x0

    .line 359
    :cond_1
    return v7
.end method

.method private getTrackCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, ret:Landroid/database/Cursor;
    const-string v1, "title COLLATE NOCASE ASC"

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    .line 631
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->init(Landroid/database/Cursor;)V

    .line 641
    :goto_0
    return-object v0

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 636
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 637
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 639
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private goToPicker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 521
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "playlisturi"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v1, "pickermode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    const-string v1, "isshowextratabs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    const-class v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 526
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 527
    return-void
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 1321
    if-nez p1, :cond_1

    .line 1322
    const/4 p1, 0x0

    .line 1362
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1324
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-nez v0, :cond_0

    .line 1327
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1328
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 1334
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1336
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1337
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1338
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1339
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1346
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 1349
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1351
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1352
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1353
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1354
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1355
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1361
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1362
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    move-object p1, v0

    goto/16 :goto_0
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1409
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1415
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1416
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1417
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1418
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1419
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1421
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1423
    :cond_1
    return-object v7
.end method

.method private renamePlaylist(Ljava/lang/String;)Z
    .locals 16
    .parameter "name"

    .prologue
    .line 1500
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1502
    :cond_0
    const/4 v4, 0x0

    .line 1545
    :goto_0
    return v4

    .line 1505
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1506
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1507
    .local v13, values:Landroid/content/ContentValues;
    const-string v4, "name"

    move-object/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v14

    invoke-virtual {v1, v4, v13, v7, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1514
    const-string v4, "content://com.htc.launcher.settings/favorites"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1515
    .local v2, launcherUri:Landroid/net/Uri;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const-string v7, "title"

    aput-object v7, v3, v4

    const/4 v4, 0x2

    const-string v7, "intent"

    aput-object v7, v3, v4

    .line 1518
    .local v3, cursorCols:[Ljava/lang/String;
    const-string v4, "title =?"

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    aput-object v9, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1522
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 1523
    const-string v4, "intent"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1524
    .local v12, intentIndex:I
    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1526
    .local v11, idIndex:I
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1528
    :try_start_0
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1529
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.htc.media/playlist"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "playlist"

    invoke-virtual {v8, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1532
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1533
    .local v5, id:J
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v9}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1534
    sget-object v4, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "home playlist id = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is changed"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1536
    .end local v5           #id:J
    .end local v8           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1540
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1545
    .end local v11           #idIndex:I
    .end local v12           #intentIndex:I
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1542
    :cond_4
    sget-object v4, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v7, "borranx cursor is null or zero"

    invoke-static {v4, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setLandscapeIMEbutton()V
    .locals 5

    .prologue
    .line 490
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 491
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 492
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_1

    .line 501
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 494
    .restart local v0       #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 496
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    .line 497
    .local v1, result:Z
    sget-object v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set SIP on result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addSongList([I)V
    .locals 4
    .parameter "list"

    .prologue
    .line 618
    if-nez p1, :cond_1

    .line 624
    :cond_0
    return-void

    .line 621
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    aget v3, p1, v0

    invoke-direct {v2, p0, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 3
    .parameter "newCursor"

    .prologue
    const/4 v2, 0x1

    .line 461
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-nez v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    instance-of v1, p1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 474
    :goto_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setContentView(I)V

    .line 476
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 477
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 480
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 481
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 483
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->initButtonsPanel()V

    goto :goto_0

    .line 467
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 468
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method initButtonsPanel()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1252
    const v9, 0x7f08003c

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1253
    .local v6, savePanel:Landroid/view/View;
    const v9, 0x7f08003e

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 1254
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v9, 0x7f07005e

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1256
    const/4 v4, 0x0

    .line 1257
    .local v4, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v9, :cond_0

    .line 1258
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v4, 0x0

    .line 1261
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1
    move v2, v8

    .line 1262
    .local v2, empty:Z
    :goto_1
    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v3

    .line 1264
    .local v3, id:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 1265
    const/4 v5, 0x0

    .line 1266
    .local v5, sameName:Z
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1267
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1269
    :cond_2
    if-nez v2, :cond_3

    if-ltz v3, :cond_4

    :cond_3
    if-eqz v5, :cond_7

    :cond_4
    :goto_2
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1276
    .end local v5           #sameName:Z
    :goto_3
    new-instance v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$3;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$3;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    const v8, 0x7f08003d

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1284
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v8, 0x20c013d

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1285
    new-instance v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$4;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$4;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1291
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    return-void

    .line 1258
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #empty:Z
    .end local v3           #id:I
    :cond_5
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    move v2, v7

    .line 1261
    goto :goto_1

    .restart local v2       #empty:Z
    .restart local v3       #id:I
    .restart local v5       #sameName:Z
    :cond_7
    move v8, v7

    .line 1269
    goto :goto_2

    .line 1272
    .end local v5           #sameName:Z
    :cond_8
    if-nez v2, :cond_9

    if-gez v3, :cond_9

    :goto_4
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_3

    :cond_9
    move v8, v7

    goto :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 585
    packed-switch p1, :pswitch_data_0

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 588
    :pswitch_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getTabActivityResult(Landroid/content/Context;I)I

    move-result p2

    .line 589
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 590
    .local v1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 591
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 592
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 593
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsAddSongs:Z

    .line 594
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSongList([I)V

    .line 595
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;

    goto :goto_0

    .line 585
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 454
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 455
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 510
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 121
    sget-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->requestWindowFeature(I)Z

    .line 124
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setVolumeControlStream(I)V

    .line 126
    const/4 v9, 0x0

    .line 128
    .local v9, defaultPlaylistName:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 129
    const-string v0, "playlistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    const-string v0, "playlist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    .line 136
    :goto_0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;

    .line 145
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 149
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    .line 160
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->setActivity(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    .line 162
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    :goto_1
    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setTitle(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->initButtonsPanel()V

    .line 214
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v10, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_1

    .line 222
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 225
    :cond_1
    sget-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 132
    .end local v10           #f:Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlistname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 133
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    :cond_3
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030024

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-array v6, v2, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/EditPlaylistActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    .line 178
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 183
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 198
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_1

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AddToPlaylistData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    .line 203
    .local v11, songList:[I
    if-eqz v11, :cond_5

    .line 204
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSongList([I)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    .line 207
    :cond_5
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 506
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 537
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 538
    const/16 v0, 0x1e

    const v1, 0x7f070090

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 541
    const/16 v0, 0x22

    const v1, 0x20c013a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 543
    const/16 v0, 0x23

    const v1, 0x20c013b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 373
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 375
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 380
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 385
    :cond_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    .line 386
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 388
    :cond_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    .line 389
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 517
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 565
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 580
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 567
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->goToPicker()V

    goto :goto_0

    .line 571
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    move v0, v3

    .line 572
    .local v0, check:Z
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    .line 573
    .local v2, playlistItem:Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
    iput-boolean v0, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    goto :goto_2

    .line 571
    .end local v0           #check:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #playlistItem:Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 576
    .restart local v0       #check:Z
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 433
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    .line 435
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 437
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 439
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 550
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getCheckedItemCount()I

    move-result v0

    .line 551
    .local v0, checkedCount:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v4, :cond_3

    move v1, v3

    .line 552
    .local v1, count:I
    :goto_0
    const/16 v4, 0x22

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 553
    .local v2, item:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 554
    if-eq v1, v0, :cond_4

    move v4, v5

    :goto_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 555
    :cond_0
    const/16 v4, 0x23

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 556
    if-eqz v2, :cond_2

    .line 557
    if-lez v0, :cond_1

    move v3, v5

    :cond_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 558
    :cond_2
    return v5

    .line 551
    .end local v1           #count:I
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    .restart local v1       #count:I
    .restart local v2       #item:Landroid/view/MenuItem;
    :cond_4
    move v4, v3

    .line 554
    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 408
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    .line 409
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 411
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$2;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->showSpinner(Z)V

    .line 425
    :cond_3
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    .line 365
    .local v0, a:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapterSent:Z

    .line 366
    return-object v0
.end method

.method public onSaveClick()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 1181
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1182
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 1183
    :cond_0
    const v8, 0x7f0700af

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1239
    :goto_0
    return-void

    .line 1189
    :cond_1
    const/4 v3, 0x0

    .line 1190
    .local v3, isDeleted:Z
    const/4 v6, 0x0

    .line 1192
    .local v6, newPlaylistSize:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 1193
    .local v7, playlistItemListSize:I
    move v0, v7

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 1194
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget-boolean v8, v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    if-eqz v8, :cond_2

    .line 1195
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1196
    const/4 v3, 0x1

    .line 1193
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1200
    :cond_3
    const/4 v2, -0x1

    .line 1201
    .local v2, id:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 1202
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->renamePlaylist(Ljava/lang/String;)Z

    .line 1204
    if-nez v3, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsAddSongs:Z

    if-nez v8, :cond_4

    .line 1205
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v11, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setResult(ILandroid/content/Intent;)V

    .line 1206
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->finish()V

    goto :goto_0

    .line 1210
    :cond_4
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/MusicUtils;->deletePlaylistTrack(Landroid/content/Context;J)V

    .line 1211
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1217
    :goto_2
    if-ne v2, v11, :cond_6

    .line 1218
    const v8, 0x7f0700b0

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1214
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->createPlaylist(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 1223
    :cond_6
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1225
    new-array v5, v6, [I

    .line 1227
    .local v5, newPlaylistItems:[I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_7

    .line 1228
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget v8, v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mTrackId:I

    aput v8, v5, v0

    .line 1227
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1231
    :cond_7
    int-to-long v8, v2

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    invoke-static {p0, v5, v8, v9, v10}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    .line 1232
    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v2

    .line 1233
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1234
    .local v1, iSavePlaylist:Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const-string v8, "playlistid"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1236
    const-string v8, "playlistname"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    invoke-virtual {p0, v11, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setResult(ILandroid/content/Intent;)V

    .line 1238
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 446
    const-string v0, "playlistname"

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 449
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 12
    .parameter "defaultTitle"

    .prologue
    const v11, 0x7f070053

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, editTextTitle:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 233
    move-object v0, p1

    .line 234
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    .line 256
    :goto_0
    const v5, 0x7f080037

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    .line 257
    .local v2, leftHeaderImage:Lcom/htc/widget/HeaderBarImage;
    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v2, v10}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 261
    :cond_0
    const v5, 0x7f080040

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarImage;

    .line 262
    .local v4, rightHeaderImageBtn:Lcom/htc/widget/HeaderBarImage;
    if-eqz v4, :cond_1

    .line 263
    invoke-virtual {v4, v8}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 264
    const v5, 0x208087b

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 265
    const v5, 0x7f07001f

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 266
    invoke-virtual {v4, v8}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 267
    invoke-virtual {v4, v8}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    .line 268
    invoke-virtual {v4, v8}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 269
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAddSongsBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    if-eqz v5, :cond_8

    .line 272
    invoke-virtual {v4, v10}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 279
    :cond_1
    :goto_1
    const v5, 0x7f08008e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarInput;

    .line 280
    .local v1, inputBox:Lcom/htc/widget/HeaderBarInput;
    invoke-virtual {v1, v8}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 282
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    .line 283
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_9

    .line 284
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    const v6, 0x7f0700a2

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 285
    if-eqz v0, :cond_2

    .line 286
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 289
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v8}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 291
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 292
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 298
    :goto_2
    return-void

    .line 237
    .end local v1           #inputBox:Lcom/htc/widget/HeaderBarInput;
    .end local v2           #leftHeaderImage:Lcom/htc/widget/HeaderBarImage;
    .end local v4           #rightHeaderImageBtn:Lcom/htc/widget/HeaderBarImage;
    :cond_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 238
    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->nameForId(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    goto/16 :goto_0

    .line 242
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "playlistcount"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 243
    .local v3, playlistcount:I
    if-ltz v3, :cond_6

    .line 244
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 247
    :cond_6
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    if-eqz v5, :cond_7

    .line 248
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_7
    sget-object v5, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v6, "setTitle, playlistcount should not be < 0"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    .end local v3           #playlistcount:I
    .restart local v2       #leftHeaderImage:Lcom/htc/widget/HeaderBarImage;
    .restart local v4       #rightHeaderImageBtn:Lcom/htc/widget/HeaderBarImage;
    :cond_8
    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto/16 :goto_1

    .line 295
    .restart local v1       #inputBox:Lcom/htc/widget/HeaderBarInput;
    :cond_9
    sget-object v5, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v6, "setTitle, mPlayListName is null!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public showSpinner(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 1550
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 1551
    check-cast v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 1552
    .local v2, tabActivity:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    invoke-virtual {v2, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryProgressVisible(Z)V

    .line 1559
    .end local v2           #tabActivity:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    const v3, 0x7f08003f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarTall;

    .line 1555
    .local v0, headerLayout:Lcom/htc/widget/HeaderBarTall;
    if-eqz v0, :cond_0

    .line 1556
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarTall;->setProgressVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method
