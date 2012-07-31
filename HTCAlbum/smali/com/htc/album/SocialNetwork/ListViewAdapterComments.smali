.class public Lcom/htc/album/SocialNetwork/ListViewAdapterComments;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "ListViewAdapterComments.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

.field private mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

.field private mIsNewCommentEntry:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 51
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    .line 53
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    .line 544
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewAdapterComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 58
    invoke-virtual {p0, p3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setUIHandler(Landroid/os/Handler;)V

    .line 59
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private setCommentOwnerAvatar(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "convertView"
    .parameter "srcBmp"

    .prologue
    .line 366
    return-void
.end method

.method private setHeaderData(Landroid/view/View;I)V
    .locals 14
    .parameter "convertView"
    .parameter "nPos"

    .prologue
    .line 295
    const v0, 0x7f0a0063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 297
    .local v8, imgViewOwnerAvatar:Landroid/widget/ImageView;
    const/4 v10, 0x0

    .line 299
    .local v10, srcBmp:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonIconURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 313
    :goto_0
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 314
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const v0, 0x7f0a0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 317
    .local v12, textViewOwnerName:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const/4 v7, 0x0

    .line 324
    .local v7, bHasDescription:Z
    const v0, 0x7f0a0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 325
    .local v13, textViewPhotoName:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 327
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :goto_1
    if-nez v7, :cond_2

    const v0, 0x7f0a0065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_2
    const v0, 0x7f0a0068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 339
    .local v9, imgViewSharedPhoto:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    .line 341
    iget-object v0, p0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_PictureAndVideo(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    :goto_2
    const v0, 0x7f0a0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 350
    .local v11, textViewDate:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_3
    return-void

    .line 305
    .end local v7           #bHasDescription:Z
    .end local v9           #imgViewSharedPhoto:Landroid/widget/ImageView;
    .end local v11           #textViewDate:Landroid/widget/TextView;
    .end local v12           #textViewOwnerName:Landroid/widget/TextView;
    .end local v13           #textViewPhotoName:Landroid/widget/TextView;
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonIconURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_0

    .line 331
    .restart local v7       #bHasDescription:Z
    .restart local v12       #textViewOwnerName:Landroid/widget/TextView;
    .restart local v13       #textViewPhotoName:Landroid/widget/TextView;
    :cond_5
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const/4 v7, 0x1

    goto :goto_1

    .line 345
    .restart local v9       #imgViewSharedPhoto:Landroid/widget/ImageView;
    :cond_6
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method


# virtual methods
.method public getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    return-object v0
.end method

.method public getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x1

    .line 93
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_0
    return v0
.end method

.method public getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, obj:Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 108
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 105
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "nPos"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 163
    const/4 v12, 0x0

    .line 165
    .local v12, comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    if-nez p1, :cond_4

    const/4 v11, 0x1

    .line 168
    .local v11, bHeader:Z
    :goto_0
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    check-cast v12, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 170
    .restart local v12       #comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    :cond_0
    const/4 v14, 0x0

    .line 171
    .local v14, currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-nez v11, :cond_1

    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v14

    .line 173
    :cond_1
    if-nez p2, :cond_9

    .line 175
    if-eqz v11, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 229
    :cond_2
    :goto_1
    if-eqz v11, :cond_e

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    :goto_2
    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setHeaderData(Landroid/view/View;I)V

    .line 289
    :cond_3
    :goto_3
    return-object p2

    .line 165
    .end local v11           #bHeader:Z
    .end local v14           #currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 179
    .restart local v11       #bHeader:Z
    .restart local v14       #currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_5
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v14, v3, :cond_6

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_7

    .line 182
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 184
    :cond_7
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_8

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 188
    :cond_8
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 195
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 197
    .local v10, aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-eqz v11, :cond_a

    .line 199
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_TOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 204
    :cond_a
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v14, v3, :cond_b

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_c

    .line 207
    :cond_b
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 213
    :cond_c
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_d

    .line 215
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 220
    :cond_d
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_2

    .line 222
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 230
    .end local v10           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_e
    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 233
    :cond_f
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v14, v3, :cond_10

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_15

    .line 236
    :cond_10
    const/16 v16, 0x0

    .line 238
    .local v16, srcBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatar()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20800c2

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 252
    :goto_4
    const v3, 0x7f0a0048

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 253
    .local v17, topRound_layout:Landroid/widget/RelativeLayout;
    if-eqz v17, :cond_11

    .line 255
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_14

    .line 256
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 261
    :cond_11
    :goto_5
    const v3, 0x7f0a0049

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 262
    .local v15, imgViewAvatar:Landroid/widget/ImageView;
    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    const v3, 0x7f0a004a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 265
    .local v18, txtViewContent:Landroid/widget/TextView;
    if-eqz v18, :cond_12

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v12, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getFormatedComment(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_12
    const v3, 0x7f0a004b

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 269
    .local v19, txtViewDateTime:Landroid/widget/TextView;
    if-eqz v19, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v12, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getDateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 244
    .end local v15           #imgViewAvatar:Landroid/widget/ImageView;
    .end local v17           #topRound_layout:Landroid/widget/RelativeLayout;
    .end local v18           #txtViewContent:Landroid/widget/TextView;
    .end local v19           #txtViewDateTime:Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatar()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_4

    .line 258
    .restart local v17       #topRound_layout:Landroid/widget/RelativeLayout;
    :cond_14
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 274
    .end local v16           #srcBmp:Landroid/graphics/Bitmap;
    .end local v17           #topRound_layout:Landroid/widget/RelativeLayout;
    :cond_15
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_16

    .line 276
    const v3, 0x7f0a0046

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/htc/widget/HtcProgressBar;

    .line 277
    .local v20, viewProgress:Lcom/htc/widget/HtcProgressBar;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 279
    const v3, 0x7f0a0011

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/htc/widget/HtcListItem2LineText;

    .line 280
    .local v21, viewText_1:Lcom/htc/widget/HtcListItem2LineText;
    const v3, 0x7f0b00a4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 281
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto/16 :goto_3

    .line 283
    .end local v20           #viewProgress:Lcom/htc/widget/HtcProgressBar;
    .end local v21           #viewText_1:Lcom/htc/widget/HtcListItem2LineText;
    :cond_16
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v14, v3, :cond_3

    .line 285
    const v3, 0x7f0a000f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 286
    .local v13, comment_empty_layout:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    const v6, 0x205004d

    invoke-virtual {v13, v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto/16 :goto_3
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 119
    const/4 v0, 0x1

    .line 122
    .local v0, bResult:Z
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getCommentSize()I

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->isEnabled(I)Z

    move-result v0

    :cond_2
    move v1, v0

    .line 134
    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 64
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    iget-object v1, p0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 65
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onDestroy]: Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->clearAllCache()V

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 87
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onDestroy]: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    .prologue
    .line 487
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onErrorConnection]: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 489
    return-void
.end method

.method public onErrorNoList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 493
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onErrorNoList]: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_0

    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->refreshCommentList()Z

    .line 498
    const/16 v0, 0x2761

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 499
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 500
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 504
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 528
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 531
    :goto_0
    return-void

    .line 507
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onRequestComments(Landroid/os/Message;)V

    goto :goto_0

    .line 510
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onRequestAddComment(Landroid/os/Message;)V

    goto :goto_0

    .line 513
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncConnection()V

    goto :goto_0

    .line 516
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncListComplete()V

    goto :goto_0

    .line 519
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 522
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onErrorConnection()V

    goto :goto_0

    .line 525
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onErrorNoList()V

    goto :goto_0

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_5
        0x2761 -> :sswitch_6
        0x4e26 -> :sswitch_0
        0x4e30 -> :sswitch_1
        0x4e84 -> :sswitch_2
        0x4e89 -> :sswitch_4
        0x4e92 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 75
    return-void
.end method

.method public onRequestAddComment(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 431
    sget-object v3, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][ListViewAdapterComments][onRequestAddComment]: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 437
    const/16 v3, 0x4e8d

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 439
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 441
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v3, 0x1

    new-array v1, v3, [Lcom/htc/opensense/social/data/Medium;

    .line 442
    .local v1, medium:[Lcom/htc/opensense/social/data/Medium;
    const-string v3, "photo_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/data/Medium;

    aput-object v3, v1, v5

    .line 443
    const-string v3, "comment_update"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, szComment:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    aget-object v4, v1, v5

    invoke-virtual {v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setPhotoComment(Lcom/htc/opensense/social/data/Medium;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public onRequestComments(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 412
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onRequestComments]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 421
    const/16 v0, 0x2761

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 422
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 427
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->requestCommentList()Z

    .line 428
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 71
    return-void
.end method

.method public onSyncConnection()V
    .locals 3

    .prologue
    .line 451
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onSyncConnection]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 456
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncListComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 462
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onSyncListComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->refreshCommentList()Z

    .line 469
    :cond_2
    const/16 v0, 0x2761

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 470
    const/16 v0, 0x4e21

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 471
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 473
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    if-ne v0, v1, :cond_0

    .line 475
    const/16 v0, 0x4e90

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 476
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    goto :goto_0
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 482
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 483
    return-void
.end method

.method public setScrollState(II)V
    .locals 0
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    .line 542
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 0
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 537
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    const/4 v0, 0x0

    .line 374
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v1

    if-ne v5, v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    sget-object v1, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterComments][syncBackgroundService]: no account..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/16 v1, 0x274f

    invoke-virtual {p0, v1, v6, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v1

    if-ne v5, v1, :cond_3

    .line 385
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v1

    if-nez v1, :cond_2

    .line 387
    sget-object v1, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterComments][syncBackgroundService]: no change just skip!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_2
    const/16 v1, 0x2750

    invoke-virtual {p0, v1, v6, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 396
    :cond_3
    sget-object v1, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterComments][syncBackgroundService]: InitConnection.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 398
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const/16 v1, 0x2724

    invoke-virtual {p0, v1, v6, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method
