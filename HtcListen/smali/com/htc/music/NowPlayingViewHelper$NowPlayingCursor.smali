.class Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mContentObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[I

.field private mDataSetObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlaying:[I

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSize:I

.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method public constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "service"
    .parameter "cols"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2574
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 2976
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 2978
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2980
    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 2982
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    .line 2984
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    .line 2986
    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    .line 2988
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 2990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    .line 2992
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    .line 2575
    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 2576
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 2577
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 2578
    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 2749
    const-string v1, "("

    .line 2750
    .local v1, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v0, v2, :cond_1

    .line 2751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2752
    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2750
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2756
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2757
    const-string v2, "NowPlayingCursor: "

    invoke-static {v2, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 19

    .prologue
    .line 2590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2592
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2596
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2604
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    if-nez v1, :cond_2

    .line 2605
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "now playing list is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    :cond_1
    :goto_1
    return-void

    .line 2597
    :catch_0
    move-exception v10

    .line 2598
    .local v10, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_0

    .line 2599
    .end local v10           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 2600
    .local v10, ex:Ljava/lang/NullPointerException;
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "mService is null!!, will return directly"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_0

    .line 2609
    .end local v10           #ex:Ljava/lang/NullPointerException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 2610
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-eqz v1, :cond_1

    .line 2614
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2615
    .local v18, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v11, v1, :cond_4

    .line 2617
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v1, v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2618
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_3

    .line 2619
    const-string v1, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2622
    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2627
    .local v7, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v1, v7}, Lcom/htc/music/NowPlayingViewHelper;->access$3300(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mIsEnhancerExist:Z
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$3700(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2631
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_6

    .line 2632
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    goto/16 :goto_1

    .line 2635
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2636
    .local v15, size:I
    new-array v1, v15, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    .line 2637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 2639
    .local v8, colidx:I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_7

    .line 2640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v1, v11

    .line 2641
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2639
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2648
    :cond_7
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mPos:I

    .line 2649
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mRowIdColumnIndex:I

    .line 2650
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 2651
    invoke-super/range {p0 .. p0}, Landroid/database/AbstractCursor;->moveToFirst()Z

    .line 2652
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    .line 2660
    const/4 v13, 0x0

    .line 2661
    .local v13, removeTrackCount:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 2663
    .local v16, trackIds:[I
    const/4 v14, 0x0

    .line 2664
    .local v14, removed:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    add-int/lit8 v11, v1, -0x1

    :goto_4
    if-ltz v11, :cond_9

    .line 2665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v17, v1, v11

    .line 2666
    .local v17, trackid:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    move/from16 v0, v17

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    .line 2667
    .local v9, crsridx:I
    if-gez v9, :cond_8

    .line 2672
    aput v17, v16, v13

    .line 2673
    add-int/lit8 v13, v13, 0x1

    .line 2664
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 2676
    .end local v9           #crsridx:I
    .end local v17           #trackid:I
    :cond_9
    if-lez v13, :cond_a

    .line 2677
    new-array v12, v13, [I

    .line 2678
    .local v12, removePosition:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v12

    move-object/from16 v0, v16

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v12}, Lcom/htc/music/IMediaPlaybackService;->removeTracksReduceBroadcast([I)I

    move-result v1

    add-int/2addr v14, v1

    .line 2682
    .end local v12           #removePosition:[I
    :cond_a
    if-lez v14, :cond_1

    .line 2683
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    .line 2684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 2685
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-nez v1, :cond_1

    .line 2686
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 2690
    .end local v14           #removed:I
    .end local v16           #trackIds:[I
    :catch_2
    move-exception v10

    .line 2691
    .local v10, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    goto/16 :goto_1
.end method

.method private moveQueueItem(II)V
    .locals 6
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 2889
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v3

    .line 2890
    .local v0, PlayListLen:I
    if-lt p1, v0, :cond_0

    .line 2891
    add-int/lit8 p1, v0, -0x1

    .line 2893
    :cond_0
    if-lt p2, v0, :cond_1

    .line 2894
    add-int/lit8 p2, v0, -0x1

    .line 2896
    :cond_1
    if-ge p1, p2, :cond_4

    .line 2897
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 2898
    .local v2, tmp:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 2899
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 2898
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2901
    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    .line 2910
    .end local v1           #i:I
    .end local v2           #tmp:I
    :cond_3
    :goto_1
    return-void

    .line 2902
    :cond_4
    if-ge p2, p1, :cond_3

    .line 2903
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 2904
    .restart local v2       #tmp:I
    move v1, p1

    .restart local v1       #i:I
    :goto_2
    if-le v1, p2, :cond_5

    .line 2905
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 2904
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2907
    :cond_5
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 2828
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2829
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2830
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2823
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 2824
    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 2876
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2879
    :goto_0
    return v1

    .line 2877
    :catch_0
    move-exception v0

    .line 2878
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2879
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .parameter "idx"

    .prologue
    .line 2866
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2869
    :goto_0
    return-object v1

    .line 2867
    :catch_0
    move-exception v0

    .line 2868
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2869
    const-string v1, ""

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2697
    iget v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 2783
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2786
    :goto_0
    return v1

    .line 2784
    :catch_0
    move-exception v0

    .line 2785
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2786
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 2793
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2796
    :goto_0
    return-wide v1

    .line 2794
    :catch_0
    move-exception v0

    .line 2795
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2796
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getMediaPlaybackService()Lcom/htc/music/IMediaPlaybackService;
    .locals 1

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method public getNowPlayingQueue()[I
    .locals 1

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    return-object v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 2773
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2776
    :goto_0
    return v1

    .line 2774
    :catch_0
    move-exception v0

    .line 2775
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2776
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 2763
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2766
    :goto_0
    return-object v1

    .line 2764
    :catch_0
    move-exception v0

    .line 2765
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onChange(Z)V

    .line 2766
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2744
    invoke-direct {p0, p1, p2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->moveQueueItem(II)V

    .line 2745
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z

    .line 2746
    return-void
.end method

.method public onMove(II)Z
    .locals 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v2, 0x1

    .line 2702
    if-ne p1, p2, :cond_0

    .line 2718
    :goto_0
    return v2

    .line 2705
    :cond_0
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    if-nez v3, :cond_2

    .line 2706
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2713
    :cond_2
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v3, p2

    .line 2714
    .local v1, newid:I
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 2715
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2716
    iput p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 2918
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2920
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2921
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2929
    :goto_0
    return-void

    .line 2922
    :catch_0
    move-exception v0

    .line 2923
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2924
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2927
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerContentObserver: Illegal Argument."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 2948
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2950
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2951
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2959
    :goto_0
    return-void

    .line 2952
    :catch_0
    move-exception v0

    .line 2953
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2954
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2957
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "registerDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 4
    .parameter "which"

    .prologue
    .line 2723
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 2724
    const/4 v1, 0x0

    .line 2735
    :goto_0
    return v1

    .line 2726
    :cond_0
    move v0, p1

    .line 2727
    .local v0, i:I
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    .line 2728
    :goto_1
    iget v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 2729
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 2730
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2732
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2735
    .end local v0           #i:I
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 2733
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 5

    .prologue
    .line 2834
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2835
    .local v0, contentObserver:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/ContentObserver;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2837
    .local v1, dataSetObserver:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/DataSetObserver;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    .line 2838
    .local v3, o:Landroid/database/ContentObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 2840
    .end local v3           #o:Landroid/database/ContentObserver;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/DataSetObserver;

    .line 2841
    .local v3, o:Landroid/database/DataSetObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 2844
    .end local v3           #o:Landroid/database/DataSetObserver;
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 2846
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    .line 2847
    .local v3, o:Landroid/database/ContentObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 2849
    .end local v3           #o:Landroid/database/ContentObserver;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/DataSetObserver;

    .line 2850
    .local v3, o:Landroid/database/DataSetObserver;
    invoke-virtual {p0, v3}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2851
    if-eqz v3, :cond_3

    .line 2852
    invoke-virtual {v3}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_3

    .line 2856
    .end local v3           #o:Landroid/database/DataSetObserver;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2857
    const/4 v0, 0x0

    .line 2858
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2859
    const/4 v1, 0x0

    .line 2860
    const/4 v4, 0x1

    return v4
.end method

.method public setMediaPlaybackService(Lcom/htc/music/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 2585
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 2586
    invoke-direct {p0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 2587
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 2933
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2935
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2936
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mContentObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2944
    :goto_0
    return-void

    .line 2937
    :catch_0
    move-exception v0

    .line 2938
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2939
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2942
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterContentObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 2963
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2965
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2966
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingCursor;->mDataSetObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2974
    :goto_0
    return-void

    .line 2967
    :catch_0
    move-exception v0

    .line 2968
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2969
    const-string v1, "[NowPlayingViewHelper]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2972
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "unregisterDataSetObserver: Illegal Argument"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
