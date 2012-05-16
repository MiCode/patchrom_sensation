.class Lcom/htc/music/widget/GroupListConnector;
.super Landroid/widget/BaseAdapter;
.source "GroupListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/GroupListConnector$PositionMetadata;,
        Lcom/htc/music/widget/GroupListConnector$GroupMetadata;,
        Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/GroupListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "expandableListAdapter"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 71
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/music/widget/GroupListConnector;->mMaxExpGroupCount:I

    .line 74
    new-instance v0, Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;-><init>(Lcom/htc/music/widget/GroupListConnector;)V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/GroupListConnector;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V

    return-void
.end method

.method private refreshExpGroupMetadataList(Z)V
    .locals 9
    .parameter "forceChildrenCountRefresh"

    .prologue
    .line 465
    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 466
    .local v2, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/GroupListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 467
    .local v3, egmlSize:I
    const/4 v0, 0x0

    .line 470
    .local v0, curFlPos:I
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/widget/GroupListConnector;->mTotalExpChildrenCount:I

    .line 474
    const/4 v6, 0x0

    .line 475
    .local v6, lastGPos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 477
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 483
    .local v1, curGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    iget v7, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    if-eqz p1, :cond_1

    .line 484
    :cond_0
    iget-object v7, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v8, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 494
    .local v4, gChildrenCount:I
    :goto_1
    iget v7, p0, Lcom/htc/music/widget/GroupListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/htc/music/widget/GroupListConnector;->mTotalExpChildrenCount:I

    .line 501
    iget v7, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v7, v6

    add-int/2addr v0, v7

    .line 502
    iget v6, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    .line 505
    iput v0, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    .line 506
    add-int/2addr v0, v4

    .line 507
    iput v0, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    .line 475
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 490
    .end local v4           #gChildrenCount:I
    :cond_1
    iget v7, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    iget v8, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    sub-int v4, v7, v8

    .restart local v4       #gChildrenCount:I
    goto :goto_1

    .line 509
    .end local v1           #curGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    .end local v4           #gChildrenCount:I
    :cond_2
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 517
    new-instance v1, Lcom/htc/music/widget/GroupListPosition;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/htc/music/widget/GroupListPosition;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    .line 519
    .local v0, pmData:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    if-nez v0, :cond_0

    .line 520
    const/4 v1, 0x0

    .line 522
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/GroupListConnector;->collapseGroup(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Z

    move-result v1

    goto :goto_0
.end method

.method collapseGroup(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Z
    .locals 3
    .parameter "posMetadata"

    .prologue
    const/4 v0, 0x0

    .line 535
    iget-object v1, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    if-nez v1, :cond_0

    .line 550
    :goto_0
    return v0

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 542
    invoke-direct {p0, v0}, Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V

    .line 545
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListConnector;->notifyDataSetChanged()V

    .line 548
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget v1, v1, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 550
    const/4 v0, 0x1

    goto :goto_0
.end method

.method expandGroup(I)Z
    .locals 4
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 559
    new-instance v1, Lcom/htc/music/widget/GroupListPosition;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/htc/music/widget/GroupListPosition;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    .line 561
    .local v0, pmData:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    if-nez v0, :cond_0

    .line 562
    const/4 v1, 0x0

    .line 564
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/GroupListConnector;->expandGroup(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Z

    move-result v1

    goto :goto_0
.end method

.method expandGroup(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Z
    .locals 7
    .parameter "posMetadata"

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 572
    iget-object v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    if-gez v4, :cond_0

    .line 574
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 577
    :cond_0
    iget v4, p0, Lcom/htc/music/widget/GroupListConnector;->mMaxExpGroupCount:I

    if-nez v4, :cond_2

    .line 620
    :cond_1
    :goto_0
    return v3

    .line 581
    :cond_2
    iget-object v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    if-nez v4, :cond_1

    .line 585
    iget-object v4, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/htc/music/widget/GroupListConnector;->mMaxExpGroupCount:I

    if-lt v4, v5, :cond_3

    .line 591
    iget-object v4, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 593
    .local v0, collapsedGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    iget-object v4, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 595
    .local v1, collapsedIndex:I
    iget v4, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/GroupListConnector;->collapseGroup(I)Z

    .line 598
    iget v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v1, :cond_3

    .line 599
    iget v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupInsertIndex:I

    .line 603
    .end local v0           #collapsedGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    .end local v1           #collapsedIndex:I
    :cond_3
    new-instance v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    invoke-direct {v2}, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;-><init>()V

    .line 605
    .local v2, expandedGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    iget-object v4, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iput v4, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    .line 606
    iput v6, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    .line 607
    iput v6, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    .line 609
    iget-object v4, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 612
    invoke-direct {p0, v3}, Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V

    .line 615
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListConnector;->notifyDataSetChanged()V

    .line 618
    iget-object v3, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 620
    const/4 v3, 0x1

    goto :goto_0
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lcom/htc/music/widget/GroupListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/GroupListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 655
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 656
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 658
    :goto_0
    return-object v1

    .restart local v0       #adapter:Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    .locals 28
    .parameter "pos"

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 260
    .local v23, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/GroupListConnector$GroupMetadata;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 263
    .local v26, numExpGroups:I
    const/4 v15, 0x0

    .line 264
    .local v15, leftExpGroupIndex:I
    add-int/lit8 v22, v26, -0x1

    .line 265
    .local v22, rightExpGroupIndex:I
    const/16 v25, 0x0

    .line 268
    .local v25, midExpGroupIndex:I
    if-nez v26, :cond_9

    .line 274
    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move/from16 v8, v25

    .line 357
    .end local v25           #midExpGroupIndex:I
    .local v8, midExpGroupIndex:I
    :goto_0
    return-object v2

    .line 282
    :cond_0
    :goto_1
    move/from16 v0, v22

    if-gt v15, v0, :cond_5

    .line 283
    sub-int v2, v22, v15

    div-int/lit8 v2, v2, 0x2

    add-int v8, v2, v15

    .line 284
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 286
    .local v7, midExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 290
    add-int/lit8 v15, v8, 0x1

    goto :goto_1

    .line 291
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 295
    add-int/lit8 v22, v8, -0x1

    goto :goto_1

    .line 296
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 301
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 303
    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    goto :goto_0

    .line 305
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 307
    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    iget v3, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    goto :goto_0

    .line 310
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 319
    .end local v7           #midExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 321
    const/4 v2, 0x0

    goto :goto_0

    .line 329
    :cond_6
    if-le v15, v8, :cond_7

    .line 339
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 340
    .local v24, leftExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, v24

    iget v4, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v10, v2, v3

    .line 342
    .local v10, flPos:I
    new-instance v9, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move-object v2, v9

    goto/16 :goto_0

    .line 344
    .end local v10           #flPos:I
    .end local v24           #leftExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v22

    if-ge v0, v8, :cond_8

    .line 352
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 353
    .local v27, rightExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    move-object/from16 v0, v27

    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v27

    iget v3, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v10, v2, v3

    .line 354
    .restart local v10       #flPos:I
    new-instance v16, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v17, v10

    invoke-direct/range {v16 .. v22}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 357
    .end local v10           #flPos:I
    .end local v27           #rightExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v8           #midExpGroupIndex:I
    .restart local v25       #midExpGroupIndex:I
    :cond_9
    move/from16 v8, v25

    .end local v25           #midExpGroupIndex:I
    .restart local v8       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter "flatListPos"

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    .line 390
    .local v0, posMetadata:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    iget-object v1, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v1, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 391
    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 393
    :goto_0
    return-object v1

    .line 392
    :cond_0
    iget-object v1, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v1, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 393
    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v2, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-interface {v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 397
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Flat list position is of unknown type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemId(I)J
    .locals 8
    .parameter "flatListPos"

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v4

    .line 403
    .local v4, posMetadata:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    iget-object v5, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v6, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v6, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 405
    .local v2, groupId:J
    iget-object v5, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v5, v5, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 406
    iget-object v5, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    .line 410
    :goto_0
    return-wide v5

    .line 407
    :cond_0
    iget-object v5, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v5, v5, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 408
    iget-object v5, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v6, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v6, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget-object v7, v4, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v7, v7, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-interface {v5, v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 410
    .local v0, childId:J
    iget-object v5, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    goto :goto_0

    .line 413
    .end local v0           #childId:J
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Flat list position is of unknown type"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "flatListPos"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    iget-object v0, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    .line 440
    .local v0, pos:Lcom/htc/music/widget/GroupListPosition;
    iget v1, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 441
    const/4 v1, 0x0

    .line 443
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    .locals 23
    .parameter "flPos"

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 114
    .local v16, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/GroupListConnector$GroupMetadata;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 117
    .local v20, numExpGroups:I
    const/16 v18, 0x0

    .line 118
    .local v18, leftExpGroupIndex:I
    add-int/lit8 v22, v20, -0x1

    .line 119
    .local v22, rightExpGroupIndex:I
    const/16 v19, 0x0

    .line 122
    .local v19, midExpGroupIndex:I
    if-nez v20, :cond_7

    .line 128
    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p1

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move/from16 v8, v19

    .line 243
    .end local v19           #midExpGroupIndex:I
    .local v8, midExpGroupIndex:I
    :goto_0
    return-object v2

    .line 143
    :cond_0
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    .line 144
    sub-int v2, v22, v18

    div-int/lit8 v2, v2, 0x2

    add-int v8, v2, v18

    .line 145
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 147
    .local v7, midExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v2, :cond_1

    .line 152
    add-int/lit8 v18, v8, 0x1

    goto :goto_1

    .line 153
    :cond_1
    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v2, :cond_2

    .line 158
    add-int/lit8 v22, v8, -0x1

    goto :goto_1

    .line 159
    :cond_2
    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 164
    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    const/4 v4, 0x2

    iget v5, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    const/4 v6, -0x1

    move/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    goto :goto_0

    .line 166
    :cond_3
    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v2, :cond_0

    .line 177
    iget v2, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v2, v2, 0x1

    sub-int v6, p1, v2

    .line 178
    .local v6, childPos:I
    new-instance v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    const/4 v4, 0x1

    iget v5, v7, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    move/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    goto :goto_0

    .line 193
    .end local v6           #childPos:I
    .end local v7           #midExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    :cond_4
    const/4 v15, 0x0

    .line 196
    .local v15, insertPosition:I
    const/4 v12, 0x0

    .line 203
    .local v12, groupPos:I
    move/from16 v0, v18

    if-le v0, v8, :cond_5

    .line 211
    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 213
    .local v17, leftExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    move/from16 v15, v18

    .line 219
    move-object/from16 v0, v17

    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v2, p1, v2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    add-int v12, v2, v3

    .line 243
    .end local v17           #leftExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    :goto_2
    new-instance v9, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    const/4 v11, 0x2

    const/4 v13, -0x1

    const/4 v14, 0x0

    move/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;-><init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V

    move-object v2, v9

    goto :goto_0

    .line 220
    :cond_5
    move/from16 v0, v22

    if-ge v0, v8, :cond_6

    .line 227
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 229
    .local v21, rightExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    move/from16 v15, v22

    .line 237
    move-object/from16 v0, v21

    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v21

    iget v3, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    sub-int v3, v3, p1

    sub-int v12, v2, v3

    .line 238
    goto :goto_2

    .line 240
    .end local v21           #rightExpGm:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v8           #midExpGroupIndex:I
    .end local v12           #groupPos:I
    .end local v15           #insertPosition:I
    .restart local v19       #midExpGroupIndex:I
    :cond_7
    move/from16 v8, v19

    .end local v19           #midExpGroupIndex:I
    .restart local v8       #midExpGroupIndex:I
    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "flatListPos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x1

    .line 418
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v6

    .line 420
    .local v6, posMetadata:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    iget-object v0, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-virtual {v6}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 429
    :goto_0
    return-object v7

    .line 423
    :cond_0
    iget-object v0, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    if-ne v0, v3, :cond_2

    .line 424
    iget-object v0, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget v0, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_1

    .line 426
    .local v3, isLastChild:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v1, v1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget-object v2, v6, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 429
    .local v7, view:Landroid/view/View;
    goto :goto_0

    .line 424
    .end local v3           #isLastChild:Z
    .end local v7           #view:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 432
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 690
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "flatListPos"

    .prologue
    const/4 v1, 0x1

    .line 368
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    .line 370
    .local v0, pos:Lcom/htc/music/widget/GroupListPosition;
    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    if-ne v2, v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v3, v0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-interface {v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    .line 374
    :cond_0
    return v1
.end method

.method public isGroupExpanded(I)Z
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 631
    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 632
    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 634
    .local v0, groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    iget v2, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    .line 635
    const/4 v2, 0x1

    .line 639
    .end local v0           #groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    :goto_1
    return v2

    .line 631
    .restart local v0       #groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 639
    .end local v0           #groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .parameter "expandableListAdapter"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lcom/htc/music/widget/GroupListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 96
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/GroupListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, expandedGroupMetadataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/GroupListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/GroupListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 675
    .local v1, numGroups:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 676
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    iget v2, v2, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    .line 675
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 683
    :cond_2
    iput-object p1, p0, Lcom/htc/music/widget/GroupListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 684
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V

    goto :goto_0
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .parameter "maxExpGroupCount"

    .prologue
    .line 646
    iput p1, p0, Lcom/htc/music/widget/GroupListConnector;->mMaxExpGroupCount:I

    .line 647
    return-void
.end method
