.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

.field private mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field private mDlnaMode:I

.field private mDrmLockIconResId:I

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field mIsNowPlaying:Z

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private mcurContent:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 12
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 4412
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 4342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 4350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 4356
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 4358
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 4362
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    .line 4366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 4834
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Lcom/htc/music/browserlayer/TrackBrowserActivity$1;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 4413
    iput-object p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 4414
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 4415
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    .line 4416
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 4417
    const v1, 0x7f070043

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 4418
    const v1, 0x7f070044

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 4420
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 4423
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 4425
    .local v8, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 4426
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 4427
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 4430
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    .line 4432
    if-eqz p4, :cond_0

    .line 4433
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4435
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 4436
    .local v11, res:Landroid/content/res/Resources;
    const v1, 0x20d008b

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 4437
    .local v10, frameSize:I
    const v1, 0x20d008f

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 4438
    .local v9, framePadding:I
    mul-int/lit8 v1, v9, 0x2

    sub-int v4, v10, v1

    .line 4440
    .local v4, height:I
    new-instance v1, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 4442
    const v1, 0x7f020001

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    .line 4444
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_1

    .line 4445
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1502(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 4447
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4325
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    return p1
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4325
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4325
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4325
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 4460
    if-eqz p1, :cond_0

    .line 4461
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 4462
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 4463
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    .line 4464
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumArtIndex:I

    .line 4466
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4467
    const-string v0, "audio_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    .line 4473
    :goto_0
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    .line 4475
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_2

    .line 4476
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 4481
    :cond_0
    :goto_1
    return-void

    .line 4470
    :cond_1
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0

    .line 4477
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4478
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 33
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 4561
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 4563
    .local v30, vh:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 4564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 4565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v4, v5}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4100(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 4567
    .local v21, markedString:Ljava/lang/CharSequence;
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 4573
    .end local v21           #markedString:Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 4574
    .local v10, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v10, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4576
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 4577
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 4578
    .local v23, name:Ljava/lang/String;
    if-eqz v23, :cond_0

    const-string v1, "<unknown>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4579
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4584
    :goto_1
    const-string v1, " - "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4586
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 4587
    if-eqz v23, :cond_1

    const-string v1, "<unknown>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4588
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4592
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    .line 4593
    .local v18, len:I
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v1, v1

    move/from16 v0, v18

    if-ge v1, v0, :cond_2

    .line 4594
    move/from16 v0, v18

    new-array v1, v0, [C

    move-object/from16 v0, v30

    iput-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 4596
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v5, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v1, v0, v4, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 4597
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v1, v4, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v20

    .line 4598
    .local v20, line2:Ljava/lang/String;
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 4601
    .end local v18           #len:I
    .end local v20           #line2:Ljava/lang/String;
    .end local v23           #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v16, v0

    .line 4602
    .local v16, indicator:Lcom/htc/widget/HtcListItemImageButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v16, :cond_7

    .line 4604
    const/4 v15, -0x1

    .line 4605
    .local v15, id:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_4

    .line 4608
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_11

    .line 4610
    :try_start_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_10

    .line 4611
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v27

    .line 4612
    .local v27, shufflePos:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move/from16 v0, v27

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    .line 4646
    .end local v27           #shufflePos:I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    if-nez v1, :cond_13

    .line 4647
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-eq v1, v15, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v15, :cond_12

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-nez v1, :cond_12

    .line 4649
    :cond_6
    const v1, 0x7f02004b

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 4650
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 4669
    .end local v15           #id:I
    :cond_7
    :goto_4
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v26, v0

    .line 4670
    .local v26, rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v26, :cond_8

    .line 4671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4672
    const/4 v1, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 4673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "common_rearrange_selector"

    const v5, 0x7f020069

    invoke-static {v1, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 4688
    :cond_8
    :goto_5
    move-object/from16 v0, v30

    iget-object v11, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 4689
    .local v11, checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4690
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 4691
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setTag(Ljava/lang/Object;)V

    .line 4693
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4694
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 4701
    :cond_9
    :goto_6
    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 4702
    .local v7, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 4705
    .restart local v23       #name:Ljava/lang/String;
    const-string v1, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 4708
    .local v22, minetype:Ljava/lang/String;
    if-eqz v23, :cond_a

    const-string v1, "<unknown>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_a
    const/16 v29, 0x1

    .line 4709
    .local v29, unknown:Z
    :goto_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4710
    .local v3, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4711
    .local v2, artIndex:I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 4712
    if-nez v29, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    .line 4714
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4730
    :goto_8
    const-string v1, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 4731
    .local v24, path:Ljava/lang/String;
    if-eqz v24, :cond_1e

    const-string v1, "content://drm/"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4732
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 4762
    :goto_9
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v1, :cond_c

    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 4763
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 4764
    .local v8, audioId:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v25

    .line 4766
    .local v25, position:I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 4767
    .local v12, data:Landroid/os/Bundle;
    const-string v1, "audioid"

    invoke-virtual {v12, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4768
    const-string v1, "position"

    move/from16 v0, v25

    invoke-virtual {v12, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4769
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    .line 4772
    .end local v8           #audioId:I
    .end local v12           #data:Landroid/os/Bundle;
    .end local v25           #position:I
    :cond_c
    return-void

    .line 4569
    .end local v2           #artIndex:I
    .end local v3           #art:Ljava/lang/String;
    .end local v7           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v10           #builder:Ljava/lang/StringBuilder;
    .end local v11           #checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    .end local v16           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v22           #minetype:Ljava/lang/String;
    .end local v23           #name:Ljava/lang/String;
    .end local v24           #path:Ljava/lang/String;
    .end local v26           #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    .end local v29           #unknown:Z
    :cond_d
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v1, v4, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v19

    .line 4570
    .local v19, line1:Ljava/lang/String;
    move-object/from16 v0, v30

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4581
    .end local v19           #line1:Ljava/lang/String;
    .restart local v10       #builder:Ljava/lang/StringBuilder;
    .restart local v23       #name:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 4590
    :cond_f
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 4614
    .end local v23           #name:Ljava/lang/String;
    .restart local v15       #id:I
    .restart local v16       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_10
    :try_start_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v15

    goto/16 :goto_3

    .line 4616
    :catch_0
    move-exception v14

    .line 4617
    .local v14, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 4622
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 4620
    :cond_11
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v15

    goto/16 :goto_3

    .line 4653
    :cond_12
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 4656
    :cond_13
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    if-ltz v1, :cond_7

    .line 4657
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 4658
    .local v28, test:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    move/from16 v0, v28

    if-ne v1, v0, :cond_14

    .line 4659
    const v1, 0x7f02004b

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 4660
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 4663
    :cond_14
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 4677
    .end local v15           #id:I
    .end local v28           #test:I
    .restart local v26       #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v31, 0x0

    cmp-long v1, v4, v31

    if-eqz v1, :cond_8

    .line 4678
    const/4 v1, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 4679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4680
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCheckedView(Landroid/view/View;JZ)V

    goto/16 :goto_5

    .line 4682
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setCheckedView(Landroid/view/View;JZ)V

    goto/16 :goto_5

    .line 4697
    .restart local v11       #checkBox:Lcom/htc/widget/HtcListItemCheckBox;
    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto/16 :goto_6

    .line 4708
    .restart local v7       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v22       #minetype:Ljava/lang/String;
    .restart local v23       #name:Ljava/lang/String;
    :cond_18
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 4716
    .restart local v2       #artIndex:I
    .restart local v3       #art:Ljava/lang/String;
    .restart local v29       #unknown:Z
    :cond_19
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v17

    .line 4717
    .local v17, item:Lcom/htc/music/util/MBitmap;
    if-nez v17, :cond_1b

    const/4 v9, 0x0

    .line 4718
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_a
    if-nez v17, :cond_1c

    const/4 v13, 0x0

    .line 4719
    .local v13, decodePath:Ljava/lang/String;
    :goto_b
    if-eqz v9, :cond_1a

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v9, :cond_1d

    invoke-static {v13, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 4720
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v6, v4

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 4722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 4717
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #decodePath:Ljava/lang/String;
    :cond_1b
    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_a

    .line 4718
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_1c
    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    .line 4724
    .restart local v13       #decodePath:Ljava/lang/String;
    :cond_1d
    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 4735
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #decodePath:Ljava/lang/String;
    .end local v17           #item:Lcom/htc/music/util/MBitmap;
    .restart local v24       #path:Ljava/lang/String;
    :cond_1e
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz v22, :cond_1f

    const-string v1, "audio/x-wma-drm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4736
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    goto/16 :goto_9

    .line 4740
    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_9
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 4776
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 4777
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4778
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4780
    :cond_0
    if-eqz p1, :cond_1

    .line 4781
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4784
    :cond_1
    if-eqz p1, :cond_2

    .line 4787
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 4789
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1402(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 4790
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateOptionsMenu()V

    .line 4791
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 4792
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 4794
    :cond_3
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 4821
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    .line 4827
    :cond_0
    :goto_0
    return v0

    .line 4822
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 4824
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 4827
    goto :goto_0
.end method

.method public getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;
    .locals 1

    .prologue
    .line 4456
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 4831
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4814
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 4816
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 4485
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4486
    .local v2, v:Landroid/view/View;
    const v4, 0x7f080071

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4493
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    .line 4494
    .local v3, vh:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    const v4, 0x7f080043

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 4495
    const v4, 0x7f080075

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 4496
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    if-eqz v4, :cond_0

    .line 4497
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    new-instance v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4514
    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4515
    :cond_1
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 4521
    :goto_0
    const v4, 0x7f080042

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 4523
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v4, :cond_2

    .line 4524
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v5, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4527
    :cond_2
    const v4, 0x202001a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 4528
    const v4, 0x7f080044

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 4529
    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4530
    :cond_3
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v4, :cond_4

    .line 4531
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 4551
    :cond_4
    :goto_1
    new-instance v4, Landroid/database/CharArrayBuffer;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 4552
    const/16 v4, 0xc8

    new-array v4, v4, [C

    iput-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 4554
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4555
    return-object v2

    .line 4518
    :cond_5
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 4534
    :cond_6
    const-string v4, "common_arrow"

    const v5, 0x20807c9

    invoke-static {p1, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 4535
    .local v0, arrowResId:I
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 4536
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 4537
    iget-object v4, v3, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$2;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$2;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 4858
    if-nez p2, :cond_1

    .line 4889
    :cond_0
    :goto_0
    return-void

    .line 4859
    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    .line 4860
    .local v6, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 4861
    .local v3, childCount:I
    if-gtz v3, :cond_2

    .line 4862
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 4866
    :cond_2
    const/4 v8, 0x0

    .line 4867
    .local v8, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    array-length v9, p5

    if-lez v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 4868
    const/4 v9, 0x0

    aget-object v8, p5, v9

    .end local v8           #path:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 4870
    .restart local v8       #path:Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/htc/music/util/MBitmap;

    invoke-direct {v2, p2, v8}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4871
    .local v2, b:Lcom/htc/music/util/MBitmap;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v9, p1, v2, p3, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v0

    .line 4872
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 4873
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 4874
    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4876
    .local v7, ll:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 4877
    const v9, 0x7f080042

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 4879
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_4

    .line 4880
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 4882
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 4883
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4873
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v5           #integer:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 4798
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4799
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4801
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4806
    :goto_0
    return-object v0

    .line 4803
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4804
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 4805
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 4450
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 4451
    return-void
.end method
