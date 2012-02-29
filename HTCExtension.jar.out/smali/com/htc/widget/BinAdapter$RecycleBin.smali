.class Lcom/htc/widget/BinAdapter$RecycleBin;
.super Ljava/lang/Object;
.source "BinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/BinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapOverlayImgHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrapOverlayTextHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget/BinAdapter;


# direct methods
.method constructor <init>(Lcom/htc/widget/BinAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/htc/widget/BinAdapter$RecycleBin;->this$0:Lcom/htc/widget/BinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter$RecycleBin;->mScrapOverlayTextHeap:Landroid/util/SparseArray;

    .line 480
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/BinAdapter$RecycleBin;->mScrapOverlayImgHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/widget/BinAdapter$RecycleBin;->mScrapOverlayTextHeap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 517
    iget-object v0, p0, Lcom/htc/widget/BinAdapter$RecycleBin;->mScrapOverlayImgHeap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 518
    return-void
.end method

.method getOverlayImg(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "position"

    .prologue
    .line 504
    iget-object v1, p0, Lcom/htc/widget/BinAdapter$RecycleBin;->mScrapOverlayImgHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 505
    .local v0, result:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 512
    :cond_0
    return-object v0
.end method

.method getOverlayText(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/htc/widget/BinAdapter$RecycleBin;->mScrapOverlayTextHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 500
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "position"
    .parameter "v"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/widget/BinAdapter$RecycleBin;->mScrapOverlayImgHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    return-void
.end method

.method public put(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "s"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/widget/BinAdapter$RecycleBin;->mScrapOverlayTextHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    return-void
.end method
