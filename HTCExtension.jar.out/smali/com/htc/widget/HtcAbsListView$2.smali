.class Lcom/htc/widget/HtcAbsListView$2;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 3511
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3513
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 3514
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    iput-boolean v1, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    .line 3515
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAbsListView;->access$1400(Lcom/htc/widget/HtcAbsListView;Z)V

    .line 3516
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$1500(Lcom/htc/widget/HtcAbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3517
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAbsListView;->access$1600(Lcom/htc/widget/HtcAbsListView;Z)V

    .line 3519
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3520
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3523
    :cond_1
    return-void
.end method
