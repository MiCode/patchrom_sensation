.class Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailListAdapter"
.end annotation


# static fields
.field private static final OFFSET_TRACKS:I = 0x2

.field private static final POSITION_HEADER:I = 0x0

.field private static final POSITION_SEPARATOR_TRACKS:I = 0x1


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/AlbumDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field private posMoreByArtistName:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 1
    .parameter "context"
    .parameter "parentActivity"

    .prologue
    .line 1400
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1392
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    .line 1401
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    .line 1403
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1404
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    .line 1405
    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1384
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    return v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 1660
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1661
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1408
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1409
    .local v1, tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;
    if-nez v1, :cond_1

    .line 1410
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():tempActivity == null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :cond_0
    :goto_0
    return v0

    .line 1414
    :cond_1
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1415
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():stopping."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1419
    :cond_2
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1420
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mShowError."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1424
    :cond_3
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1425
    :cond_4
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mTrackCursor == null || mTrackCursor.getCount() == 0."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1429
    :cond_5
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    .line 1432
    .local v0, retInt:I
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1434
    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1447
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 1642
    if-nez p1, :cond_1

    .line 1643
    const/4 v0, 0x0

    .line 1651
    :cond_0
    :goto_0
    return v0

    .line 1645
    :cond_1
    if-eq p1, v0, :cond_0

    .line 1648
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    if-ne p1, v0, :cond_2

    .line 1649
    const/4 v0, 0x3

    goto :goto_0

    .line 1651
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1459
    const-string v23, "[AlbumDetailActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "########################################### getView() position => "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", ####Begin"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1462
    .local v17, tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;
    if-nez v17, :cond_0

    .line 1463
    const-string v23, "[AlbumDetailActivity]"

    const-string v24, "DetailListAdapter.getView(int,View,ViewGroup):tempActivity == null."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, p2

    .line 1637
    :goto_0
    return-object v21

    .line 1467
    :cond_0
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1468
    const-string v23, "[AlbumDetailActivity]"

    const-string v24, "DetailListAdapter.getView(int,View,ViewGroup):stopping."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, p2

    .line 1469
    goto :goto_0

    .line 1472
    :cond_1
    if-nez p1, :cond_7

    .line 1474
    if-eqz p2, :cond_4

    .line 1475
    move-object/from16 v21, p2

    .line 1491
    .local v21, v:Landroid/view/View;
    :goto_1
    const v23, 0x7f080064

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 1492
    .local v15, playAll:Landroid/widget/ImageButton;
    new-instance v23, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    const v23, 0x7f080065

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageButton;

    .line 1500
    .local v16, shareOn:Landroid/widget/ImageButton;
    new-instance v23, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1510
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 1511
    const v23, 0x7f080061

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1512
    .local v5, albumTitleTV:Landroid/widget/TextView;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    .end local v5           #albumTitleTV:Landroid/widget/TextView;
    :cond_2
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 1515
    const v23, 0x7f080062

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1516
    .local v7, artistNameTV:Landroid/widget/TextView;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    .end local v7           #artistNameTV:Landroid/widget/TextView;
    :cond_3
    const v23, 0x7f08005b

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1527
    .local v4, albumArtIV:Landroid/widget/ImageView;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    if-eqz v23, :cond_5

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-nez v23, :cond_5

    .line 1528
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1529
    const-string v23, "[AlbumDetailActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mAlbumArt size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " x "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1477
    .end local v4           #albumArtIV:Landroid/widget/ImageView;
    .end local v15           #playAll:Landroid/widget/ImageButton;
    .end local v16           #shareOn:Landroid/widget/ImageButton;
    .end local v21           #v:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f03001b

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 1478
    .restart local v21       #v:Landroid/view/View;
    const v23, 0x7f080064

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1479
    .local v15, playAll:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "common_detail_btn_left"

    const v25, 0x7f02000d

    invoke-static/range {v23 .. v25}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1482
    const v23, 0x7f080065

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1483
    .local v16, shareOn:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "common_detail_btn_right"

    const v25, 0x7f02000e

    invoke-static/range {v23 .. v25}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1485
    new-instance v13, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    .line 1486
    .local v13, holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1531
    .end local v13           #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    .restart local v4       #albumArtIV:Landroid/widget/ImageView;
    .local v15, playAll:Landroid/widget/ImageButton;
    .local v16, shareOn:Landroid/widget/ImageButton;
    :cond_5
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    if-eqz v23, :cond_6

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-nez v23, :cond_6

    .line 1532
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1533
    const-string v23, "[AlbumDetailActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mDefaultAlbumArt size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " x "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1536
    :cond_6
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1537
    const-string v23, "[AlbumDetailActivity]"

    const-string v24, "[getView] albumArtIV.setImageDrawable(null)."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1543
    .end local v4           #albumArtIV:Landroid/widget/ImageView;
    .end local v15           #playAll:Landroid/widget/ImageButton;
    .end local v16           #shareOn:Landroid/widget/ImageButton;
    .end local v21           #v:Landroid/view/View;
    :cond_7
    const/16 v23, 0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 1545
    if-eqz p2, :cond_8

    .line 1546
    move-object/from16 v21, p2

    .line 1553
    .restart local v21       #v:Landroid/view/View;
    :goto_2
    const v23, 0x2020010

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1554
    .local v22, vlable:Landroid/widget/TextView;
    const v23, 0x7f0700f7

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1548
    .end local v21           #v:Landroid/view/View;
    .end local v22           #vlable:Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x2090026

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 1549
    .restart local v21       #v:Landroid/view/View;
    new-instance v13, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    .line 1550
    .restart local v13       #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 1558
    .end local v13           #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    .end local v21           #v:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 1560
    if-eqz p2, :cond_a

    .line 1561
    move-object/from16 v21, p2

    .line 1568
    .restart local v21       #v:Landroid/view/View;
    :goto_3
    const v23, 0x7f080054

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1569
    .local v18, textContent:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0700fc

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1570
    .local v8, artistPattern:Ljava/lang/String;
    const-string v23, "%s"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1571
    const-string v23, "%s"

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1563
    .end local v8           #artistPattern:Ljava/lang/String;
    .end local v18           #textContent:Landroid/widget/TextView;
    .end local v21           #v:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030019

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 1564
    .restart local v21       #v:Landroid/view/View;
    new-instance v13, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    .line 1565
    .restart local v13       #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1573
    .end local v13           #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    .restart local v8       #artistPattern:Ljava/lang/String;
    .restart local v18       #textContent:Landroid/widget/TextView;
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1579
    .end local v8           #artistPattern:Ljava/lang/String;
    .end local v18           #textContent:Landroid/widget/TextView;
    .end local v21           #v:Landroid/view/View;
    :cond_c
    add-int/lit8 p1, p1, -0x2

    .line 1581
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1582
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v23

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v24

    const-string v25, "title"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1584
    .local v20, trackName:Ljava/lang/String;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v23

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v24

    const-string v25, "_id"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1588
    .local v9, audioId:I
    if-eqz p2, :cond_d

    .line 1589
    move-object/from16 v21, p2

    .line 1596
    .restart local v21       #v:Landroid/view/View;
    :goto_4
    const v23, 0x7f080055

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItem2LineText;

    .line 1598
    .local v19, textView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1599
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1604
    const v23, 0x7f080056

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 1606
    .local v10, badgeNowPlaying:Landroid/view/View;
    :try_start_0
    sget-object v23, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v23, :cond_e

    sget-object v23, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v23

    move/from16 v0, v23

    if-ne v9, v0, :cond_e

    .line 1607
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    :goto_5
    const v23, 0x7f080058

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItemImageButton;

    .line 1616
    .local v14, ib:Lcom/htc/widget/HtcListItemImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "common_arrow"

    const v25, 0x20807c9

    invoke-static/range {v23 .. v25}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1618
    .local v6, arrowResId:I
    invoke-virtual {v14, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 1619
    invoke-virtual {v14}, Lcom/htc/widget/HtcListItemImageButton;->getTag()Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_f

    invoke-virtual {v14}, Lcom/htc/widget/HtcListItemImageButton;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    move-object/from16 v11, v23

    .line 1620
    .local v11, data:Landroid/os/Bundle;
    :goto_6
    const-string v23, "audioid"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1621
    const-string v23, "position"

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1622
    const-string v23, "trackname"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v14, v11}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    .line 1624
    new-instance v23, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$3;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1636
    const-string v23, "[AlbumDetailActivity]"

    const-string v24, "########################################### getView() End"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1591
    .end local v6           #arrowResId:I
    .end local v10           #badgeNowPlaying:Landroid/view/View;
    .end local v11           #data:Landroid/os/Bundle;
    .end local v14           #ib:Lcom/htc/widget/HtcListItemImageButton;
    .end local v19           #textView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v21           #v:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f03001a

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 1592
    .restart local v21       #v:Landroid/view/View;
    new-instance v13, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-direct {v13, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    .line 1593
    .restart local v13       #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1609
    .end local v13           #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    .restart local v10       #badgeNowPlaying:Landroid/view/View;
    .restart local v19       #textView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_e
    const/16 v23, 0x8

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 1611
    :catch_0
    move-exception v12

    .line 1612
    .local v12, e:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5

    .line 1619
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v6       #arrowResId:I
    .restart local v14       #ib:Lcom/htc/widget/HtcListItemImageButton;
    :cond_f
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    goto :goto_6
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1656
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1452
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 1453
    const/4 v0, 0x0

    .line 1455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
