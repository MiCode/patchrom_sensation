.class Lcom/htc/widget/HtcReorderListView$MovingItem;
.super Ljava/lang/Object;
.source "HtcReorderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MovingItem"
.end annotation


# instance fields
.field current:I

.field final expandIndex:I

.field final shrinkIndex:I

.field startTime:J

.field stringName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/widget/HtcReorderListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcReorderListView;II)V
    .locals 2
    .parameter
    .parameter "from"
    .parameter "to"

    .prologue
    .line 984
    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->this$0:Lcom/htc/widget/HtcReorderListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 981
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->startTime:J

    .line 982
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->current:I

    .line 985
    iput p2, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->shrinkIndex:I

    .line 986
    iput p3, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->expandIndex:I

    .line 987
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "MovingItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const-string v1, " startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 995
    const-string v1, " current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->current:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    const-string v1, " expand index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->expandIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 997
    const-string v1, " shrink index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->shrinkIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->stringName:Ljava/lang/String;

    .line 999
    iget-object v1, p0, Lcom/htc/widget/HtcReorderListView$MovingItem;->stringName:Ljava/lang/String;

    return-object v1
.end method
