.class Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;
.super Lcom/htc/music/browserlayer/HTCCursorAdapter;
.source "GenreBrowserActivityExp.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenresCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$GenreViewHolder;,
        Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field alphabetColumnIndex:I

.field private mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

.field private mAlbumArtCache:Ljava/util/Hashtable;

.field mAllAlbumsLabel:Ljava/lang/String;

.field mAllSongsLabel:Ljava/lang/String;

.field private mAlphabet:Ljava/lang/StringBuffer;

.field mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetColumnIndex:I

.field mAlphabetLength:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIndexer:Lcom/htc/music/widget/HtcAlphabetIndexer;

.field private mIndexerTable:Ljava/util/Hashtable;

.field private mListViewHeight:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mResources:Landroid/content/res/Resources;

.field private mRootCursor:Landroid/database/Cursor;

.field private mSectionPosition:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private mViewGroup:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;[II)V
    .locals 10
    .parameter
    .parameter "context"
    .parameter "currentActivity"
    .parameter "cursor"
    .parameter
    .parameter "layoutlist"
    .parameter "cacheCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/music/browserlayer/GenreBrowserActivityExp;",
            "Landroid/database/Cursor;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;[II)V"
        }
    .end annotation

    .prologue
    .line 1399
    .local p5, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    .line 1401
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, p5, v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/LinkedList;Z)V

    .line 1317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mRootCursor:Landroid/database/Cursor;

    .line 1339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    .line 1347
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    .line 1349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 1389
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    .line 1391
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->alphabetColumnIndex:I

    .line 1393
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    .line 1394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    .line 1396
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mListViewHeight:I

    .line 2165
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    .line 2166
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetColumnIndex:I

    .line 2276
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mSectionPosition:I

    .line 1402
    const v0, 0x7f070044

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1403
    const v0, 0x7f070043

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1405
    iput-object p3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    .line 1406
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 1408
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    .line 1411
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1412
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1413
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1415
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    .line 1416
    iget v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    .line 1417
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    if-ge v9, v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1417
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1421
    :cond_0
    const v0, 0x7f07009a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    .line 1422
    const v0, 0x7f070099

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    .line 1423
    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->cacheAlbumArt(Landroid/content/Context;)V

    .line 1425
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 1426
    .local v8, frameSize:I
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1427
    .local v7, framePadding:I
    mul-int/lit8 v0, v7, 0x2

    sub-int v0, v8, v0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mListViewHeight:I

    .line 1429
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mListViewHeight:I

    iget v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mListViewHeight:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 1430
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;I)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1313
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1313
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->updateAlphabetIndex()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1313
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private cacheAlbumArt(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 1433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1434
    .local v5, s:J
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1435
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 1454
    :goto_0
    return-void

    .line 1437
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1438
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1440
    .local v4, id:Ljava/lang/String;
    const-string v7, "album_art"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, art:Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1443
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1444
    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1447
    .end local v0           #art:Ljava/lang/String;
    .end local v4           #id:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 1448
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1449
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1450
    :cond_2
    const/4 v1, 0x0

    .line 1452
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1454
    .local v2, e:J
    goto :goto_0
.end method

.method private getAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "context"
    .parameter "columns"

    .prologue
    .line 1473
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1474
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1477
    .local v4, whereclause:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "album COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 1479
    .local v7, ret:Landroid/database/Cursor;
    return-object v7
.end method

.method private getGenreAllSongs(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "context"
    .parameter "cols"
    .parameter "genreId"

    .prologue
    const/4 v4, 0x0

    .line 2109
    const/4 v7, 0x0

    .line 2110
    .local v7, ret:Landroid/database/Cursor;
    const-string v8, "title_key"

    .line 2111
    .local v8, sortOrder:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2112
    .local v9, where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genre_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    const-string v0, "external"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2115
    return-object v7
.end method

.method private getGenresAlbumCursor(IZ)Landroid/database/Cursor;
    .locals 8
    .parameter "genreId"
    .parameter "unknown"

    .prologue
    .line 2066
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2067
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    if-nez p2, :cond_1

    .line 2069
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 2080
    const-string v0, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2097
    .local v6, ret:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1900(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 2100
    :cond_0
    return-object v6

    .line 2071
    .end local v6           #ret:Landroid/database/Cursor;
    :cond_1
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2090
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getGenresAlbumCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "genreId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2053
    invoke-direct {p0, p2, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCursor(IZ)Landroid/database/Cursor;

    move-result-object v0

    .line 2055
    .local v0, ret:Landroid/database/Cursor;
    invoke-direct {p0, p2, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCursor(IZ)Landroid/database/Cursor;

    move-result-object v2

    .line 2056
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 2057
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 2062
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_0
    return-object v0
.end method

.method private getGenresAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 3
    .parameter "parentCursor"
    .parameter "cursorPosition"

    .prologue
    .line 2043
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2044
    :cond_0
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "getGenresAlbumCusror, parentCursor = null or parentCursor closed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    const/4 v1, 0x0

    .line 2048
    :goto_0
    return-object v1

    .line 2047
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2048
    .local v0, genresId:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private getGenresAllSongs(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "context"
    .parameter "genresId"

    .prologue
    const/4 v5, 0x0

    .line 2019
    const/4 v9, 0x0

    .line 2021
    .local v9, ret:Landroid/database/Cursor;
    const-string v10, "title_key"

    .line 2022
    .local v10, sortOrder:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2023
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "album_id"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "artist_id"

    aput-object v1, v3, v0

    .line 2030
    .local v3, cols:[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    .line 2031
    .local v7, genreId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    .line 2032
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2039
    :goto_0
    return-object v9

    .line 2036
    :cond_0
    const-string v0, "external"

    invoke-static {v0, v7, v8}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v5

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0
.end method

.method private getGenresArtistCursor(I)Landroid/database/Cursor;
    .locals 6
    .parameter "genreId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1935
    invoke-direct {p0, p1, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(IZ)Landroid/database/Cursor;

    move-result-object v0

    .line 1937
    .local v0, ret:Landroid/database/Cursor;
    invoke-direct {p0, p1, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(IZ)Landroid/database/Cursor;

    move-result-object v2

    .line 1938
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 1939
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 1940
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 1949
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 1944
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1945
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getGenresArtistCursor(IZ)Landroid/database/Cursor;
    .locals 8
    .parameter "genreId"
    .parameter "unknown"

    .prologue
    .line 1953
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1954
    .local v7, where:Ljava/lang/StringBuilder;
    const-string v0, "artist != \'\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    if-nez p2, :cond_0

    .line 1956
    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1966
    const-string v0, " AND _id  in (select  distinct artist_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    :goto_1
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 1988
    .local v2, ArtistCols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1992
    .local v6, ret:Landroid/database/Cursor;
    return-object v6

    .line 1958
    .end local v2           #ArtistCols:[Ljava/lang/String;
    .end local v6           #ret:Landroid/database/Cursor;
    :cond_0
    const-string v0, " AND artist = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1976
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id  in (select  distinct artist_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getGenresArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "genresId"
    .parameter "allSongsLabel"
    .parameter "allAlbumsLabel"

    .prologue
    const/4 v4, 0x2

    .line 1997
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2000
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2001
    .local v3, songsNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2003
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2007
    .local v0, albumsNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2010
    new-instance v2, Landroid/database/MergeCursor;

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    new-instance v6, Lcom/htc/music/util/ArrayListCursor;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistCols:[Ljava/lang/String;

    invoke-direct {v6, v7, v1}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(I)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 2015
    .local v2, ret:Landroid/database/Cursor;
    return-object v2
.end method

.method private getGenresArtistCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 4
    .parameter "parentCursor"
    .parameter "cursorPosition"

    .prologue
    .line 1930
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1931
    .local v0, genresId:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getGenresArtistCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 4
    .parameter "parentCursor"
    .parameter "cursorPosition"

    .prologue
    .line 1921
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1922
    :cond_0
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "getGenresArtistCusror, parentCursor = null or parentCursor closed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const/4 v1, 0x0

    .line 1926
    :goto_0
    return-object v1

    .line 1925
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1926
    .local v0, genresId:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private getGenresSongCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 3
    .parameter "parentCursor"
    .parameter "cursorPosition"

    .prologue
    .line 2104
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2105
    .local v0, genresId:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mSongCols:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenreAllSongs(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "genres"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 1903
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1904
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 1905
    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. album="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1907
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1908
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1909
    const-string v1, "albumid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1914
    :goto_0
    if-eqz p3, :cond_0

    .line 1915
    const-string v1, "artistid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1916
    :cond_0
    const-string v1, "genreid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1917
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->startActivity(Landroid/content/Intent;)V

    .line 1918
    return-void

    .line 1911
    :cond_1
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1912
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 2122
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2123
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 2130
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 2126
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2127
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 2129
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v1, v7

    .line 2130
    goto :goto_0
.end method

.method private setAlphabet(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 2135
    if-nez p1, :cond_1

    .line 2163
    :cond_0
    return-void

    .line 2138
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2141
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 2142
    const/4 v1, 0x0

    .line 2144
    .local v1, cursorPosition:I
    iget v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetColumnIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2145
    .local v0, artist:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_2

    .line 2146
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2147
    .local v2, word:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 2148
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2149
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    .end local v2           #word:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2153
    add-int/lit8 v1, v1, 0x1

    .line 2154
    iget v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetColumnIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2155
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_2

    .line 2156
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2157
    .restart local v2       #word:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 2158
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2159
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateAlphabetIndex()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 2170
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v5

    .line 2171
    .local v5, nodeList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    if-nez v5, :cond_1

    .line 2248
    :cond_0
    return-void

    .line 2174
    :cond_1
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 2175
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    .line 2176
    .local v6, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 2177
    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2178
    .local v4, node:Lcom/htc/music/browserlayer/HtcListNode;
    iget v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v11, :cond_2

    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v11, :cond_2

    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2176
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2180
    :cond_3
    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v12, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2181
    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v12, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetColumnIndex:I

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2182
    .local v9, title:Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v14, :cond_2

    .line 2183
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2184
    .local v10, word:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 2185
    const-string v11, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v11, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 2186
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2187
    const-string v11, "[GenreBrowserActivityExp]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2195
    .end local v4           #node:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #word:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    if-ge v0, v11, :cond_0

    .line 2197
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v7, v11, v0

    .line 2198
    .local v7, targetLetter:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2199
    .local v1, integer:Ljava/lang/Integer;
    if-nez v1, :cond_6

    .line 2201
    const/4 v3, 0x0

    .line 2202
    .local v3, j:I
    const/4 v2, 0x0

    .line 2204
    .local v2, integer2:Ljava/lang/Integer;
    add-int/lit8 v3, v0, 0x1

    :goto_3
    iget v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetLength:I

    if-ge v3, v11, :cond_5

    .line 2206
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v8, v11, v3

    .line 2207
    .local v8, targetLetter2:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #integer2:Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 2208
    .restart local v2       #integer2:Ljava/lang/Integer;
    if-nez v2, :cond_5

    .line 2204
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2216
    .end local v8           #targetLetter2:Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_7

    .line 2218
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v7, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    .end local v2           #integer2:Ljava/lang/Integer;
    .end local v3           #j:I
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2222
    .restart local v2       #integer2:Ljava/lang/Integer;
    .restart local v3       #j:I
    :cond_7
    iget-object v11, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 2252
    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor - start"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_0

    .line 2254
    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor - change!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iput-object p1, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 2256
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->updateOptionsMenu()V

    .line 2257
    invoke-super {p0, p1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2260
    :cond_0
    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor() - ok"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2300
    if-nez p4, :cond_0

    .line 2301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000d

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 2304
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v5

    .line 2305
    .local v5, position:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2307
    .local v11, info:Lcom/htc/music/browserlayer/HtcListNode;
    if-nez v11, :cond_1

    .line 2308
    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info is null in getChildView. position = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    :goto_0
    return-object p4

    .line 2312
    :cond_1
    const v1, 0x7f080043

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItem2LineText;

    .line 2313
    .local v14, text:Lcom/htc/widget/HtcListItem2LineText;
    const v1, 0x7f080042

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemTileImage;

    .line 2315
    .local v10, icon:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v11}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v13

    check-cast v13, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2317
    .local v13, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v1, v13, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2318
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 2324
    :goto_1
    iget v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 2325
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2326
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2328
    iget v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    if-eqz v1, :cond_a

    .line 2329
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v12

    .line 2330
    .local v12, item:Lcom/htc/music/util/MBitmap;
    if-nez v12, :cond_6

    const/4 v8, 0x0

    .line 2331
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-nez v12, :cond_7

    const/4 v9, 0x0

    .line 2333
    .local v9, decodePath:Ljava/lang/String;
    :goto_3
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_9

    .line 2334
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2336
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const-string v2, "album_art"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2337
    .local v7, albumArtColIdx:I
    const/4 v3, 0x0

    .line 2338
    .local v3, cursorArtPath:Ljava/lang/String;
    if-ltz v7, :cond_2

    .line 2339
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2342
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2343
    :cond_3
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2344
    if-ltz v7, :cond_4

    .line 2345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    iget v4, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v6, v15

    const/4 v15, 0x1

    aput-object v3, v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 2349
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2321
    .end local v3           #cursorArtPath:Ljava/lang/String;
    .end local v7           #albumArtColIdx:I
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #decodePath:Ljava/lang/String;
    .end local v12           #item:Lcom/htc/music/util/MBitmap;
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto/16 :goto_1

    .line 2330
    .restart local v12       #item:Lcom/htc/music/util/MBitmap;
    :cond_6
    invoke-virtual {v12}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    .line 2331
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v12}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 2351
    .restart local v3       #cursorArtPath:Ljava/lang/String;
    .restart local v7       #albumArtColIdx:I
    .restart local v9       #decodePath:Ljava/lang/String;
    :cond_8
    invoke-virtual {v10, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2355
    .end local v3           #cursorArtPath:Ljava/lang/String;
    .end local v7           #albumArtColIdx:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2356
    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChildView, info.cursor is null, position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2360
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #decodePath:Ljava/lang/String;
    .end local v12           #item:Lcom/htc/music/util/MBitmap;
    :cond_a
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 20
    .parameter "groupPosition"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2404
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 2406
    .local v13, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2407
    .local v11, info:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v7, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 2408
    .local v7, cursor:Landroid/database/Cursor;
    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2410
    iget v12, v11, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 2414
    .local v12, level:I
    if-nez v12, :cond_5

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v7, v1, v2, v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v5

    .line 2417
    .local v5, childCursor:Landroid/database/Cursor;
    if-nez v5, :cond_1

    .line 2418
    const-string v18, "[GenreBrowserActivityExp]"

    const-string v19, "getChildrenCursor return null!!"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    const/4 v13, 0x0

    .line 2505
    .end local v5           #childCursor:Landroid/database/Cursor;
    .end local v13           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    :cond_0
    :goto_0
    return-object v13

    .line 2422
    .restart local v5       #childCursor:Landroid/database/Cursor;
    .restart local v13       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2423
    .local v6, count:I
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2427
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-gt v10, v0, :cond_0

    .line 2428
    const/4 v15, 0x0

    .line 2430
    .local v15, node:Lcom/htc/music/browserlayer/HtcListNode;
    if-nez v10, :cond_3

    .line 2431
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2432
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 2442
    :cond_2
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    .line 2443
    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2427
    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2433
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v10, :cond_4

    .line 2434
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2435
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    goto :goto_2

    .line 2436
    :cond_4
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v0, v10, :cond_2

    .line 2437
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2439
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    const v19, 0x7f07001d

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    goto :goto_2

    .line 2446
    .end local v5           #childCursor:Landroid/database/Cursor;
    .end local v6           #count:I
    .end local v10           #i:I
    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_c

    const/16 v18, 0x1

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v7, v1, v2, v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v5

    .line 2449
    .restart local v5       #childCursor:Landroid/database/Cursor;
    if-nez v5, :cond_6

    .line 2450
    const-string v18, "[GenreBrowserActivityExp]"

    const-string v19, "getChildrenCursor return null level==1 && 1== info.cursorpos!!"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2454
    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2455
    .restart local v6       #count:I
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2456
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    if-ge v10, v6, :cond_0

    .line 2457
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2458
    .local v14, name:Ljava/lang/String;
    move-object v8, v14

    .line 2459
    .local v8, displayname:Ljava/lang/String;
    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 2463
    :cond_7
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2464
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    iput-object v8, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 2465
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    .line 2466
    if-eqz v14, :cond_8

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_8
    const/16 v17, 0x1

    .line 2467
    .local v17, unknown:Z
    :goto_4
    const-string v18, "album_art"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2468
    .local v3, albumArtColIdx:I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2469
    .local v4, art:Ljava/lang/String;
    if-nez v17, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_a

    .line 2470
    :cond_9
    const v18, 0x7f020057

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    .line 2473
    :cond_a
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    .line 2474
    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2456
    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 2466
    .end local v3           #albumArtColIdx:I
    .end local v4           #art:Ljava/lang/String;
    .end local v17           #unknown:Z
    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    .line 2477
    .end local v5           #childCursor:Landroid/database/Cursor;
    .end local v6           #count:I
    .end local v8           #displayname:Ljava/lang/String;
    .end local v10           #i:I
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_0

    .line 2478
    invoke-virtual {v11}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v16

    check-cast v16, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2479
    .local v16, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2480
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2482
    .local v9, genreID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-direct/range {v18 .. v19}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCursor(I)Landroid/database/Cursor;

    move-result-object v5

    .line 2483
    .restart local v5       #childCursor:Landroid/database/Cursor;
    if-nez v5, :cond_d

    .line 2484
    const-string v18, "[GenreBrowserActivityExp]"

    const-string v19, "getChildrenCursor return null level==1"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2488
    :cond_d
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2489
    .restart local v6       #count:I
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2490
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    if-ge v10, v6, :cond_0

    .line 2491
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2492
    .restart local v14       #name:Ljava/lang/String;
    move-object v8, v14

    .line 2493
    .restart local v8       #displayname:Ljava/lang/String;
    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 2496
    :cond_e
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2497
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    iput-object v8, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 2498
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    .line 2499
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    .line 2501
    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2490
    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5
.end method

.method public getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;
    .locals 2
    .parameter "parentCursor"
    .parameter "cursorPosition"
    .parameter "position"
    .parameter "level"

    .prologue
    .line 1846
    const/4 v0, 0x0

    .line 1847
    .local v0, cursor:Landroid/database/Cursor;
    packed-switch p4, :pswitch_data_0

    .line 1859
    :cond_0
    :goto_0
    return-object v0

    .line 1849
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresArtistCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1850
    goto :goto_0

    .line 1852
    :pswitch_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1853
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getGenresAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 1847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    .line 2372
    if-nez p3, :cond_0

    .line 2373
    iget-object v5, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 2376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2378
    .local v2, info:Lcom/htc/music/browserlayer/HtcListNode;
    const v5, 0x7f080043

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 2379
    .local v4, text:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f080042

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 2381
    .local v1, icon:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v2, :cond_2

    .line 2382
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2383
    iget-object v5, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2388
    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 2389
    .local v3, paddingRight:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2390
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2391
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 2392
    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingTop()I

    move-result v6

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPadding(IIII)V

    .line 2395
    :cond_1
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 2397
    return-object p3

    .line 2386
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #paddingRight:I
    :cond_2
    const-string v5, "[GenreBrowserActivityExp]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info is null in getGroupView. position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "section"

    .prologue
    .line 2279
    const-string v2, "[GenreBrowserActivityExp]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ Adapter - getPositionForSection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2282
    const/4 v2, -0x1

    .line 2291
    :goto_0
    return v2

    .line 2284
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 2285
    .local v1, targetLetter:Ljava/lang/String;
    const-string v2, "[GenreBrowserActivityExp]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ getPositionForSection() section["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2287
    .local v0, integer:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 2288
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mSectionPosition:I

    .line 2290
    :cond_1
    const-string v2, "[GenreBrowserActivityExp]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ getPositionForSection() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mSectionPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    iget v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mSectionPosition:I

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2295
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2272
    const-string v0, "[GenreBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - getSections()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected initNodeList()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1710
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    .line 1742
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1716
    const/4 v0, 0x0

    .line 1717
    .local v0, cursorPosition:I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1720
    .local v4, nodeList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1721
    .local v1, displayname:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1722
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    const v6, 0x7f070046

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1725
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1726
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v6, v6, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v5, v1, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1800(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1728
    .local v2, markedString:Ljava/lang/CharSequence;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1731
    .end local v2           #markedString:Ljava/lang/CharSequence;
    :cond_4
    new-instance v3, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v0, v6, v7}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 1732
    .local v3, node:Lcom/htc/music/browserlayer/HtcListNode;
    iput-object v1, v3, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 1733
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1735
    add-int/lit8 v0, v0, 0x1

    .line 1736
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1738
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1739
    iput-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    .line 1740
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V
    .locals 7
    .parameter "view"
    .parameter "parentCursor"
    .parameter "cursorPosition"
    .parameter "level"
    .parameter "position"
    .parameter "isExpanded"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1866
    packed-switch p4, :pswitch_data_0

    .line 1900
    :cond_0
    :goto_0
    return-void

    .line 1868
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->updateAlphabetIndex()V

    goto :goto_0

    .line 1873
    :pswitch_1
    invoke-virtual {p0, p5, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v3

    .line 1874
    .local v3, rootCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    .line 1876
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1877
    .local v2, genresId:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 1879
    invoke-direct {p0, v2, v6, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1880
    :cond_1
    const/4 v4, 0x1

    if-eq p3, v4, :cond_0

    .line 1882
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1883
    .local v1, artistId:Ljava/lang/String;
    invoke-direct {p0, v2, v6, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1888
    .end local v1           #artistId:Ljava/lang/String;
    .end local v2           #genresId:Ljava/lang/String;
    .end local v3           #rootCursor:Landroid/database/Cursor;
    :pswitch_2
    invoke-virtual {p0, p5, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v3

    .line 1889
    .restart local v3       #rootCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    .line 1891
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1892
    .restart local v2       #genresId:Ljava/lang/String;
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1894
    .local v0, albumId:Ljava/lang/String;
    invoke-direct {p0, v2, v0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1866
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDatasetChanged(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1457
    if-nez p1, :cond_0

    .line 1466
    :goto_0
    return-void

    .line 1459
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1460
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setActivitTitle(I)V
    invoke-static {v1, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1600(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;I)V

    .line 1461
    if-lez v0, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->hideEmptyErrorView()V

    goto :goto_0

    .line 1464
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 14
    .parameter "key"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1584
    if-nez p2, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    iget-object v12, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-virtual {v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    .line 1586
    .local v8, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    .line 1587
    .local v6, childCount:I
    if-gtz v6, :cond_2

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1591
    :cond_2
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v12, v0

    const/4 v13, 0x2

    if-lt v12, v13, :cond_3

    const/4 v12, 0x0

    aget-object v12, p5, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    aget-object v12, p5, v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-nez v12, :cond_4

    .line 1592
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1596
    :cond_4
    iget-object v12, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 1597
    iget-object v13, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    const/4 v12, 0x0

    aget-object v12, p5, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1602
    .local v10, node:Lcom/htc/music/browserlayer/HtcListNode;
    :goto_1
    if-eqz v10, :cond_0

    iget v12, v10, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 1606
    const/4 v11, 0x0

    .line 1607
    .local v11, path:Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, p5, v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    aget-object v12, p5, v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 1608
    const/4 v12, 0x1

    aget-object v11, p5, v12

    .end local v11           #path:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1610
    .restart local v11       #path:Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/htc/music/util/MBitmap;

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v11}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1611
    .local v4, b:Lcom/htc/music/util/MBitmap;
    sget-object v12, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-wide/from16 v0, p3

    invoke-virtual {v12, p1, v4, v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v2

    .line 1612
    .local v2, addToCache:Z
    if-eqz v2, :cond_0

    .line 1613
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v6, :cond_0

    .line 1614
    iget-object v12, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v12}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1615
    .local v9, ll:Landroid/view/View;
    const v12, 0x7f080042

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemTileImage;

    .line 1616
    .local v5, child:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v5, :cond_6

    .line 1617
    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1618
    .local v3, albumId:Ljava/lang/Integer;
    if-eqz v3, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1619
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1613
    .end local v3           #albumId:Ljava/lang/Integer;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1599
    .end local v2           #addToCache:Z
    .end local v4           #b:Lcom/htc/music/util/MBitmap;
    .end local v5           #child:Lcom/htc/widget/HtcListItemTileImage;
    .end local v7           #i:I
    .end local v9           #ll:Landroid/view/View;
    .end local v10           #node:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v11           #path:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .restart local v10       #node:Lcom/htc/music/browserlayer/HtcListNode;
    goto :goto_1
.end method

.method public requeryRootCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1469
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    .line 1484
    return-void
.end method
