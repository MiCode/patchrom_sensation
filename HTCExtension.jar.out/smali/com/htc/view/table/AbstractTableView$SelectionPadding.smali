.class Lcom/htc/view/table/AbstractTableView$SelectionPadding;
.super Ljava/lang/Object;
.source "AbstractTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionPadding"
.end annotation


# instance fields
.field private bottomPadding:I

.field private leftPadding:I

.field private lock:Z

.field private rightPadding:I

.field final synthetic this$0:Lcom/htc/view/table/AbstractTableView;

.field private topPadding:I


# direct methods
.method public constructor <init>(Lcom/htc/view/table/AbstractTableView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3172
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3173
    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    .line 3174
    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    .line 3175
    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    .line 3176
    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    .line 3177
    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    .line 3178
    return-void
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 3210
    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    return v0
.end method

.method public getLeftPadding()I
    .locals 1

    .prologue
    .line 3198
    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    return v0
.end method

.method public getRightPadding()I
    .locals 1

    .prologue
    .line 3206
    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 3202
    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 3190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    .line 3191
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "leftPadding"
    .parameter "topPadding"
    .parameter "rightPadding"
    .parameter "bottomPadding"

    .prologue
    .line 3181
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    if-nez v0, :cond_0

    .line 3182
    iput p1, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    .line 3183
    iput p2, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    .line 3184
    iput p3, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    .line 3185
    iput p4, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    .line 3187
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 3194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    .line 3195
    return-void
.end method
