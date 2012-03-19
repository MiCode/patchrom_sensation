.class Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4635
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 4656
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 4643
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4645
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAbsListView;->setLongClickable(Z)V

    .line 4646
    const/4 v0, 0x1

    .line 4648
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 4660
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4661
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 4664
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->clearChoices()V

    .line 4666
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 4667
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 4668
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 4670
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAbsListView;->setLongClickable(Z)V

    .line 4671
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 4675
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 4678
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 4679
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 4681
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 4652
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 4639
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;

    .line 4640
    return-void
.end method
