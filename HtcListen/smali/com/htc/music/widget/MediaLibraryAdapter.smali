.class public Lcom/htc/music/widget/MediaLibraryAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaLibraryAdapter.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;,
        Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;
    }
.end annotation


# static fields
.field protected static final CATEGORY_MY_LIBRARY_INDEX:I = 0x0

.field public static final CATEGORY_MY_LIBRARY_TAG:Ljava/lang/String; = "ArtistBrowserTabPlugin"

.field protected static final CATEGORY_MY_PLAYLIST_INDEX:I = 0x1

.field public static final CATEGORY_MY_PLAYLIST_TAG:Ljava/lang/String; = "PlaylistBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[MediaLibraryAdapter]"


# instance fields
.field private mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 56
    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    .line 57
    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    .line 232
    new-instance v2, Lcom/htc/music/widget/MediaLibraryAdapter$1;

    invoke-direct {v2, p0}, Lcom/htc/music/widget/MediaLibraryAdapter$1;-><init>(Lcom/htc/music/widget/MediaLibraryAdapter;)V

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mUIHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    .line 66
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MediaLibraryAdapter;->initialMediaLibraryItems(Landroid/content/Context;)V

    .line 70
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 71
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 73
    .local v0, height:I
    new-instance v2, Lcom/htc/music/util/AlbumArtGetter;

    iget-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/htc/music/util/AlbumArtGetter;-><init>(Landroid/content/Context;IILcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V

    iput-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    .line 79
    return-void
.end method

.method private initialMediaLibraryItems(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x7f020062

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v3

    if-ne v6, v3, :cond_0

    .line 101
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/artistalbumexp"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :goto_0
    const-string v3, "ShowActivityTitle"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    new-instance v1, Lcom/htc/music/util/SourceItem;

    const-string v3, "ArtistBrowserTabPlugin"

    invoke-direct {v1, v3, v0}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 107
    .local v1, myLibrarySource:Lcom/htc/music/util/SourceItem;
    const v3, 0x7f0700d6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 108
    iput v7, v1, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 110
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/playlist"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v3, "ShowActivityTitle"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    new-instance v2, Lcom/htc/music/util/SourceItem;

    const-string v3, "PlaylistBrowserTabPlugin"

    invoke-direct {v2, v3, v0}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 114
    .local v2, myPlaylistSource:Lcom/htc/music/util/SourceItem;
    const v3, 0x7f0700e7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 115
    iput v7, v2, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 117
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    iput-object v3, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 121
    return-void

    .line 103
    .end local v1           #myLibrarySource:Lcom/htc/music/util/SourceItem;
    .end local v2           #myPlaylistSource:Lcom/htc/music/util/SourceItem;
    :cond_0
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/artistalbum"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public clearBitmapResource()V
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    if-nez v2, :cond_0

    .line 139
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v2

    .line 130
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 131
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 135
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/htc/music/util/SourceItem;->mAlbumId:I

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MediaLibraryAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 151
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 160
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 161
    :cond_0
    const-wide/16 v0, -0x1

    .line 164
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 169
    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    if-nez v6, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v5

    .line 170
    :cond_1
    if-ltz p1, :cond_0

    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v6, v6

    if-le v6, p1, :cond_0

    .line 172
    if-nez p2, :cond_2

    .line 173
    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03002f

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 175
    new-instance v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;

    invoke-direct {v1, v5}, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/MediaLibraryAdapter$1;)V

    .line 176
    .local v1, holder:Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;
    const v5, 0x7f080096

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    .line 177
    const v5, 0x7f080098

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 178
    const v5, 0x7f080097

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageCover:Landroid/widget/ImageView;

    .line 179
    new-instance v0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;

    iget-object v5, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v6, v6, p1

    invoke-direct {v0, v5, v6}, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/util/SourceItem;)V

    .line 183
    .local v0, clickListener:Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;
    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 185
    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 187
    .local v4, stateBackground:Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 188
    .local v3, layerBackground:Landroid/graphics/drawable/LayerDrawable;
    const v5, 0x7f0800fe

    iget-object v6, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mContext:Landroid/content/Context;

    const-string v8, "music_song_cover_pressed"

    const v9, 0x7f020061

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 194
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    .end local v0           #clickListener:Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;
    .end local v1           #holder:Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;
    .end local v3           #layerBackground:Landroid/graphics/drawable/LayerDrawable;
    .end local v4           #stateBackground:Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    iget-object v5, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v5, p1

    .line 199
    .local v2, item:Lcom/htc/music/util/SourceItem;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;

    .line 201
    .restart local v1       #holder:Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;
    iget-object v5, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 202
    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    iget-object v6, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    :goto_1
    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;

    .line 208
    .restart local v0       #clickListener:Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;
    iput-object v2, v0, Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;->mSource:Lcom/htc/music/util/SourceItem;

    .line 210
    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, p2

    .line 212
    goto/16 :goto_0

    .line 204
    .end local v0           #clickListener:Lcom/htc/music/widget/MediaLibraryAdapter$OnMediaLibraryClickListener;
    :cond_3
    iget-object v5, v1, Lcom/htc/music/widget/MediaLibraryAdapter$ViewHolder;->mImageButton:Landroid/widget/ImageButton;

    iget v6, v2, Lcom/htc/music/util/SourceItem;->mIconRes:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    const/4 v2, 0x1

    .line 319
    const/4 v0, -0x1

    .line 320
    .local v0, albumId:I
    if-eqz p5, :cond_0

    .line 321
    array-length v1, p5

    if-le v1, v2, :cond_0

    .line 323
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, p5, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 330
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/widget/MediaLibraryAdapter;->setImage(ILandroid/graphics/Bitmap;I)V

    .line 331
    return-void

    .line 324
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshAlbumArt()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AlbumArtGetter;->getFirstArtistAlbumArtId(I)V

    .line 306
    iget-object v0, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AlbumArtGetter;->getFirstPlaylistAlbumArtId(I)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    const-string v0, "[MediaLibraryAdapter]"

    const-string v1, "mAlbumArtGetter is null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    invoke-virtual {v2}, Lcom/htc/music/util/AlbumArtGetter;->release()V

    .line 83
    iput-object v4, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mAlbumArtGetter:Lcom/htc/music/util/AlbumArtGetter;

    .line 85
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    if-nez v2, :cond_1

    .line 96
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v2

    .line 88
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    iput-object v4, v2, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 94
    iget-object v2, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/htc/music/util/SourceItem;->mAlbumId:I

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setImage(ILandroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "token"
    .parameter "bitmap"
    .parameter "albumId"

    .prologue
    .line 216
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v1

    if-gt v1, p1, :cond_2

    .line 217
    :cond_0
    if-eqz p2, :cond_1

    .line 218
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 225
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 226
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/htc/music/widget/MediaLibraryAdapter;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
