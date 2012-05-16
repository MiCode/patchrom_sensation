.class public Lcom/htc/music/widget/MusicCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "MusicCategoryAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mStrings:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "_context"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mContext:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    .line 23
    iput-object p1, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v3, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 62
    :goto_0
    return-object v2

    .line 47
    :cond_0
    if-nez p2, :cond_1

    .line 49
    iget-object v3, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090049

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v2, 0x2020010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p2

    .line 62
    goto :goto_0
.end method

.method public setData([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "datas"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/music/widget/MusicCategoryAdapter;->mStrings:[Ljava/lang/CharSequence;

    .line 29
    return-void
.end method
