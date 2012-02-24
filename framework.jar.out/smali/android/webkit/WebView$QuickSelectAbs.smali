.class public abstract Landroid/webkit/WebView$QuickSelectAbs;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "QuickSelectAbs"
.end annotation


# instance fields
.field protected ANCHOR_DRAWABLE_HEIGHT:I

.field private final MAGNIFY_HEIGHT:I

.field MAGNIFY_HEIGHT_DIP:I

.field private final MAGNIFY_OFFSET:I

.field private MAGNIFY_OFFSET_DIP:I

.field private final MAGNIFY_WIDTH:I

.field private MAGNIFY_WIDTH_DIP:I

.field private final POSITION_MAGNIFY_HEIGHT:I

.field private POSITION_MAGNIFY_HEIGHT_DIP:I

.field private final POSITION_MAGNIFY_WIDTH:I

.field private POSITION_MAGNIFY_WIDTH_DIP:I

.field final TOLERANT_DISTANCE:I

.field acrossFlag:Z

.field protected emptyCanvas:Landroid/graphics/Canvas;

.field mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

.field mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

.field public mQSMethod:Landroid/webkit/WebViewSelectionMethod;

.field protected mQSMode:Z

.field protected mSelectPath:Landroid/graphics/Path;

.field protected mSelectRect:Landroid/graphics/Rect;

.field protected mSelectRegion:Landroid/graphics/Region;

.field magnifier:Landroid/webkit/MagnifyView;

.field magnifierAnchor:Landroid/graphics/Rect;

.field oSelEnd:Landroid/graphics/Rect;

.field oSelStart:Landroid/graphics/Rect;

.field selEnd:Landroid/graphics/Rect;

.field selStart:Landroid/graphics/Rect;

.field protected selectionPaint:Landroid/graphics/Paint;

.field protected showAnchor:Z

.field showMagnifier:Z

.field testWordPos:Landroid/graphics/Point;

.field testWordSelect:Z

.field final synthetic this$0:Landroid/webkit/WebView;

.field tmpRect:Landroid/graphics/Rect;

.field tmpRectF:Landroid/graphics/RectF;

.field tolerantBox:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x5a

    const/high16 v4, 0x4120

    const/4 v3, 0x0

    const/16 v2, 0x3c

    const/4 v1, 0x0

    .line 12340
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12342
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    .line 12343
    new-instance v0, Landroid/webkit/WebViewSelectionMethod;

    invoke-direct {v0}, Landroid/webkit/WebViewSelectionMethod;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    .line 12346
    iput v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    .line 12349
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 12350
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 12353
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 12354
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    .line 12355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    .line 12357
    const/16 v0, 0x8c

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH:I

    .line 12358
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT:I

    .line 12359
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_WIDTH:I

    .line 12360
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_HEIGHT:I

    .line 12361
    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET:I

    .line 12363
    const/16 v0, 0x8c

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH_DIP:I

    .line 12364
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    .line 12365
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_WIDTH_DIP:I

    .line 12366
    iput v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_HEIGHT_DIP:I

    .line 12367
    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET_DIP:I

    .line 12370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    .line 12371
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    .line 12372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->oSelStart:Landroid/graphics/Rect;

    .line 12373
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->oSelEnd:Landroid/graphics/Rect;

    .line 12374
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    .line 12376
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->emptyCanvas:Landroid/graphics/Canvas;

    .line 12377
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    .line 12378
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    .line 12379
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRectF:Landroid/graphics/RectF;

    .line 12380
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    .line 12381
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    .line 12393
    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    .line 12394
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    .line 12588
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->TOLERANT_DISTANCE:I

    .line 12589
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method final dismissAnchor()V
    .locals 1

    .prologue
    .line 12580
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12581
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 12582
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12583
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 12584
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 12585
    return-void
.end method

.method protected abstract doWordSelection(II)V
.end method

