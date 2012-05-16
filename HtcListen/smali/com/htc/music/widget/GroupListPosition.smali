.class Lcom/htc/music/widget/GroupListPosition;
.super Ljava/lang/Object;
.source "GroupListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/htc/music/widget/GroupListPosition;->type:I

    .line 72
    iput p2, p0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    .line 73
    iput p3, p0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    .line 74
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "flatListPos"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/htc/music/widget/GroupListPosition;->type:I

    .line 61
    iput p4, p0, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    .line 62
    iput p2, p0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    .line 63
    iput p3, p0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    .line 64
    return-void
.end method

.method static obtainChildPosition(II)Lcom/htc/music/widget/GroupListPosition;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 88
    new-instance v0, Lcom/htc/music/widget/GroupListPosition;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/htc/music/widget/GroupListPosition;-><init>(III)V

    return-object v0
.end method

.method static obtainGroupPosition(I)Lcom/htc/music/widget/GroupListPosition;
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 84
    new-instance v0, Lcom/htc/music/widget/GroupListPosition;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/htc/music/widget/GroupListPosition;-><init>(III)V

    return-object v0
.end method

.method static obtainPosition(J)Lcom/htc/music/widget/GroupListPosition;
    .locals 4
    .parameter "packedPosition"

    .prologue
    const/4 v0, 0x1

    .line 92
    const-wide v1, 0xffffffffL

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    .line 96
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 99
    .local v0, type:I
    :goto_1
    new-instance v1, Lcom/htc/music/widget/GroupListPosition;

    invoke-static {p0, p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionGroup(J)I

    move-result v2

    invoke-static {p0, p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionChild(J)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/htc/music/widget/GroupListPosition;-><init>(III)V

    goto :goto_0

    .line 96
    .end local v0           #type:I
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method getPackedPosition()J
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    iget v0, p0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v1, p0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-static {v0, v1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 80
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-static {v0}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_0
.end method
