.class public final Lcom/android/camera/widget/PanoramaTrackingView;
.super Landroid/view/View;
.source "PanoramaTrackingView.java"


# instance fields
.field private m_DeltaX:F

.field private m_DeltaY:F

.field private m_PanoramaDirection:I

.field private m_TrackingBoxPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v13, 0x4170

    .line 38
    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    if-nez v9, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->getWidth()I

    move-result v8

    .line 43
    .local v8, viewWidth:I
    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->getHeight()I

    move-result v7

    .line 44
    .local v7, viewHeight:I
    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    mul-int/lit8 v4, v9, 0x2

    .line 45
    .local v4, minViewSize:I
    if-le v8, v4, :cond_0

    if-le v7, v4, :cond_0

    .line 49
    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaY:F

    int-to-float v10, v8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    add-int v1, v9, v10

    .line 50
    .local v1, boxLeft:I
    if-ge v1, v8, :cond_0

    .line 54
    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 55
    const/high16 v9, 0x3f80

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaX:F

    sub-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    add-int v3, v9, v10

    .line 58
    .local v3, boxTop:I
    :goto_1
    if-ge v3, v7, :cond_0

    .line 61
    sub-int v9, v8, v4

    add-int v2, v1, v9

    .line 62
    .local v2, boxRight:I
    if-lez v2, :cond_0

    .line 65
    sub-int v9, v7, v4

    add-int v0, v3, v9

    .line 66
    .local v0, boxBottom:I
    if-lez v0, :cond_0

    .line 70
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v3

    int-to-float v11, v2

    int-to-float v12, v0

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    .local v6, rect:Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 72
    .local v5, paint:Landroid/graphics/Paint;
    const/high16 v9, 0x4040

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setFlags(I)V

    .line 75
    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaY:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3e99999a

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    .line 77
    iget v9, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaX:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3f733333

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    .line 78
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    :goto_2
    invoke-virtual {p1, v6, v13, v13, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 57
    .end local v0           #boxBottom:I
    .end local v2           #boxRight:I
    .end local v3           #boxTop:I
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #rect:Landroid/graphics/RectF;
    :cond_2
    const/high16 v9, -0x4080

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaX:F

    sub-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    add-int v3, v9, v10

    .restart local v3       #boxTop:I
    goto :goto_1

    .line 80
    .restart local v0       #boxBottom:I
    .restart local v2       #boxRight:I
    .restart local v5       #paint:Landroid/graphics/Paint;
    .restart local v6       #rect:Landroid/graphics/RectF;
    :cond_3
    const v9, -0xff0100

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 83
    :cond_4
    const/high16 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method public setDeltaXY(FF)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaX:F

    .line 93
    iput p2, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaY:F

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->invalidate()V

    .line 95
    return-void
.end method

.method public setPanoramaDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->invalidate()V

    .line 104
    return-void
.end method
