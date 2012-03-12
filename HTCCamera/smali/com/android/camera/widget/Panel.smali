.class public Lcom/android/camera/widget/Panel;
.super Landroid/widget/LinearLayout;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/Panel$PanelOnGestureListener;,
        Lcom/android/camera/widget/Panel$State;,
        Lcom/android/camera/widget/Panel$OnPanelListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x1

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Panel"

.field public static final TOP:I


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field clickListener:Landroid/view/View$OnClickListener;

.field private close_duration:I

.field private mBringToFront:Z

.field private mClosedHandle:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field private mContentHeight:I

.field private mContentId:I

.field private mContentWidth:I

.field private mDuration:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/android/camera/widget/Panel$PanelOnGestureListener;

.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsShrinking:Z

.field private mLinearFlying:Z

.field private mOpenedHandle:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPosition:I

.field private mState:Lcom/android/camera/widget/Panel$State;

.field private mTrackX:F

.field private mTrackY:F

.field private mVelocity:F

.field private mWeight:F

.field private open_duration:I

.field private panelListener:Lcom/android/camera/widget/Panel$OnPanelListener;

.field private setting_bar:Landroid/widget/ImageView;

.field private setting_bar_is_right:Z

.field startAnimation:Ljava/lang/Runnable;

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-boolean v3, p0, Lcom/android/camera/widget/Panel;->setting_bar_is_right:Z

    .line 92
    iput v3, p0, Lcom/android/camera/widget/Panel;->open_duration:I

    .line 93
    iput v3, p0, Lcom/android/camera/widget/Panel;->close_duration:I

    .line 327
    new-instance v4, Lcom/android/camera/widget/Panel$1;

    invoke-direct {v4, p0}, Lcom/android/camera/widget/Panel$1;-><init>(Lcom/android/camera/widget/Panel;)V

    iput-object v4, p0, Lcom/android/camera/widget/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    .line 378
    new-instance v4, Lcom/android/camera/widget/Panel$2;

    invoke-direct {v4, p0}, Lcom/android/camera/widget/Panel$2;-><init>(Lcom/android/camera/widget/Panel;)V

    iput-object v4, p0, Lcom/android/camera/widget/Panel;->clickListener:Landroid/view/View$OnClickListener;

    .line 405
    new-instance v4, Lcom/android/camera/widget/Panel$3;

    invoke-direct {v4, p0}, Lcom/android/camera/widget/Panel$3;-><init>(Lcom/android/camera/widget/Panel;)V

    iput-object v4, p0, Lcom/android/camera/widget/Panel;->startAnimation:Ljava/lang/Runnable;

    .line 490
    new-instance v4, Lcom/android/camera/widget/Panel$4;

    invoke-direct {v4, p0}, Lcom/android/camera/widget/Panel$4;-><init>(Lcom/android/camera/widget/Panel;)V

    iput-object v4, p0, Lcom/android/camera/widget/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 98
    sget-object v4, Lcom/android/camera/R$styleable;->Panel:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v4, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/widget/Panel;->mDuration:I

    .line 100
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/widget/Panel;->mPosition:I

    .line 101
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/widget/Panel;->mLinearFlying:Z

    .line 102
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3, v2, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    iput v4, p0, Lcom/android/camera/widget/Panel;->mWeight:F

    .line 103
    iget v4, p0, Lcom/android/camera/widget/Panel;->mWeight:F

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/camera/widget/Panel;->mWeight:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 104
    :cond_0
    iput v6, p0, Lcom/android/camera/widget/Panel;->mWeight:F

    .line 105
    const-string v4, "Panel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": weight must be > 0 and <= 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    const/4 v1, 0x0

    .line 114
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/widget/Panel;->mHandleId:I

    .line 115
    iget v4, p0, Lcom/android/camera/widget/Panel;->mHandleId:I

    if-nez v4, :cond_2

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": The handle attribute is required and must refer to a valid child."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v1       #e:Ljava/lang/RuntimeException;
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/widget/Panel;->mContentId:I

    .line 120
    iget v4, p0, Lcom/android/camera/widget/Panel;->mContentId:I

    if-nez v4, :cond_3

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1           #e:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": The content attribute is required and must refer to a valid child."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .restart local v1       #e:Ljava/lang/RuntimeException;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    if-eqz v1, :cond_4

    .line 127
    throw v1

    .line 129
    :cond_4
    iget v4, p0, Lcom/android/camera/widget/Panel;->mPosition:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/camera/widget/Panel;->mPosition:I

    if-ne v4, v2, :cond_6

    :cond_5
    :goto_0
    iput v2, p0, Lcom/android/camera/widget/Panel;->mOrientation:I

    .line 130
    iget v2, p0, Lcom/android/camera/widget/Panel;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Panel;->setOrientation(I)V

    .line 131
    sget-object v2, Lcom/android/camera/widget/Panel$State;->READY:Lcom/android/camera/widget/Panel$State;

    iput-object v2, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    .line 132
    new-instance v2, Lcom/android/camera/widget/Panel$PanelOnGestureListener;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/Panel$PanelOnGestureListener;-><init>(Lcom/android/camera/widget/Panel;)V

    iput-object v2, p0, Lcom/android/camera/widget/Panel;->mGestureListener:Lcom/android/camera/widget/Panel$PanelOnGestureListener;

    .line 133
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/android/camera/widget/Panel;->mGestureListener:Lcom/android/camera/widget/Panel$PanelOnGestureListener;

    invoke-direct {v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/widget/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 134
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 137
    invoke-virtual {p0, v3}, Lcom/android/camera/widget/Panel;->setBaselineAligned(Z)V

    .line 139
    return-void

    :cond_6
    move v2, v3

    .line 129
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/widget/Panel;Lcom/android/camera/widget/Panel$State;)Lcom/android/camera/widget/Panel$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/Panel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/camera/widget/Panel;->mBringToFront:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/widget/Panel;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->mVelocity:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/widget/Panel;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/camera/widget/Panel;->mVelocity:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/widget/Panel;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->mTrackY:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/widget/Panel;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/camera/widget/Panel;->mTrackY:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/widget/Panel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/camera/widget/Panel;->mLinearFlying:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/widget/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->mDuration:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/widget/Panel;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->mTrackX:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/widget/Panel;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/camera/widget/Panel;->mTrackX:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/widget/Panel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/widget/Panel;->postProcess()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/widget/Panel;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/widget/Panel;)Landroid/view/animation/Interpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/widget/Panel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/camera/widget/Panel;->setting_bar_is_right:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/widget/Panel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/widget/Panel;->setting_bar_is_right:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$OnPanelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->panelListener:Lcom/android/camera/widget/Panel$OnPanelListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/Panel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/widget/Panel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->setting_bar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/widget/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->open_duration:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/widget/Panel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/camera/widget/Panel;->open_duration:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/widget/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->close_duration:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/widget/Panel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/camera/widget/Panel;->close_duration:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/widget/Panel;FII)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/widget/Panel;->ensureRange(FII)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->mOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->mPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->mContentWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/widget/Panel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/widget/Panel;->mContentHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$PanelOnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mGestureListener:Lcom/android/camera/widget/Panel$PanelOnGestureListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/widget/Panel;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/widget/Panel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/camera/widget/Panel;->mIsShrinking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/widget/Panel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/widget/Panel;->mIsShrinking:Z

    return p1
