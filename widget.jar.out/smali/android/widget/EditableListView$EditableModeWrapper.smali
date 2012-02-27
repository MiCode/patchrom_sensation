.class Landroid/widget/EditableListView$EditableModeWrapper;
.super Landroid/widget/AbsListView$MultiChoiceModeWrapper;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditableModeWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EditableListView;


# direct methods
.method constructor <init>(Landroid/widget/EditableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Landroid/widget/EditableListView$EditableModeWrapper;->this$0:Landroid/widget/EditableListView;

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 176
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeWrapper;->this$0:Landroid/widget/EditableListView;

    #calls: Landroid/widget/EditableListView;->isValidPos(I)Z
    invoke-static {v0, p2}, Landroid/widget/EditableListView;->access$000(Landroid/widget/EditableListView;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeWrapper;->this$0:Landroid/widget/EditableListView;

    #getter for: Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;
    invoke-static {v0}, Landroid/widget/EditableListView;->access$100(Landroid/widget/EditableListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 181
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeWrapper;->this$0:Landroid/widget/EditableListView;

    #getter for: Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z
    invoke-static {v0}, Landroid/widget/EditableListView;->access$200(Landroid/widget/EditableListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeWrapper;->this$0:Landroid/widget/EditableListView;

    #getter for: Landroid/widget/EditableListView;->mKeepEditModeIfNoItemChecked:Z
    invoke-static {v0}, Landroid/widget/EditableListView;->access$300(Landroid/widget/EditableListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/widget/EditableListView$EditableModeWrapper;->this$0:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method
