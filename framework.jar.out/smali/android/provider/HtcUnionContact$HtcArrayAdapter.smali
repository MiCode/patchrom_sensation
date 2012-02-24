.class public abstract Landroid/provider/HtcUnionContact$HtcArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HtcArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutRes:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "layoutRes"

    .prologue
    .line 3302
    .local p0, this:Landroid/provider/HtcUnionContact$HtcArrayAdapter;,"Landroid/provider/HtcUnionContact$HtcArrayAdapter<TE;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3303
    iput-object p1, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mContext:Landroid/content/Context;

    .line 3304
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3305
    iput p2, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mLayoutRes:I

    .line 3306
    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TE;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 3323
    .local p0, this:Landroid/provider/HtcUnionContact$HtcArrayAdapter;,"Landroid/provider/HtcUnionContact$HtcArrayAdapter<TE;>;"
    iget-object v0, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    .line 3327
    .local p0, this:Landroid/provider/HtcUnionContact$HtcArrayAdapter;,"Landroid/provider/HtcUnionContact$HtcArrayAdapter<TE;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 3331
    .local p0, this:Landroid/provider/HtcUnionContact$HtcArrayAdapter;,"Landroid/provider/HtcUnionContact$HtcArrayAdapter<TE;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3336
    .local p0, this:Landroid/provider/HtcUnionContact$HtcArrayAdapter;,"Landroid/provider/HtcUnionContact$HtcArrayAdapter<TE;>;"
    if-nez p2, :cond_0

    .line 3337
    iget-object v1, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mLayoutRes:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3341
    .local v0, view:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    .line 3342
    return-object v0

    .line 3339
    .end local v0           #view:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public itemForPosition(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 3315
    .local p0, this:Landroid/provider/HtcUnionContact$HtcArrayAdapter;,"Landroid/provider/HtcUnionContact$HtcArrayAdapter<TE;>;"
    iget-object v0, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3316
    const/4 v0, 0x0

    .line 3319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setSource(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 3309
    .local p0, this:Landroid/provider/HtcUnionContact$HtcArrayAdapter;,"Landroid/provider/HtcUnionContact$HtcArrayAdapter<TE;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    iput-object p1, p0, Landroid/provider/HtcUnionContact$HtcArrayAdapter;->mList:Ljava/util/List;

    .line 3310
    return-void
.end method
