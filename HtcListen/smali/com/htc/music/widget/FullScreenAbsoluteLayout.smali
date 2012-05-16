.class public Lcom/htc/music/widget/FullScreenAbsoluteLayout;
.super Landroid/widget/AbsoluteLayout;
.source "FullScreenAbsoluteLayout.java"


# instance fields
.field protected mTitleBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    .line 22
    return-void
.end method

.method private isFullScreen()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 45
    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->isFullScreen()Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->getChildCount()I

    move-result v1

    .line 47
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 50
    .local v3, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 51
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->getChildCount()I

    move-result v1

    .line 55
    .restart local v1       #count:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 56
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 58
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v4, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    neg-int v4, v4

    iput v4, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 59
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsoluteLayout;->onLayout(ZIIII)V

    .line 63
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 34
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    .line 35
    return-void
.end method
