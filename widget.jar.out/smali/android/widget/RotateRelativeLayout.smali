.class public Landroid/widget/RotateRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RotateRelativeLayout.java"


# static fields
.field public static SCREEN_MODE_ILANDSCAPE:I

.field public static SCREEN_MODE_IPORTRAIT:I

.field public static SCREEN_MODE_LANDSCAPE:I

.field public static SCREEN_MODE_PORTRAIT:I


# instance fields
.field private TAG:Ljava/lang/String;

.field public current_orientation_mode:I

.field private invMatrix:Landroid/graphics/Matrix;

.field private newRectF:Landroid/graphics/RectF;

.field private rotMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    .line 43
    const/4 v0, 0x1

    sput v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_LANDSCAPE:I

    .line 44
    const/4 v0, 0x2

    sput v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    .line 45
    const/4 v0, 0x3

    sput v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_ILANDSCAPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "RotateRelativeLayout"

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    .line 53
    sget v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    iput v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string v0, "RotateRelativeLayout"

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    .line 65
    sget v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    iput v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    .line 67
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 158
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 160
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 162
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 168
    .local v0, event:[F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 170
    iget-object v1, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 171
    aget v1, v0, v2

    aget v2, v0, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 173
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 180
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    if-ne v0, v1, :cond_1

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 186
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 182
    :cond_1
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_LANDSCAPE:I

    if-ne v0, v1, :cond_2

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 184
    :cond_2
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_ILANDSCAPE:I

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    int-to-float v0, v0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 192
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 193
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 194
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 195
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 196
    invoke-virtual {p0, p2}, Landroid/widget/RotateRelativeLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v6, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    if-ne v0, v6, :cond_0

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v6, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    if-ne v0, v6, :cond_1

    .line 81
    :cond_0
    move v1, p1

    .line 82
    .local v1, p7:Z
    move v3, p2

    .line 83
    .local v3, i9:I
    move v2, p3

    .line 84
    .local v2, i8:I
    move v5, p4

    .line 85
    .local v5, i11:I
    move v4, p5

    .local v4, i10:I
    move-object v0, p0

    .line 88
    invoke-super/range {v0 .. v5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 94
    .end local v1           #p7:Z
    .end local v2           #i8:I
    .end local v3           #i9:I
    .end local v4           #i10:I
    .end local v5           #i11:I
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 99
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->rotateMeasureMent()V

    .line 111
    return-void

    .line 102
    :cond_0
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 103
    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected rotateMeasureMent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RotateRelativeLayout;->setMeasuredDimension(II)V

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 126
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 150
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 152
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 130
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 134
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 138
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 142
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "newRotation"

    .prologue
    .line 204
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iput p1, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    .line 210
    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->requestLayout()V

    .line 211
    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->invalidate()V

    goto :goto_0
.end method
