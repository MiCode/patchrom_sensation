.class public Lcom/android/camera/widget/CameraFocusWidget;
.super Landroid/widget/ImageView;
.source "CameraFocusWidget.java"


# static fields
.field public static final CAMERA_FOCUS_CANCEL:I = 0x3

.field public static final CAMERA_FOCUS_OK:I = 0x2

.field public static final CAMERA_FOCUS_PREPARE:I

.field public static DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final CAMERA_FOCUS_CHECKING:I

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCheckAnimationSet:Landroid/view/animation/AnimationSet;

.field private mCheckDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

.field private mFirstDrop:Z

.field private mIconRidousHeight:F

.field private mIconRidousWidth:F

.field private mNextFocusStatus:I

.field private mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mPos_X:F

.field private mPos_Y:F

.field private mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPrepareDrawable:Landroid/graphics/drawable/Drawable;

.field private mResetAnimation:Z

.field private mUpdateLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/camera/widget/CameraFocusWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    iput v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->CAMERA_FOCUS_CHECKING:I

    .line 30
    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousHeight:F

    .line 31
    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousWidth:F

    .line 33
    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_X:F

    .line 34
    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_Y:F

    .line 36
    iput v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    .line 38
    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    .line 39
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    .line 40
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckAnimationSet:Landroid/view/animation/AnimationSet;

    .line 42
    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 43
    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 45
    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-boolean v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mFirstDrop:Z

    .line 49
    iput-boolean v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mUpdateLayout:Z

    .line 50
    iput-boolean v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z

    .line 288
    new-instance v0, Lcom/android/camera/widget/CameraFocusWidget$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/CameraFocusWidget$2;-><init>(Lcom/android/camera/widget/CameraFocusWidget;)V

    iput-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 55
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->initialAnimationFrame()V

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/widget/CameraFocusWidget$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/CameraFocusWidget$1;-><init>(Lcom/android/camera/widget/CameraFocusWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/CameraFocusWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mFirstDrop:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/widget/CameraFocusWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mFirstDrop:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/CameraFocusWidget;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/CameraFocusWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->cancel()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/CameraFocusWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/widget/CameraFocusWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/widget/CameraFocusWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/widget/CameraFocusWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/widget/CameraFocusWidget;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/widget/CameraFocusWidget;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/widget/CameraFocusWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->showFocus()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CameraFocusWidget][cancel] + "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraFocusWidget;->setVisibility(I)V

    .line 134
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->resetAnimationSet()V

    .line 135
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->resetAnimation()V

    .line 137
    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CameraFocusWidget][cancel] - "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private getNextAnimationSet(FF)Landroid/view/animation/AnimationSet;
    .locals 12
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    const/high16 v1, 0x3fc0

    const/high16 v11, 0x3f80

    const/high16 v2, 0x3f00

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 170
    sget-boolean v3, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CameraFocusWidget][getNextAnimationSet]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    packed-switch v3, :pswitch_data_0

    .line 209
    sget-object v1, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[CameraFocusWidget][getNextAnimationSet] Status error!!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v9, 0x0

    .line 211
    :goto_0
    return-object v9

    .line 176
    :pswitch_0
    const/4 v0, 0x0

    .line 178
    .local v0, scaleAnimation:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #scaleAnimation:Landroid/view/animation/Animation;
    move v3, v1

    move v4, v2

    move v6, p1

    move v7, v5

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 179
    .restart local v0       #scaleAnimation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 180
    invoke-virtual {v0, v10}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 181
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 182
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 184
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0           #scaleAnimation:Landroid/view/animation/Animation;
    const/high16 v2, 0x4000

    const/high16 v4, 0x4000

    move v1, v11

    move v3, v11

    move v6, p1

    move v7, v5

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 185
    .restart local v0       #scaleAnimation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 186
    invoke-virtual {v0, v10}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 187
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 188
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 190
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/CameraFocusWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v9, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;

    goto :goto_0

    .line 196
    .end local v0           #scaleAnimation:Landroid/view/animation/Animation;
    :pswitch_1
    const/4 v2, 0x0

    .line 198
    .local v2, rotateAnimation:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/RotateAnimation;

    .end local v2           #rotateAnimation:Landroid/view/animation/Animation;
    const/4 v3, 0x0

    const/high16 v4, 0x4234

    move v6, p1

    move v7, v5

    move v8, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 199
    .restart local v2       #rotateAnimation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 200
    invoke-virtual {v2, v10}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 201
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 202
    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    .line 204
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/CameraFocusWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v9, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckAnimationSet:Landroid/view/animation/AnimationSet;

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initialAnimationFrame()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xfa

    const/16 v3, 0x64

    .line 73
    sget-object v1, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[CameraFocusWidget][initialAnimationFrame] +"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    .local v0, frameFocusDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 80
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 82
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 83
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 84
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 85
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 86
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 87
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousWidth:F

    .line 90
    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPrepareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousHeight:F

    .line 92
    sget-object v1, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[CameraFocusWidget][initialAnimationFrame] -"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method private resetAnimation()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 166
    return-void
