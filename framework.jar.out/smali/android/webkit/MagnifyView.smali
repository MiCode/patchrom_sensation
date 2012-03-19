.class Landroid/webkit/MagnifyView;
.super Landroid/view/View;
.source "MagnifyView.java"


# instance fields
.field final SCALE_RATIO:F

.field background:Landroid/graphics/drawable/Drawable;

.field bgID:I

.field bgPadding:Landroid/graphics/Rect;

.field centerX:F

.field centerY:F

.field clip:Landroid/graphics/RectF;

.field contentH:I

.field contentPicture:Landroid/graphics/Picture;

.field contentScale:F

.field contentScrollX:I

.field contentScrollY:I

.field contentW:I

.field densityFactor:F

.field drawing:Z

.field halfH:F

.field halfW:F

.field invContentScale:F

.field mBMPcanvas:Landroid/graphics/Canvas;

.field mContentBMP:Landroid/graphics/Bitmap;

.field magnifyRatio:F

.field magnifyWindow:Landroid/widget/PopupWindow;

.field ml:Landroid/widget/FrameLayout;

.field mll:Landroid/widget/FrameLayout$LayoutParams;

.field offsetX:F

.field offsetY:F

.field parentXOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/high16 v3, 0x3fc0

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->contentPicture:Landroid/graphics/Picture;

    .line 23
    iput v1, p0, Landroid/webkit/MagnifyView;->contentScale:F

    .line 24
    iput v1, p0, Landroid/webkit/MagnifyView;->invContentScale:F

    .line 30
    iput-boolean v2, p0, Landroid/webkit/MagnifyView;->drawing:Z

    .line 33
    iput v3, p0, Landroid/webkit/MagnifyView;->SCALE_RATIO:F

    .line 34
    iput v3, p0, Landroid/webkit/MagnifyView;->magnifyRatio:F

    .line 40
    iput v2, p0, Landroid/webkit/MagnifyView;->bgID:I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    .line 44
    iput v1, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    .line 46
    iput v2, p0, Landroid/webkit/MagnifyView;->parentXOffset:I

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/MagnifyView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    .line 55
    iget-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 57
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    .line 58
    iget-object v0, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Landroid/webkit/MagnifyView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Landroid/webkit/MagnifyView;->mll:Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mll:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    .line 68
    return-void
.end method


# virtual methods
.method beginDrawContent()Landroid/graphics/Canvas;
    .locals 5

    .prologue
    .line 185
    iget-boolean v1, p0, Landroid/webkit/MagnifyView;->drawing:Z

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    .line 188
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/MagnifyView;->drawing:Z

    .line 189
    iget-object v1, p0, Landroid/webkit/MagnifyView;->contentPicture:Landroid/graphics/Picture;

    iget v2, p0, Landroid/webkit/MagnifyView;->contentW:I

    iget v3, p0, Landroid/webkit/MagnifyView;->contentH:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    .line 195
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v1, p0, Landroid/webkit/MagnifyView;->offsetX:F

    neg-float v1, v1

    iget v2, p0, Landroid/webkit/MagnifyView;->offsetY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 196
    iget v1, p0, Landroid/webkit/MagnifyView;->parentXOffset:I

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/MagnifyView;->centerX:F

    iget v3, p0, Landroid/webkit/MagnifyView;->contentScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Landroid/webkit/MagnifyView;->contentScrollX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/webkit/MagnifyView;->halfW:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    iget v1, p0, Landroid/webkit/MagnifyView;->magnifyRatio:F

    iget v2, p0, Landroid/webkit/MagnifyView;->magnifyRatio:F

    iget v3, p0, Landroid/webkit/MagnifyView;->centerX:F

    iget v4, p0, Landroid/webkit/MagnifyView;->centerY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0
.end method

.method dismiss()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 148
    :cond_0
    return-void
.end method

.method endDrawContent()V
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Landroid/webkit/MagnifyView;->drawing:Z

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/MagnifyView;->drawing:Z

    .line 208
    iget-object v0, p0, Landroid/webkit/MagnifyView;->contentPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    goto :goto_0
.end method

.method getBGdrawableID()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/webkit/MagnifyView;->bgID:I

    return v0
.end method

.method getFullHeight()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getFullWidth()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 220
    iget-object v2, p0, Landroid/webkit/MagnifyView;->contentPicture:Landroid/graphics/Picture;

    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/MagnifyView;->drawing:Z

    if-eqz v2, :cond_2

    .line 224
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/MagnifyView;->postInvalidateDelayed(J)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 240
    .local v0, saveflag:I
    iget v2, p0, Landroid/webkit/MagnifyView;->centerX:F

    iget v3, p0, Landroid/webkit/MagnifyView;->contentScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/webkit/MagnifyView;->contentScrollX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkit/MagnifyView;->parentXOffset:I

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 241
    .local v1, viewCenter:F
    iget-object v2, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v3, p0, Landroid/webkit/MagnifyView;->halfW:F

    sub-float v3, v1, v3

    iget-object v4, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 242
    iget-object v2, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 243
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    iget-object v2, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 251
    iget-object v2, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget-object v4, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    iget-object v2, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid/webkit/MagnifyView;->contentPicture:Landroid/graphics/Picture;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 253
    iget-object v2, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 254
    iget-object v2, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 259
    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 262
    iget-object v2, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    iget-object v2, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 257
    :cond_4
    iget-object v2, p0, Landroid/webkit/MagnifyView;->contentPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    goto :goto_1
