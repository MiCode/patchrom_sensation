.class Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field private mDlnaMode:I

.field private mDrmLockIconResId:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field private mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

.field mTitleIdx:I

.field private mUnknownAlbum:Ljava/lang/String;

.field private mUnknownArtist:Ljava/lang/String;

.field private mcurContent:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V
    .locals 12
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 3316
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 3257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIsNowPlaying:Z

    .line 3259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 3273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 3275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 3281
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 3287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3289
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraintIsValid:Z

    .line 3293
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mcurContent:I

    .line 3295
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    .line 3297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 3641
    new-instance v1, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;Lcom/htc/music/NowPlayingViewHelper$1;)V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 3317
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 3318
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3319
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 3320
    const v1, 0x7f070043

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3321
    const v1, 0x7f070044

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 3326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3328
    .local v8, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 3329
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 3330
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 3333
    iget-object v1, p2, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    .line 3335
    if-eqz p4, :cond_0

    .line 3336
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3338
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 3339
    .local v11, res:Landroid/content/res/Resources;
    const v1, 0x20d008b

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 3340
    .local v10, frameSize:I
    const v1, 0x20d008f

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 3341
    .local v9, framePadding:I
    mul-int/lit8 v1, v9, 0x2

    sub-int v4, v10, v1

    .line 3343
    .local v4, height:I
    new-instance v1, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 3345
    const v1, 0x7f020001

    iput v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    .line 3346
    return-void
.end method