.end method

.method private resetAnimationSet()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 144
    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private showFocus()V
    .locals 6

    .prologue
    .line 217
    sget-boolean v3, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CameraFocusWidget][showFocus]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 220
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 221
    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_X:F

    iget v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_Y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 223
    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 225
    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_X:F

    iget v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousWidth:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 226
    .local v1, pivotX:F
    iget v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_Y:F

    iget v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousHeight:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 228
    .local v2, pivotY:F
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->resetAnimationSet()V

    .line 230
    invoke-direct {p0, v1, v2}, Lcom/android/camera/widget/CameraFocusWidget;->getNextAnimationSet(FF)Landroid/view/animation/AnimationSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    .line 231
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 233
    :cond_1
    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CameraFocusWidget][showFocus] Animation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is null or add fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v1           #pivotX:F
    .end local v2           #pivotY:F
    :cond_2
    :goto_0
    return-void

    .line 236
    .restart local v1       #pivotX:F
    .restart local v2       #pivotY:F
    :cond_3
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 238
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraFocusWidget;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 240
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->startNow()V

    .line 260
    .end local v1           #pivotX:F
    .end local v2           #pivotY:F
    :goto_1
    sget-boolean v3, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CameraFocusWidget][showFocus] Start animation, status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->resetAnimation()V

    .line 247
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mOkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 249
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v3, :cond_5

    .line 251
    sget-object v3, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CameraFocusWidget][showFocus] Animation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_5
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/CameraFocusWidget;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 258
    iget-object v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    .line 285
    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CameraFocusWidget][onConfigurationChanged]: Cancel focus!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mUpdateLayout:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->showFocus()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mUpdateLayout:Z

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 274
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->cancel()V

    goto :goto_0

    .line 278
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setStatus(IFF)V
    .locals 5
    .parameter "status"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraFocusWidget][setStatus]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 123
    :pswitch_0
    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CameraFocusWidget][setStatus] Status value error!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 101
    :pswitch_1
    sget-object v0, Lcom/android/camera/widget/CameraFocusWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraFocusWidget][setStatus] Position X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Position Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput v3, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    .line 103
    invoke-virtual {p0, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setVisibility(I)V

    .line 104
    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousWidth:F

    sub-float v0, p2, v0

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_X:F

    .line 105
    iget v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mIconRidousHeight:F

    sub-float v0, p3, v0

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mPos_Y:F

    .line 107
    iput-boolean v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z

    .line 108
    iput-boolean v4, p0, Lcom/android/camera/widget/CameraFocusWidget;->mUpdateLayout:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/widget/CameraFocusWidget;->invalidate()V

    goto :goto_0

    .line 114
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    goto :goto_0

    .line 118
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I

    .line 119
    invoke-direct {p0}, Lcom/android/camera/widget/CameraFocusWidget;->cancel()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
