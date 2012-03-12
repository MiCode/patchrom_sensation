.class public Lcom/android/camera/widget/OffsetRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "OffsetRelativeLayout.java"

# interfaces
.implements Lcom/android/camera/widget/IOffsetView;


# instance fields
.field private m_ActualOffset:Landroid/graphics/Point;

.field private m_Offset:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_ActualOffset:Landroid/graphics/Point;

    .line 15
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    .line 23
    return-void
.end method

.method private invalidateParent()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/camera/widget/OffsetRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 53
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 55
    :cond_0
    return-void
.end method

.method private updateOffset()V
    .locals 4

    .prologue
    .line 84
    iget-object v2, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_ActualOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v0, v2, v3

    .line 85
    .local v0, offsetX:I
    iget-object v2, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_ActualOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v3

    .line 86
    .local v1, offsetY:I
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/OffsetRelativeLayout;->offsetLeftAndRight(I)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/OffsetRelativeLayout;->offsetTopAndBottom(I)V

    .line 88
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/widget/OffsetRelativeLayout;->invalidateParent()V

    .line 91
    iget-object v2, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_ActualOffset:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public final getOffset()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_ActualOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 36
    invoke-direct {p0}, Lcom/android/camera/widget/OffsetRelativeLayout;->updateOffset()V

    .line 37
    return-void
.end method

.method public final setOffset(Landroid/graphics/Point;)V
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/widget/OffsetRelativeLayout;->updateOffset()V

    .line 67
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public final setOffsetX(I)V
    .locals 2
    .parameter "offsetX"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    .line 71
    invoke-direct {p0}, Lcom/android/camera/widget/OffsetRelativeLayout;->updateOffset()V

    .line 72
    return-void
.end method

.method public final setOffsetY(I)V
    .locals 2
    .parameter "offsetY"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/widget/OffsetRelativeLayout;->m_Offset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 76
    invoke-direct {p0}, Lcom/android/camera/widget/OffsetRelativeLayout;->updateOffset()V

    .line 77
    return-void
.end method
