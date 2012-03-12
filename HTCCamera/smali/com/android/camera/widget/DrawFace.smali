.class public Lcom/android/camera/widget/DrawFace;
.super Landroid/view/View;
.source "DrawFace.java"


# static fields
.field private static final STROKE_COLOR:I = -0x10000

.field private static final STROKE_WIDTH:I = 0x2


# instance fields
.field private bDrawFocus:Z

.field private mFace:[Landroid/graphics/Rect;

.field private mFaceNum:S

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/DrawFace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-object v1, p0, Lcom/android/camera/widget/DrawFace;->mFace:[Landroid/graphics/Rect;

    .line 14
    iput-short v0, p0, Lcom/android/camera/widget/DrawFace;->mFaceNum:S

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/widget/DrawFace;->bDrawFocus:Z

    .line 18
    iput-object v1, p0, Lcom/android/camera/widget/DrawFace;->mPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFace;->mRect:Landroid/graphics/Rect;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput-object v1, p0, Lcom/android/camera/widget/DrawFace;->mFace:[Landroid/graphics/Rect;

    .line 14
    iput-short v0, p0, Lcom/android/camera/widget/DrawFace;->mFaceNum:S

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/widget/DrawFace;->bDrawFocus:Z

    .line 18
    iput-object v1, p0, Lcom/android/camera/widget/DrawFace;->mPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFace;->mRect:Landroid/graphics/Rect;

    .line 31
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/DrawFace;->mPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mFace:[Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-short v1, p0, Lcom/android/camera/widget/DrawFace;->mFaceNum:S

    if-lez v1, :cond_1

    .line 56
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-short v1, p0, Lcom/android/camera/widget/DrawFace;->mFaceNum:S

    if-ge v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/widget/DrawFace;->mFace:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 58
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/widget/DrawFace;->mFace:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 59
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/widget/DrawFace;->mFace:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 60
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/widget/DrawFace;->mFace:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 62
    iget-object v1, p0, Lcom/android/camera/widget/DrawFace;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/widget/DrawFace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0           #i:I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public resetFace()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/DrawFace;->mFace:[Landroid/graphics/Rect;

    .line 41
    iput-short v1, p0, Lcom/android/camera/widget/DrawFace;->mFaceNum:S

    .line 42
    iput-boolean v1, p0, Lcom/android/camera/widget/DrawFace;->bDrawFocus:Z

    .line 43
    return-void
.end method

.method public setFace([Landroid/graphics/Rect;SZ)V
    .locals 0
    .parameter "face"
    .parameter "num"
    .parameter "focus"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/camera/widget/DrawFace;->mFace:[Landroid/graphics/Rect;

    .line 35
    iput-short p2, p0, Lcom/android/camera/widget/DrawFace;->mFaceNum:S

    .line 36
    iput-boolean p3, p0, Lcom/android/camera/widget/DrawFace;->bDrawFocus:Z

    .line 37
    return-void
.end method