.end method

.method private ensureRange(FII)F
    .locals 1
    .parameter "v"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 322
    int-to-float v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 323
    int-to-float v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 324
    return p1
.end method

.method private postProcess()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->panelListener:Lcom/android/camera/widget/Panel$OnPanelListener;

    if-eqz v0, :cond_0

    .line 517
    iget-boolean v0, p0, Lcom/android/camera/widget/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_1

    .line 520
    new-instance v0, Lcom/android/camera/widget/Panel$5;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/Panel$5;-><init>(Lcom/android/camera/widget/Panel;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/widget/Panel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    new-instance v0, Lcom/android/camera/widget/Panel$6;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/Panel$6;-><init>(Lcom/android/camera/widget/Panel;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/widget/Panel;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    iget-object v1, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    sget-object v2, Lcom/android/camera/widget/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/camera/widget/Panel$State;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/widget/Panel;->mIsShrinking:Z

    if-nez v1, :cond_2

    .line 305
    iget v1, p0, Lcom/android/camera/widget/Panel;->mOrientation:I

    if-ne v1, v4, :cond_5

    iget v0, p0, Lcom/android/camera/widget/Panel;->mContentHeight:I

    .line 306
    .local v0, delta:I
    :goto_0
    iget v1, p0, Lcom/android/camera/widget/Panel;->mPosition:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/widget/Panel;->mPosition:I

    if-nez v1, :cond_1

    .line 307
    :cond_0
    neg-int v0, v0

    .line 309
    :cond_1
    iget v1, p0, Lcom/android/camera/widget/Panel;->mOrientation:I

    if-ne v1, v4, :cond_6

    .line 310
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 315
    .end local v0           #delta:I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    sget-object v2, Lcom/android/camera/widget/Panel$State;->TRACKING:Lcom/android/camera/widget/Panel$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    sget-object v2, Lcom/android/camera/widget/Panel$State;->FLYING:Lcom/android/camera/widget/Panel$State;

    if-ne v1, v2, :cond_4

    .line 316
    :cond_3
    iget v1, p0, Lcom/android/camera/widget/Panel;->mTrackX:F

    iget v2, p0, Lcom/android/camera/widget/Panel;->mTrackY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 319
    return-void

    .line 305
    :cond_5
    iget v0, p0, Lcom/android/camera/widget/Panel;->mContentWidth:I

    goto :goto_0

    .line 312
    .restart local v0       #delta:I
    :cond_6
    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public initChange()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    sget-object v3, Lcom/android/camera/widget/Panel$State;->READY:Lcom/android/camera/widget/Panel$State;

    if-eq v0, v3, :cond_0

    .line 402
    :goto_0
    return v2

    .line 394
    :cond_0
    sget-object v0, Lcom/android/camera/widget/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/camera/widget/Panel$State;

    iput-object v0, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    .line 395
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->panelListener:Lcom/android/camera/widget/Panel$OnPanelListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/Panel;->panelListener:Lcom/android/camera/widget/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/Panel$OnPanelListener;->onPanelMove(Lcom/android/camera/widget/Panel;)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/widget/Panel;->mIsShrinking:Z

    .line 397
    iget-boolean v0, p0, Lcom/android/camera/widget/Panel;->mIsShrinking:Z

    if-nez v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    move v2, v1

    .line 402
    goto :goto_0

    :cond_3
    move v0, v2

    .line 396
    goto :goto_1
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    sget-object v1, Lcom/android/camera/widget/Panel$State;->READY:Lcom/android/camera/widget/Panel$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 270
    invoke-virtual {p0}, Lcom/android/camera/widget/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 271
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/widget/Panel;->mBringToFront:Z

    .line 274
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 225
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 226
    iget v2, p0, Lcom/android/camera/widget/Panel;->mHandleId:I

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/Panel;->mHandle:Landroid/view/View;

    .line 227
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mHandle:Landroid/view/View;

    if-nez v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/widget/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/widget/Panel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/widget/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/widget/Panel;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget v2, p0, Lcom/android/camera/widget/Panel;->mContentId:I

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    .line 235
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    if-nez v2, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/widget/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/widget/Panel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0       #name:Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Panel;->removeView(Landroid/view/View;)V

    .line 242
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Panel;->removeView(Landroid/view/View;)V

    .line 243
    iget v2, p0, Lcom/android/camera/widget/Panel;->mPosition:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/widget/Panel;->mPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Panel;->addView(Landroid/view/View;)V

    .line 245
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Panel;->addView(Landroid/view/View;)V

    .line 251
    :goto_0
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/widget/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :cond_3
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 255
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget v2, p0, Lcom/android/camera/widget/Panel;->mWeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 257
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 258
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/camera/widget/Panel;->mOrientation:I

    if-ne v2, v5, :cond_6

    .line 259
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 263
    :goto_1
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void

    .line 247
    :cond_5
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Panel;->addView(Landroid/view/View;)V

    .line 248
    iget-object v2, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/Panel;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 261
    .restart local v1       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 293
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 294
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/Panel;->mContentWidth:I

    .line 295
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/Panel;->mContentHeight:I

    .line 296
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 278
    iget v1, p0, Lcom/android/camera/widget/Panel;->mWeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/camera/widget/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 280
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 281
    iget v1, p0, Lcom/android/camera/widget/Panel;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/widget/Panel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 288
    .end local v0           #parent:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 289
    return-void

    .line 284
    .restart local v0       #parent:Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/widget/Panel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/camera/widget/Panel;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 176
    return-void
.end method

.method public setOnPanelListener(Lcom/android/camera/widget/Panel$OnPanelListener;)V
    .locals 0
    .parameter "onPanelListener"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/widget/Panel;->panelListener:Lcom/android/camera/widget/Panel$OnPanelListener;

    .line 148
    return-void
.end method

.method public setOpen(ZZ)Z
    .locals 3
    .parameter "open"
    .parameter "animate"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/widget/Panel;->mIsShrinking:Z

    .line 191
    if-eqz p2, :cond_3

    .line 192
    sget-object v0, Lcom/android/camera/widget/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/camera/widget/Panel$State;

    iput-object v0, p0, Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;

    .line 193
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->panelListener:Lcom/android/camera/widget/Panel$OnPanelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/Panel;->panelListener:Lcom/android/camera/widget/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/Panel$OnPanelListener;->onPanelMove(Lcom/android/camera/widget/Panel;)V

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/widget/Panel;->mIsShrinking:Z

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/Panel;->post(Ljava/lang/Runnable;)Z

    .line 204
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 190
    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-direct {p0}, Lcom/android/camera/widget/Panel;->postProcess()V

    goto :goto_1

    .line 201
    :cond_4
    const/4 v2, 0x4

    goto :goto_2
.end method
