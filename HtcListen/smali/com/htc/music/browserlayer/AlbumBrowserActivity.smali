.class public Lcom/htc/music/browserlayer/AlbumBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field public static final DIALOG_FOR_LONG_PRESS_UNKNOWN:I = 0x2

.field private static final PLAY_ALL_SORT_ORDER:Ljava/lang/String; = "track"

.field private static final SEARCH:I = 0x17

.field private static final TAG:Ljava/lang/String; = "[AlbumBrowserActivity]"


# instance fields
.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

.field private mAdapterSent:Z

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mArtistId:Ljava/lang/String;

.field mAsyncQuerying:Z

.field mAsyncUri:Landroid/net/Uri;

.field mCols:[Ljava/lang/String;

.field private mComposer:Ljava/lang/String;

.field private mCountTemplate:Ljava/lang/String;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDescription:Ljava/lang/String;

.field private mFilter:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 116
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 105
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapterSent:Z

    .line 283
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 312
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 837
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numsongs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_art"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCols:[Ljava/lang/String;

    .line 1356
    iput-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 1360
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    .line 1362
    iput-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 1364
    iput-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    .line 1365
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->preSearchTime:J

    .line 1366
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->dialog_OnClick_Dlna(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->dialog_OnClick_Local(I)V

    return-void
.end method

.method private dialog_OnClick_Dlna(I)V
    .locals 11
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 630
    packed-switch p1, :pswitch_data_0

    .line 656
    :goto_0
    return-void

    .line 632
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 633
    .local v10, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v10, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;Ljava/lang/String;I)[I

    move-result-object v9

    .line 634
    .local v9, list:[I
    const/4 v0, 0x0

    .line 635
    .local v0, npc:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 636
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #npc:Lcom/htc/music/NpCategory;
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .restart local v0       #npc:Lcom/htc/music/NpCategory;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v9, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 641
    .end local v0           #npc:Lcom/htc/music/NpCategory;
    .end local v9           #list:[I
    .end local v10           #where:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v7

    .line 642
    .local v7, addToPlayListData:[I
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 643
    .local v8, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v8, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 644
    const-string v1, "pickermode"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string v1, "AddToPlaylistData"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 646
    invoke-virtual {p0, v8, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 649
    .end local v7           #addToPlayListData:[I
    .end local v8           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 652
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->doSearch()V

    goto :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dialog_OnClick_Local(I)V
    .locals 13
    .parameter "which"

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x1

    .line 592
    packed-switch p1, :pswitch_data_0

    .line 627
    :goto_0
    return-void

    .line 594
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 595
    .local v11, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v11, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;Ljava/lang/String;I)[I

    move-result-object v10

    .line 596
    .local v10, list:[I
    const/4 v0, 0x0

    .line 597
    .local v0, npc:Lcom/htc/music/NpCategory;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 598
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #npc:Lcom/htc/music/NpCategory;
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .restart local v0       #npc:Lcom/htc/music/NpCategory;
    :cond_0
    invoke-static {p0, v10, v12, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 603
    .end local v0           #npc:Lcom/htc/music/NpCategory;
    .end local v10           #list:[I
    .end local v11           #where:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v7

    .line 604
    .local v7, addToPlayListData:[I
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 605
    .local v9, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v9, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 606
    const-string v1, "pickermode"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    const-string v1, "AddToPlaylistData"

    invoke-virtual {v9, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 608
    invoke-virtual {p0, v9, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 612
    .end local v7           #addToPlayListData:[I
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_2
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 613
    :catch_0
    move-exception v8

    .line 614
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v1, "[AlbumBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_TO_QUEUE, NumberFormatException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    .end local v8           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    .line 616
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "[AlbumBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    .end local v8           #e:Landroid/os/RemoteException;
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 623
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->doSearch()V

    goto/16 :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 848
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .local v23, where:Ljava/lang/StringBuilder;
    const-string v1, "album != \'\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string v1, " AND album != \'<unknown>\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    .local v25, whereUnkown:Ljava/lang/StringBuilder;
    const-string v1, "album = \'<unknown>\'"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    const/4 v7, 0x0

    .line 857
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_4

    const/16 v20, 0x1

    .line 858
    .local v20, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_0

    .line 859
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 860
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 861
    const-string v1, " AND "

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string v1, "album LIKE ?"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    const v1, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 865
    .local v22, unknownAlbum:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    const/16 v20, 0x1

    .line 869
    .end local v22           #unknownAlbum:Ljava/lang/String;
    :cond_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .local v24, where2:Ljava/lang/StringBuilder;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    .line 871
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 874
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    const-string v2, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 875
    .local v14, artistId:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id IN (SELECT DISTINCT album_id FROM audio_meta WHERE audio_meta.artist_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .end local v14           #artistId:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 879
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 880
    .local v18, genreId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v18, v1

    if-nez v1, :cond_5

    .line 881
    const-string v1, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .end local v18           #genreId:J
    :cond_2
    :goto_1
    const/16 v16, 0x0

    .line 901
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_9

    .line 902
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    .line 903
    if-eqz v20, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 904
    .local v3, asyncUnknownWhere:Ljava/lang/String;
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCols:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "album COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .end local v3           #asyncUnknownWhere:Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v16

    .line 857
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v20           #searchContainsUnkown:Z
    .end local v24           #where2:Ljava/lang/StringBuilder;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 883
    .restart local v18       #genreId:J
    .restart local v20       #searchContainsUnkown:Z
    .restart local v24       #where2:Ljava/lang/StringBuilder;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 885
    .end local v18           #genreId:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 886
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    .line 887
    .local v15, composer:Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v21

    .line 888
    .local v21, unknown:Z
    if-eqz v21, :cond_7

    .line 889
    const-string v1, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 894
    :cond_7
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v15, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id IN (SELECT distinct album_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 903
    .end local v15           #composer:Ljava/lang/String;
    .end local v21           #unknown:Z
    .restart local v16       #cursor:Landroid/database/Cursor;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 908
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    .line 909
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCols:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "album COLLATE NOCASE ASC"

    move-object/from16 v8, p0

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 912
    if-eqz v20, :cond_3

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getUnknownAlbum(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 914
    .local v21, unknown:Landroid/database/Cursor;
    if-eqz v21, :cond_3

    .line 915
    new-instance v17, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    const/4 v2, 0x1

    aput-object v21, v1, v2

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v16           #cursor:Landroid/database/Cursor;
    .local v17, cursor:Landroid/database/Cursor;
    move-object/from16 v16, v17

    .end local v17           #cursor:Landroid/database/Cursor;
    .restart local v16       #cursor:Landroid/database/Cursor;
    goto/16 :goto_3
.end method

.method private setTitle()V
    .locals 4

    .prologue
    const v3, 0x7f07001e

    .line 366
    const-string v0, ""

    .line 368
    .local v0, fancyName:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 378
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 380
    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 371
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "items"

    .prologue
    .line 575
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/AlbumBrowserActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method doSearch()V
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public getUnknownAlbum(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 924
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 925
    .local v6, ret:Landroid/database/Cursor;
    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 342
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDatabaseError()V

    .line 345
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->closeContextMenu()V

    .line 346
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 350
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 356
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->hideEmptyErrorView()V

    .line 362
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 1301
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 388
    sparse-switch p1, :sswitch_data_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 390
    :sswitch_0
    if-nez p2, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v4, :cond_0

    .line 394
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 400
    :sswitch_1
    if-ne p2, v4, :cond_0

    .line 401
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 402
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 403
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    .line 404
    .local v0, list:[I
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {p0, v0, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 410
    .end local v0           #list:[I
    .end local v2           #uri:Landroid/net/Uri;
    :sswitch_2
    if-ne p2, v4, :cond_0

    .line 411
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, where:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    .line 414
    .restart local v0       #list:[I
    const-string v4, "playlist"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 415
    .local v1, playlist:I
    int-to-long v4, v1

    invoke-static {p0, v0, v4, v5}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 420
    .end local v0           #list:[I
    .end local v1           #playlist:I
    .end local v3           #where:Ljava/lang/String;
    :sswitch_3
    if-ne p2, v4, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCountTemplate:Ljava/lang/String;

    .line 123
    if-eqz p1, :cond_2

    .line 124
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 125
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 126
    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    .line 127
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    .line 128
    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 129
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    .line 138
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 141
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 142
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    .line 144
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setContentView(I)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    .line 154
    .local v9, lv:Lcom/htc/widget/HtcListView;
    invoke-virtual {v9, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 155
    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 156
    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 159
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_3

    .line 161
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f03000d

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    .line 163
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle()V

    .line 166
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 178
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setSearchHint(I)V

    .line 180
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->enableSearch()V

    .line 182
    :cond_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 185
    :cond_1
    return-void

    .line 131
    .end local v7           #f:Landroid/content/IntentFilter;
    .end local v9           #lv:Lcom/htc/widget/HtcListView;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 132
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "artistid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 133
    const-string v0, "genreid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    .line 134
    const-string v0, "composer"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    .line 135
    const-string v0, "playlisturi"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 136
    const-string v0, "description"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 168
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #f:Landroid/content/IntentFilter;
    .restart local v9       #lv:Lcom/htc/widget/HtcListView;
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setActivity(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    .line 169
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 171
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const v10, 0x20c01fc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 486
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 487
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 571
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v6

    :goto_0
    return-object v6

    .line 489
    :pswitch_0
    const/4 v5, 0x0

    .line 490
    .local v5, title:Ljava/lang/String;
    const/4 v4, 0x0

    .line 492
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 493
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    .line 494
    .local v2, dlnaMode:I
    if-nez v2, :cond_1

    .line 496
    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const v6, 0x7f070050

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const/4 v6, 0x4

    const v7, 0x20c0138

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 513
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0, v0, v5, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 505
    :cond_1
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const v6, 0x20c0138

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    .restart local v4       #items:[Ljava/lang/CharSequence;
    goto :goto_1

    .line 517
    .end local v2           #dlnaMode:I
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/String;
    :pswitch_1
    const/4 v5, 0x0

    .line 518
    .restart local v5       #title:Ljava/lang/String;
    const/4 v4, 0x0

    .line 519
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 520
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    .line 521
    .restart local v2       #dlnaMode:I
    if-nez v2, :cond_2

    .line 523
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const v6, 0x7f070050

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    .line 537
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {p0, v0, v5, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 531
    :cond_2
    new-array v4, v11, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .restart local v4       #items:[Ljava/lang/CharSequence;
    goto :goto_2

    .line 543
    .end local v2           #dlnaMode:I
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 544
    const v6, 0x7f07000f

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, f:Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 551
    :cond_3
    new-array v6, v9, [Ljava/lang/Object;

    const v7, 0x7f070044

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, desc:Ljava/lang/String;
    :goto_4
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/htc/music/browserlayer/AlbumBrowserActivity$4;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v8, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .line 546
    .end local v1           #desc:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/String;
    :cond_4
    const v6, 0x7f07000e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #f:Ljava/lang/String;
    goto :goto_3

    .line 553
    :cond_5
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_4

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 697
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 698
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v3

    .line 706
    :cond_1
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 707
    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 708
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const/16 v0, 0x16

    const v1, 0x20c0200

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 662
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDeletionCompleted()V

    .line 663
    const-string v0, "[AlbumBrowserActivity]"

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 668
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 244
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 248
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 254
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    .line 257
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    .line 258
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 260
    :cond_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 261
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 430
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, currentAlbumId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 432
    const-string v2, "[AlbumBrowserActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to launch album detail view. currentAlbumId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    const-string v2, "albumid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v2, "artistid"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v2, "composer"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v2, "genreid"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v2, "ShowActivityTitle"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 451
    :goto_0
    return-void

    .line 443
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 445
    const-string v2, "playlisturi"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v2, "albumid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v2, "pickermode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const/16 v2, 0xf

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 456
    const-string v1, "[AlbumBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 460
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 463
    const-string v1, "[AlbumBrowserActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick mCurrentAlbumName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v2, "<unknown>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDialog(I)V

    .line 472
    :goto_0
    const/4 v0, 0x1

    .line 474
    :cond_0
    return v0

    .line 469
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 191
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_0

    .line 199
    const-string v0, "[AlbumBrowserActivity]"

    const-string v1, "AlbumBrowserActivity not handle mAdapter is NULL when receive newIntent case!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 202
    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    .line 203
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    .line 204
    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 205
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 740
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 834
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 755
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 757
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 828
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 740
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 323
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    .line 324
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequery(ZZ)V

    .line 328
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 330
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 333
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 334
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 672
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 673
    packed-switch p1, :pswitch_data_0

    .line 693
    .end local p2
    :goto_0
    return-void

    .line 675
    .restart local p2
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->removeDialog(I)V

    goto :goto_0

    .line 679
    :pswitch_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, f:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 687
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f070044

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, desc:Ljava/lang/String;
    :goto_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 682
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    .restart local p2
    :cond_1
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #f:Ljava/lang/String;
    goto :goto_1

    .line 689
    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #desc:Ljava/lang/String;
    goto :goto_2

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 718
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 723
    .local v0, enabled:Ljava/lang/Boolean;
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 724
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 726
    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 727
    if-eqz v1, :cond_1

    .line 728
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 729
    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 730
    if-eqz v1, :cond_2

    .line 731
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 733
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 718
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 265
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 266
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    .line 267
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->setTitle()V

    .line 268
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequery(ZZ)V

    .line 270
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->showSpinner(Z)V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 281
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 223
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1339
    move v1, p2

    .line 1340
    .local v1, start:I
    add-int v0, p2, p3

    .line 1341
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1342
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 1344
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1312
    const-string v0, "[AlbumBrowserActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    packed-switch p2, :pswitch_data_0

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1315
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1322
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_2

    .line 1323
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequery(Z)V

    .line 1324
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicListActivity;->mActivityPaused:Z

    if-nez v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1329
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_3

    .line 1330
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->setAutoRequeryOffAndAutoOn()V

    .line 1331
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1313
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
    .line 1306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->preSearchTime:J

    .line 1307
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    .line 1308
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1309
    return-void
.end method

.method public playAllAction(Z)Z
    .locals 14
    .parameter "forceShuffle"

    .prologue
    .line 935
    const/4 v1, 0x0

    .line 936
    .local v1, uri:Landroid/net/Uri;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 937
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v0, " AND title"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != \'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 940
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    .line 946
    .local v9, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v0, v9, v2

    if-nez v0, :cond_5

    .line 947
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    .end local v9           #genreId:J
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 973
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 976
    :cond_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 979
    .local v6, basicLength:I
    const-string v0, " AND album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 986
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 987
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 992
    .local v12, unknown:Landroid/database/Cursor;
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-static {v8, v12, v0}, Lcom/htc/music/util/MusicUtils;->mergeCursors(Landroid/database/Cursor;Landroid/database/Cursor;[Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    .line 994
    if-eqz v8, :cond_4

    .line 995
    const/4 v11, 0x0

    .line 996
    .local v11, npc:Lcom/htc/music/NpCategory;
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 997
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v11

    .line 1001
    :cond_3
    if-eqz p1, :cond_9

    .line 1002
    invoke-static {p0, v8, v11}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 1005
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1006
    const/4 v8, 0x0

    .line 1008
    .end local v11           #npc:Lcom/htc/music/NpCategory;
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 950
    .end local v6           #basicLength:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v12           #unknown:Landroid/database/Cursor;
    .restart local v9       #genreId:J
    :cond_5
    const-string v0, "external"

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 953
    .end local v9           #genreId:J
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    :cond_7
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 959
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mComposer:Ljava/lang/String;

    .line 960
    .local v7, composer:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v12

    .line 961
    .local v12, unknown:Z
    if-eqz v12, :cond_8

    .line 962
    const-string v0, " AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 965
    :cond_8
    const-string v0, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v7, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND composer = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1004
    .end local v7           #composer:Ljava/lang/String;
    .restart local v6       #basicLength:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #npc:Lcom/htc/music/NpCategory;
    .local v12, unknown:Landroid/database/Cursor;
    :cond_9
    invoke-static {p0, v8, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_1
.end method