.end method

.method setBGdrawable(I)V
    .locals 4
    .parameter "resID"

    .prologue
    const/4 v3, 0x0

    .line 71
    iget v1, p0, Landroid/webkit/MagnifyView;->bgID:I

    if-ne v1, p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 74
    :cond_0
    iput p1, p0, Landroid/webkit/MagnifyView;->bgID:I

    .line 75
    if-lez p1, :cond_1

    .line 77
    :try_start_0
    iget-object v1, p0, Landroid/webkit/MagnifyView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iput-object v3, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    .line 81
    const-string v1, "MagnifyView"

    const-string v2, "ERROR!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 84
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iput-object v3, p0, Landroid/webkit/MagnifyView;->background:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 90
    :cond_2
    iget-object v1, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method setContent(FFFIIII)V
    .locals 3
    .parameter "cscale"
    .parameter "cx"
    .parameter "cy"
    .parameter "cw"
    .parameter "ch"
    .parameter "cScrollX"
    .parameter "cScrollY"

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, 0x3fc0

    .line 155
    iget v0, p0, Landroid/webkit/MagnifyView;->contentScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 156
    iput p1, p0, Landroid/webkit/MagnifyView;->contentScale:F

    .line 157
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/MagnifyView;->invContentScale:F

    .line 160
    iget v0, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    mul-float/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/webkit/MagnifyView;->magnifyRatio:F

    .line 163
    :cond_0
    iput p2, p0, Landroid/webkit/MagnifyView;->centerX:F

    .line 164
    iput p3, p0, Landroid/webkit/MagnifyView;->centerY:F

    .line 165
    iget v0, p0, Landroid/webkit/MagnifyView;->halfW:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifyView;->contentW:I

    .line 166
    iget v0, p0, Landroid/webkit/MagnifyView;->halfH:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifyView;->contentH:I

    .line 167
    iput p6, p0, Landroid/webkit/MagnifyView;->contentScrollX:I

    .line 168
    iput p7, p0, Landroid/webkit/MagnifyView;->contentScrollY:I

    .line 172
    iget v0, p0, Landroid/webkit/MagnifyView;->centerX:F

    iget v1, p0, Landroid/webkit/MagnifyView;->halfW:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/MagnifyView;->offsetX:F

    .line 173
    iget v0, p0, Landroid/webkit/MagnifyView;->centerY:F

    iget v1, p0, Landroid/webkit/MagnifyView;->halfH:F

    iget-object v2, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/MagnifyView;->offsetY:F

    .line 182
    return-void

    .line 160
    :cond_1
    iget v0, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x4010

    iget v1, p0, Landroid/webkit/MagnifyView;->densityFactor:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_2
    mul-float v0, v1, p1

    goto :goto_0
.end method

.method setMagnifyContentSize(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x3f00

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 98
    int-to-float v0, p1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/MagnifyView;->halfW:F

    .line 99
    int-to-float v0, p2

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/MagnifyView;->halfH:F

    .line 100
    iget-object v0, p0, Landroid/webkit/MagnifyView;->clip:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mll:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget-object v2, p0, Landroid/webkit/MagnifyView;->bgPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 102
    iget-object v0, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 104
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    :cond_1
    iput-object v5, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    .line 109
    iput-object v5, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    .line 111
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 112
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    .line 113
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/webkit/MagnifyView;->mContentBMP:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    .line 114
    iget-object v0, p0, Landroid/webkit/MagnifyView;->mBMPcanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3, v3, p1, p2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 118
    :cond_2
    return-void
.end method

.method showAtPositon(Landroid/view/View;II)V
    .locals 4
    .parameter "parent"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 129
    iput p2, p0, Landroid/webkit/MagnifyView;->parentXOffset:I

    .line 130
    iget-object v1, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/webkit/MagnifyView;->invalidate()V

    .line 132
    iget-object v1, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3, p3, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Landroid/webkit/MagnifyView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 137
    .local v0, display:Landroid/view/Display;
    iget-object v1, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 139
    iget-object v1, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/MagnifyView;->ml:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 140
    iget-object v1, p0, Landroid/webkit/MagnifyView;->magnifyWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, v3, v3, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 141
    invoke-virtual {p0}, Landroid/webkit/MagnifyView;->invalidate()V

    goto :goto_0
.end method
