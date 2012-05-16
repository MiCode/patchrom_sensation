.class Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/NowPlayingViewHelper;

.field private mContext:Landroid/content/Context;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResID:I

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method public constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;I)V
    .locals 9
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3007
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3001
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    .line 3002
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    .line 3009
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3010
    iput p4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mResID:I

    .line 3011
    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    .line 3012
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    .line 3014
    const v0, 0x7f070043

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3017
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020057

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3019
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 3020
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 3021
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 3023
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$3800(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3025
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8, v0}, Lcom/htc/music/NowPlayingViewHelper;->access$3802(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 3031
    :goto_0
    return-void

    .line 3029
    :cond_0
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "NowPlayingListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$4100(Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;)Lcom/htc/music/NowPlayingViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 3034
    const/4 v0, 0x0

    .line 3035
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3036
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3041
    :goto_0
    return v0

    .line 3039
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$3500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 3045
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 3049
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3056
    if-nez p2, :cond_7

    .line 3057
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mResID:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3059
    new-instance v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;-><init>(Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;)V

    .line 3060
    .local v6, holder:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;
    const v14, 0x7f080043

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 3061
    const v14, 0x202001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    .line 3062
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3063
    const v14, 0x7f080042

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 3064
    const v14, 0x7f080044

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    .line 3066
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3076
    :goto_0
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v14, :cond_0

    .line 3077
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3078
    .local v5, data:Landroid/os/Bundle;
    const-string v14, "position"

    move/from16 v0, p1

    invoke-virtual {v5, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3080
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v14, v5}, Lcom/htc/widget/HtcListItemImageButton;->setTag(Ljava/lang/Object;)V

    .line 3084
    .end local v5           #data:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    .line 3087
    const/4 v4, 0x0

    .line 3089
    .local v4, curListItem:Landroid/content/ContentValues;
    move/from16 v12, p1

    .line 3090
    .local v12, realPos:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v14, v14, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 3092
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$3500(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 3093
    .local v11, pos:Ljava/lang/Integer;
    if-eqz v11, :cond_1

    .line 3094
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3097
    .end local v11           #pos:Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$2100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #curListItem:Landroid/content/ContentValues;
    check-cast v4, Landroid/content/ContentValues;

    .line 3099
    .restart local v4       #curListItem:Landroid/content/ContentValues;
    const/4 v13, 0x0

    .line 3102
    .local v13, tmpStr:Ljava/lang/String;
    const-string v14, "title"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3103
    if-eqz v13, :cond_2

    .line 3104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v14, v14, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v14, :cond_8

    .line 3106
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 3116
    :cond_2
    :goto_1
    const-string v14, "artist"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3117
    if-eqz v13, :cond_3

    const-string v14, "<unknown>"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 3118
    :cond_3
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 3123
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$3900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 3126
    .local v3, cacheBmp:Landroid/graphics/Bitmap;
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3128
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_a

    .line 3130
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v14, :cond_4

    .line 3131
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3182
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$3000(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v14

    if-ne v14, v12, :cond_5

    .line 3184
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const v15, 0x7f02004b

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3185
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3190
    :cond_5
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v14, :cond_6

    .line 3191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    const-string v15, "common_arrow"

    const v16, 0x20807c9

    invoke-static/range {v14 .. v16}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 3192
    .local v2, arrowResId:I
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v14, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3193
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3194
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcListItemImageButton;

    new-instance v15, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$1;-><init>(Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;)V

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3210
    .end local v2           #arrowResId:I
    .end local v3           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v4           #curListItem:Landroid/content/ContentValues;
    .end local v12           #realPos:I
    .end local v13           #tmpStr:Ljava/lang/String;
    :cond_6
    :goto_4
    const-string v14, "[NowPlayingViewHelper]"

    const-string v15, "########################################### getView() End"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    return-object p2

    .line 3071
    .end local v6           #holder:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;

    .line 3072
    .restart local v6       #holder:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3073
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3110
    .restart local v4       #curListItem:Landroid/content/ContentValues;
    .restart local v12       #realPos:I
    .restart local v13       #tmpStr:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v15, v15, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    invoke-static {v14, v13, v15}, Lcom/htc/music/util/MusicUtils;->getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 3111
    .local v8, markedString:Ljava/lang/CharSequence;
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v14, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3120
    .end local v8           #markedString:Ljava/lang/CharSequence;
    :cond_9
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v14, v13}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3136
    .restart local v3       #cacheBmp:Landroid/graphics/Bitmap;
    :cond_a
    const/4 v7, 0x1

    .line 3138
    .local v7, isNeedToQuery:Z
    const-string v14, "albumartpath"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 3139
    const-string v14, "albumartpath"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3140
    .local v10, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3141
    .local v1, albumArtFile:Ljava/io/File;
    const-string v14, "[NowPlayingViewHelper]"

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

    .line 3143
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 3144
    const/4 v7, 0x0

    .line 3151
    .end local v1           #albumArtFile:Ljava/io/File;
    .end local v10           #path:Ljava/lang/String;
    :cond_b
    :goto_5
    if-nez v7, :cond_d

    .line 3154
    const-string v14, "albumartpath"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3156
    .restart local v10       #path:Ljava/lang/String;
    const-string v14, "[NowPlayingViewHelper]"

    const-string v15, "## Don\'t query it!! There is no cache, but there is albumartpath in SD card. Try to decode it."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$3800(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v14, v12, v10, v12, v15}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 3160
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v14, :cond_4

    .line 3161
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 3146
    .restart local v1       #albumArtFile:Ljava/io/File;
    :cond_c
    const/4 v7, 0x1

    .line 3147
    const-string v14, "albumartpath"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_5

    .line 3165
    .end local v1           #albumArtFile:Ljava/io/File;
    .end local v10           #path:Ljava/lang/String;
    :cond_d
    const-string v14, "[NowPlayingViewHelper]"

    const-string v15, "## Query it!! There is no cache and no in SD card. Send message to DMP service to get album art path."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    iget-object v14, v6, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$3400(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 3172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$4000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3173
    .local v9, msg:Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3174
    .restart local v5       #data:Landroid/os/Bundle;
    const-string v14, "position"

    invoke-virtual {v5, v14, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3175
    invoke-virtual {v9, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;
    invoke-static {v14}, Lcom/htc/music/NowPlayingViewHelper;->access$4000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 3208
    .end local v3           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v4           #curListItem:Landroid/content/ContentValues;
    .end local v5           #data:Landroid/os/Bundle;
    .end local v7           #isNeedToQuery:Z
    .end local v9           #msg:Landroid/os/Message;
    .end local v12           #realPos:I
    .end local v13           #tmpStr:Ljava/lang/String;
    :cond_e
    const-string v14, "[NowPlayingViewHelper]"

    const-string v15, "getView()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 7
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 3227
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, v6, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 3228
    .local v2, childCount:I
    if-gtz v2, :cond_1

    .line 3248
    :cond_0
    return-void

    .line 3232
    :cond_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$3900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 3233
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 3235
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3236
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, v6, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3237
    .local v5, ll:Landroid/view/View;
    if-nez v5, :cond_3

    .line 3235
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3239
    :cond_3
    const v6, 0x7f080042

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 3240
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_2

    .line 3242
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3243
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 3244
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setActivity(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 3215
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    .line 3216
    return-void
.end method
