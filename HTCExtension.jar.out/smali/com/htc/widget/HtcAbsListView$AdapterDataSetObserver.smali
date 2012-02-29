.class Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;
.super Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;
.source "HtcAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4597
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 4600
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 4601
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$2200(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4602
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$2200(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->onSectionsChanged()V

    .line 4604
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 4608
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 4609
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$2200(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4610
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$2200(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->onSectionsChanged()V

    .line 4612
    :cond_0
    return-void
.end method
