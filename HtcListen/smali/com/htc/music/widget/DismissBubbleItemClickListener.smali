.class public Lcom/htc/music/widget/DismissBubbleItemClickListener;
.super Ljava/lang/Object;
.source "DismissBubbleItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "musicDismissBubbleActivity"
    .parameter "itemClickListener"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;

    .line 11
    iput-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 15
    iput-object p1, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;

    .line 16
    iput-object p2, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;

    if-nez v0, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mMusicDismissBubbleActivity:Lcom/htc/music/widget/IDismissBubbleInterface;

    invoke-interface {v0}, Lcom/htc/music/widget/IDismissBubbleInterface;->dismissPopupBubble()V

    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/DismissBubbleItemClickListener;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
