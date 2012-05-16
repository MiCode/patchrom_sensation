.class public Lcom/htc/music/browserlayer/ArtistBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "ArtistBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ARTIST_ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field public static final DIALOG_FOR_DELETE:I = 0x1

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field public static final DIALOG_FOR_LONG_PRESS_UNKNOWN:I = 0x2

.field private static final SEARCH:I = 0x17

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private TAG:Ljava/lang/String;

.field mActivityTitle:Ljava/lang/String;

.field private mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

.field private mAdapterSent:Z

.field private mArtistCursor:Landroid/database/Cursor;

.field mAsyncQuerying:Z

.field mAsyncUri:Landroid/net/Uri;

.field mCols:[Ljava/lang/String;

.field private mComposer:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private mDelaySearchHandler:Landroid/os/Handler;

.field private mDescription:Ljava/lang/String;

.field private mFilter:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mPlaylistUri:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mShowDirect:Z

.field private preSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 72
    const-string v0, "[ArtistBrowserActivity]"

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

    .line 227
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 255
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 680
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number_of_albums"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number_of_tracks"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCols:[Ljava/lang/String;

    .line 1069
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 1073
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    .line 1075
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 1077
    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mFilter:Ljava/lang/String;

    .line 1078
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->preSearchTime:J

    .line 1079
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ArtistBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/music/browserlayer/ArtistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->preSearchTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 690
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v22, where:Ljava/lang/StringBuilder;
    const-string v1, "artist != \'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v1, " AND artist != \'<unknown>\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v24, whereUnknown:Ljava/lang/StringBuilder;
    const-string v1, "artist = \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const/4 v7, 0x0

    .line 699
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_3

    const/16 v19, 0x1

    .line 700
    .local v19, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_0

    .line 701
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 702
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

    .line 703
    const-string v1, " AND "

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const-string v1, "artist LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const v1, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 707
    .local v21, unknownArtist:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const/16 v19, 0x1

    .line 711
    .end local v21           #unknownArtist:Ljava/lang/String;
    :cond_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v23, where2:Ljava/lang/StringBuilder;
    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    .line 713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 715
    .local v17, genreId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v17, v1

    if-nez v1, :cond_4

    .line 716
    const-string v1, " AND _id  in (select  distinct artist_id from audio where _id NOT IN (select audio_id from audio_genres_map ) ) "

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .end local v17           #genreId:J
    :cond_1
    :goto_1
    const/4 v15, 0x0

    .line 738
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_8

    .line 739
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    .line 740
    if-eqz v19, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, asyncUnknownWhere:Ljava/lang/String;
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCols:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .end local v3           #asyncUnknownWhere:Ljava/lang/String;
    :cond_2
    :goto_3
    return-object v15

    .line 699
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v19           #searchContainsUnkown:Z
    .end local v23           #where2:Ljava/lang/StringBuilder;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 719
    .restart local v17       #genreId:J
    .restart local v19       #searchContainsUnkown:Z
    .restart local v23       #where2:Ljava/lang/StringBuilder;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id  in (select distinct artist_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 722
    .end local v17           #genreId:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    .line 724
    .local v14, composer:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v20

    .line 725
    .local v20, unknown:Z
    if-eqz v20, :cond_6

    .line 726
    const-string v1, " AND _id IN (SELECT distinct artist_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 731
    :cond_6
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND _id IN (SELECT distinct artist_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 740
    .end local v14           #composer:Ljava/lang/String;
    .end local v20           #unknown:Z
    .restart local v15       #cursor:Landroid/database/Cursor;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 743
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    .line 744
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCols:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "artist COLLATE NOCASE ASC"

    move-object/from16 v8, p0

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 745
    if-eqz v19, :cond_2

    .line 746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getUnknownArtist(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 747
    .local v20, unknown:Landroid/database/Cursor;
    if-eqz v20, :cond_2

    .line 748
    new-instance v16, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v15, v1, v2

    const/4 v2, 0x1

    aput-object v20, v1, v2

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v15           #cursor:Landroid/database/Cursor;
    .local v16, cursor:Landroid/database/Cursor;
    move-object/from16 v15, v16

    .end local v16           #cursor:Landroid/database/Cursor;
    .restart local v15       #cursor:Landroid/database/Cursor;
    goto/16 :goto_3
.end method

.method private setTitle()V
    .locals 4

    .prologue
    const v3, 0x7f07001d

    .line 303
    const-string v0, ""

    .line 305
    .local v0, fancyName:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 315
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 317
    return-void

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 308
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->playAllAction(Z)Z

    move-result v0

    return v0
.end method

.method createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "items"

    .prologue
    .line 496
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method doSearch()V
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public getUnknownArtist(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 757
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 758
    .local v6, ret:Landroid/database/Cursor;
    return-object v6
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 279
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showDatabaseError()V

    .line 282
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->closeContextMenu()V

    .line 283
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 287
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 293
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->hideEmptyErrorView()V

    .line 299
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 325
    sparse-switch p1, :sswitch_data_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 327
    :sswitch_0
    if-nez p2, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->finish()V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 337
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-static {v6, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, where:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    .line 341
    .local v0, list:[I
    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 342
    .local v1, playlist:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 347
    .end local v0           #list:[I
    .end local v1           #playlist:I
    .end local v2           #where:Ljava/lang/String;
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->finish()V

    goto :goto_0

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xb -> :sswitch_0
        0xf -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-eqz p1, :cond_1

    .line 109
    const-string v0, "selectedartist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 110
    const-string v0, "selectedartistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 111
    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    .line 112
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    .line 113
    const-string v0, "isshowallsongs"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mShowDirect:Z

    .line 114
    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 115
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    .line 124
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->requestWindowFeature(I)Z

    .line 127
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setVolumeControlStream(I)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    .line 130
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setContentView(I)V

    .line 139
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    .line 140
    .local v9, lv:Lcom/htc/widget/HtcListView;
    invoke-virtual {v9, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 141
    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 142
    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    .line 145
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-nez v0, :cond_2

    .line 147
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030012

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/ArtistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    .line 149
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle()V

    .line 152
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setSearchHint(I)V

    .line 166
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->enableSearch()V

    .line 168
    :cond_0
    return-void

    .line 117
    .end local v7           #f:Landroid/content/IntentFilter;
    .end local v9           #lv:Lcom/htc/widget/HtcListView;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 118
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "genreid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    .line 119
    const-string v0, "composer"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    .line 120
    const-string v0, "isshowallsongs"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mShowDirect:Z

    .line 121
    const-string v0, "playlisturi"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    .line 122
    const-string v0, "description"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 154
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v7       #f:Landroid/content/IntentFilter;
    .restart local v9       #lv:Lcom/htc/widget/HtcListView;
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setActivity(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    .line 155
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 157
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const v9, 0x20c01fc

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 430
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 431
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 492
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_0
    return-object v5

    .line 433
    :pswitch_0
    const/4 v4, 0x0

    .line 434
    .local v4, title:Ljava/lang/String;
    const/4 v3, 0x0

    .line 435
    .local v3, items:[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 437
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 438
    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/CharSequence;

    .end local v3           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f07004f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    const v5, 0x20c0138

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    .line 446
    .restart local v3       #items:[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 449
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x0

    .line 450
    .restart local v4       #title:Ljava/lang/String;
    const/4 v3, 0x0

    .line 451
    .restart local v3       #items:[Ljava/lang/CharSequence;
    const v5, 0x7f070043

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 452
    new-array v3, v11, [Ljava/lang/CharSequence;

    .end local v3           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f07004f

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    .line 457
    .restart local v3       #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 462
    .end local v3           #items:[Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 463
    const v5, 0x7f07000d

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, f:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 471
    :cond_2
    new-array v5, v8, [Ljava/lang/Object;

    const v6, 0x7f070043

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, desc:Ljava/lang/String;
    :goto_2
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    new-instance v7, Lcom/htc/music/browserlayer/ArtistBrowserActivity$3;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 465
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_3
    const v5, 0x7f07000c

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_1

    .line 473
    :cond_4
    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_2

    .line 431
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

    .line 566
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 567
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v3

    .line 571
    :cond_1
    const/16 v0, 0x9

    const v1, 0x7f070008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a7e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 572
    const/16 v0, 0xc

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 573
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
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
    .line 535
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDeletionCompleted()V

    .line 536
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

    const-string v1, "call onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 541
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 203
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iput-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    .line 213
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 214
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 356
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 357
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 359
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mShowDirect:Z

    if-eqz v1, :cond_0

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 363
    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 393
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 385
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 386
    const-string v1, "playlisturi"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string v1, "pickermode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 398
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemLongClick, position="

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

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 402
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 404
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 406
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentArtistName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v2, "<unknown>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showDialog(I)V

    .line 414
    :goto_0
    const/4 v0, 0x1

    .line 416
    :cond_0
    return v0

    .line 411
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 604
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 676
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 612
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 614
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 671
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 604
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

    .line 266
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequery(ZZ)V

    .line 270
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 271
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 544
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 545
    packed-switch p1, :pswitch_data_0

    .line 562
    .end local p2
    :goto_0
    return-void

    .line 548
    .restart local p2
    :pswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, f:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f070043

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, desc:Ljava/lang/String;
    :goto_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 551
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    .restart local p2
    :cond_1
    const v2, 0x7f07000c

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #f:Ljava/lang/String;
    goto :goto_1

    .line 558
    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #desc:Ljava/lang/String;
    goto :goto_2

    .line 545
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 582
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v0, 0x1

    .line 587
    .local v0, enabled:Z
    :goto_0
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 588
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 589
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 590
    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_1

    .line 592
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 593
    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_2

    .line 595
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 597
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 582
    .end local v0           #enabled:Z
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 218
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 219
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle()V

    .line 220
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequery(ZZ)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showSpinner(Z)V

    .line 225
    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapterSent:Z

    .line 173
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 181
    const-string v0, "selectedartist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "selectedartistname"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "isshowallsongs"

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mShowDirect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1045
    packed-switch p2, :pswitch_data_0

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1047
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    .line 1051
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequery(Z)V

    goto :goto_0

    .line 1055
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->setAutoRequeryOffAndAutoOn()V

    goto :goto_0

    .line 1045
    nop

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
    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->preSearchTime:J

    .line 1040
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mFilter:Ljava/lang/String;

    .line 1041
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mDelaySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1042
    return-void
.end method

.method public playAllAction(Z)Z
    .locals 13
    .parameter "forceShuffle"

    .prologue
    .line 768
    const/4 v8, 0x0

    .line 769
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v5, "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

    .line 773
    .local v5, mSortOrder:Ljava/lang/String;
    const-string v0, "title != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 775
    const-string v5, "title_key"

    .line 777
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    .line 778
    .local v9, genreId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-nez v0, :cond_2

    .line 779
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 810
    .end local v9           #genreId:J
    :goto_0
    if-eqz v8, :cond_1

    .line 811
    const/4 v6, 0x0

    .line 812
    .local v6, category:Lcom/htc/music/NpCategory;
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mFilter:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Lcom/htc/music/NpCategory;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v6

    .line 816
    :cond_0
    if-eqz p1, :cond_6

    .line 817
    invoke-static {p0, v8, v6}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 820
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 821
    const/4 v8, 0x0

    .line 823
    .end local v6           #category:Lcom/htc/music/NpCategory;
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 786
    .restart local v9       #genreId:J
    :cond_2
    const-string v0, "external"

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 791
    .end local v9           #genreId:J
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 792
    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;

    .line 793
    .local v7, composer:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v11

    .line 794
    .local v11, unknown:Z
    if-eqz v11, :cond_5

    .line 795
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-static {v12}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 803
    .end local v7           #composer:Ljava/lang/String;
    .end local v11           #unknown:Z
    :cond_4
    :goto_2
    const-string v0, " AND is_music>=1"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 798
    .restart local v7       #composer:Ljava/lang/String;
    .restart local v11       #unknown:Z
    :cond_5
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 819
    .end local v7           #composer:Ljava/lang/String;
    .end local v11           #unknown:Z
    .restart local v6       #category:Lcom/htc/music/NpCategory;
    :cond_6
    invoke-static {p0, v8, v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto/16 :goto_1
.end method
