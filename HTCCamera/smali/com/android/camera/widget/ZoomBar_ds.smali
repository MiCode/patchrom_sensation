.class public Lcom/android/camera/widget/ZoomBar_ds;
.super Landroid/widget/ImageView;
.source "ZoomBar_ds.java"

# interfaces
.implements Lcom/android/camera/widget/ScrollInterface;


# static fields
.field private static final CURSOR_EDGE:I = 0x0

.field private static final PADDING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ZoomBar"


# instance fields
.field private mBarHieght:I

.field private mBarWidth:I

.field private mCursorHieght:I

.field private mCursorPosition:I

.field private mCursorWidth:I

.field private mMax:I

.field private mMin:I

.field private mPosChangeListner:Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;

.field private mPosition:I

.field private mStep:F

.field private mZoomCursor:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/ZoomBar_ds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/widget/ZoomBar_ds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mZoomCursor:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-super {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mZoomCursor:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-direct {p0}, Lcom/android/camera/widget/ZoomBar_ds;->initZoomBar()V

    .line 30
    return-void
.end method

.method private initZoomBar()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x221

    iput v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mBarWidth:I

    .line 56
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mBarHieght:I

    .line 57
    iget-object v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mZoomCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorWidth:I

    .line 58
    iget-object v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mZoomCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorHieght:I

    .line 62
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMin:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    return v0
.end method

.method public increasePosition(I)V
    .locals 2
    .parameter "increase"

    .prologue
    .line 86
    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    add-int v0, v1, p1

    .line 87
    .local v0, pos:I
    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMax:I

    if-le v0, v1, :cond_1

    .line 88
    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMax:I

    .line 92
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ZoomBar_ds;->setPosition(I)Z

    .line 93
    return-void

    .line 89
    :cond_1
    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMin:I

    if-ge v0, v1, :cond_0

    .line 90
    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMin:I

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mZoomCursor:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    iget v4, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorHieght:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mZoomCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseResource()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public setMinMax(II)Z
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 100
    if-le p1, p2, :cond_0

    .line 101
    const-string v0, "ZoomBar"

    const-string v1, "setMinMaxValue failed - min > max"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 105
    :cond_0
    iput p1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMin:I

    .line 106
    iput p2, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMax:I

    .line 107
    iput p1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    .line 108
    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mBarWidth:I

    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0xc

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMax:I

    iget v2, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mStep:F

    .line 109
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnPositionChangeListner(Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosChangeListner:Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;

    .line 145
    return-void
.end method

.method public setPosition(I)Z
    .locals 4
    .parameter "pos"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMax:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    if-ne p1, v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    .line 118
    :cond_1
    iput p1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    .line 119
    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mStep:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    .line 120
    iget-object v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosChangeListner:Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;

    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    invoke-interface {v0, p0, v1}, Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;->onProgressChanged(Landroid/view/View;I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/widget/ZoomBar_ds;->invalidate()V

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTouchPosition(I)V
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v2, 0x6

    .line 127
    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    .line 129
    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    if-ge v1, v2, :cond_2

    .line 130
    iput v2, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    .line 134
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    .line 135
    .local v0, oldPosition:I
    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, -0x6

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/widget/ZoomBar_ds;->mStep:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, p0, Lcom/android/camera/widget/ZoomBar_ds;->mMin:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    .line 137
    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    if-eq v0, v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosChangeListner:Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;

    iget v2, p0, Lcom/android/camera/widget/ZoomBar_ds;->mPosition:I

    invoke-interface {v1, p0, v2}, Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;->onProgressChanged(Landroid/view/View;I)V

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/ZoomBar_ds;->invalidate()V

    .line 141
    return-void

    .line 131
    .end local v0           #oldPosition:I
    :cond_2
    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    iget v2, p0, Lcom/android/camera/widget/ZoomBar_ds;->mBarWidth:I

    iget v3, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorWidth:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x6

    if-le v1, v2, :cond_0

    .line 132
    iget v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mBarWidth:I

    iget v2, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lcom/android/camera/widget/ZoomBar_ds;->mCursorPosition:I

    goto :goto_0
.end method
