.class public Landroid/widget/EditableListView;
.super Landroid/widget/ListView;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditableListView$DropDownMenu;,
        Landroid/widget/EditableListView$EditableModeCallback;,
        Landroid/widget/EditableListView$EditableModeWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditableListView"


# instance fields
.field private mIsUpdateBatchChecked:Z

.field private mKeepEditModeIfNoItemChecked:Z

.field private mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/widget/EditableListView$1;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$1;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Landroid/widget/EditableListView$1;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$1;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 38
    return-void
.end method

.method static synthetic access$000(Landroid/widget/EditableListView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/EditableListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/EditableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/EditableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mKeepEditModeIfNoItemChecked:Z

    return v0
.end method

.method private isValidPos(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v1

    .line 157
    .local v1, numHeaders:I
    iget-object v2, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 158
    .local v0, count:I
    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateBatchChecked(Z)V
    .locals 12
    .parameter "checked"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 95
    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/EditableListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iput-boolean v10, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    .line 100
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v9

    .line 101
    .local v9, numHeaders:I
    iget-object v0, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v1

    sub-int v6, v0, v1

    .line 102
    .local v6, count:I
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    move v7, v10

    .line 104
    .local v7, hasStableIds:Z
    :goto_1
    move v8, v9

    .local v8, i:I
    :goto_2
    if-ge v8, v6, :cond_7

    .line 105
    if-eqz p1, :cond_5

    .line 106
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v7           #hasStableIds:Z
    .end local v8           #i:I
    :cond_3
    move v7, v11

    .line 102
    goto :goto_1

    .line 109
    .restart local v7       #hasStableIds:Z
    .restart local v8       #i:I
    :cond_4
    iget v0, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    .line 116
    :goto_4
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 117
    if-eqz v7, :cond_2

    .line 118
    if-eqz p1, :cond_6

    .line 119
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 111
    :cond_5
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget v0, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    goto :goto_4

    .line 121
    :cond_6
    iget-object v0, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_3

    .line 127
    :cond_7
    iget-object v0, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    add-int/lit8 v1, v6, -0x1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 128
    .local v3, id:J
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    add-int/lit8 v2, v6, -0x1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 131
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mInLayout:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/EditableListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_8

    .line 132
    iput-boolean v10, p0, Landroid/widget/EditableListView;->mDataChanged:Z

    .line 133
    invoke-virtual {p0}, Landroid/widget/EditableListView;->rememberSyncState()V

    .line 134
    invoke-virtual {p0}, Landroid/widget/EditableListView;->requestLayout()V

    .line 137
    :cond_8
    iput-boolean v11, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public checkAll()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/EditableListView;->updateBatchChecked(Z)V

    .line 149
    return-void
.end method

.method public checkNothing()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditableListView;->updateBatchChecked(Z)V

    .line 153
    return-void
.end method

.method public enterEditMode()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 44
    :cond_0
    return-void
.end method

.method public exitEditMode()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 54
    :cond_0
    return-void
.end method

.method public isAllChecked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemCheckedById(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 64
    iget-object v1, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    .local v0, pos:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditableListView;->isItemChecked(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "isScrap"

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, view:Landroid/view/View;
    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 165
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    :cond_0
    return-object v1

    .line 166
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "value"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 145
    :cond_0
    return-void
.end method

.method public setKeepExitModeIfNoItemChecked(Z)V
    .locals 0
    .parameter "keepEidtMode"

    .prologue
    .line 47
    iput-boolean p1, p0, Landroid/widget/EditableListView;->mKeepEditModeIfNoItemChecked:Z

    .line 48
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/widget/EditableListView$EditableModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$EditableModeWrapper;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 83
    :cond_0
    iput-object p1, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 84
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 86
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 87
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 88
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    goto :goto_0
.end method
