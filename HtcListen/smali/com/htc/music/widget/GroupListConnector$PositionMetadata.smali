.class public Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "GroupListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/GroupListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

.field public position:Lcom/htc/music/widget/GroupListPosition;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "flatListPos"
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"

    .prologue
    .line 785
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 786
    new-instance v0, Lcom/htc/music/widget/GroupListPosition;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/htc/music/widget/GroupListPosition;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    .line 787
    return-void
.end method

.method protected constructor <init>(IIIILcom/htc/music/widget/GroupListConnector$GroupMetadata;I)V
    .locals 1
    .parameter "flatListPos"
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "groupMetadata"
    .parameter "groupInsertIndex"

    .prologue
    .line 790
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 791
    new-instance v0, Lcom/htc/music/widget/GroupListPosition;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/htc/music/widget/GroupListPosition;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    .line 793
    iput-object p5, p0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    .line 794
    iput p6, p0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupInsertIndex:I

    .line 795
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->groupMetadata:Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