.method public abstract hideQuickActions(Z)V
.end method

.method init()V
    .locals 10

    .prologue
    const/high16 v9, 0x4270

    const/4 v8, 0x0

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    .line 12420
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 12423
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 12424
    .local v0, densityFactor:F
    const/high16 v5, 0x42b4

    mul-float/2addr v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET_DIP:I

    .line 12425
    const/high16 v5, 0x430c

    mul-float/2addr v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH_DIP:I

    .line 12426
    mul-float v5, v9, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    .line 12427
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_WIDTH_DIP:I

    .line 12428
    mul-float v5, v9, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->POSITION_MAGNIFY_HEIGHT_DIP:I

    .line 12431
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12100(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/webkit/WebViewThemeable;->getAnchorBarTopDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 12432
    .local v3, priorDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12200(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/webkit/WebViewThemeable;->getAnchorBarDrawable(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12433
    .local v2, postDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    .line 12434
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 12435
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 12437
    new-instance v5, Lcom/htc/textselection/SelectionAnchor;

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/webkit/WebView;->access$12300(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v7, v3, v2}, Lcom/htc/textselection/SelectionAnchor;-><init>(Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 12438
    new-instance v5, Lcom/htc/textselection/SelectionAnchor;

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/webkit/WebView;->access$12400(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v8, v3, v2}, Lcom/htc/textselection/SelectionAnchor;-><init>(Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 12441
    const v5, 0x208066d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 12442
    .local v1, magnifyDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 12443
    new-instance v5, Landroid/webkit/MagnifyView;

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/webkit/WebView;->access$12500(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/webkit/MagnifyView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    .line 12444
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v5, v1}, Landroid/webkit/MagnifyView;->setBGdrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12447
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->emptyCanvas:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 12448
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->emptyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v8, v8, v7, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 12450
    invoke-virtual {p0}, Landroid/webkit/WebView$QuickSelectAbs;->myInit()V

    .line 12451
    return-void
.end method

.method public isSelecting()Z
    .locals 1

    .prologue
    .line 12416
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    return v0
.end method

.method makeSelect(IIII)Z
    .locals 2
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 12408
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 12409
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v0

    .line 12410
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 12411
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeExtendSelection(II)V
    invoke-static {v1, p3, p4}, Landroid/webkit/WebView;->access$11900(Landroid/webkit/WebView;II)V

    .line 12412
    :cond_0
    return v0
.end method

.method protected abstract myInit()V
.end method

.method public abstract onTouchEvent(IILandroid/view/MotionEvent;)Z
.end method

.method public abstract selectionDone()V
.end method

.method public abstract setQuickSelectionButtonFlag(I)V
.end method

.method public abstract setUpSelect()V
.end method

.method final showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "prior"
    .parameter "post"

    .prologue
    .line 12518
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 12519
    .local v2, offsetOnScreen:[I
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v2}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 12521
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 12522
    .local v4, visibleRect:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 12525
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz p1, :cond_3

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x1

    .line 12528
    .local v1, needToDimissPost:Z
    :goto_0
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v9}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    .line 12529
    .local v3, scaleRatio:F
    const/4 v0, 0x0

    .line 12533
    .local v0, gap:F
    if-eqz p1, :cond_0

    .line 12534
    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float v5, v9, v3

    .line 12535
    .local v5, xPos:F
    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_4

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    add-float v7, v9, v10

    .line 12538
    .local v7, yPos:F
    :goto_1
    const/4 v9, 0x0

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$13400(Landroid/webkit/WebView;)I

    move-result v10

    sub-int v6, v9, v10

    .line 12539
    .local v6, xpos:I
    const/4 v9, 0x1

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v7

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$13500(Landroid/webkit/WebView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    add-int v8, v9, v10

    .line 12541
    .local v8, ypos:I
    invoke-virtual {v4, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 12542
    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    :goto_2
    invoke-virtual {v10, v9}, Lcom/htc/textselection/SelectionAnchor;->setVisualMode(Lcom/htc/textselection/SelectionAnchor$VisualMode;)V

    .line 12543
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v10, v6, v8}, Lcom/htc/textselection/SelectionAnchor;->show(Landroid/view/View;II)V

    .line 12544
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 12552
    .end local v5           #xPos:F
    .end local v6           #xpos:I
    .end local v7           #yPos:F
    .end local v8           #ypos:I
    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    .line 12553
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v9}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 12556
    :cond_1
    if-eqz p2, :cond_2

    .line 12557
    iget v9, p2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float v5, v9, v3

    .line 12558
    .restart local v5       #xPos:F
    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_7

    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    sub-float v7, v9, v10

    .line 12561
    .restart local v7       #yPos:F
    :goto_4
    const/4 v9, 0x0

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$13600(Landroid/webkit/WebView;)I

    move-result v10

    sub-int v6, v9, v10

    .line 12562
    .restart local v6       #xpos:I
    const/4 v9, 0x1

    aget v9, v2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v10, v7

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$13700(Landroid/webkit/WebView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    add-int v8, v9, v10

    .line 12564
    .restart local v8       #ypos:I
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 12565
    invoke-virtual {v4, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 12566
    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-eqz v9, :cond_8

    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    :goto_5
    invoke-virtual {v10, v9}, Lcom/htc/textselection/SelectionAnchor;->setVisualMode(Lcom/htc/textselection/SelectionAnchor$VisualMode;)V

    .line 12567
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v10, v6, v8}, Lcom/htc/textselection/SelectionAnchor;->show(Landroid/view/View;II)V

    .line 12568
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 12574
    .end local v5           #xPos:F
    .end local v6           #xpos:I
    .end local v7           #yPos:F
    .end local v8           #ypos:I
    :cond_2
    :goto_6
    return-void

    .line 12525
    .end local v0           #gap:F
    .end local v1           #needToDimissPost:Z
    .end local v3           #scaleRatio:F
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 12535
    .restart local v0       #gap:F
    .restart local v1       #needToDimissPost:Z
    .restart local v3       #scaleRatio:F
    .restart local v5       #xPos:F
    :cond_4
    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    sub-float v7, v9, v10

    goto/16 :goto_1

    .line 12542
    .restart local v6       #xpos:I
    .restart local v7       #yPos:F
    .restart local v8       #ypos:I
    :cond_5
    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    goto/16 :goto_2

    .line 12547
    :cond_6
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_3

    .line 12558
    .end local v6           #xpos:I
    .end local v7           #yPos:F
    .end local v8           #ypos:I
    :cond_7
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    const/4 v10, 0x0

    add-float v7, v9, v10

    goto :goto_4

    .line 12566
    .restart local v6       #xpos:I
    .restart local v7       #yPos:F
    .restart local v8       #ypos:I
    :cond_8
    sget-object v9, Lcom/htc/textselection/SelectionAnchor$VisualMode;->BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    goto :goto_5

    .line 12571
    :cond_9
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_6
.end method

.method final showMagnify(Landroid/graphics/Rect;II)V
    .locals 17
    .parameter "anchorRect"
    .parameter "touchX"
    .parameter "touchOffsetY"

    .prologue
    .line 12460
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    if-nez v1, :cond_0

    .line 12514
    :goto_0
    return-void

    .line 12463
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v1}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    .line 12464
    .local v2, scaleRatio:F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v1}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    .line 12466
    .local v10, invScaleRatio:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    .line 12467
    .local v16, selCY:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_OFFSET_DIP:I

    add-int v12, v1, p3

    .line 12474
    .local v12, offset:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_WIDTH_DIP:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView$QuickSelectAbs;->MAGNIFY_HEIGHT_DIP:I

    invoke-virtual {v1, v3, v4}, Landroid/webkit/MagnifyView;->setMagnifyContentSize(II)V

    .line 12477
    const/4 v1, 0x2

    new-array v13, v1, [I

    .line 12478
    .local v13, offsetOnScreen:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v13}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 12480
    new-instance v11, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)I

    move-result v1

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$12700(Landroid/webkit/WebView;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v12

    invoke-direct {v11, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 12482
    .local v11, magnifyWinCP:Landroid/graphics/Point;
    const/4 v1, 0x0

    aget v1, v13, v1

    iget v3, v11, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->getFullWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float v14, v1, v3

    .line 12483
    .local v14, posX:F
    const/4 v1, 0x1

    aget v1, v13, v1

    iget v3, v11, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float v15, v1, v3

    .line 12485
    .local v15, posY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3ea8f5c3

    mul-float/2addr v1, v3

    add-float/2addr v1, v15

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 12486
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->getFullHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3ea8f5c3

    mul-float/2addr v1, v3

    neg-float v15, v1

    .line 12489
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContentWidth:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$12800(Landroid/webkit/WebView;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContentHeight:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$12900(Landroid/webkit/WebView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$13000(Landroid/webkit/WebView;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$13100(Landroid/webkit/WebView;)I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Landroid/webkit/MagnifyView;->setContent(FFFIIII)V

    .line 12495
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->beginDrawContent()Landroid/graphics/Canvas;

    move-result-object v9

    .line 12496
    .local v9, c:Landroid/graphics/Canvas;
    if-eqz v9, :cond_3

    .line 12497
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mBackgroundColor:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$13200(Landroid/webkit/WebView;)I

    move-result v1

    if-nez v1, :cond_2

    .line 12498
    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 12502
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v9}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    .line 12505
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12506
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12507
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/webkit/WebView;->access$13300()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 12508
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12511
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v1}, Landroid/webkit/MagnifyView;->endDrawContent()V

    .line 12513
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    const/4 v4, 0x0

    aget v4, v13, v4

    float-to-int v5, v15

    invoke-virtual {v1, v3, v4, v5}, Landroid/webkit/MagnifyView;->showAtPositon(Landroid/view/View;II)V

    goto/16 :goto_0
.end method

.method public abstract showQuickActions(Landroid/graphics/Rect;I)V
.end method

.method final spacialDeNoise(FF)Landroid/graphics/PointF;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x4120

    .line 12591
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12592
    .local v4, p:Landroid/graphics/PointF;
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 12593
    .local v2, oldCenterX:F
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 12594
    .local v3, oldCenterY:F
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12595
    iput v2, v4, Landroid/graphics/PointF;->x:F

    .line 12596
    iput v3, v4, Landroid/graphics/PointF;->y:F

    .line 12622
    :goto_0
    return-object v4

    .line 12599
    :cond_0
    const/4 v0, 0x0

    .line 12600
    .local v0, offsetX:F
    const/4 v1, 0x0

    .line 12601
    .local v1, offsetY:F
    sub-float v5, p1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 12602
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3

    .line 12603
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v5

    .line 12609
    :cond_1
    :goto_1
    sub-float v5, p2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 12610
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    .line 12611
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v5

    .line 12618
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 12619
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 12620
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 12604
    :cond_3
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    .line 12605
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float v0, p1, v5

    goto :goto_1

    .line 12608
    :cond_4
    sub-float v0, p1, v2

    goto :goto_1

    .line 12612
    :cond_5
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_2

    .line 12613
    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v5

    goto :goto_2

    .line 12616
    :cond_6
    sub-float v1, p2, v3

    goto :goto_2
.end method

.method testSelect(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 12396
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 12397
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 12398
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    .line 12399
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v0

    .line 12400
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 12401
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeExtendSelection(II)V
    invoke-static {v1, p1, p2}, Landroid/webkit/WebView;->access$11900(Landroid/webkit/WebView;II)V

    .line 12402
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    .line 12403
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 12404
    return v0
.end method