.method static synthetic access$202(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3256
    iput p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)Lcom/htc/music/NowPlayingViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 3359
    if-nez p1, :cond_1

    .line 3371
    :cond_0
    :goto_0
    return-void

    .line 3361
    :cond_1
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    .line 3362
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    .line 3363
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    .line 3364
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumArtIndex:I

    .line 3365
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    .line 3366
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdIdx:I

    .line 3368
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 3369
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 28
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 3422
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;

    .line 3424
    .local v27, vh:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3425
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v1, v4, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v18

    .line 3426
    .local v18, line1:Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 3429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3431
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 3432
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3433
    .local v7, album:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3434
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3439
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3441
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 3442
    .local v21, name:Ljava/lang/String;
    if-eqz v21, :cond_1

    const-string v1, "<unknown>"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3443
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    .line 3448
    .local v17, len:I
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v1, v1

    move/from16 v0, v17

    if-ge v1, v0, :cond_2

    .line 3449
    move/from16 v0, v17

    new-array v1, v0, [C

    move-object/from16 v0, v27

    iput-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 3451
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v4, v0, v5, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3452
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-static {v1, v4, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v19

    .line 3453
    .local v19, line2:Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 3456
    .end local v7           #album:Ljava/lang/String;
    .end local v17           #len:I
    .end local v19           #line2:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 3457
    .local v15, indicator:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v15, :cond_5

    .line 3458
    const/4 v14, -0x1

    .line 3459
    .local v14, id:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_4

    .line 3462
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_b

    .line 3463
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v24

    .line 3464
    .local v24, shufflePos:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move/from16 v0, v24

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 3493
    .end local v24           #shufflePos:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    if-nez v1, :cond_d

    .line 3494
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ne v1, v14, :cond_c

    .line 3496
    const v1, 0x7f02004b

    invoke-virtual {v15, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3497
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3515
    .end local v14           #id:I
    :cond_5
    :goto_3
    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3516
    .local v8, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 3518
    .restart local v21       #name:Ljava/lang/String;
    const-string v1, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3520
    .local v20, minetype:Ljava/lang/String;
    if-eqz v21, :cond_6

    const-string v1, "<unknown>"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_6
    const/16 v26, 0x1

    .line 3521
    .local v26, unknown:Z
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3522
    .local v3, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3523
    .local v2, artIndex:I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 3524
    if-nez v26, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 3526
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3542
    :goto_5
    const-string v1, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 3543
    .local v22, path:Ljava/lang/String;
    if-eqz v22, :cond_15

    const-string v1, "content://drm/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3544
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 3574
    :goto_6
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 3575
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3576
    .local v9, audioId:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v23

    .line 3578
    .local v23, position:I
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 3579
    .local v11, data:Landroid/os/Bundle;
    const-string v1, "audioid"

    invoke-virtual {v11, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3580
    const-string v1, "position"

    move/from16 v0, v23

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3581
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    .line 3584
    .end local v9           #audioId:I
    .end local v11           #data:Landroid/os/Bundle;
    .end local v23           #position:I
    :cond_8
    return-void

    .line 3436
    .end local v2           #artIndex:I
    .end local v3           #art:Ljava/lang/String;
    .end local v8           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v15           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v20           #minetype:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    .end local v26           #unknown:Z
    .restart local v7       #album:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3445
    .restart local v21       #name:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3466
    .end local v7           #album:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    .restart local v14       #id:I
    .restart local v15       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_b
    :try_start_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    goto/16 :goto_2

    .line 3468
    :catch_0
    move-exception v13

    .line 3469
    .local v13, ex:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 3499
    .end local v13           #ex:Landroid/os/RemoteException;
    :cond_c
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3502
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDlnaMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mcurContent:I

    if-ltz v1, :cond_5

    .line 3503
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 3504
    .local v25, test:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mcurContent:I

    move/from16 v0, v25

    if-ne v1, v0, :cond_e

    .line 3506
    const v1, 0x7f02004b

    invoke-virtual {v15, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3507
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3509
    :cond_e
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 3520
    .end local v14           #id:I
    .end local v25           #test:I
    .restart local v8       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v20       #minetype:Ljava/lang/String;
    .restart local v21       #name:Ljava/lang/String;
    :cond_f
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 3528
    .restart local v2       #artIndex:I
    .restart local v3       #art:Ljava/lang/String;
    .restart local v26       #unknown:Z
    :cond_10
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v16

    .line 3529
    .local v16, item:Lcom/htc/music/util/MBitmap;
    if-nez v16, :cond_12

    const/4 v10, 0x0

    .line 3530
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :goto_7
    if-nez v16, :cond_13

    const/4 v12, 0x0

    .line 3531
    .local v12, decodePath:Ljava/lang/String;
    :goto_8
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v12, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3532
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v6, v4

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 3534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 3529
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #decodePath:Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_7

    .line 3530
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    :cond_13
    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    .line 3536
    .restart local v12       #decodePath:Ljava/lang/String;
    :cond_14
    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 3547
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #decodePath:Ljava/lang/String;
    .end local v16           #item:Lcom/htc/music/util/MBitmap;
    .restart local v22       #path:Ljava/lang/String;
    :cond_15
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v20, :cond_16

    const-string v1, "audio/x-wma-drm"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3548
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    goto/16 :goto_6

    .line 3552
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3588
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 3589
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3590
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3591
    :cond_0
    if-eqz p1, :cond_1

    .line 3592
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3597
    :cond_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/NowPlayingViewHelper;->access$902(Lcom/htc/music/NowPlayingViewHelper;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3599
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3600
    invoke-direct {p0, p1}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3602
    :cond_2
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "section"

    .prologue
    .line 3629
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 3631
    .local v0, pos:I
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$4500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "track"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3634
    .end local v0           #pos:I
    :goto_0
    return v0

    .restart local v0       #pos:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 3638
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3620
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mSortOrder:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$4500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3622
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 3624
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 3375
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3376
    .local v2, v:Landroid/view/View;
    const v4, 0x7f080071

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3383
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    .line 3384
    .local v3, vh:Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;
    const v4, 0x7f080043

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 3385
    iget-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 3387
    const v4, 0x7f080042

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3389
    iget-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v4, :cond_0

    .line 3390
    iget-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v5, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3393
    :cond_0
    const v4, 0x202001a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 3394
    const v4, 0x7f080044

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 3396
    const-string v4, "common_arrow"

    const v5, 0x20807c9

    invoke-static {p1, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3397
    .local v0, arrowResId:I
    iget-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3398
    iget-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3399
    iget-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v5, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;

    invoke-direct {v5, p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$1;-><init>(Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3412
    new-instance v4, Landroid/database/CharArrayBuffer;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 3413
    const/16 v4, 0xc8

    new-array v4, v4, [C

    iput-object v4, v3, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 3415
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3416
    return-object v2
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 3665
    if-nez p2, :cond_1

    .line 3702
    :cond_0
    :goto_0
    return-void

    .line 3666
    :cond_1
    iget-object v9, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, v9, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    .line 3668
    .local v6, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 3669
    .local v3, childCount:I
    if-gtz v3, :cond_2

    .line 3670
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3674
    :cond_2
    const/4 v8, 0x0

    .line 3675
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

    .line 3676
    const/4 v9, 0x0

    aget-object v8, p5, v9

    .end local v8           #path:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 3678
    .restart local v8       #path:Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/htc/music/util/MBitmap;

    invoke-direct {v2, p2, v8}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 3679
    .local v2, b:Lcom/htc/music/util/MBitmap;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v9, p1, v2, p3, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v0

    .line 3680
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 3684
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 3685
    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3690
    .local v7, ll:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 3691
    const v9, 0x7f080042

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 3692
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_4

    .line 3693
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3695
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 3696
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3684
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v5           #integer:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 3606
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3607
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3609
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3614
    :goto_0
    return-object v0

    .line 3611
    :cond_2
    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/htc/music/NowPlayingViewHelper;->access$1700(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3612
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3613
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 3349
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$TrackListAdapter;->mNowPlayingViewHelper:Lcom/htc/music/NowPlayingViewHelper;

    .line 3350
    return-void
.end method
