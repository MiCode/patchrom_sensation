.class Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;
.super Lcom/htc/music/browserlayer/HTCCursorAdapter;
.source "ComposerBrowserActivityExp.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$ComposerViewHolder;,
        Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

.field private mAlbumArtCache:Ljava/util/Hashtable;

.field mAllAlbumsLabel:Ljava/lang/String;

.field mAllSongsLabel:Ljava/lang/String;

.field private mAlphabet:Ljava/lang/StringBuffer;

.field mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetColumnIndex:I

.field mAlphabetLength:I

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIndexer:Lcom/htc/music/widget/HtcAlphabetIndexer;

.field private mIndexerTable:Ljava/util/Hashtable;

.field private mListViewHeight:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mResources:Landroid/content/res/Resources;

.field private mSectionPosition:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private final mUnknownComposer:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/Context;Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/database/Cursor;Ljava/util/LinkedList;I)V
    .locals 10
    .parameter
    .parameter "context"
    .parameter "currentActivity"
    .parameter "cursor"
    .parameter
    .parameter "cacheCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;",
            "Landroid/database/Cursor;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1289
    .local p5, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    .line 1291
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, p5, v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/LinkedList;Z)V

    .line 1209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    .line 1241
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabet:Ljava/lang/StringBuffer;

    .line 1243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 1278
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    .line 1280
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetColumnIndex:I

    .line 1282
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mListViewHeight:I

    .line 1284
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    .line 1285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    .line 2054
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    .line 2146
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mSectionPosition:I

    .line 1292
    const v0, 0x7f070045

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;

    .line 1293
    const v0, 0x7f070044

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1294
    const v0, 0x7f070043

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1296
    iput-object p3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    .line 1297
    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 1299
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    .line 1302
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1303
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1304
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1306
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    .line 1307
    iget v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    .line 1308
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    if-ge v9, v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1308
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1312
    :cond_0
    const v0, 0x7f07009a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    .line 1313
    const v0, 0x7f070099

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    .line 1314
    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->cacheAlbumArt(Landroid/content/Context;)V

    .line 1316
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 1317
    .local v8, frameSize:I
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x20d008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1318
    .local v7, framePadding:I
    mul-int/lit8 v0, v7, 0x2

    sub-int v0, v8, v0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mListViewHeight:I

    .line 1320
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mListViewHeight:I

    iget v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mListViewHeight:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 1321
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1205
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1205
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1205
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1205
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;

    return-object v0
.end method

