.class public Lcom/htc/launcher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/htc/launcher/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/htc/launcher/FolderInfo$FolderListener;
.implements Lcom/htc/launcher/DropTarget;
.implements Lcom/htc/launcher/FolderInfo$Observer;


# static fields
.field private static final FOLDER_ANIM_FACTOR:F = 2.6f

.field private static final LOG_TAG:Ljava/lang/String; = "Folder"

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final STATE_ANIMATING:I = 0x1

.field private static final STATE_NONE:I = -0x1

.field private static final STATE_OPEN:I = 0x2

.field private static final STATE_SMALL:I


# instance fields
.field protected mDragItem:Lcom/htc/launcher/ApplicationInfo;

.field protected mDragger:Lcom/htc/launcher/DragController;

.field protected mFolderInfo:Lcom/htc/launcher/FolderInfo;

.field protected mLauncher:Lcom/htc/launcher/Launcher;

.field private mMotionX:I

.field private mMotionY:I

.field mOnExitAlarmListener:Lcom/htc/launcher/OnAlarmListener;

.field private mXy:[I

.field private m_bItemsInvalidated:Z

.field private m_bRearrangeOnClose:Z

.field private m_bSuppressOnAdd:Z

.field protected m_contentsView:Lcom/htc/launcher/FolderCellLayout;

.field private m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

.field private m_currentDragView:Landroid/view/View;

.field private final m_inflater:Landroid/view/LayoutInflater;

.field private m_inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private m_itemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_nEmptyCell:[I

.field private m_nFolderCloseAnimationDuration:I

.field private m_nFolderOpenAnimationDuration:I

.field private m_nMaxCountX:I

.field private m_nMaxCountY:I

.field private m_nPreviousTargetCell:[I

.field private m_nTargetCell:[I

.field private m_nTitleHeight:I

.field private m_onExitAlarm:Lcom/htc/launcher/Alarm;

.field private m_reorderAlarm:Lcom/htc/launcher/Alarm;

.field m_reorderAlarmListener:Lcom/htc/launcher/OnAlarmListener;

.field private m_state:I

.field private m_strTitleHint:Ljava/lang/String;

.field protected m_title:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/launcher/Folder;->m_state:I

    .line 85
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_nTargetCell:[I

    .line 86
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_nPreviousTargetCell:[I

    .line 87
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_nEmptyCell:[I

    .line 88
    iput-boolean v2, p0, Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z

    .line 89
    iput-boolean v2, p0, Lcom/htc/launcher/Folder;->m_bSuppressOnAdd:Z

    .line 90
    iput-boolean v2, p0, Lcom/htc/launcher/Folder;->m_bRearrangeOnClose:Z

    .line 94
    new-instance v1, Lcom/htc/launcher/Alarm;

    invoke-direct {v1}, Lcom/htc/launcher/Alarm;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_reorderAlarm:Lcom/htc/launcher/Alarm;

    .line 95
    new-instance v1, Lcom/htc/launcher/Alarm;

    invoke-direct {v1}, Lcom/htc/launcher/Alarm;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_onExitAlarm:Lcom/htc/launcher/Alarm;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_itemsInReadingOrder:Ljava/util/ArrayList;

    .line 314
    new-instance v1, Lcom/htc/launcher/Folder$1;

    invoke-direct {v1, p0}, Lcom/htc/launcher/Folder$1;-><init>(Lcom/htc/launcher/Folder;)V

    iput-object v1, p0, Lcom/htc/launcher/Folder;->mOnExitAlarmListener:Lcom/htc/launcher/OnAlarmListener;

    .line 322
    new-instance v1, Lcom/htc/launcher/Folder$2;

    invoke-direct {v1, p0}, Lcom/htc/launcher/Folder$2;-><init>(Lcom/htc/launcher/Folder;)V

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_reorderAlarmListener:Lcom/htc/launcher/OnAlarmListener;

    .line 886
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/htc/launcher/Folder;->mXy:[I

    .line 139
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Folder;->setFocusableInTouchMode(Z)V

    .line 141
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_inflater:Landroid/view/LayoutInflater;

    .line 142
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 143
    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/Folder;->m_nMaxCountX:I

    .line 144
    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/Folder;->m_nMaxCountY:I

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/Folder;->m_nFolderOpenAnimationDuration:I

    .line 147
    const v1, 0x7f0c003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/Folder;->m_nFolderCloseAnimationDuration:I

    .line 148
    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/Folder;->m_nTitleHeight:I

    .line 149
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_strTitleHint:Ljava/lang/String;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/Folder;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nEmptyCell:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/Folder;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nTargetCell:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/Folder;[I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/Folder;->realTimeReorder([I[I)V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/launcher/Folder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/launcher/Folder;->m_bSuppressOnAdd:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/launcher/Folder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/launcher/Folder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/launcher/Folder;->setupContentDimensions(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/launcher/Folder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/launcher/Folder;->m_state:I

    return p1
.end method

.method private arrangeChildren(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 655
    new-array v9, v13, [I

    .line 656
    .local v9, nVacant:[I
    if-nez p1, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object p1

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/FolderCellLayout;->removeAllViews()V

    .line 661
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 662
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 663
    .local v1, v:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v0, v9, v5, v5}, Lcom/htc/launcher/FolderCellLayout;->getVacantCell([III)Z

    .line 664
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 665
    .local v4, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    aget v0, v9, v10

    iput v0, v4, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    .line 666
    aget v0, v9, v5

    iput v0, v4, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    .line 667
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/ItemInfo;

    .line 668
    .local v7, info:Lcom/htc/launcher/ItemInfo;
    iget v0, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    aget v2, v9, v10

    if-ne v0, v2, :cond_1

    iget v0, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    aget v2, v9, v5

    if-eq v0, v2, :cond_2

    .line 669
    :cond_1
    aget v0, v9, v10

    iput v0, v7, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 670
    aget v0, v9, v5

    iput v0, v7, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 671
    iget-object v2, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    move-object v0, v7

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v2, v0}, Lcom/htc/launcher/FolderInfo;->updatePosition(Lcom/htc/launcher/ApplicationInfo;)V

    .line 673
    :cond_2
    const/4 v8, 0x0

    .line 674
    .local v8, insert:Z
    const-string v0, "Folder"

    const-string v2, "arrangeChildren add %s to %d,%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/htc/launcher/ItemInfo;->getItemName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    iget v11, v4, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v5

    iget v11, v4, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v13

    invoke-static {v0, v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    if-eqz v8, :cond_3

    move v2, v10

    :goto_1
    iget-wide v11, v7, Lcom/htc/launcher/ItemInfo;->id:J

    long-to-int v3, v11

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/FolderCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/htc/launcher/CellLayout$LayoutParams;Z)Z

    .line 661
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 675
    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    .line 677
    .end local v1           #v:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v7           #info:Lcom/htc/launcher/ItemInfo;
    .end local v8           #insert:Z
    :cond_4
    iput-boolean v5, p0, Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z

    .line 678
    return-void
.end method

.method private centerAboutIcon()V
    .locals 27

    .prologue
    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/htc/launcher/DragLayer$LayoutParams;

    .line 584
    .local v14, lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Folder;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Folder;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v4}, Lcom/htc/launcher/FolderCellLayout;->getDesiredWidth()I

    move-result v4

    add-int v19, v3, v4

    .line 585
    .local v19, nWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Folder;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Folder;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v4}, Lcom/htc/launcher/FolderCellLayout;->getDesiredHeight()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/launcher/Folder;->m_nTitleHeight:I

    add-int v15, v3, v4

    .line 586
    .local v15, nHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v23

    check-cast v23, Lcom/htc/launcher/DragLayer;

    .line 588
    .local v23, parent:Lcom/htc/launcher/DragLayer;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/launcher/DragLayer;->getMeasuredWidth()I

    move-result v18

    .line 589
    .local v18, nParentWidth:I
    invoke-virtual/range {v23 .. v23}, Lcom/htc/launcher/DragLayer;->getMeasuredHeight()I

    move-result v17

    .line 592
    .local v17, nParentHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/CellLayout;

    .line 594
    .local v2, boundingLayout:Lcom/htc/launcher/CellLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 595
    .local v16, nLauncherBarHeight:I
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/launcher/CellLayout;->getPaddings(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v22

    .line 599
    .local v22, paddings:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget-wide v3, v3, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 600
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 601
    .local v7, iconRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget v3, v3, Lcom/htc/launcher/FolderInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget v4, v4, Lcom/htc/launcher/FolderInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/launcher/CellLayout;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 602
    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v4, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v9, v3

    .line 603
    .local v9, iconCenterX:I
    iget v3, v7, Landroid/graphics/RectF;->top:F

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v10, v3

    .line 617
    .end local v7           #iconRect:Landroid/graphics/RectF;
    .local v10, iconCenterY:I
    :goto_0
    div-int/lit8 v3, v15, 0x2

    sub-int v25, v10, v3

    .line 618
    .local v25, top:I
    div-int/lit8 v3, v19, 0x2

    sub-int v12, v9, v3

    .line 619
    .local v12, left:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    .line 620
    .local v26, topMargin:I
    invoke-virtual/range {v23 .. v23}, Lcom/htc/launcher/DragLayer;->getMeasuredHeight()I

    move-result v3

    sub-int v8, v3, v16

    .line 623
    .local v8, bottomMargin:I
    sub-int v3, v18, v19

    div-int/lit8 v13, v3, 0x2

    .line 624
    .local v13, leftMargin:I
    sub-int v24, v18, v13

    .line 626
    .local v24, rightMargin:I
    const/16 v21, 0x0

    .line 627
    .local v21, offsetY:I
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 628
    sub-int v21, v26, v25

    .line 633
    :cond_0
    :goto_1
    add-int v25, v25, v21

    .line 635
    const/16 v20, 0x0

    .line 636
    .local v20, offsetX:I
    if-ge v12, v13, :cond_5

    .line 637
    sub-int v20, v13, v12

    .line 642
    :cond_1
    :goto_2
    add-int v12, v12, v20

    .line 644
    move/from16 v0, v19

    iput v0, v14, Lcom/htc/launcher/DragLayer$LayoutParams;->width:I

    .line 645
    iput v15, v14, Lcom/htc/launcher/DragLayer$LayoutParams;->height:I

    .line 646
    iput v12, v14, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    .line 647
    move/from16 v0, v25

    iput v0, v14, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    .line 649
    div-int/lit8 v3, v19, 0x2

    sub-int v3, v3, v20

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Folder;->setPivotX(F)V

    .line 650
    div-int/lit8 v3, v15, 0x2

    sub-int v3, v3, v21

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Folder;->setPivotY(F)V

    .line 651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    if-gtz v20, :cond_6

    const/4 v3, 0x1

    move v4, v3

    :goto_3
    if-gtz v21, :cond_7

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v5, v4, v3}, Lcom/htc/launcher/FolderCellLayout;->prepareFolderOpenCloseAnim(ZZ)V

    .line 652
    return-void

    .line 606
    .end local v8           #bottomMargin:I
    .end local v9           #iconCenterX:I
    .end local v10           #iconCenterY:I
    .end local v12           #left:I
    .end local v13           #leftMargin:I
    .end local v20           #offsetX:I
    .end local v21           #offsetY:I
    .end local v24           #rightMargin:I
    .end local v25           #top:I
    .end local v26           #topMargin:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget v4, v4, Lcom/htc/launcher/FolderInfo;->cellX:I

    invoke-virtual {v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v11

    .line 607
    .local v11, lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    if-nez v11, :cond_3

    .line 608
    const-string v3, "Folder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launcher bar folder not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget v5, v5, Lcom/htc/launcher/FolderInfo;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    div-int/lit8 v9, v18, 0x2

    .line 614
    .restart local v9       #iconCenterX:I
    :goto_5
    div-int/lit8 v3, v16, 0x2

    sub-int v10, v17, v3

    .restart local v10       #iconCenterY:I
    goto/16 :goto_0

    .line 612
    .end local v9           #iconCenterX:I
    .end local v10           #iconCenterY:I
    :cond_3
    iget-object v3, v11, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v11, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v9, v3, 0x2

    .restart local v9       #iconCenterX:I
    goto :goto_5

    .line 630
    .end local v11           #lb:Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;
    .restart local v8       #bottomMargin:I
    .restart local v10       #iconCenterY:I
    .restart local v12       #left:I
    .restart local v13       #leftMargin:I
    .restart local v21       #offsetY:I
    .restart local v24       #rightMargin:I
    .restart local v25       #top:I
    .restart local v26       #topMargin:I
    :cond_4
    add-int v3, v25, v15

    if-le v3, v8, :cond_0

    .line 631
    add-int v3, v25, v15

    sub-int v21, v8, v3

    goto/16 :goto_1

    .line 639
    .restart local v20       #offsetX:I
    :cond_5
    add-int v3, v12, v19

    move/from16 v0, v24

    if-le v3, v0, :cond_1

    .line 640
    add-int v3, v12, v19

    sub-int v20, v24, v3

    goto/16 :goto_2

    .line 651
    :cond_6
    const/4 v3, 0x0

    move v4, v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private dropBack(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget-wide v0, v0, Lcom/htc/launcher/FolderInfo;->id:J

    iput-wide v0, p1, Lcom/htc/launcher/ApplicationInfo;->container:J

    .line 409
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderInfo;->add(Lcom/htc/launcher/ApplicationInfo;)Z

    .line 411
    :cond_0
    return-void
.end method

.method private ensureIconSize(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 2
    .parameter "appInfo"

    .prologue
    .line 746
    iget-boolean v0, p1, Lcom/htc/launcher/ApplicationInfo;->filtered:Z

    if-nez v0, :cond_1

    .line 747
    iget-object v0, p1, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p1, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 749
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/htc/launcher/ApplicationInfo;->filtered:Z

    .line 751
    :cond_1
    return-void
.end method

.method public static fromXml(Landroid/content/Context;)Lcom/htc/launcher/Folder;
    .locals 3
    .parameter "context"

    .prologue
    .line 160
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Folder;

    return-object v0
.end method

.method private getDragViewVisualCenter(IIIILcom/htc/launcher/DragView;[F)[F
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "recycle"

    .prologue
    .line 277
    if-nez p6, :cond_0

    .line 278
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 284
    .local v0, res:[F
    :goto_0
    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    .line 285
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/launcher/Folder;->m_nTitleHeight:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 287
    return-object v0

    .line 281
    .end local v0           #res:[F
    :cond_0
    move-object v0, p6

    .restart local v0       #res:[F
    goto :goto_0
.end method

.method private getViewForInfo(Lcom/htc/launcher/ApplicationInfo;)Landroid/view/View;
    .locals 4
    .parameter "item"

    .prologue
    .line 1080
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v3, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3}, Lcom/htc/launcher/FolderCellLayout;->getCountY()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1081
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3}, Lcom/htc/launcher/FolderCellLayout;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1082
    iget-object v3, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/htc/launcher/FolderCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1083
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1088
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_2
    return-object v2

    .line 1081
    .restart local v0       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1088
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private prepareBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 891
    iget-object v3, p0, Lcom/htc/launcher/Folder;->mXy:[I

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Folder;->getLocationInWindow([I)V

    .line 894
    new-array v1, v9, [I

    .line 895
    .local v1, nFolderCellLayoutPosition:[I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 896
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v3, v2, Lcom/htc/launcher/FolderCellLayoutChildren;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/launcher/FolderCellLayout;

    if-eqz v3, :cond_0

    .line 897
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3}, Lcom/htc/launcher/FolderCellLayout;->getLeft()I

    move-result v3

    aput v3, v1, v7

    .line 898
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3}, Lcom/htc/launcher/FolderCellLayout;->getTop()I

    move-result v3

    aput v3, v1, v8

    .line 903
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 905
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/htc/launcher/Folder;->mXy:[I

    aget v3, v3, v7

    aget v4, v1, v7

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 906
    iget-object v3, p0, Lcom/htc/launcher/Folder;->mXy:[I

    aget v3, v3, v7

    aget v4, v1, v7

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 907
    iget-object v3, p0, Lcom/htc/launcher/Folder;->mXy:[I

    aget v3, v3, v8

    aget v4, v1, v8

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 908
    iget-object v3, p0, Lcom/htc/launcher/Folder;->mXy:[I

    aget v3, v3, v8

    aget v4, v1, v8

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 910
    const-string v3, "Folder"

    const-string v4, "mXy[%4d,%4d] nFolderCellLayoutPosition[%4d,%4d] viewLeftTop[%4d,%4d]"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/launcher/Folder;->mXy:[I

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/htc/launcher/Folder;->mXy:[I

    aget v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aget v6, v1, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x3

    aget v7, v1, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    return-object v0

    .line 900
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_0
    const-string v3, "Folder"

    const-string v4, "prepareBounds unhandled position!"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private realTimeReorder([I[I)V
    .locals 18
    .parameter "nEmpty"
    .parameter "nTarget"

    .prologue
    .line 936
    const-string v3, "Folder"

    const-string v5, "realTimeReorder %d %d %d %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v16, 0x0

    aget v16, p1, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    const/16 v16, 0x1

    aget v16, p1, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x2

    const/16 v16, 0x0

    aget v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x3

    const/16 v16, 0x1

    aget v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    invoke-static {v3, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    const/4 v8, 0x0

    .line 943
    .local v8, nDelay:I
    const/high16 v10, 0x41f0

    .line 944
    .local v10, fDelayAmount:F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/Folder;->readingOrderGreaterThan([I[I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 945
    const/4 v3, 0x0

    aget v3, p1, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v5}, Lcom/htc/launcher/FolderCellLayout;->getCountX()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_1

    const/4 v9, 0x1

    .line 946
    .local v9, bWrap:Z
    :goto_0
    const-string v3, "Folder"

    const-string v5, "realTimeReorder readingOrderGreaterThan true wrap:%b"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v6, v7

    invoke-static {v3, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    if-eqz v9, :cond_2

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v13, v3, 0x1

    .line 948
    .local v13, nStartY:I
    :goto_1
    move v15, v13

    .local v15, y:I
    :goto_2
    const/4 v3, 0x1

    aget v3, p2, v3

    if-gt v15, v3, :cond_e

    .line 949
    const-string v3, "Folder"

    const-string v5, "realTimeReorder readingOrderGreaterThan true y:%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    invoke-static {v3, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    const/4 v3, 0x1

    aget v3, p1, v3

    if-ne v15, v3, :cond_3

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v12, v3, 0x1

    .line 951
    .local v12, nStartX:I
    :goto_3
    const/4 v3, 0x1

    aget v3, p2, v3

    if-ge v15, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3}, Lcom/htc/launcher/FolderCellLayout;->getCountX()I

    move-result v3

    add-int/lit8 v11, v3, -0x1

    .line 952
    .local v11, nEndX:I
    :goto_4
    move v14, v12

    .local v14, x:I
    :goto_5
    if-gt v14, v11, :cond_6

    .line 953
    const-string v3, "Folder"

    const-string v5, "realTimeReorder animate child %d,%d to %d,%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x2

    const/16 v16, 0x0

    aget v16, p1, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x3

    const/16 v16, 0x1

    aget v16, p1, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    invoke-static {v3, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3, v14, v15}, Lcom/htc/launcher/FolderCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 955
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_5

    .line 956
    const-string v3, "Folder"

    const-string v5, "pos %d %d is empty"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    invoke-static {v3, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    :cond_0
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 945
    .end local v4           #v:Landroid/view/View;
    .end local v9           #bWrap:Z
    .end local v11           #nEndX:I
    .end local v12           #nStartX:I
    .end local v13           #nStartY:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 947
    .restart local v9       #bWrap:Z
    :cond_2
    const/4 v3, 0x1

    aget v13, p1, v3

    goto/16 :goto_1

    .line 950
    .restart local v13       #nStartY:I
    .restart local v15       #y:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 951
    .restart local v12       #nStartX:I
    :cond_4
    const/4 v3, 0x0

    aget v11, p2, v3

    goto :goto_4

    .line 959
    .restart local v4       #v:Landroid/view/View;
    .restart local v11       #nEndX:I
    .restart local v14       #x:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    const/4 v5, 0x0

    aget v5, p1, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    const/16 v7, 0xe6

    invoke-virtual/range {v3 .. v8}, Lcom/htc/launcher/FolderCellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 961
    const/4 v3, 0x0

    aput v14, p1, v3

    .line 962
    const/4 v3, 0x1

    aput v15, p1, v3

    .line 963
    int-to-float v3, v8

    add-float/2addr v3, v10

    float-to-int v8, v3

    .line 964
    float-to-double v5, v10

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-float v10, v5

    goto :goto_6

    .line 948
    .end local v4           #v:Landroid/view/View;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 969
    .end local v9           #bWrap:Z
    .end local v11           #nEndX:I
    .end local v12           #nStartX:I
    .end local v13           #nStartY:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_7
    const-string v3, "Folder"

    const-string v5, "realTimeReorder readingOrderGreaterThan false"

    invoke-static {v3, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const/4 v3, 0x0

    aget v3, p1, v3

    if-nez v3, :cond_9

    const/4 v9, 0x1

    .line 971
    .restart local v9       #bWrap:Z
    :goto_7
    if-eqz v9, :cond_a

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v13, v3, -0x1

    .line 972
    .restart local v13       #nStartY:I
    :goto_8
    const-string v3, "Folder"

    const-string v5, "realTimeReorder readingOrderGreaterThan false wrap:%b"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v6, v7

    invoke-static {v3, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    move v15, v13

    .restart local v15       #y:I
    :goto_9
    const/4 v3, 0x1

    aget v3, p2, v3

    if-lt v15, v3, :cond_e

    .line 974
    const-string v3, "Folder"

    const-string v5, "realTimeReorder readingOrderGreaterThan false y:%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    invoke-static {v3, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    const/4 v3, 0x1

    aget v3, p1, v3

    if-ne v15, v3, :cond_b

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v12, v3, -0x1

    .line 976
    .restart local v12       #nStartX:I
    :goto_a
    const/4 v3, 0x1

    aget v3, p2, v3

    if-le v15, v3, :cond_c

    const/4 v11, 0x0

    .line 977
    .restart local v11       #nEndX:I
    :goto_b
    move v14, v12

    .restart local v14       #x:I
    :goto_c
    if-lt v14, v11, :cond_d

    .line 978
    const-string v3, "Folder"

    const-string v5, "realTimeReorder animate x:%d y:%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    invoke-static {v3, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3, v14, v15}, Lcom/htc/launcher/FolderCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 980
    .restart local v4       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    const/4 v5, 0x0

    aget v5, p1, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    const/16 v7, 0xe6

    invoke-virtual/range {v3 .. v8}, Lcom/htc/launcher/FolderCellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 982
    const/4 v3, 0x0

    aput v14, p1, v3

    .line 983
    const/4 v3, 0x1

    aput v15, p1, v3

    .line 984
    int-to-float v3, v8

    add-float/2addr v3, v10

    float-to-int v8, v3

    .line 985
    float-to-double v5, v10

    const-wide v16, 0x3feccccccccccccdL

    mul-double v5, v5, v16

    double-to-float v10, v5

    .line 977
    :cond_8
    add-int/lit8 v14, v14, -0x1

    goto :goto_c

    .line 970
    .end local v4           #v:Landroid/view/View;
    .end local v9           #bWrap:Z
    .end local v11           #nEndX:I
    .end local v12           #nStartX:I
    .end local v13           #nStartY:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 971
    .restart local v9       #bWrap:Z
    :cond_a
    const/4 v3, 0x1

    aget v13, p1, v3

    goto/16 :goto_8

    .line 975
    .restart local v13       #nStartY:I
    .restart local v15       #y:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3}, Lcom/htc/launcher/FolderCellLayout;->getCountX()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    goto :goto_a

    .line 976
    .restart local v12       #nStartX:I
    :cond_c
    const/4 v3, 0x0

    aget v11, p2, v3

    goto :goto_b

    .line 973
    .restart local v11       #nEndX:I
    .restart local v14       #x:I
    :cond_d
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_9

    .line 990
    .end local v11           #nEndX:I
    .end local v12           #nStartX:I
    .end local v14           #x:I
    :cond_e
    return-void
.end method

.method private refineTextRendering(Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V
    .locals 6
    .parameter "convertView"
    .parameter "info"

    .prologue
    const/4 v5, 0x2

    .line 708
    iget-object v4, p0, Lcom/htc/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 709
    .local v1, currLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, lang:Ljava/lang/String;
    const-string v0, "zh,ko,ja"

    .line 711
    .local v0, UNSUPPORT_LANG:Ljava/lang/String;
    const-string v4, "zh,ko,ja"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 712
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 713
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 731
    :goto_0
    return-void

    .line 717
    .restart local p1
    :cond_0
    const/4 v3, 0x0

    .line 718
    .local v3, title:Ljava/lang/String;
    iget-object v4, p2, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 719
    iget-object v3, p2, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .end local v3           #title:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 724
    .restart local v3       #title:Ljava/lang/String;
    :goto_1
    const-string v4, ".*\\W.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 725
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 726
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 721
    .restart local p1
    :cond_1
    iget-object v4, p2, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v4, p1

    .line 728
    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 729
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private setupContentDimensions(I)V
    .locals 6
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    .line 685
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 687
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v4, p0, Lcom/htc/launcher/Folder;->m_nMaxCountY:I

    iget v2, p0, Lcom/htc/launcher/Folder;->m_nMaxCountX:I

    div-int v5, p1, v2

    iget v2, p0, Lcom/htc/launcher/Folder;->m_nMaxCountX:I

    rem-int v2, p1, v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 689
    .local v1, nNumRows:I
    iget-object v2, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    iget v4, p0, Lcom/htc/launcher/Folder;->m_nMaxCountX:I

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v2, v4, v3}, Lcom/htc/launcher/FolderCellLayout;->setGridSize(II)V

    .line 691
    invoke-direct {p0, v0}, Lcom/htc/launcher/Folder;->arrangeChildren(Ljava/util/ArrayList;)V

    .line 692
    return-void

    .line 687
    .end local v1           #nNumRows:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1       #nNumRows:I
    :cond_1
    move v3, v1

    .line 689
    goto :goto_1
.end method

.method private setupContentForNumItems(I)V
    .locals 2
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 695
    invoke-direct {p0, p1}, Lcom/htc/launcher/Folder;->setupContentDimensions(I)V

    .line 697
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DragLayer$LayoutParams;

    .line 698
    .local v0, lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    if-nez v0, :cond_0

    .line 699
    new-instance v0, Lcom/htc/launcher/DragLayer$LayoutParams;

    .end local v0           #lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    invoke-direct {v0, v1, v1}, Lcom/htc/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 700
    .restart local v0       #lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 701
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/Folder;->centerAboutIcon()V

    .line 704
    return-void
.end method

.method private updateItemLocationsInDatabase()V
    .locals 7

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 333
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 335
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 336
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ItemInfo;

    .line 337
    .local v1, info:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v1           #info:Lcom/htc/launcher/ItemInfo;
    .end local v4           #v:Landroid/view/View;
    :cond_0
    invoke-static {}, Lcom/htc/launcher/LauncherWorker;->get()Lcom/htc/launcher/LauncherWorker;

    move-result-object v5

    new-instance v6, Lcom/htc/launcher/Folder$3;

    invoke-direct {v6, p0, v2}, Lcom/htc/launcher/Folder$3;-><init>(Lcom/htc/launcher/Folder;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/htc/launcher/LauncherWorker;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)Z
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    const/4 v2, 0x1

    .line 493
    invoke-interface {p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    .line 494
    .local v0, info:Lcom/htc/launcher/ItemInfo;
    iget v1, v0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 495
    .local v1, itemType:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addIntoFolder(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "data"

    .prologue
    .line 821
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 822
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 823
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 825
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 830
    :goto_0
    if-eqz v0, :cond_1

    .line 831
    new-instance v3, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v3}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 833
    .local v3, itemInfo:Lcom/htc/launcher/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 834
    iget-object v5, v3, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    .line 835
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 838
    :cond_0
    const/high16 v5, 0x1020

    invoke-virtual {v3, v1, v5}, Lcom/htc/launcher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 839
    invoke-static {v4, v0}, Lcom/htc/launcher/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 841
    iget-object v5, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-virtual {v5, v3}, Lcom/htc/launcher/FolderInfo;->add(Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 842
    const-string v5, "Folder"

    const-string v6, "addIntoFolder - true"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .end local v3           #itemInfo:Lcom/htc/launcher/ApplicationInfo;
    :cond_1
    return-void

    .line 826
    :catch_0
    move-exception v2

    .line 827
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Folder"

    const-string v6, "addIntoFolder, couldn\'t find ActivityInfo for selected application"

    invoke-static {v5, v6, v2}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addIntoFolder(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 6
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 859
    if-nez p1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v0

    .line 863
    :cond_1
    instance-of v2, p1, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/htc/launcher/DesktopItemController;->removeItem(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;)V

    .line 869
    const-wide/16 v2, -0x1

    iput-wide v2, p1, Lcom/htc/launcher/ApplicationInfo;->container:J

    .line 870
    iget-object v2, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-virtual {v2, p1}, Lcom/htc/launcher/FolderInfo;->add(Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    const-string v2, "Folder"

    const-string v3, "addIntoFolder, folder id: %d, ItemInfo: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1}, Lcom/htc/launcher/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 872
    goto :goto_0
.end method

.method public animateClose(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 7
    .parameter "parentAnimatorListenerAdapter"

    .prologue
    const/4 v6, 0x2

    .line 1024
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/launcher/DragLayer;

    if-nez v4, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 1026
    :cond_0
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1027
    .local v2, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1028
    .local v3, scaleY:Landroid/animation/PropertyValuesHolder;
    const-string v4, "openCloseChildAnim"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1030
    .local v0, child:Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1031
    .local v1, oa:Landroid/animation/ObjectAnimator;
    iget v4, p0, Lcom/htc/launcher/Folder;->m_nFolderCloseAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1032
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const v5, 0x40266666

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1033
    new-instance v4, Lcom/htc/launcher/Folder$6;

    invoke-direct {v4, p0, p1}, Lcom/htc/launcher/Folder$6;-><init>(Lcom/htc/launcher/Folder;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1048
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1026
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1027
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1028
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public animateOpen()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    .line 997
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/launcher/DragLayer;

    if-nez v4, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 999
    :cond_0
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1000
    .local v2, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1001
    .local v3, scaleY:Landroid/animation/PropertyValuesHolder;
    const-string v4, "openCloseChildAnim"

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1003
    .local v0, child:Landroid/animation/PropertyValuesHolder;
    new-array v4, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v0, v4, v7

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1004
    .local v1, oa:Landroid/animation/ObjectAnimator;
    iget v4, p0, Lcom/htc/launcher/Folder;->m_nFolderOpenAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1006
    new-instance v4, Lcom/htc/launcher/Folder$5;

    invoke-direct {v4, p0}, Lcom/htc/launcher/Folder$5;-><init>(Lcom/htc/launcher/Folder;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1020
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 999
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1000
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1001
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public bind(Lcom/htc/launcher/FolderInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    .line 786
    invoke-virtual {p1, p0}, Lcom/htc/launcher/FolderInfo;->addListener(Lcom/htc/launcher/FolderInfo$FolderListener;)V

    .line 787
    iput-object p1, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    .line 789
    iget-object v7, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/htc/launcher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v7, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget-object v1, v7, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 792
    .local v1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v6, overflow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/htc/launcher/Folder;->setupContentForNumItems(I)V

    .line 796
    const/4 v2, 0x0

    .line 797
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 798
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 799
    .local v0, child:Lcom/htc/launcher/ApplicationInfo;
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Folder;->createAndAddShortcut(Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 800
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 802
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 807
    .end local v0           #child:Lcom/htc/launcher/ApplicationInfo;
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/launcher/Folder;->setupContentForNumItems(I)V

    .line 812
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/ApplicationInfo;

    .line 813
    .local v5, item:Lcom/htc/launcher/ApplicationInfo;
    iget-object v7, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-virtual {v7, v5}, Lcom/htc/launcher/FolderInfo;->remove(Lcom/htc/launcher/ApplicationInfo;)V

    .line 814
    const-string v7, "Folder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete overflow shortcut "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/launcher/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from folder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget-wide v9, v9, Lcom/htc/launcher/FolderInfo;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 817
    .end local v5           #item:Lcom/htc/launcher/ApplicationInfo;
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z

    .line 818
    return-void
.end method

.method public claimDrop(II[I)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public completeDragExit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->closeFolder()V

    .line 309
    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    .line 310
    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_currentDragView:Landroid/view/View;

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/Folder;->m_bSuppressOnAdd:Z

    .line 312
    return-void
.end method

.method protected createAndAddShortcut(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 754
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030007

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 756
    .local v1, textView:Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/htc/launcher/Folder;->ensureIconSize(Lcom/htc/launcher/ApplicationInfo;)V

    .line 757
    iget-object v0, p1, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7, v0, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 758
    iget-object v0, p1, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 761
    invoke-direct {p0, v1, p1}, Lcom/htc/launcher/Folder;->refineTextRendering(Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V

    .line 763
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 770
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    iget v3, p1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v7, p1, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    invoke-virtual {v0, v3, v7}, Lcom/htc/launcher/FolderCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget-object v3, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3}, Lcom/htc/launcher/FolderCellLayout;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget v0, p1, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    iget-object v3, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v3}, Lcom/htc/launcher/FolderCellLayout;->getCountY()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 772
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Folder;->findAndSetEmptyCells(Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    :goto_0
    return v2

    .line 777
    :cond_1
    new-instance v4, Lcom/htc/launcher/CellLayout$LayoutParams;

    iget v0, p1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v3, p1, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    iget v7, p1, Lcom/htc/launcher/ApplicationInfo;->spanX:I

    iget v8, p1, Lcom/htc/launcher/ApplicationInfo;->spanY:I

    invoke-direct {v4, v0, v3, v7, v8}, Lcom/htc/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 778
    .local v4, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    const/4 v6, 0x0

    .line 781
    .local v6, insert:Z
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    if-eqz v6, :cond_2

    :goto_1
    iget-wide v7, p1, Lcom/htc/launcher/ApplicationInfo;->id:J

    long-to-int v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/FolderCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/htc/launcher/CellLayout$LayoutParams;Z)Z

    move v2, v5

    .line 782
    goto :goto_0

    .line 781
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public estimateDropLocation(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"
    .parameter "recycle"

    .prologue
    .line 501
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findAndSetEmptyCells(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 734
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 735
    .local v0, nEmptyCell:[I
    iget-object v3, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    iget v4, p1, Lcom/htc/launcher/ApplicationInfo;->spanX:I

    iget v5, p1, Lcom/htc/launcher/ApplicationInfo;->spanY:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/htc/launcher/FolderCellLayout;->findCellForSpan([III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    aget v2, v0, v2

    iput v2, p1, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    .line 737
    aget v2, v0, v1

    iput v2, p1, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    .line 740
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getDragCompletedAction()Lcom/htc/launcher/DragSource$DragCompletedAction;
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/htc/launcher/DragSource$DragCompletedAction;->REMOVE:Lcom/htc/launcher/DragSource$DragCompletedAction;

    return-object v0
.end method

.method public getFolderInfo()Lcom/htc/launcher/FolderInfo;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/FolderCellLayout;->getChildrenLayout()Lcom/htc/launcher/FolderCellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Folder;->getItemsInReadingOrder(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItemsInReadingOrder(Z)Ljava/util/ArrayList;
    .locals 10
    .parameter "bIncludeCurrentDragItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 563
    iget-boolean v4, p0, Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z

    if-eqz v4, :cond_4

    .line 564
    iget-object v4, p0, Lcom/htc/launcher/Folder;->m_itemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 565
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget-object v4, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v4}, Lcom/htc/launcher/FolderCellLayout;->getCountY()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 566
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v4}, Lcom/htc/launcher/FolderCellLayout;->getCountX()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 567
    iget-object v4, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v4, v0, v2}, Lcom/htc/launcher/FolderCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 568
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 569
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ApplicationInfo;

    .line 570
    .local v1, info:Lcom/htc/launcher/ApplicationInfo;
    const-string v4, "Folder"

    const-string v5, "getItemsInReadingOrder get %s in %d,%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/htc/launcher/ApplicationInfo;->getItemName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    iget-object v4, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    if-ne v1, v4, :cond_0

    if-eqz p1, :cond_1

    .line 572
    :cond_0
    iget-object v4, p0, Lcom/htc/launcher/Folder;->m_itemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v1           #info:Lcom/htc/launcher/ApplicationInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 565
    .end local v3           #v:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    .end local v0           #i:I
    :cond_3
    iput-boolean v9, p0, Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z

    .line 579
    .end local v2           #j:I
    :cond_4
    iget-object v4, p0, Lcom/htc/launcher/Folder;->m_itemsInReadingOrder:Ljava/util/ArrayList;

    return-object v4
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 993
    iget v1, p0, Lcom/htc/launcher/Folder;->m_state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 924
    return-void
.end method

.method public onAdd(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z

    .line 1073
    iget-boolean v0, p0, Lcom/htc/launcher/Folder;->m_bSuppressOnAdd:Z

    if-eqz v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Folder;->createAndAddShortcut(Lcom/htc/launcher/ApplicationInfo;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 187
    .local v2, tag:Ljava/lang/Object;
    const-string v3, "Folder"

    const-string v4, "onClick, View: %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    instance-of v3, v2, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 189
    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 190
    .local v0, appInfo:Lcom/htc/launcher/ApplicationInfo;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 191
    .local v1, pos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 192
    iget-object v3, v0, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v1, v7

    aget v6, v1, v9

    aget v7, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v1, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 193
    iget-object v3, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v4, v0, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 195
    .end local v0           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v1           #pos:[I
    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 4

    .prologue
    .line 540
    iget-object v2, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 542
    iget-object v2, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/launcher/Folder;->m_strTitleHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 545
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DragLayer;

    .line 546
    .local v0, parent:Lcom/htc/launcher/DragLayer;
    invoke-virtual {v0, p0}, Lcom/htc/launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 547
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->clearFocus()V

    .line 549
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getItemCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/launcher/Folder;->setupContentForNumItems(I)V

    .line 552
    iget-object v2, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v1

    .line 553
    .local v1, workspace:Lcom/htc/launcher/Workspace;
    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 555
    iget-object v2, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-virtual {v2, p0}, Lcom/htc/launcher/FolderInfo;->removeListener(Lcom/htc/launcher/FolderInfo$FolderListener;)V

    .line 556
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    .prologue
    .line 920
    return-void
.end method

.method public onDragEnter(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    const/4 v2, -0x1

    .line 457
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nPreviousTargetCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 458
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nPreviousTargetCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 459
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_onExitAlarm:Lcom/htc/launcher/Alarm;

    invoke-virtual {v0}, Lcom/htc/launcher/Alarm;->cancelAlarm()V

    .line 460
    return-void
.end method

.method public onDragExit(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/DropTarget;IIIILcom/htc/launcher/Draggee;)V
    .locals 1
    .parameter "source"
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_reorderAlarm:Lcom/htc/launcher/Alarm;

    invoke-virtual {v0}, Lcom/htc/launcher/Alarm;->cancelAlarm()V

    .line 489
    return-void
.end method

.method public onDragOver(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/DragController;->getDragView()Lcom/htc/launcher/DragView;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/launcher/Folder;->getDragViewVisualCenter(IIIILcom/htc/launcher/DragView;[F)[F

    move-result-object v7

    .line 468
    .local v7, r:[F
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    const/4 v1, 0x0

    aget v1, v7, v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/launcher/Folder;->m_nTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/FolderCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Folder;->m_nTargetCell:[I

    .line 470
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_nPreviousTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nTargetCell:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_nPreviousTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eq v0, v1, :cond_1

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_reorderAlarm:Lcom/htc/launcher/Alarm;

    invoke-virtual {v0}, Lcom/htc/launcher/Alarm;->cancelAlarm()V

    .line 472
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_reorderAlarm:Lcom/htc/launcher/Alarm;

    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_reorderAlarmListener:Lcom/htc/launcher/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Alarm;->setOnAlarmListener(Lcom/htc/launcher/OnAlarmListener;)V

    .line 473
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_reorderAlarm:Lcom/htc/launcher/Alarm;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/Alarm;->setAlarm(J)V

    .line 474
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nPreviousTargetCell:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/launcher/Folder;->m_nTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 475
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nPreviousTargetCell:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/launcher/Folder;->m_nTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 477
    :cond_1
    return-void
.end method

.method public onDrop(Lcom/htc/launcher/DragSource;IIIILcom/htc/launcher/Draggee;)V
    .locals 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragItem"

    .prologue
    .line 416
    invoke-interface/range {p6 .. p6}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/ApplicationInfo;

    .line 417
    .local v9, info:Lcom/htc/launcher/ApplicationInfo;
    const-string v0, "Folder"

    const-string v1, "onDrop, ItemInfo: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/htc/launcher/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    if-ne v9, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_currentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/ApplicationInfo;

    .line 423
    .local v7, appInfo:Lcom/htc/launcher/ApplicationInfo;
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_currentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 424
    .local v4, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nEmptyCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v4, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iput v0, v7, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    .line 425
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_nEmptyCell:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v4, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iput v0, v7, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    .line 426
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_currentDragView:Landroid/view/View;

    const/4 v2, -0x1

    iget-wide v10, v7, Lcom/htc/launcher/ApplicationInfo;->id:J

    long-to-int v3, v10

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/FolderCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/htc/launcher/CellLayout$LayoutParams;Z)Z

    .line 427
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/DragController;->getDragView()Lcom/htc/launcher/DragView;

    move-result-object v8

    .line 429
    .local v8, dragView:Lcom/htc/launcher/DragView;
    invoke-virtual {v8}, Lcom/htc/launcher/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    new-instance v6, Lcom/htc/launcher/Folder$4;

    invoke-direct {v6, p0, v9}, Lcom/htc/launcher/Folder$4;-><init>(Lcom/htc/launcher/Folder;Lcom/htc/launcher/ApplicationInfo;)V

    .line 442
    .local v6, addItemAtAnimationEnd:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDragController()Lcom/htc/launcher/DragController;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/DragLayer;

    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_currentDragView:Landroid/view/View;

    invoke-virtual {v0, v8, v1, v6}, Lcom/htc/launcher/DragLayer;->animateViewIntoPosition(Lcom/htc/launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 447
    .end local v6           #addItemAtAnimationEnd:Ljava/lang/Runnable;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z

    .line 448
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/launcher/Folder;->setupContentDimensions(I)V

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Folder;->m_bSuppressOnAdd:Z

    .line 452
    .end local v4           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v7           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v8           #dragView:Lcom/htc/launcher/DragView;
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 453
    return-void

    .line 445
    .restart local v4       #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .restart local v7       #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .restart local v8       #dragView:Lcom/htc/launcher/DragView;
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_currentDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V
    .locals 6
    .parameter "target"
    .parameter "success"

    .prologue
    .line 365
    const-string v1, "Folder"

    const-string v2, "onDropCompleted, DropTarget: %s, success: %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    if-eqz p2, :cond_7

    .line 368
    invoke-interface {p1}, Lcom/htc/launcher/DropTarget;->getDragCompletedAction()Lcom/htc/launcher/DragSource$DragCompletedAction;

    move-result-object v1

    sget-object v2, Lcom/htc/launcher/DragSource$DragCompletedAction;->DROP_ON_BUTTONBAR:Lcom/htc/launcher/DragSource$DragCompletedAction;

    if-ne v1, v2, :cond_2

    instance-of v1, p1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    iget-object v2, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->wasDragItemAccepted(Lcom/htc/launcher/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {p0, v1}, Lcom/htc/launcher/Folder;->dropBack(Lcom/htc/launcher/ApplicationInfo;)V

    .line 390
    .end local p1
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/launcher/Folder;->mDragItem:Lcom/htc/launcher/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/htc/launcher/Folder;->updateItemLocationsInDatabase()V

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    .line 400
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 401
    return-void

    .line 372
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    .line 373
    .local v0, targetFolderInfo:Lcom/htc/launcher/FolderInfo;
    instance-of v1, p1, Lcom/htc/launcher/FolderIcon$MyDropTarget;

    if-eqz v1, :cond_5

    .line 374
    check-cast p1, Lcom/htc/launcher/FolderIcon$MyDropTarget;

    .end local p1
    iget-object v0, p1, Lcom/htc/launcher/FolderIcon$MyDropTarget;->m_folderInfo:Lcom/htc/launcher/FolderInfo;

    .line 380
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    if-eq v0, v1, :cond_0

    .line 382
    :cond_4
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v2, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Launcher;->checkAndReplaceFolderWithFinalItem(Lcom/htc/launcher/FolderInfo;)V

    goto :goto_0

    .line 375
    .restart local p1
    :cond_5
    instance-of v1, p1, Lcom/htc/launcher/FolderIcon;

    if-eqz v1, :cond_6

    .line 376
    check-cast p1, Lcom/htc/launcher/FolderIcon;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/launcher/FolderIcon;->getFolderInfo()Lcom/htc/launcher/FolderInfo;

    move-result-object v0

    goto :goto_1

    .line 377
    .restart local p1
    :cond_6
    if-ne p1, p0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    goto :goto_1

    .line 387
    .end local v0           #targetFolderInfo:Lcom/htc/launcher/FolderInfo;
    :cond_7
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {p0, v1}, Lcom/htc/launcher/Folder;->dropBack(Lcom/htc/launcher/ApplicationInfo;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 259
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 261
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/launcher/Folder;->m_strTitleHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget-object v2, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v2, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    invoke-static {v1, v2}, Lcom/htc/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 264
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 265
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 266
    const/4 v0, 0x1

    .line 268
    :cond_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 167
    invoke-virtual {p0, p0}, Lcom/htc/launcher/Folder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FolderCellLayout;

    iput-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    .line 170
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v0, v1, v1}, Lcom/htc/launcher/FolderCellLayout;->setGridSize(II)V

    .line 173
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    .line 174
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 176
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 250
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    if-nez p2, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_title:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_strTitleHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/launcher/Folder;->mMotionX:I

    .line 881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/launcher/Folder;->mMotionY:I

    .line 882
    const-string v0, "Folder"

    const-string v1, "onInterceptTouchEvent, x: %d, y: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/htc/launcher/Folder;->mMotionX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/htc/launcher/Folder;->mMotionY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    return v5
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 1118
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 206
    .local v6, tag:Ljava/lang/Object;
    const-string v1, "Folder"

    const-string v2, "onLongClick, View: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const-string v1, "Folder"

    const-string v2, "onLongClick cancel, already in edit mode"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return v4

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ApplicationInfo;

    iput-object v1, p0, Lcom/htc/launcher/Folder;->mDragItem:Lcom/htc/launcher/ApplicationInfo;

    .line 217
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    .line 218
    .local v0, desktopItemController:Lcom/htc/launcher/DesktopItemController;
    if-nez v0, :cond_2

    move v4, v7

    .line 219
    goto :goto_0

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget v1, v1, Lcom/htc/launcher/FolderInfo;->screen:I

    invoke-virtual {v0, v7, v1}, Lcom/htc/launcher/DesktopItemController;->enableFolderIcon(ZI)V

    .line 230
    iget-object v3, p0, Lcom/htc/launcher/Folder;->mDragItem:Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {p0, p1}, Lcom/htc/launcher/Folder;->prepareBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/DesktopItemController;->startDragTextView(Lcom/htc/launcher/DragSource;Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;ILandroid/graphics/Rect;)V

    .line 233
    iput-object p1, p0, Lcom/htc/launcher/Folder;->m_currentDragView:Landroid/view/View;

    .line 235
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_nEmptyCell:[I

    iget-object v2, p0, Lcom/htc/launcher/Folder;->mDragItem:Lcom/htc/launcher/ApplicationInfo;

    iget v2, v2, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    aput v2, v1, v4

    .line 236
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_nEmptyCell:[I

    iget-object v2, p0, Lcom/htc/launcher/Folder;->mDragItem:Lcom/htc/launcher/ApplicationInfo;

    iget v2, v2, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    aput v2, v1, v7

    .line 237
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mDragItem:Lcom/htc/launcher/ApplicationInfo;

    iput-object v1, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    .line 238
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    iget-object v2, p0, Lcom/htc/launcher/Folder;->m_currentDragView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/FolderCellLayout;->removeView(Landroid/view/View;)V

    .line 239
    invoke-direct {p0}, Lcom/htc/launcher/Folder;->updateItemLocationsInDatabase()V

    .line 240
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget-object v2, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/FolderInfo;->remove(Lcom/htc/launcher/ApplicationInfo;)V

    .line 241
    iget-object v1, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1, v7}, Lcom/htc/launcher/Launcher;->switchToStickyMode(Z)V

    move v4, v7

    .line 243
    goto :goto_0
.end method

.method public onOpen()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/FolderCellLayout;->requestFocus()Z

    .line 534
    return-void
.end method

.method public onRemove(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1094
    iput-boolean v2, p0, Lcom/htc/launcher/Folder;->m_bItemsInvalidated:Z

    .line 1097
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_currentDragInfo:Lcom/htc/launcher/ApplicationInfo;

    if-ne p1, v1, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1099
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/launcher/Folder;->getViewForInfo(Lcom/htc/launcher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    .line 1100
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v1, v0}, Lcom/htc/launcher/FolderCellLayout;->removeView(Landroid/view/View;)V

    .line 1101
    iget v1, p0, Lcom/htc/launcher/Folder;->m_state:I

    if-ne v1, v2, :cond_1

    .line 1102
    iput-boolean v2, p0, Lcom/htc/launcher/Folder;->m_bRearrangeOnClose:Z

    goto :goto_0

    .line 1105
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/launcher/Folder;->setupContentForNumItems(I)V

    goto :goto_0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1112
    return-void
.end method

.method readingOrderGreaterThan([I[I)Z
    .locals 4
    .parameter "nV1"
    .parameter "nV2"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 927
    aget v2, p1, v1

    aget v3, p2, v1

    if-gt v2, v3, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_1

    aget v2, p1, v0

    aget v3, p2, v0

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 930
    :cond_1
    return v0
.end method

.method public setDragger(Lcom/htc/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/htc/launcher/Folder;->mDragger:Lcom/htc/launcher/DragController;

    .line 361
    return-void
.end method

.method public setLauncher(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/htc/launcher/Folder;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 526
    return-void
.end method

.method public setOpenCloseChildAnim(F)V
    .locals 1
    .parameter "fValue"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderCellLayout;->setChildOpenCloseAnim(F)V

    .line 1053
    return-void
.end method

.method public setPivotX(F)V
    .locals 2
    .parameter "fPivotX"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/FolderCellLayout;->setPivotX(F)V

    .line 1058
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 1059
    return-void
.end method

.method public setPivotY(F)V
    .locals 3
    .parameter "fPivotY"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/htc/launcher/Folder;->m_contentsView:Lcom/htc/launcher/FolderCellLayout;

    invoke-virtual {p0}, Lcom/htc/launcher/Folder;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget v2, p0, Lcom/htc/launcher/Folder;->m_nTitleHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/launcher/FolderCellLayout;->setPivotY(F)V

    .line 1064
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 1065
    return-void
.end method

.method public setupContentDimensions()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/htc/launcher/Folder;->mFolderInfo:Lcom/htc/launcher/FolderInfo;

    iget-object v0, v0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/launcher/Folder;->setupContentDimensions(I)V

    .line 682
    return-void
.end method
