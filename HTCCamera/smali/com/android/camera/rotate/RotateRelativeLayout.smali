.class public Lcom/android/camera/rotate/RotateRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RotateRelativeLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateRelativeLayout"


# instance fields
.field private invMatrix:Landroid/graphics/Matrix;

.field private mCurrentOrientation:I

.field private mTempOrientation:I

.field private newRectF:Landroid/graphics/RectF;

.field private rotMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    .line 17
    iput v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mTempOrientation:I

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    .line 17
    iput v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mTempOrientation:I

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    .line 37
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    iget-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 114
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    const/4 v4, 0x2

    new-array v0, v4, [F

    .line 122
    .local v0, pos:[F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 123
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 124
    .local v3, y:F
    aput v2, v0, v5

    .line 125
    aput v3, v0, v6

    .line 126
    iget-object v4, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 127
    aget v4, v0, v5

    aget v5, v0, v6

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 129
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 130
    .local v1, result:Z
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 131
    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 137
    iget v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v0

    .line 138
    .local v0, diff:I
    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 141
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 150
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .parameter "location"
    .parameter "rect"

    .prologue
    .line 162
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 165
    iget-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationEnd()V

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->invalidate()V

    .line 203
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v6

    .line 44
    .local v6, diff:I
    rem-int/lit8 v0, v6, 0x2

    if-lez v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p5

    move v5, p4

    .line 45
    invoke-super/range {v0 .. v5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 60
    iget v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v0

    .line 61
    .local v0, diff:I
    rem-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_0

    .line 62
    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->rotateMeasureMent()V

    .line 69
    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected rotateMeasureMent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    iget v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v0

    .line 75
    .local v0, diff:I
    rem-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setMeasuredDimension(II)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 81
    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 104
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 106
    return-void

    .line 84
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 85
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b4

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x4334

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 93
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 96
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x4387

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 97
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 180
    iget v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iput p1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method public setOrientationDelay(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 173
    iput p1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mTempOrientation:I

    .line 176
    return-void
.end method
