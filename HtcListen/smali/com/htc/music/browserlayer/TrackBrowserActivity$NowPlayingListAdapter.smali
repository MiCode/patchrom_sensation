.class Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResID:I

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V
    .locals 9
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "resId"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 5444
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 5439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 5446
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5447
    iput p4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mResID:I

    .line 5448
    iput-object p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 5450
    const v0, 0x7f070043

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 5453
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020057

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 5455
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 5456
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 5457
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 5459
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5461
    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5302(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 5467
    :goto_0
    return-void

    .line 5465
    :cond_0
    const-string v0, "[PluginNowPlayingListActivity]"

    const-string v1, "NowPlayingListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$5800(Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5435
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 5470
    const/4 v0, 0x0

    .line 5471
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5472
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5477
    :goto_0
    return v0

    .line 5475
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 5481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 5485
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 5489
    const-string v14, "[PluginNowPlayingListActivity]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "########################################### getView() position => "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", ####Begin"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5493
    if-nez p2, :cond_7

    .line 5494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mResID:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 5496
    new-instance v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;)V

    .line 5497
    .local v6, holder:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;
    const v14, 0x7f080043

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 5498
    const v14, 0x202001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    .line 5499
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 5500
    const v14, 0x7f080042

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 5501
    const v14, 0x7f080044

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    .line 5502
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5512
    :goto_0
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v14, :cond_0

    .line 5513
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5514
    .local v5, data:Landroid/os/Bundle;
    const-string v14, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5516
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v14, v5}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    .line 5519
    .end local v5           #data:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    .line 5522
    const/4 v4, 0x0

    .line 5524
    .local v4, curListItem:Landroid/content/ContentValues;
    move/from16 v12, p1

    .line 5525
    .local v12, realPos:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v14, v14, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 5527
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 5528
    .local v11, pos:Ljava/lang/Integer;
    if-eqz v11, :cond_1

    .line 5529
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 5532
    .end local v11           #pos:Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #curListItem:Landroid/content/ContentValues;
    check-cast v4, Landroid/content/ContentValues;

    .line 5534
    .restart local v4       #curListItem:Landroid/content/ContentValues;
    const/4 v13, 0x0

    .line 5537
    .local v13, tmpStr:Ljava/lang/String;
    const-string v14, "title"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5538
    if-eqz v13, :cond_2

    .line 5539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v14, v14, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v14, :cond_8

    .line 5541
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 5550
    :cond_2
    :goto_1
    const-string v14, "artist"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5551
    if-eqz v13, :cond_3

    const-string v14, "<unknown>"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 5552
    :cond_3
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 5557
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 5560
    .local v3, cacheBmp:Landroid/graphics/Bitmap;
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 5562
    if-eqz v3, :cond_a

    .line 5564
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v14, :cond_4

    .line 5565
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5616
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v14

    if-ne v14, v12, :cond_5

    .line 5617
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const v15, 0x7f02004b

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 5618
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 5619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I
    invoke-static {v14, v12}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5702(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)I

    .line 5623
    :cond_5
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v14, :cond_6

    .line 5624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "common_arrow"

    const v16, 0x20807c9

    invoke-static/range {v14 .. v16}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 5625
    .local v2, arrowResId:I
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v14, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 5626
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 5627
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v15, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;)V

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5642
    .end local v2           #arrowResId:I
    .end local v3           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v4           #curListItem:Landroid/content/ContentValues;
    .end local v12           #realPos:I
    .end local v13           #tmpStr:Ljava/lang/String;
    :cond_6
    :goto_4
    const-string v14, "[PluginNowPlayingListActivity]"

    const-string v15, "########################################### getView() End"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5643
    return-object p2

    .line 5507
    .end local v6           #holder:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;

    .line 5508
    .restart local v6       #holder:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 5509
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5544
    .restart local v4       #curListItem:Landroid/content/ContentValues;
    .restart local v12       #realPos:I
    .restart local v13       #tmpStr:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v15, v15, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v14, v13, v15}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5400(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 5545
    .local v8, markedString:Ljava/lang/CharSequence;
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v14, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5554
    .end local v8           #markedString:Ljava/lang/CharSequence;
    :cond_9
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5570
    .restart local v3       #cacheBmp:Landroid/graphics/Bitmap;
    :cond_a
    const/4 v7, 0x1

    .line 5572
    .local v7, isNeedToQuery:Z
    const-string v14, "albumartpath"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 5573
    const-string v14, "albumartpath"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5574
    .local v10, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5575
    .local v1, albumArtFile:Ljava/io/File;
    const-string v14, "[PluginNowPlayingListActivity]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "## curListItem.containsKey(albumartpath)...path = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5577
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 5578
    const/4 v7, 0x0

    .line 5585
    .end local v1           #albumArtFile:Ljava/io/File;
    .end local v10           #path:Ljava/lang/String;
    :cond_b
    :goto_5
    if-nez v7, :cond_d

    .line 5588
    const-string v14, "albumartpath"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5590
    .restart local v10       #path:Ljava/lang/String;
    const-string v14, "[PluginNowPlayingListActivity]"

    const-string v15, "## Don\'t query it!! There is no cache, but there is albumartpath in SD card. Try to decode it."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5592
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v14, v12, v10, v12, v15}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 5594
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v14, :cond_4

    .line 5595
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 5580
    .restart local v1       #albumArtFile:Ljava/io/File;
    :cond_c
    const/4 v7, 0x1

    .line 5581
    const-string v14, "albumartpath"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_5

    .line 5599
    .end local v1           #albumArtFile:Ljava/io/File;
    .end local v10           #path:Ljava/lang/String;
    :cond_d
    const-string v14, "[PluginNowPlayingListActivity]"

    const-string v15, "## Query it!! There is no cache and no in SD card. Send message to DMP service to get album art path."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    iget-object v14, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 5606
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 5607
    .local v9, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5608
    .restart local v5       #data:Landroid/os/Bundle;
    const-string v14, "position"

    invoke-virtual {v5, v14, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5609
    invoke-virtual {v9, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5610
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;
    invoke-static {v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 5640
    .end local v3           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v4           #curListItem:Landroid/content/ContentValues;
    .end local v5           #data:Landroid/os/Bundle;
    .end local v7           #isNeedToQuery:Z
    .end local v9           #msg:Landroid/os/Message;
    .end local v12           #realPos:I
    .end local v13           #tmpStr:Ljava/lang/String;
    :cond_e
    const-string v14, "[PluginNowPlayingListActivity]"

    const-string v15, "getView()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 9
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "arg0"

    .prologue
    .line 5658
    if-nez p2, :cond_1

    .line 5659
    const-string v6, "[TrackBrowser]"

    const-string v7, "onImageDecoded: bitmap is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5687
    :cond_0
    return-void

    .line 5662
    :cond_1
    const-string v6, "[TrackBrowser]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onImageDecoded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5663
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 5664
    .local v2, childCount:I
    if-lez v2, :cond_0

    .line 5668
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 5669
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 5670
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 5671
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5673
    .local v5, ll:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 5674
    const v6, 0x7f080042

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 5676
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_2

    .line 5677
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5679
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 5680
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5670
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 5647
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 5648
    return-void
.end method
