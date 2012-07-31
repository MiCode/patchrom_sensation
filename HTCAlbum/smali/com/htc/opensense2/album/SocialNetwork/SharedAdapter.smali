.class public Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedAdapter.java"

# interfaces
.implements Lcom/htc/opensense2/widget/IExpandableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    }
.end annotation


# static fields
.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "SharedAdapter.KEY_CLASS_NAME"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "SharedAdapter.KEY_PACKAGE"

.field public static final KEY_PACKAGE_NAME_FOR_OTHER:Ljava/lang/String; = "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

.field public static final KEY_SHARE_TO:Ljava/lang/String; = "SharedAdapter.KEY_SHARE_TO"

.field private static final LOG_TAG:Ljava/lang/String; = "SharedAdapter"

.field public static final SHARE_CONFLICT:I = 0x30000

.field public static final SHARE_IMAGE:I = 0x1

.field public static final SHARE_MULTIPLE:I = 0x20000

.field public static final SHARE_MULTIPLE_BOTH:I = 0x20003

.field public static final SHARE_MULTIPLE_IMAGES:I = 0x20001

.field public static final SHARE_MULTIPLE_ITEM_SET_AS:I = 0x440000

.field public static final SHARE_MULTIPLE_ITEM_SHARE:I = 0x220000

.field public static final SHARE_MULTIPLE_VIDEOS:I = 0x20002

.field public static final SHARE_PRINT:I = 0x550000

.field public static final SHARE_SINGLE:I = 0x10000

.field public static final SHARE_SINGLE_BOTH:I = 0x10003

.field public static final SHARE_SINGLE_IMAGE:I = 0x10001

.field public static final SHARE_SINGLE_ITEM_SET_AS:I = 0x330000

.field public static final SHARE_SINGLE_ITEM_SHARE:I = 0x110000

.field public static final SHARE_SINGLE_VIDEO:I = 0x10002

.field public static final SHARE_VIDEO:I = 0x2


# instance fields
.field private mCombinedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnableDarkList:Z

.field private mExpandable:Z

.field private mExpanded:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mShowIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "bShowIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, combinedList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    .line 73
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    .line 75
    iput-boolean p3, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    .line 77
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    return-void
.end method


# virtual methods
.method public append(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    .line 207
    return-void
.end method

.method public expandable()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    .line 197
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 93
    const/4 v0, -0x1

    .line 94
    .local v0, nCount:I
    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    if-eqz v1, :cond_0

    .line 96
    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 97
    const/4 v0, 0x5

    .line 100
    :cond_0
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 122
    iget-boolean v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpandable:Z

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    if-nez v11, :cond_0

    .line 124
    const/4 v11, 0x6

    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-gt v11, v12, :cond_0

    const/4 v11, 0x4

    if-ne v11, p1, :cond_0

    .line 126
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 127
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v11, 0x2090071

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 128
    .local v9, view:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 130
    const v11, 0x2020010

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 131
    .local v8, txtView:Landroid/widget/TextView;
    const v11, 0x1040371

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 132
    const v11, 0x202001a

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 133
    .local v3, imageView:Landroid/widget/ImageView;
    const v11, 0x2080345

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v10, v9

    .line 181
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #txtView:Landroid/widget/TextView;
    .end local v9           #view:Landroid/view/View;
    .local v10, view:Landroid/view/View;
    :goto_0
    return-object v10

    .line 138
    .end local v10           #view:Landroid/view/View;
    :cond_0
    iget-boolean v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    if-eqz v11, :cond_3

    .line 140
    iget-boolean v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    if-eqz v11, :cond_2

    .line 142
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030016

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .restart local v9       #view:Landroid/view/View;
    move-object v6, v9

    .line 143
    check-cast v6, Lcom/htc/widget/HtcListItem;

    .line 144
    .local v6, item:Lcom/htc/widget/HtcListItem;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .end local v6           #item:Lcom/htc/widget/HtcListItem;
    :goto_1
    const v11, 0x7f0a0027

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    .line 161
    .local v7, text:Lcom/htc/widget/HtcListItem2LineText;
    const v11, 0x7f0a0029

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    .line 162
    .local v2, image:Lcom/htc/widget/HtcListItemImageButton;
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 164
    .local v5, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    iget-boolean v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    if-eqz v11, :cond_5

    .line 166
    if-eqz v2, :cond_1

    .line 168
    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    .local v1, iconDrawable:Landroid/graphics/drawable/Drawable;
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v11}, Lcom/htc/widget/HtcListItemImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    .end local v1           #iconDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 173
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    :goto_2
    move-object v10, v9

    .line 181
    .end local v9           #view:Landroid/view/View;
    .restart local v10       #view:Landroid/view/View;
    goto :goto_0

    .line 147
    .end local v2           #image:Lcom/htc/widget/HtcListItemImageButton;
    .end local v5           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v7           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v10           #view:Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030014

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .restart local v9       #view:Landroid/view/View;
    goto :goto_1

    .line 151
    .end local v9           #view:Landroid/view/View;
    :cond_3
    iget-boolean v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mEnableDarkList:Z

    if-eqz v11, :cond_4

    .line 153
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030013

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .restart local v9       #view:Landroid/view/View;
    move-object v6, v9

    .line 154
    check-cast v6, Lcom/htc/widget/HtcListItem;

    .line 155
    .restart local v6       #item:Lcom/htc/widget/HtcListItem;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 158
    .end local v6           #item:Lcom/htc/widget/HtcListItem;
    .end local v9           #view:Landroid/view/View;
    :cond_4
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030011

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .restart local v9       #view:Landroid/view/View;
    goto :goto_1

    .line 177
    .restart local v2       #image:Lcom/htc/widget/HtcListItemImageButton;
    .restart local v5       #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .restart local v7       #text:Lcom/htc/widget/HtcListItem2LineText;
    :cond_5
    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 178
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_2
.end method

.method public insert(ILcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
    .locals 1
    .parameter "nIndex"
    .parameter "item"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 187
    .local v0, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    return v0
.end method

.method public remove(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->mExpanded:Z

    .line 212
    return-void
.end method
