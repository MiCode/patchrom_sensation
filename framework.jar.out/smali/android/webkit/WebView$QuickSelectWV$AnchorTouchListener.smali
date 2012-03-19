.class Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$QuickSelectWV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorTouchListener"
.end annotation


# static fields
.field private static final ANCHOR_FLY_THRESHOLD_MILLI:J = 0x64L


# instance fields
.field private isPriorAnchor:Z

.field private mConfirmMove:Z

.field private mDownX:I

.field private mDownY:I

.field private mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

.field private mUpdateTime:J

.field final synthetic this$1:Landroid/webkit/WebView$QuickSelectWV;

.field private touchOffset:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$QuickSelectWV;)V
    .locals 2
    .parameter

    .prologue
    .line 13405
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13406
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    .line 13409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 13410
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    .line 13413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    return-void
.end method

.method static synthetic access$15700(Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13405
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    return v0
.end method

.method private doAutoExtend()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 13416
    iget-boolean v7, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v0, v7, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    .line 13417
    .local v0, active:Landroid/webkit/SelectionUnitInfo;
    :goto_0
    iget v7, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    if-nez v7, :cond_2

    .line 13432
    :cond_0
    :goto_1
    return v6

    .line 13416
    .end local v0           #active:Landroid/webkit/SelectionUnitInfo;
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v0, v7, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    goto :goto_0

    .line 13420
    .restart local v0       #active:Landroid/webkit/SelectionUnitInfo;
    :cond_2
    iget v2, v0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    .line 13421
    .local v2, current:I
    iget-object v7, v0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 13423
    .local v1, ch:C
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    sub-long v3, v7, v9

    .line 13425
    .local v3, timeDiff:J
    invoke-static {v1}, Ljava/lang/Character;->getType(C)I

    move-result v5

    .line 13432
    .local v5, type:I
    if-ltz v2, :cond_0

    const-wide/16 v7, 0x64

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    const/16 v7, 0x14

    if-lt v5, v7, :cond_3

    const/16 v7, 0x18

    if-le v5, v7, :cond_0

    :cond_3
    invoke-static {v1}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    const/4 v6, 0x1

    goto :goto_1
.end method

.method private getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 13440
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 13441
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 13443
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 13452
    .end local v0           #child:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v1

    .line 13444
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->PRIOR_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    .line 13445
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v1, v1, Landroid/webkit/WebView$QuickSelectWV;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_0

    .line 13446
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->POST_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 13447
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v1, v1, Landroid/webkit/WebView$QuickSelectWV;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "v"
    .parameter "event"

    .prologue
    .line 13457
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-nez v9, :cond_1

    .line 13458
    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v9

    iput-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 13459
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-nez v9, :cond_0

    .line 13460
    const/4 v9, 0x0

    .line 13690
    :goto_0
    return v9

    .line 13462
    :cond_0
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    .line 13473
    :cond_1
    const/4 v9, 0x2

    new-array v6, v9, [I

    fill-array-data v6, :array_0

    .line 13474
    .local v6, onScreenOffset:[I
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v6}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 13475
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView$QuickSelectWV;->spacialDeNoise(FF)Landroid/graphics/PointF;

    move-result-object v7

    .line 13477
    .local v7, p:Landroid/graphics/PointF;
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v11}, Landroid/webkit/WebView;->access$16300(Landroid/webkit/WebView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x0

    aget v11, v6, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 13478
    .local v0, contentX:I
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v10, v7, Landroid/graphics/PointF;->y:F

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v11}, Landroid/webkit/WebView;->access$16400(Landroid/webkit/WebView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v6, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 13480
    .local v1, contentY:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 13690
    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    .line 13462
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v6           #onScreenOffset:[I
    .end local v7           #p:Landroid/graphics/PointF;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 13482
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v6       #onScreenOffset:[I
    .restart local v7       #p:Landroid/graphics/PointF;
    :pswitch_0
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v9}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v9

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v9, v10, :cond_3

    .line 13483
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13485
    :cond_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mConfirmMove:Z

    .line 13486
    iget v9, v7, Landroid/graphics/PointF;->x:F

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mDownX:I

    .line 13487
    iget v9, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mDownY:I

    .line 13489
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    .line 13492
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v9, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    :goto_3
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13493
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    sub-int/2addr v10, v0

    iput v10, v9, Landroid/graphics/Point;->x:I

    .line 13494
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    sub-int/2addr v10, v1

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 13497
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebView$QuickSelectWV;->hideQuickActions(Z)V

    .line 13500
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v9, Landroid/webkit/WebView$QuickSelectWV;->magnifierAnchor:Landroid/graphics/Rect;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    :goto_4
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13501
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/webkit/WebView$QuickSelectWV;->showMagnifier:Z

    .line 13502
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->invalidate()V

    .line 13503
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->magnifierAnchor:Landroid/graphics/Rect;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v12}, Landroid/webkit/WebView;->access$16500(Landroid/webkit/WebView;)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    const/4 v12, 0x0

    aget v12, v6, v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v13, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_2

    .line 13492
    :cond_4
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    goto :goto_3

    .line 13500
    :cond_5
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    goto :goto_4

    .line 13510
    :pswitch_1
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v9

    .line 13511
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v9

    .line 13514
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    move-result v3

    .line 13517
    .local v3, isScrolling:Z
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 13520
    :cond_6
    if-eqz v3, :cond_7

    .line 13521
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v9}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 13529
    :goto_5
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 13524
    :cond_7
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v9, Landroid/webkit/WebView$QuickSelectWV;->magnifierAnchor:Landroid/graphics/Rect;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    :goto_6
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13525
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->magnifierAnchor:Landroid/graphics/Rect;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v12}, Landroid/webkit/WebView;->access$16600(Landroid/webkit/WebView;)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    const/4 v12, 0x0

    aget v12, v6, v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v13, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto :goto_5

    .line 13524
    :cond_8
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    goto :goto_6

    .line 13539
    :cond_9
    const/4 v5, 0x0

    .line 13541
    .local v5, movingRect:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->oSelStart:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13542
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->oSelEnd:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13543
    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v9, :cond_10

    .line 13544
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13545
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-virtual {v9, v0, v1, v10, v11}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13547
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v9, v10}, Landroid/webkit/WebView;->access$14600(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13549
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13550
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v5, v9, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    .line 13553
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 13554
    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-boolean v9, v9, Landroid/webkit/WebView$QuickSelectWV;->acrossFlag:Z

    if-nez v9, :cond_f

    const/4 v9, 0x1

    :goto_7
    iput-boolean v9, v10, Landroid/webkit/WebView$QuickSelectWV;->acrossFlag:Z

    .line 13556
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    .line 13557
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iput-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 13585
    :cond_a
    :goto_8
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->oSelStart:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->oSelEnd:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 13587
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    .line 13590
    :cond_c
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v9, v9, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 13591
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13594
    :cond_d
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v9, v9, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 13595
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13613
    :cond_e
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    #calls: Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V
    invoke-static {v9}, Landroid/webkit/WebView$QuickSelectWV;->access$16000(Landroid/webkit/WebView$QuickSelectWV;)V

    .line 13615
    if-eqz v3, :cond_12

    .line 13616
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v9}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 13624
    :goto_9
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_2

    .line 13554
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 13564
    :cond_10
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13565
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13566
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13568
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v9, v10}, Landroid/webkit/WebView;->access$14600(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13569
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v5, v9, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    .line 13572
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmpRect:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 13573
    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-boolean v9, v9, Landroid/webkit/WebView$QuickSelectWV;->acrossFlag:Z

    if-nez v9, :cond_11

    const/4 v9, 0x1

    :goto_a
    iput-boolean v9, v10, Landroid/webkit/WebView$QuickSelectWV;->acrossFlag:Z

    .line 13575
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    .line 13576
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iput-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto/16 :goto_8

    .line 13573
    :cond_11
    const/4 v9, 0x0

    goto :goto_a

    .line 13619
    :cond_12
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v9, Landroid/webkit/WebView$QuickSelectWV;->magnifierAnchor:Landroid/graphics/Rect;

    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v9, :cond_13

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    :goto_b
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13620
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->magnifierAnchor:Landroid/graphics/Rect;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v12}, Landroid/webkit/WebView;->access$16700(Landroid/webkit/WebView;)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    const/4 v12, 0x0

    aget v12, v6, v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f00

    add-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v13, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_9

    .line 13619
    :cond_13
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    goto :goto_b

    .line 13631
    .end local v3           #isScrolling:Z
    .end local v5           #movingRect:Landroid/graphics/Rect;
    :pswitch_2
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v9}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    .line 13634
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/webkit/WebView$QuickSelectWV;->showMagnifier:Z

    .line 13635
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v9}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 13637
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/webkit/WebView$QuickSelectWV;->acrossFlag:Z

    .line 13638
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->invalidate()V

    .line 13641
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v9}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13642
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13644
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    iget v9, v9, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v9, :cond_17

    .line 13645
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v9, v10}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13650
    :cond_14
    :goto_c
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v9}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13651
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13653
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    iget v9, v9, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v9, :cond_18

    .line 13654
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v9, v10}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13659
    :cond_15
    :goto_d
    invoke-direct {p0}, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->doAutoExtend()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 13660
    const/4 v2, -0x1

    .line 13661
    .local v2, cur:I
    const/4 v8, -0x1

    .line 13663
    .local v8, target:I
    iget-boolean v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-nez v9, :cond_19

    .line 13664
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13666
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    iget v2, v9, Landroid/graphics/Rect;->right:I

    .line 13667
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v9, v9, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v8, v9, Landroid/graphics/Rect;->right:I

    .line 13675
    :goto_e
    if-eq v2, v8, :cond_16

    .line 13676
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    #getter for: Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;
    invoke-static {v9}, Landroid/webkit/WebView$QuickSelectWV;->access$16800(Landroid/webkit/WebView$QuickSelectWV;)Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-result-object v9

    const v10, 0x13e1da

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 13677
    .local v4, m:Landroid/os/Message;
    iput v2, v4, Landroid/os/Message;->arg1:I

    .line 13678
    iput v8, v4, Landroid/os/Message;->arg2:I

    .line 13679
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 13685
    .end local v2           #cur:I
    .end local v4           #m:Landroid/os/Message;
    .end local v8           #target:I
    :cond_16
    :goto_f
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto/16 :goto_2

    .line 13646
    :cond_17
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v9, v9, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v9, :cond_14

    .line 13647
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v9}, Landroid/webkit/SelectionUnitInfo;->trimToHead()V

    goto/16 :goto_c

    .line 13655
    :cond_18
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v9, v9, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v9, :cond_15

    .line 13656
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v9}, Landroid/webkit/SelectionUnitInfo;->trimToTail()V

    goto :goto_d

    .line 13669
    .restart local v2       #cur:I
    .restart local v8       #target:I
    :cond_19
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v12, v12, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13671
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    iget v2, v9, Landroid/graphics/Rect;->left:I

    .line 13672
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v9, v9, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v8, v9, Landroid/graphics/Rect;->left:I

    goto :goto_e

    .line 13682
    .end local v2           #cur:I
    .end local v8           #target:I
    :cond_1a
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    goto :goto_f

    .line 13473
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 13480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
