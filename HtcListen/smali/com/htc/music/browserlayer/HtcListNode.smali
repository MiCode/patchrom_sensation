.class public Lcom/htc/music/browserlayer/HtcListNode;
.super Lcom/htc/widget/MoreExpandableItemInfo;
.source "HtcListNode.java"


# instance fields
.field public cursor:Landroid/database/Cursor;

.field public cursorPosition:I

.field public isExpanded:Z

.field public isSelected:Z

.field public level:I

.field public mImageRes:I

.field public mTitle:Ljava/lang/String;

.field public position:I

.field public viewType:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;IIZ)V
    .locals 3
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "level"
    .parameter "isGroup"

    .prologue
    const/4 v2, 0x0

    .line 10
    int-to-long v0, p2

    invoke-direct {p0, v0, v1, p4}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 24
    iput v2, p0, Lcom/htc/music/browserlayer/HtcListNode;->viewType:I

    .line 26
    iput v2, p0, Lcom/htc/music/browserlayer/HtcListNode;->mImageRes:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/HtcListNode;->mTitle:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/HtcListNode;->isExpanded:Z

    .line 39
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    .line 12
    iput p2, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    .line 13
    iput p3, p0, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    .line 14
    iput-object p1, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 15
    return-void
.end method


# virtual methods
.method public onCollapseDelete()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_0
    return-void
.end method