.method private cacheAlbumArt(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 1324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1325
    .local v5, s:J
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v7, v7, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1326
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1328
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1329
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1330
    .local v4, id:Ljava/lang/String;
    const/4 v7, 0x6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, art:Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1332
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1333
    iget-object v7, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlbumArtCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1336
    .end local v0           #art:Ljava/lang/String;
    .end local v4           #id:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 1337
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1338
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1339
    :cond_2
    const/4 v1, 0x0

    .line 1341
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1343
    .local v2, e:J
    goto :goto_0
.end method

.method private getAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "columns"

    .prologue
    .line 1362
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1363
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    const/4 v5, 0x0

    .line 1365
    .local v5, keywords:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1367
    .local v4, whereclause:Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "album COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1369
    .local v7, ret:Landroid/database/Cursor;
    return-object v7
.end method

.method private getComposerAlbumCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "composer"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1995
    invoke-direct {p0, p2, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1996
    .local v0, ret:Landroid/database/Cursor;
    invoke-direct {p0, p2, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 1997
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 1998
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 2002
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_0
    return-object v0
.end method

.method private getComposerAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9
    .parameter "composer"
    .parameter "unknownAlbum"

    .prologue
    .line 2007
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_key"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "numsongs"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 2013
    .local v2, cols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2014
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    if-nez p2, :cond_1

    .line 2016
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    :goto_0
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v7

    .line 2020
    .local v7, unknown:Z
    if-eqz v7, :cond_2

    .line 2021
    const-string v0, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2032
    .local v6, ret:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mIsEnhancerExist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1900(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 2035
    :cond_0
    return-object v6

    .line 2018
    .end local v6           #ret:Landroid/database/Cursor;
    .end local v7           #unknown:Z
    :cond_1
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2026
    .restart local v7       #unknown:Z
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id IN (SELECT distinct album_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getComposerAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 3
    .parameter "parentCursor"
    .parameter "cursorPosition"

    .prologue
    .line 1984
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1985
    :cond_0
    const-string v1, "[ComposerBrowserActivityExp]"

    const-string v2, "getComposerAlbumCusror, parentCursor = null or parentCursor closed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const/4 v1, 0x0

    .line 1991
    :goto_0
    return-object v1

    .line 1988
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, composer:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1990
    const-string v0, "<unknown>"

    .line 1991
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private getComposerAllSongs(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "context"
    .parameter "composers"

    .prologue
    .line 1959
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1961
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1963
    .local v5, keywords:[Ljava/lang/String;
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

    .line 1968
    .local v3, cols:[Ljava/lang/String;
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v8

    .line 1969
    .local v8, unknown:Z
    if-eqz v8, :cond_0

    .line 1970
    invoke-static {v9}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 1975
    :goto_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1978
    .local v4, whereclause:Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "title COLLATE NOCASE ASC"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1980
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7

    .line 1972
    .end local v4           #whereclause:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getComposerArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "composer"
    .parameter "allSongsLabel"
    .parameter "allAlbumsLabel"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1934
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "artist_id"

    aput-object v5, v1, v7

    const-string v5, "artist"

    aput-object v5, v1, v8

    const-string v5, "number_of_tracks"

    aput-object v5, v1, v6

    .line 1938
    .local v1, cols:[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1941
    .local v2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1942
    .local v4, songsNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1948
    .local v0, albumsNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1949
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1952
    new-instance v3, Landroid/database/MergeCursor;

    new-array v5, v6, [Landroid/database/Cursor;

    new-instance v6, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v6, v1, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    aput-object v6, v5, v7

    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {v3, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1955
    .local v3, ret:Landroid/database/Cursor;
    return-object v3
.end method

.method private getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "composer"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1886
    invoke-direct {p0, p1, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1887
    .local v0, ret:Landroid/database/Cursor;
    invoke-direct {p0, p1, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 1888
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 1889
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 1894
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_0
    return-object v0
.end method

.method private getComposerArtistCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9
    .parameter "composer"
    .parameter "unknownArtist"

    .prologue
    .line 1898
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1899
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "artist != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    if-nez p2, :cond_0

    .line 1901
    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    :goto_0
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v7

    .line 1908
    .local v7, unknown:Z
    if-eqz v7, :cond_1

    .line 1909
    const-string v0, " AND _id IN (SELECT distinct artist_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    const-string p1, "<unknown>"

    .line 1918
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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 1926
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist COLLATE NOCASE ASC"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1929
    .local v6, ret:Landroid/database/Cursor;
    return-object v6

    .line 1903
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #ret:Landroid/database/Cursor;
    .end local v7           #unknown:Z
    :cond_0
    const-string v0, " AND artist = \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1915
    .restart local v7       #unknown:Z
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id IN (SELECT distinct artist_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getComposerArtistCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 4
    .parameter "parentCursor"
    .parameter "cursorPosition"

    .prologue
    .line 1875
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1876
    :cond_0
    const-string v1, "[ComposerBrowserActivityExp]"

    const-string v2, "getComposerArtistCusror, parentCursor = null or parentCursor closed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const/4 v1, 0x0

    .line 1882
    :goto_0
    return-object v1

    .line 1879
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1880
    .local v0, composer:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1881
    const-string v0, "<unknown>"

    .line 1882
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAllSongsLabel:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAllAlbumsLabel:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "composer"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 1857
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1858
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 1859
    const-string v1, "[ComposerBrowserActivityExp]"

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

    .line 1860
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1861
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1862
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1863
    const-string v1, "albumid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1868
    :goto_0
    if-eqz p3, :cond_0

    .line 1869
    const-string v1, "artistid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1870
    :cond_0
    const-string v1, "composer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1871
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->startActivity(Landroid/content/Intent;)V

    .line 1872
    return-void

    .line 1865
    :cond_1
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1866
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

    .line 2042
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2043
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 2050
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

    .line 2046
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2047
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 2049
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v1, v7

    .line 2050
    goto :goto_0
.end method

.method private updateAlphabetIndex()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 2058
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getNodeList()Ljava/util/LinkedList;

    move-result-object v5

    .line 2059
    .local v5, nodeList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    if-nez v5, :cond_1

    .line 2118
    :cond_0
    return-void

    .line 2062
    :cond_1
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 2063
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    .line 2064
    .local v6, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 2065
    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2066
    .local v4, node:Lcom/htc/music/browserlayer/HtcListNode;
    iget v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v11, :cond_2

    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v11, :cond_2

    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2064
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2068
    :cond_3
    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v12, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2069
    iget-object v11, v4, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v12, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetColumnIndex:I

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2070
    .local v9, title:Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v14, :cond_2

    .line 2071
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2072
    .local v10, word:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 2073
    const-string v11, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v11, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 2074
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2075
    const-string v11, "[ComposerBrowserActivityExp]"

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

    .line 2076
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2082
    .end local v4           #node:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #word:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    if-ge v0, v11, :cond_0

    .line 2084
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v7, v11, v0

    .line 2085
    .local v7, targetLetter:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2086
    .local v1, integer:Ljava/lang/Integer;
    if-nez v1, :cond_6

    .line 2088
    const/4 v3, 0x0

    .line 2089
    .local v3, j:I
    const/4 v2, 0x0

    .line 2091
    .local v2, integer2:Ljava/lang/Integer;
    add-int/lit8 v3, v0, 0x1

    :goto_3
    iget v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetLength:I

    if-ge v3, v11, :cond_5

    .line 2093
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v8, v11, v3

    .line 2094
    .local v8, targetLetter2:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #integer2:Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 2095
    .restart local v2       #integer2:Ljava/lang/Integer;
    if-nez v2, :cond_5

    .line 2091
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2103
    .end local v8           #targetLetter2:Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_7

    .line 2105
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v7, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    .end local v2           #integer2:Ljava/lang/Integer;
    .end local v3           #j:I
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2109
    .restart local v2       #integer2:Ljava/lang/Integer;
    .restart local v3       #j:I
    :cond_7
    iget-object v11, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v11, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_0

    .line 2124
    const-string v0, "[ComposerBrowserActivityExp]"

    const-string v1, "@@@@ Adapter - changeCursor - change!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iput-object p1, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    .line 2126
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->updateOptionsMenu()V

    .line 2127
    invoke-super {p0, p1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2131
    :cond_0
    return-void
.end method

.method public cursorFilter(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1373
    const/4 v6, 0x0

    .line 1377
    .local v6, ret:Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1378
    .local v2, composerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 1380
    .local v5, dic:Ljava/util/Hashtable;
    const/4 v4, 0x0

    .line 1381
    .local v4, count:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1382
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1383
    .local v1, composer:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1384
    const-string v1, "<unknown>"

    .line 1385
    :cond_0
    invoke-virtual {v5, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    add-int/lit8 v4, v4, 0x1

    .line 1387
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1388
    .local v7, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    .end local v1           #composer:Ljava/lang/String;
    .end local v7           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1394
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .restart local v1       #composer:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1396
    const-string v1, "<unknown>"

    .line 1399
    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1401
    invoke-virtual {v5, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    add-int/lit8 v4, v4, 0x1

    .line 1403
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1404
    .restart local v7       #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1408
    .end local v1           #composer:Ljava/lang/String;
    .end local v7           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1410
    new-array v0, v10, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v0, v9

    const-string v8, "composer"

    aput-object v8, v0, v11

    .line 1413
    .local v0, cols:[Ljava/lang/String;
    new-instance v3, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v3, v0, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1414
    .local v3, composerListCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v6, Landroid/database/MergeCursor;

    .end local v6           #ret:Landroid/database/Cursor;
    new-array v8, v11, [Landroid/database/Cursor;

    aput-object v3, v8, v9

    invoke-direct {v6, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1418
    .restart local v6       #ret:Landroid/database/Cursor;
    return-object v6
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2170
    if-nez p4, :cond_0

    .line 2171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000d

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 2174
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v5

    .line 2175
    .local v5, position:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2177
    .local v11, info:Lcom/htc/music/browserlayer/HtcListNode;
    if-nez v11, :cond_1

    .line 2178
    const-string v1, "[ComposerBrowserActivityExp]"

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

    .line 2224
    :goto_0
    return-object p4

    .line 2182
    :cond_1
    const v1, 0x7f080043

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItem2LineText;

    .line 2183
    .local v14, text:Lcom/htc/widget/HtcListItem2LineText;
    const v1, 0x7f080042

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemTileImage;

    .line 2185
    .local v10, icon:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v11}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v13

    check-cast v13, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2187
    .local v13, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v1, v13, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    const v4, 0x7f07001d

    invoke-virtual {v2, v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2188
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 2193
    :goto_1
    iget v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 2194
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2195
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2197
    iget v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    if-eqz v1, :cond_9

    .line 2198
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v12

    .line 2199
    .local v12, item:Lcom/htc/music/util/MBitmap;
    if-nez v12, :cond_6

    const/4 v8, 0x0

    .line 2200
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-nez v12, :cond_7

    const/4 v9, 0x0

    .line 2202
    .local v9, decodePath:Ljava/lang/String;
    :goto_3
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2204
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    const-string v2, "album_art"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2205
    .local v7, albumArtColIdx:I
    const/4 v3, 0x0

    .line 2206
    .local v3, cursorArtPath:Ljava/lang/String;
    if-ltz v7, :cond_2

    .line 2207
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2210
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2211
    :cond_3
    iget-object v1, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v2, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2212
    if-ltz v7, :cond_4

    .line 2213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

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

    .line 2217
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2191
    .end local v3           #cursorArtPath:Ljava/lang/String;
    .end local v7           #albumArtColIdx:I
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #decodePath:Ljava/lang/String;
    .end local v12           #item:Lcom/htc/music/util/MBitmap;
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    goto :goto_1

    .line 2199
    .restart local v12       #item:Lcom/htc/music/util/MBitmap;
    :cond_6
    invoke-virtual {v12}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    .line 2200
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    invoke-virtual {v12}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 2219
    .restart local v3       #cursorArtPath:Ljava/lang/String;
    .restart local v7       #albumArtColIdx:I
    .restart local v9       #decodePath:Ljava/lang/String;
    :cond_8
    invoke-virtual {v10, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2222
    .end local v3           #cursorArtPath:Ljava/lang/String;
    .end local v7           #albumArtColIdx:I
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #decodePath:Ljava/lang/String;
    .end local v12           #item:Lcom/htc/music/util/MBitmap;
    :cond_9
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
    .line 2258
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 2260
    .local v13, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2261
    .local v11, info:Lcom/htc/music/browserlayer/HtcListNode;
    iget-object v8, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 2262
    .local v8, cursor:Landroid/database/Cursor;
    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2263
    iget v12, v11, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 2266
    .local v12, level:I
    if-nez v12, :cond_5

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v8, v1, v2, v12}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v5

    .line 2268
    .local v5, childCursor:Landroid/database/Cursor;
    if-eqz v5, :cond_3

    .line 2269
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2271
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/16 v18, 0x2

    move/from16 v0, v18

    if-gt v10, v0, :cond_4

    .line 2272
    const/4 v15, 0x0

    .line 2273
    .local v15, node:Lcom/htc/music/browserlayer/HtcListNode;
    if-nez v10, :cond_1

    .line 2274
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2275
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 2285
    :cond_0
    :goto_1
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    .line 2286
    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2271
    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 2276
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v10, :cond_2

    .line 2277
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2278
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 2280
    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v0, v10, :cond_0

    .line 2281
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2282
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    const v19, 0x7f07001d

    invoke-virtual/range {v18 .. v19}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 2289
    .end local v10           #i:I
    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_3
    const-string v18, "[ComposerBrowserActivityExp]"

    const-string v19, "childCursor == null, 0 == level"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    .end local v5           #childCursor:Landroid/database/Cursor;
    :cond_4
    :goto_2
    return-object v13

    .line 2291
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

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v8, v1, v2, v12}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v5

    .line 2293
    .restart local v5       #childCursor:Landroid/database/Cursor;
    if-eqz v5, :cond_b

    .line 2294
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2295
    .local v7, count:I
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2296
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    if-ge v10, v7, :cond_4

    .line 2297
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2298
    .local v14, name:Ljava/lang/String;
    move-object v9, v14

    .line 2299
    .local v9, displayname:Ljava/lang/String;
    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 2303
    :cond_6
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2304
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    iput-object v9, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 2305
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    .line 2306
    if-eqz v14, :cond_7

    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_7
    const/16 v17, 0x1

    .line 2307
    .local v17, unknown:Z
    :goto_4
    const-string v18, "album_art"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2308
    .local v3, albumArtColIdx:I
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2309
    .local v4, art:Ljava/lang/String;
    if-nez v17, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_9

    .line 2310
    :cond_8
    const v18, 0x7f020057

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    .line 2313
    :cond_9
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    .line 2314
    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2296
    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 2306
    .end local v3           #albumArtColIdx:I
    .end local v4           #art:Ljava/lang/String;
    .end local v17           #unknown:Z
    :cond_a
    const/16 v17, 0x0

    goto :goto_4

    .line 2317
    .end local v7           #count:I
    .end local v9           #displayname:Ljava/lang/String;
    .end local v10           #i:I
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_b
    const-string v18, "[ComposerBrowserActivityExp]"

    const-string v19, "childCursor == null, 1 == level && 1 == info.cursorPosition"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2319
    .end local v5           #childCursor:Landroid/database/Cursor;
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_e

    .line 2320
    invoke-virtual {v11}, Lcom/htc/music/browserlayer/HtcListNode;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v16

    check-cast v16, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2321
    .local v16, parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2322
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2324
    .local v6, composer:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2325
    .restart local v5       #childCursor:Landroid/database/Cursor;
    if-eqz v5, :cond_4

    .line 2326
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2327
    .restart local v7       #count:I
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2328
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    if-ge v10, v7, :cond_4

    .line 2329
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2330
    .restart local v14       #name:Ljava/lang/String;
    move-object v9, v14

    .line 2331
    .restart local v9       #displayname:Ljava/lang/String;
    const-string v18, "<unknown>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 2334
    :cond_d
    new-instance v15, Lcom/htc/music/browserlayer/HtcListNode;

    add-int/lit8 v18, v12, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v5, v10, v0, v1}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 2335
    .restart local v15       #node:Lcom/htc/music/browserlayer/HtcListNode;
    iput-object v9, v15, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 2336
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    .line 2337
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v15, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    .line 2339
    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2328
    add-int/lit8 v10, v10, 0x1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 2343
    .end local v5           #childCursor:Landroid/database/Cursor;
    .end local v6           #composer:Ljava/lang/String;
    .end local v7           #count:I
    .end local v9           #displayname:Ljava/lang/String;
    .end local v10           #i:I
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #node:Lcom/htc/music/browserlayer/HtcListNode;
    .end local v16           #parentNode:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_e
    const-string v18, "[ComposerBrowserActivityExp]"

    const-string v19, "childCursor == null 1 == level"

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;
    .locals 2
    .parameter "parentCursor"
    .parameter "cursorPosition"
    .parameter "position"
    .parameter "level"

    .prologue
    .line 1796
    const/4 v0, 0x0

    .line 1797
    .local v0, cursor:Landroid/database/Cursor;
    packed-switch p4, :pswitch_data_0

    .line 1809
    :cond_0
    :goto_0
    return-object v0

    .line 1799
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerArtistCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1800
    goto :goto_0

    .line 1802
    :pswitch_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1803
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getComposerAlbumCusror(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 1797
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

    .line 2229
    if-nez p3, :cond_0

    .line 2230
    iget-object v5, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 2233
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/HtcListNode;

    .line 2235
    .local v2, info:Lcom/htc/music/browserlayer/HtcListNode;
    const v5, 0x7f080043

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 2236
    .local v4, text:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f080042

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 2238
    .local v1, icon:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v2, :cond_2

    .line 2239
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2240
    iget-object v5, v2, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2245
    :goto_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2050050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 2246
    .local v3, paddingRight:I
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2247
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2248
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 2249
    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingTop()I

    move-result v6

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem2LineText;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPadding(IIII)V

    .line 2252
    :cond_1
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 2253
    return-object p3

    .line 2243
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #paddingRight:I
    :cond_2
    const-string v5, "[ComposerBrowserActivityExp]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info == null in getGroupView. groupPosition "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "section"

    .prologue
    .line 2151
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2152
    const/4 v2, -0x1

    .line 2161
    :goto_0
    return v2

    .line 2154
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 2156
    .local v1, targetLetter:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mIndexerTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2157
    .local v0, integer:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 2158
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mSectionPosition:I

    .line 2161
    :cond_1
    iget v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mSectionPosition:I

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2165
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected initNodeList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1639
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1645
    const/4 v0, 0x0

    .line 1646
    .local v0, cursorPosition:I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1649
    .local v4, nodeList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/HtcListNode;>;"
    :cond_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1650
    .local v1, displayname:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1651
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mUnknownComposer:Ljava/lang/String;

    .line 1654
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1655
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v6, v6, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v5, v1, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1800(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1657
    .local v2, markedString:Ljava/lang/CharSequence;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1660
    .end local v2           #markedString:Ljava/lang/CharSequence;
    :cond_4
    new-instance v3, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v0, v7, v6}, Lcom/htc/music/browserlayer/HtcListNode;-><init>(Landroid/database/Cursor;IIZ)V

    .line 1661
    .local v3, node:Lcom/htc/music/browserlayer/HtcListNode;
    iput-object v1, v3, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 1662
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1664
    add-int/lit8 v0, v0, 0x1

    .line 1665
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1666
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1667
    iput-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    .line 1668
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

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

    .line 1816
    packed-switch p4, :pswitch_data_0

    .line 1854
    :cond_0
    :goto_0
    return-void

    .line 1818
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->updateAlphabetIndex()V

    goto :goto_0

    .line 1823
    :pswitch_1
    invoke-virtual {p0, p5, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v3

    .line 1824
    .local v3, rootCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    .line 1826
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1827
    .local v2, composer:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1828
    const-string v2, "<unknown>"

    .line 1829
    :cond_1
    if-nez p3, :cond_2

    .line 1831
    invoke-direct {p0, v2, v6, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1832
    :cond_2
    const/4 v4, 0x1

    if-eq p3, v4, :cond_0

    .line 1834
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1835
    .local v1, artistId:Ljava/lang/String;
    invoke-direct {p0, v2, v6, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1840
    .end local v1           #artistId:Ljava/lang/String;
    .end local v2           #composer:Ljava/lang/String;
    .end local v3           #rootCursor:Landroid/database/Cursor;
    :pswitch_2
    invoke-virtual {p0, p5, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getParentCurosr(II)Landroid/database/Cursor;

    move-result-object v3

    .line 1841
    .restart local v3       #rootCursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1842
    .restart local v2       #composer:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1843
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1844
    :cond_3
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1845
    const-string v2, "<unknown>"

    .line 1846
    :cond_4
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1848
    .local v0, albumId:Ljava/lang/String;
    invoke-direct {p0, v2, v0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->go2Tracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1816
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
    .line 1346
    if-nez p1, :cond_0

    .line 1355
    :goto_0
    return-void

    .line 1348
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1349
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->setActivitTitle(I)V
    invoke-static {v1, v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1600(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;I)V

    .line 1350
    if-lez v0, :cond_1

    .line 1351
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->hideEmptyErrorView()V

    goto :goto_0

    .line 1353
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    const v2, 0x7f07002e

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 14
    .parameter "key"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1533
    if-nez p2, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1534
    :cond_1
    iget-object v12, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-virtual {v12}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    .line 1535
    .local v8, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    .line 1536
    .local v6, childCount:I
    if-gtz v6, :cond_2

    .line 1537
    const-string v12, "[ComposerBrowserActivityExp]"

    const-string v13, "onImageDecoded: Illegal Arguments"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1541
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

    .line 1542
    :cond_3
    const-string v12, "[ComposerBrowserActivityExp]"

    const-string v13, "onImageDecoded: Illegal Arguments"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1547
    :cond_4
    iget-object v12, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 1548
    iget-object v13, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    const/4 v12, 0x0

    aget-object v12, p5, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/music/browserlayer/HtcListNode;

    .line 1553
    .local v10, node:Lcom/htc/music/browserlayer/HtcListNode;
    :goto_1
    if-eqz v10, :cond_5

    iget v12, v10, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    .line 1554
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1550
    .end local v10           #node:Lcom/htc/music/browserlayer/HtcListNode;
    :cond_6
    const/4 v10, 0x0

    .restart local v10       #node:Lcom/htc/music/browserlayer/HtcListNode;
    goto :goto_1

    .line 1557
    :cond_7
    const/4 v11, 0x0

    .line 1558
    .local v11, path:Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, p5, v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    aget-object v12, p5, v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 1559
    const/4 v12, 0x1

    aget-object v11, p5, v12

    .end local v11           #path:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1561
    .restart local v11       #path:Ljava/lang/String;
    :cond_8
    new-instance v4, Lcom/htc/music/util/MBitmap;

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v11}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1562
    .local v4, b:Lcom/htc/music/util/MBitmap;
    sget-object v12, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-wide/from16 v0, p3

    invoke-virtual {v12, p1, v4, v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v2

    .line 1563
    .local v2, addToCache:Z
    if-eqz v2, :cond_0

    .line 1564
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v6, :cond_0

    .line 1565
    iget-object v12, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v12}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1566
    .local v9, ll:Landroid/view/View;
    const v12, 0x7f080042

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemTileImage;

    .line 1567
    .local v5, child:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v5, :cond_9

    .line 1568
    invoke-virtual {v5}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1569
    .local v3, albumId:Ljava/lang/Integer;
    if-eqz v3, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1570
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1564
    .end local v3           #albumId:Ljava/lang/Integer;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public requeryRootCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1358
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    .line 1423
    return-void
.end method
