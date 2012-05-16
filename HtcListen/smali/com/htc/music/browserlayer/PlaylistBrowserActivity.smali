.class public Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_SILDER_STATE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.silder_change"

.field private static final ADD_PLAYLIST:J = -0x4L

.field private static final ALL_SONGS_PLAYLIST:I = -0x2

.field private static final CHANGE_WEEKS:I = 0x1b

.field private static final DELETE_CURRENT_PLAYLIST:I = 0x18

.field private static final DELETE_PLAYLISTS:I = 0x1f

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final EDIT_PLAYLIST:I = 0x19

.field public static final EXTRA_SILDER_STATE:Ljava/lang/String; = "silder_state"

.field private static final FINISH_DELAY:I = 0x64

.field public static final LAUNCH_ADD_TO_PLAYLIST:Ljava/lang/String; = "com.htc.music.add_to_playlist"

.field private static final NEW_PLAYLIST:I = 0x1e

.field private static final PLAYLIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final RECENT_PLAYLIST:I = -0x5

.field private static final RENAME_PLAYLIST:I = 0x1a

.field private static final SELECT_ALL:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "[PlaylistBrowserActivity]"

.field private static final UNSELECT_ALL:I = 0x1d


# instance fields
.field handler:Landroid/os/Handler;

.field private list:[I

.field private mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

.field mAdapterSent:Z

.field private mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

.field private mAddToPlaylistData:[I

.field mAsyncQuerying:Z

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mDelayFinishHandler:Landroid/os/Handler;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mExitByErrorIntent:Z

.field private mFilter:Ljava/lang/String;

.field private mHeaderCount:I

.field mLowerSearchFilter:Ljava/lang/String;

.field private mPickerMode:I

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mPlaylistList:Lcom/htc/widget/HtcListView;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRecentPlayedPos:I

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field menuOpened:Z

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    .line 124
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 139
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    .line 368
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 405
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->menuOpened:Z

    .line 408
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelayFinishHandler:Landroid/os/Handler;

    .line 1087
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    .line 1450
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->handler:Landroid/os/Handler;

    .line 1465
    iput-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    .line 1467
    iput v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    .line 1469
    iput-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 1471
    iput-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mFilter:Ljava/lang/String;

    .line 1472
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->preSearchTime:J

    .line 1473
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$9;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 1484
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAsyncQuerying:Z

    .line 1550
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$11;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->list:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelayFinishHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->createNewPlaylist()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->dialog_OnClick_Local(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->dialog_OnClick_Dlna(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private applyMenuStatus(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 569
    .local v3, listItems:Landroid/util/SparseBooleanArray;
    const/16 v5, 0x1d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 571
    .local v2, item:Landroid/view/MenuItem;
    const/4 v0, 0x0

    .line 572
    .local v0, counter:I
    if-eqz v3, :cond_1

    .line 573
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 574
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 575
    add-int/lit8 v0, v0, 0x1

    .line 573
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1           #i:I
    :cond_1
    if-eqz v2, :cond_2

    .line 580
    if-lez v0, :cond_4

    .line 581
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 587
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v4

    .line 588
    .local v4, totalListNum:I
    const/16 v5, 0x1c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 589
    if-eqz v2, :cond_3

    .line 590
    if-ne v0, v4, :cond_5

    .line 591
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 596
    :cond_3
    :goto_2
    return-void

    .line 583
    .end local v4           #totalListNum:I
    :cond_4
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 593
    .restart local v4       #totalListNum:I
    :cond_5
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private checkPlaylistCount()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1557
    const/4 v6, 0x0

    .line 1558
    .local v6, count:I
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1559
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1561
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1562
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1563
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1566
    :cond_0
    return v6
.end method

.method private createNewPlaylist()V
    .locals 4

    .prologue
    .line 1488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1489
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1490
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v2, :cond_0

    .line 1491
    const-string v2, "addtrack"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1493
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 1494
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1495
    .local v1, playlistCount:I
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 1496
    add-int/lit8 v1, v1, -0x1

    .line 1498
    :cond_1
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    if-ltz v2, :cond_2

    .line 1499
    add-int/lit8 v1, v1, -0x1

    .line 1500
    :cond_2
    const-string v2, "playlistcount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1503
    .end local v1           #playlistCount:I
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    if-eqz v2, :cond_4

    .line 1504
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1507
    :cond_4
    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1508
    return-void
.end method

.method private dialog_OnClick_Dlna(I)V
    .locals 9
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 955
    packed-switch p1, :pswitch_data_0

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 961
    :pswitch_0
    iget-wide v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v6, -0x4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 963
    iget-wide v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v6, -0x5

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 965
    :try_start_0
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "[PlaylistBrowserActivity]"

    const-string v5, "Exception when playing recent played list."

    invoke-static {v4, v5, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 970
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v4, Lcom/htc/music/NpCategory;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    move-result-object v2

    .line 972
    .local v2, npc:Lcom/htc/music/NpCategory;
    iget-wide v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {p0, v4, v5, v2}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    goto :goto_0

    .line 979
    .end local v2           #npc:Lcom/htc/music/NpCategory;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 980
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 981
    const-string v4, "pickermode"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    invoke-virtual {p0, v1, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 987
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 990
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 991
    const v4, 0x7f070033

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 994
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v4, :cond_0

    .line 995
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 1001
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1002
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1003
    const-string v4, "playlist"

    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    const/16 v4, 0x19

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 955
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dialog_OnClick_Local(I)V
    .locals 10
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 884
    packed-switch p1, :pswitch_data_0

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 890
    :pswitch_0
    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v7, -0x4

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 892
    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v7, -0x5

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 894
    :try_start_0
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 895
    :catch_0
    move-exception v1

    .line 896
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "[PlaylistBrowserActivity]"

    const-string v6, "Exception when playing recent played list."

    invoke-static {v5, v6, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 899
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v5, Lcom/htc/music/NpCategory;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-wide v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    move-result-object v3

    .line 901
    .local v3, npc:Lcom/htc/music/NpCategory;
    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {p0, v5, v6, v3}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    goto :goto_0

    .line 908
    .end local v3           #npc:Lcom/htc/music/NpCategory;
    :pswitch_1
    iget-wide v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 910
    .local v0, addToPlaylistData:[I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 911
    .local v2, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 912
    const-string v5, "pickermode"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    const-string v5, "AddToPlaylistData"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 914
    invoke-virtual {p0, v2, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 919
    .end local v0           #addToPlaylistData:[I
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    :try_start_1
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v6, 0x3

    iget-wide v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    long-to-int v7, v7

    invoke-interface {v5, v6, v7}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 920
    :catch_1
    move-exception v1

    .line 921
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "[PlaylistBrowserActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADD_TO_QUEUE, long click playlist item, RemoteException e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 927
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_3
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 930
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 931
    const v5, 0x7f070033

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 934
    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v5, :cond_0

    .line 935
    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_0

    .line 941
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 942
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 943
    const-string v5, "playlist"

    iget-wide v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    const/16 v5, 0x19

    invoke-virtual {p0, v2, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 884
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    const/16 v3, 0x25

    const/4 v1, 0x0

    .line 1095
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    const/4 v6, 0x0

    .line 1100
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1101
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1102
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 1103
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 1104
    .local v8, col:Ljava/text/Collator;
    invoke-virtual {v8, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 1105
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v11, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 1105
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1108
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 1109
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1115
    .end local v8           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 1116
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAsyncQuerying:Z

    .line 1118
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :goto_2
    return-object v9

    .line 1120
    :cond_2
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAsyncQuerying:Z

    .line 1121
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1122
    invoke-direct {p0, v9}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1129
    if-nez p1, :cond_0

    .line 1130
    const/4 p1, 0x0

    .line 1175
    .end local p1
    :goto_0
    return-object p1

    .line 1132
    .restart local p1
    :cond_0
    instance-of v5, p1, Landroid/database/MergeCursor;

    if-eqz v5, :cond_1

    .line 1134
    const-string v5, "PlaylistBrowserActivity"

    const-string v6, "Already wrapped"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1137
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .local v2, extraPlaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v5, :cond_2

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1140
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    const v5, 0x7f070009

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    if-nez v5, :cond_3

    .line 1163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1164
    .local v4, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, -0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    const v5, 0x7f070102

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    iput v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    .line 1170
    .end local v4           #recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    new-instance v3, Lcom/htc/music/util/ArrayListCursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1172
    .local v3, extraPlaylistsCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v1, Landroid/database/MergeCursor;

    new-array v5, v6, [Landroid/database/Cursor;

    aput-object v3, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v1, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v1, cc:Landroid/database/Cursor;
    move-object p1, v1

    .line 1175
    goto :goto_0
.end method

.method private playPodcasts()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1062
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 1065
    .local v2, ccols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_podcast=1"

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1069
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 1074
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1075
    .local v8, len:I
    new-array v9, v8, [I

    .line 1076
    .local v9, list:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 1077
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1078
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v9, v7

    .line 1076
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1080
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v9, v0, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[I
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1081
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private playRecentlyAdded()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1033
    const-string v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x93a80

    mul-int v6, v0, v1

    .line 1034
    .local v6, X:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 1037
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date_added>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    int-to-long v13, v6

    sub-long/2addr v11, v13

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1042
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1047
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1048
    .local v9, len:I
    new-array v10, v9, [I

    .line 1049
    .local v10, list:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 1050
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 1051
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 1049
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1053
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v10, v0, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1054
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 2

    .prologue
    .line 676
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 677
    .local v0, npc:Lcom/htc/music/NpCategory;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    .line 678
    const/4 v1, 0x1

    return v1
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 732
    const-string v0, "[PlaylistBrowserActivity]"

    const-string v1, "somebody called finish??"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->finish()V

    .line 734
    return-void
.end method

.method public finishactivity()V
    .locals 4

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$8;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$8;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1458
    return-void
.end method

.method getPickerMode()J
    .locals 2

    .prologue
    .line 1028
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected hideSearchBar()V
    .locals 4

    .prologue
    .line 1443
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->hideSearchBar()V

    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->preSearchTime:J

    .line 1445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mFilter:Ljava/lang/String;

    .line 1446
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1447
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 434
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    .line 437
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showDatabaseError()V

    .line 438
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->closeContextMenu()V

    .line 439
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    if-nez v0, :cond_3

    .line 442
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showEmptyView(I)V

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setCategoryRightBtn(Z)V

    .line 444
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    .line 451
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->hideEmptyErrorView()V

    .line 452
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method initButtonsPanel()V
    .locals 6

    .prologue
    .line 1405
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1406
    :cond_0
    const v4, 0x7f080093

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 1407
    .local v3, savePanelStub:Landroid/view/ViewStub;
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 1408
    .local v2, savePanel:Landroid/view/View;
    const v4, 0x7f08003e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 1409
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x20c0130

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$6;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1416
    const v4, 0x7f08003d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1417
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x20c013d

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1418
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$7;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1424
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1427
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #savePanel:Landroid/view/View;
    .end local v3           #savePanelStub:Landroid/view/ViewStub;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    .line 1428
    return-void
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 1431
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 683
    sparse-switch p1, :sswitch_data_0

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 685
    :sswitch_0
    if-nez p2, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    .line 688
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v3, :cond_0

    .line 689
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 694
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0

    .line 700
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 701
    iget-wide v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    invoke-static {p0, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 702
    .local v0, list:[I
    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 703
    .local v1, playlist:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 708
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    if-ne p2, v3, :cond_0

    .line 709
    const-string v3, "selectedlist"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 710
    .local v2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 711
    .restart local v0       #list:[I
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->deletePlaylists(Landroid/content/Context;[I)V

    .line 712
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v3, :cond_2

    .line 713
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 715
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0

    .line 720
    .end local v0           #list:[I
    .end local v2           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_4
    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 725
    :sswitch_5
    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 683
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_0
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1e -> :sswitch_1
        0x1f -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 366
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 155
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 159
    :cond_0
    if-eqz p1, :cond_6

    .line 160
    const-string v0, "pickermode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    .line 161
    const-string v0, "AddToPlaylistData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    .line 166
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 168
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setVolumeControlStream(I)V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    .line 173
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const/4 v10, -0x1

    .line 178
    .local v10, id:I
    :try_start_0
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 191
    const/4 v0, -0x2

    if-ne v10, v0, :cond_1

    .line 192
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->list:[I

    .line 193
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->list:[I

    if-nez v0, :cond_1

    .line 194
    const v0, 0x7f070055

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    .line 201
    .end local v10           #id:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;

    invoke-direct {v2, p0, v7, v11}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 241
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setContentView(I)V

    .line 249
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    .line 251
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 257
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_7

    .line 259
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030014

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "name"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    const v12, 0x1020014

    aput v12, v6, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 265
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    .line 268
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 287
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->initButtonsPanel()V

    .line 288
    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setSearchHint(I)V

    .line 290
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v0, :cond_4

    .line 292
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->enableSearch()V

    .line 295
    :cond_4
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->checkPlaylistCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 296
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->createNewPlaylist()V

    .line 297
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 298
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    .line 300
    .end local v9           #f:Landroid/content/IntentFilter;
    :cond_5
    :goto_2
    return-void

    .line 163
    :cond_6
    const-string v0, "pickermode"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    .line 164
    const-string v0, "AddToPlaylistData"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    goto/16 :goto_0

    .line 179
    .restart local v10       #id:I
    :catch_0
    move-exception v8

    .line 180
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    .line 182
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_2

    .line 184
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v8

    .line 185
    .local v8, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    .line 187
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_2

    .line 270
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v10           #id:I
    .restart local v9       #f:Landroid/content/IntentFilter;
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->setActivity(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    .line 271
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 279
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8

    .line 280
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 283
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    .line 284
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const v10, 0x7f07004e

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 830
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 831
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 832
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 880
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :goto_0
    return-object v4

    .line 835
    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v6, "name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, title:Ljava/lang/String;
    iget-wide v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 839
    new-array v2, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 864
    .local v2, items:[Ljava/lang/CharSequence;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$5;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 843
    .end local v2           #items:[Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 844
    .local v1, dlnaMode:I
    if-nez v1, :cond_2

    .line 846
    const/4 v4, 0x5

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    const v4, 0x7f070050

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    const v4, 0x7f07008f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v12

    const/4 v4, 0x4

    const v5, 0x7f070094

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .restart local v2       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 855
    .end local v2           #items:[Ljava/lang/CharSequence;
    :cond_2
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const v4, 0x7f07004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    const v4, 0x7f07008f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    const v4, 0x7f070094

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v12

    .restart local v2       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 496
    :cond_0
    const/16 v0, 0x1c

    const v1, 0x20c013a

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 498
    const/16 v0, 0x1d

    const v1, 0x20c013b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 521
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 500
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v0, :cond_1

    .line 505
    const/16 v0, 0x1e

    const v1, 0x7f07008d

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809c0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 510
    const/16 v0, 0x1f

    const v1, 0x7f07008e

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 513
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 515
    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a49

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 516
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    const/16 v0, 0x16

    const v1, 0x20c0200

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 324
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 326
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mExitByErrorIntent:Z

    if-eqz v1, :cond_0

    .line 328
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    .line 347
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 337
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 338
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 344
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 346
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    .line 805
    :goto_0
    return-void

    .line 741
    :cond_1
    if-nez p3, :cond_2

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    if-lez v4, :cond_2

    .line 743
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->createNewPlaylist()V

    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 746
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 747
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "playlist"

    long-to-int v5, p4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 750
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    .line 754
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-boolean v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v4, :cond_4

    .line 755
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 756
    .local v3, shortcut:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/playlist"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const-string v4, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 761
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 762
    const-string v5, "android.intent.extra.shortcut.NAME"

    const v4, 0x7f080043

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f02003d

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 767
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 770
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .local v1, intent2:Landroid/content/Intent;
    const-string v4, "silder_state"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 773
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finishactivity()V

    goto/16 :goto_0

    .line 790
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    .end local v3           #shortcut:Landroid/content/Intent;
    :cond_4
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 791
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 792
    .restart local v0       #intent:Landroid/content/Intent;
    long-to-int v2, p4

    .line 793
    .local v2, playlistId:I
    const-string v4, "playlist_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 795
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    goto/16 :goto_0

    .line 797
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #playlistId:I
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "com.htc.media/track"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string v4, "playlist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v5, "isrecentplayedplaylist"

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    if-ne p3, v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 801
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 800
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, result:Z
    iget-boolean v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 811
    iget v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    if-lez v3, :cond_0

    if-nez p3, :cond_0

    .line 823
    :goto_0
    return v1

    .line 814
    :cond_0
    iget-wide v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    move v3, v2

    :goto_1
    cmp-long v4, p4, v5

    if-gez v4, :cond_4

    :goto_2
    if-eq v3, v2, :cond_1

    .line 815
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->removeDialog(I)V

    .line 818
    :cond_1
    iput-wide p4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mSelectedId:J

    .line 819
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    sub-int v3, p3, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 820
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showDialog(I)V

    .line 821
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 823
    goto :goto_0

    :cond_3
    move v3, v1

    .line 814
    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->menuOpened:Z

    .line 604
    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->applyMenuStatus(Landroid/view/Menu;)V

    .line 606
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 613
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 670
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 629
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->createNewPlaylist()V

    goto :goto_0

    .line 632
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 633
    new-instance v4, Lcom/htc/music/NpCategory;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 637
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->categoryRightAction()Z

    goto :goto_0

    .line 642
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 643
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 644
    const-string v4, "pickermode"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const/16 v4, 0x1f

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 650
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    goto :goto_0

    .line 657
    .end local v0           #i:I
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 658
    .local v2, items:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 659
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 661
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->updateButtonCounter()V

    goto :goto_0

    .line 665
    .end local v0           #i:I
    .end local v2           #items:Landroid/util/SparseBooleanArray;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .restart local v1       #intent:Landroid/content/Intent;
    const/4 v4, -0x2

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 613
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0x16 -> :sswitch_6
        0x1c -> :sswitch_4
        0x1d -> :sswitch_5
        0x1e -> :sswitch_0
        0x1f -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 361
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    .line 362
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1016
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1017
    packed-switch p1, :pswitch_data_0

    .line 1025
    .end local p2
    :goto_0
    return-void

    .line 1020
    .restart local p2
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, title:Ljava/lang/String;
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1017
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, enabled:Z
    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 528
    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 529
    .local v2, playlistCount:I
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mRecentPlayedPos:I

    if-ltz v5, :cond_0

    .line 530
    add-int/lit8 v2, v2, -0x1

    .line 532
    :cond_0
    if-lez v2, :cond_9

    move v0, v3

    .line 536
    .end local v2           #playlistCount:I
    :cond_1
    :goto_0
    const/16 v5, 0x1c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 537
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 538
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 539
    :cond_2
    const/16 v5, 0x1d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 540
    if-eqz v1, :cond_3

    .line 541
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 542
    :cond_3
    const/16 v5, 0x1e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 543
    if-eqz v1, :cond_4

    .line 544
    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_a

    :goto_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 545
    :cond_4
    const/16 v3, 0x1f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_5

    .line 547
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 551
    :cond_5
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 552
    if-eqz v1, :cond_6

    .line 553
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 554
    :cond_6
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 555
    if-eqz v1, :cond_7

    .line 556
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 557
    :cond_7
    const/16 v3, 0x16

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 558
    if-eqz v1, :cond_8

    .line 559
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 561
    :cond_8
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->applyMenuStatus(Landroid/view/Menu;)V

    .line 563
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .end local v1           #item:Landroid/view/MenuItem;
    .restart local v2       #playlistCount:I
    :cond_9
    move v0, v4

    .line 532
    goto :goto_0

    .end local v2           #playlistCount:I
    .restart local v1       #item:Landroid/view/MenuItem;
    :cond_a
    move v3, v4

    .line 544
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    .line 352
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle()V

    .line 353
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->showSpinner(Z)V

    .line 355
    :cond_1
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 305
    .local v0, a:Lcom/htc/music/browserlayer/PlaylistBrowserActivity$PlaylistListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAdapterSent:Z

    .line 306
    return-object v0
.end method

.method public onSaveClick()V
    .locals 10

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getPickerMode()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1385
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v5, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 1387
    .local v4, items:Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1388
    .local v2, idx:I
    const/4 v1, 0x0

    .line 1389
    .local v1, id:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 1390
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1391
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mHeaderCount:I

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1392
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 1393
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1397
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1398
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "selectedlist"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1399
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 1401
    .end local v0           #i:I
    .end local v1           #id:I
    .end local v2           #idx:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #items:Landroid/util/SparseBooleanArray;
    .end local v5           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    .line 1402
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 311
    const-string v0, "pickermode"

    iget v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v0, "AddToPlaylistData"

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddToPlaylistData:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 316
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 317
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "filter"

    .prologue
    .line 1436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->preSearchTime:J

    .line 1437
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mFilter:Ljava/lang/String;

    .line 1438
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1439
    return-void
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 10
    .parameter "setEnable"

    .prologue
    const v9, 0x7f07005f

    const v8, 0x208087b

    const/4 v7, 0x1

    .line 1513
    const/4 v5, 0x0

    .line 1514
    .local v5, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    .line 1516
    :cond_0
    iput v5, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 1518
    iget-boolean v6, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-eqz v6, :cond_2

    .line 1519
    const-string v6, "[PlaylistBrowserActivity]"

    const-string v7, "activity is paused, do not set category right button status"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    :cond_1
    :goto_0
    return-void

    .line 1523
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    .line 1524
    .local v4, parent:Landroid/app/Activity;
    instance-of v6, v4, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 1525
    check-cast v3, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 1528
    .local v3, multiParent:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    if-eqz p1, :cond_3

    .line 1529
    invoke-virtual {v3, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    .line 1530
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1531
    .local v1, enableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0xff

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1532
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1533
    .local v2, label:Ljava/lang/String;
    invoke-virtual {v3, v1, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1534
    new-instance v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$10;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$10;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    invoke-virtual {v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    .line 1546
    .end local v1           #enableAddIcon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnVisible(Z)V

    goto :goto_0

    .line 1540
    .end local v2           #label:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1541
    .local v0, disableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x6e

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1542
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1543
    .restart local v2       #label:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnEnable(Z)V

    .line 1544
    invoke-virtual {v3, v0, v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCheckedView(Landroid/view/View;JZ)V
    .locals 4
    .parameter "view"
    .parameter "checkType"
    .parameter "checked"

    .prologue
    const-wide/16 v2, 0x2

    .line 1344
    const v1, 0x7f080045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemImageButton;

    .line 1347
    .local v0, checkbox:Lcom/htc/widget/HtcListItemImageButton;
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 1348
    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_checkbox_on"

    const v3, 0x208019f

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 1357
    :goto_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemImageButton;->invalidate()V

    .line 1358
    return-void

    .line 1348
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_delete_on"

    const v3, 0x20801aa

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 1353
    :cond_1
    cmp-long v1, p2, v2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_checkbox_off"

    const v3, 0x208019d

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_delete_off"

    const v3, 0x20801a8

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method setTitle()V
    .locals 4

    .prologue
    .line 459
    iget v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v1, :cond_2

    :cond_0
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, title:Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v1, :cond_3

    .line 463
    :cond_1
    const v1, 0x208087b

    const v2, 0x7f07005f

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V

    .line 468
    :goto_1
    return-void

    .line 459
    .end local v0           #title:Ljava/lang/String;
    :cond_2
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 466
    .restart local v0       #title:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showDatabaseError()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 471
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->showDatabaseError()V

    .line 473
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 474
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "ShowActivityTitle"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 475
    .local v3, showTitle:Z
    if-eqz v3, :cond_0

    .line 476
    const v5, 0x7f08003f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 478
    .local v4, titleLayout:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 479
    const v5, 0x7f080040

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 480
    .local v1, headerImageRight:Lcom/htc/widget/HeaderBarImage;
    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x208087b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 482
    .local v0, disableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v5, 0x6e

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 483
    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    invoke-virtual {v1, v7}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 485
    invoke-virtual {v1, v7}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    .line 486
    invoke-virtual {v1, v7}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 491
    .end local v0           #disableAddIcon:Landroid/graphics/drawable/Drawable;
    .end local v1           #headerImageRight:Lcom/htc/widget/HeaderBarImage;
    .end local v4           #titleLayout:Landroid/view/View;
    :cond_0
    return-void
.end method

.method updateButtonCounter()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1361
    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-eq v7, v10, :cond_0

    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 1381
    :goto_0
    return-void

    .line 1364
    :cond_0
    const/4 v1, 0x0

    .line 1365
    .local v1, count:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_2

    .line 1366
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 1367
    .local v3, items:Landroid/util/SparseBooleanArray;
    if-eqz v3, :cond_2

    .line 1368
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 1369
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1370
    add-int/lit8 v1, v1, 0x1

    .line 1368
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1375
    .end local v2           #i:I
    .end local v3           #items:Landroid/util/SparseBooleanArray;
    :cond_2
    const v7, 0x7f070054

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1376
    .local v4, text:Ljava/lang/String;
    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->mPickerMode:I

    if-ne v7, v10, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f07005f

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1378
    :goto_2
    const v7, 0x7f08003e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1379
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez v1, :cond_4

    :goto_3
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1380
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1376
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x20c01fc

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_4
    move v5, v6

    .line 1379
    goto :goto_3
.end method
