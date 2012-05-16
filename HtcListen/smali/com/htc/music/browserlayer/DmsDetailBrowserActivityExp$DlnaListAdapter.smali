.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DmsDetailBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaListAdapter"
.end annotation


# instance fields
.field private mBar:Landroid/widget/ProgressBar;

.field private mContext:Landroid/content/Context;

.field private mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIcon:Lcom/htc/widget/HtcListItemTileImage;

.field private mName:Lcom/htc/widget/HtcListItem2LineText;

.field private mPlaying:Lcom/htc/widget/HtcListItemImageButton;

.field private mResources:Landroid/content/res/Resources;

.field private mServerIconIndex:I

.field private mServerIndex:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mResources:Landroid/content/res/Resources;

    .line 2001
    iput-object p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mContext:Landroid/content/Context;

    .line 2003
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 2005
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208024f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3002(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 2008
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {p1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2202(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 2012
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2018
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2023
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2025
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2030
    int-to-long v0, p1

    .line 2032
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2036
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2038
    .local v6, size:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    if-gt p1, v6, :cond_0

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2039
    :cond_0
    const/4 v7, 0x0

    .line 2108
    :goto_0
    return-object v7

    .line 2041
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 2043
    .local v0, contentID:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 2045
    if-eqz p2, :cond_2

    const v7, 0x7f080052

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    .line 2046
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2049
    :cond_3
    const v7, 0x7f080053

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2050
    .local v1, contentText:Landroid/widget/TextView;
    const v7, 0x7f080052

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mBar:Landroid/widget/ProgressBar;

    .line 2052
    if-nez p1, :cond_6

    .line 2053
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f0700c2

    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2054
    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mBar:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v7, p2

    .line 2055
    goto :goto_0

    .line 2053
    :cond_4
    const v7, 0x7f0700c1

    goto :goto_1

    .line 2054
    :cond_5
    const/16 v7, 0x8

    goto :goto_2

    .line 2059
    :cond_6
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v7, 0x7f0700c0

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2060
    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mBar:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v7, p2

    .line 2061
    goto/16 :goto_0

    .line 2059
    :cond_7
    const v7, 0x7f0700bf

    goto :goto_3

    .line 2060
    :cond_8
    const/16 v7, 0x8

    goto :goto_4

    .line 2065
    .end local v1           #contentText:Landroid/widget/TextView;
    :cond_9
    if-eqz p2, :cond_a

    const v7, 0x7f080042

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_b

    .line 2066
    :cond_a
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2068
    :cond_b
    const v7, 0x7f080043

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mName:Lcom/htc/widget/HtcListItem2LineText;

    .line 2069
    const v7, 0x7f080042

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    .line 2070
    const v7, 0x7f080045

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    .line 2071
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 2073
    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mName:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2074
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mName:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2075
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->IsContainer()Z

    move-result v4

    .line 2077
    .local v4, isContainer:Z
    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;

    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetPosition()I
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;)I

    move-result v7

    invoke-direct {v3, v8, v7, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;ILjava/lang/String;)V

    .line 2078
    .local v3, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 2080
    if-eqz v4, :cond_d

    .line 2081
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultFolderIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    :goto_5
    move-object v7, p2

    .line 2108
    goto/16 :goto_0

    .line 2083
    :cond_d
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2084
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const v8, 0x7f02004b

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 2085
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 2087
    const-string v7, "[DMS]"

    const-string v8, "getView"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current content = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    :cond_e
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v8

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetPosition()I
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 2093
    .local v2, image:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_f

    .line 2095
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v7, p2

    .line 2096
    goto/16 :goto_0

    .line 2099
    :cond_f
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2101
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2102
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2103
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "contentID"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 8
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 2113
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 2114
    .local v2, childCount:I
    if-gtz v2, :cond_1

    .line 2136
    :cond_0
    return-void

    .line 2120
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 2121
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 2122
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2123
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2124
    .local v6, ll:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 2125
    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 2126
    .local v1, child:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_2

    .line 2127
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;

    .line 2128
    .local v4, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;
    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;->getPostion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2129
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2130
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2122
    .end local v1           #child:Lcom/htc/widget/HtcListItemTileImage;
    .end local v4           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;
    .end local v5           #integer:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
