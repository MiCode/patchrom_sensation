.class public Lcom/htc/widget/PopupBubbleWindow;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;,
        Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I = null

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final ROTATE_180_LEVEL:I = 0x1388


# instance fields
.field private final animEndDuration:I

.field private final animStartDuration:I

.field private downEnabled:Z

.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAboveTriangle:Z

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mBubbleHerizontalOffset:I

.field private mBubbleImageOffset:I

.field private mBubbleShadowHeight:I

.field private mBubbleVerticalOffset:I

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mTriangle:Landroid/graphics/drawable/Drawable;

.field private mTriangleView:Landroid/view/View;

.field private mTriangledOffset:I

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private final minWindowHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcom/htc/widget/PopupBubbleWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 283
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 192
    const v0, 0x20100af

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    .line 96
    const/4 v8, 0x1

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    .line 97
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    .line 98
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 99
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    .line 100
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 103
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 117
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    .line 118
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    .line 119
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 130
    const/16 v8, 0x3e8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    .line 133
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 135
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 144
    new-instance v8, Lcom/htc/widget/PopupBubbleWindow$1;

    invoke-direct {v8, p0}, Lcom/htc/widget/PopupBubbleWindow$1;-><init>(Lcom/htc/widget/PopupBubbleWindow;)V

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 863
    const/16 v8, 0x64

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->minWindowHeight:I

    .line 939
    const/16 v8, 0xc8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->animEndDuration:I

    .line 940
    const/16 v8, 0x12c

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->animStartDuration:I

    .line 210
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 211
    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 213
    sget-object v8, Lcom/htc/R$styleable;->PopupBubbleWindow:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 217
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 218
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080af1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 220
    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050127

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    .line 222
    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 223
    .local v2, animStyle:I
    const v8, 0x203009f

    if-ne v2, v8, :cond_0

    const/4 v2, -0x1

    .end local v2           #animStyle:I
    :cond_0
    iput v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 228
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x2050128

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    .line 229
    const v8, 0x2050129

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    .line 230
    const v8, 0x205012a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    .line 231
    const v8, 0x205012b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleShadowHeight:I

    .line 233
    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    .line 234
    iget v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleImageOffset:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    .line 244
    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v8, v8, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v8, :cond_2

    .line 245
    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 248
    .local v3, background:Landroid/graphics/drawable/StateListDrawable;
    sget-object v8, Lcom/htc/widget/PopupBubbleWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 252
    .local v1, aboveAnchorStateIndex:I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 253
    .local v5, count:I
    const/4 v4, -0x1

    .line 254
    .local v4, belowAnchorStateIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 255
    if-eq v6, v1, :cond_3

    .line 256
    move v4, v6

    .line 263
    :cond_1
    const/4 v8, -0x1

    if-eq v1, v8, :cond_4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_4

    .line 264
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    .end local v1           #aboveAnchorStateIndex:I
    .end local v3           #background:Landroid/graphics/drawable/StateListDrawable;
    .end local v4           #belowAnchorStateIndex:I
    .end local v5           #count:I
    .end local v6           #i:I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    return-void

    .line 254
    .restart local v1       #aboveAnchorStateIndex:I
    .restart local v3       #background:Landroid/graphics/drawable/StateListDrawable;
    .restart local v4       #belowAnchorStateIndex:I
    .restart local v5       #count:I
    .restart local v6       #i:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 267
    :cond_4
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;IIZ)V

    .line 326
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    .line 96
    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    .line 97
    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    .line 98
    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 99
    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    .line 100
    iput v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 103
    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 117
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    .line 118
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 130
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    .line 133
    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 135
    iput v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 144
    new-instance v0, Lcom/htc/widget/PopupBubbleWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/PopupBubbleWindow$1;-><init>(Lcom/htc/widget/PopupBubbleWindow;)V

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 863
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->minWindowHeight:I

    .line 939
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->animEndDuration:I

    .line 940
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->animStartDuration:I

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 343
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 346
    invoke-virtual {p0, p2}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    .line 347
    invoke-virtual {p0, p3}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    .line 348
    invoke-virtual {p0, p4}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 349
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/PopupBubbleWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->endDismissAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/PopupBubbleWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/htc/widget/PopupBubbleWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/PopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/PopupBubbleWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/PopupBubbleWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/PopupBubbleWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveTriangle(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/PopupBubbleWindow;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->updateTriangle(IIZ)V

    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1222
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1223
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1224
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301e0

    .line 1230
    :goto_0
    return v0

    .line 1224
    :cond_0
    const v0, 0x10301df

    goto :goto_0

    .line 1228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1230
    :cond_2
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 1147
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1155
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1156
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1158
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mFocusable:Z

    if-nez v0, :cond_7

    .line 1159
    or-int/lit8 p1, p1, 0x8

    .line 1160
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1161
    or-int/2addr p1, v2

    .line 1166
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1167
    or-int/lit8 p1, p1, 0x10

    .line 1169
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1170
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 1172
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1173
    or-int/lit16 p1, p1, 0x200

    .line 1175
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1176
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1178
    :cond_5
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1179
    or-int/lit16 p1, p1, 0x100

    .line 1181
    :cond_6
    return p1

    .line 1163
    :cond_7
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1164
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private computeTriangleFlags(I)I
    .locals 2
    .parameter "curFlags"

    .prologue
    .line 1186
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1194
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1195
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1198
    :cond_0
    or-int/lit8 p1, p1, 0x8

    .line 1199
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1200
    const/high16 v0, 0x2

    or-int/2addr p1, v0

    .line 1204
    :cond_1
    or-int/lit8 p1, p1, 0x10

    .line 1209
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v0, :cond_2

    .line 1210
    or-int/lit16 p1, p1, 0x200

    .line 1212
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1213
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1215
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_4

    .line 1216
    or-int/lit16 p1, p1, 0x100

    .line 1218
    :cond_4
    return p1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 1099
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1104
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1105
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1106
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1107
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1112
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1113
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1114
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1115
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1118
    return-object v0

    .line 1110
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 1124
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1129
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1130
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1131
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1132
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1137
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->computeTriangleFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1138
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1139
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1140
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Triangle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1143
    return-object v0

    .line 1135
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private endDismissAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1532
    :try_start_0
    const-string v0, "PopupBubbleWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endDismissAnimation and mPopupView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1535
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveTriangle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1541
    :cond_0
    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1542
    iput-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 1544
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1545
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 1548
    :cond_1
    return-void

    .line 1538
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1539
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1541
    :cond_2
    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1542
    iput-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 1544
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1545
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 12
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1250
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1251
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v9, p3

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1252
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int v9, v9, p4

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1254
    const/4 v2, 0x0

    .line 1256
    .local v2, onTop:Z
    const/16 v9, 0x33

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1258
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1260
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1262
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 1263
    .local v6, root:Landroid/view/View;
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v9, v10

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v9, v10, :cond_0

    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    add-int/2addr v9, v10

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    if-lez v9, :cond_2

    .line 1267
    :cond_0
    iget-boolean v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v9, :cond_1

    .line 1268
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 1269
    .local v7, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 1270
    .local v8, scrollY:I
    new-instance v4, Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    add-int/2addr v9, v7

    add-int/2addr v9, p3

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v10, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    add-int v10, v10, p4

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1272
    .local v4, r:Landroid/graphics/Rect;
    const/4 v9, 0x1

    invoke-virtual {p1, v4, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1277
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_1
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1278
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v9, p3

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1279
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int v9, v9, p4

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1282
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1284
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v9, v9, p4

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int v10, v10, p4

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_6

    const/4 v2, 0x1

    .line 1286
    :goto_0
    if-eqz v2, :cond_7

    .line 1287
    const/16 v9, 0x53

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1288
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    add-int v9, v9, p4

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1294
    :cond_2
    :goto_1
    iget-boolean v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v9, :cond_5

    .line 1295
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v9, v10

    .line 1297
    .local v1, displayFrameWidth:I
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v5, v9, v10

    .line 1298
    .local v5, right:I
    iget v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int v9, v1, v9

    if-le v5, v9, :cond_3

    .line 1299
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v10, v5, v1

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1301
    :cond_3
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_4

    .line 1302
    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v9, v10

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1303
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1306
    :cond_4
    if-eqz v2, :cond_9

    .line 1307
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int v9, v9, p4

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    sub-int v3, v9, v10

    .line 1308
    .local v3, popupTop:I
    if-gez v3, :cond_8

    .line 1309
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v9, v3

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1319
    .end local v1           #displayFrameWidth:I
    .end local v3           #popupTop:I
    .end local v5           #right:I
    :cond_5
    :goto_2
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v10, 0x1000

    or-int/2addr v9, v10

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1321
    return v2

    .line 1284
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 1290
    :cond_7
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int v9, v9, p4

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1311
    .restart local v1       #displayFrameWidth:I
    .restart local v3       #popupTop:I
    .restart local v5       #right:I
    :cond_8
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleShadowHeight:I

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 1314
    .end local v3           #popupTop:I
    :cond_9
    iget v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v9, v10

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 13
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1328
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1329
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1330
    .local v5, rect:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1331
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1332
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1334
    const/4 v2, 0x0

    .line 1336
    .local v2, onTop:Z
    const/16 v10, 0x33

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1338
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1339
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1340
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1342
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 1343
    .local v7, root:Landroid/view/View;
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v11, :cond_0

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    add-int/2addr v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    if-lez v10, :cond_2

    .line 1347
    :cond_0
    iget-boolean v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v10, :cond_1

    .line 1348
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 1349
    .local v8, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 1350
    .local v9, scrollY:I
    new-instance v4, Landroid/graphics/Rect;

    iget v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    add-int/2addr v10, v8

    add-int v10, v10, p3

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v11, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int v11, v11, p4

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1352
    .local v4, r:Landroid/graphics/Rect;
    const/4 v10, 0x1

    invoke-virtual {p1, v4, v10}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1357
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v8           #scrollX:I
    .end local v9           #scrollY:I
    :cond_1
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1358
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1359
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1362
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1364
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int v10, v10, p4

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int v11, v11, p4

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_6

    const/4 v2, 0x1

    .line 1366
    :goto_0
    if-eqz v2, :cond_7

    .line 1367
    const/16 v10, 0x53

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1368
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1374
    :cond_2
    :goto_1
    iget-boolean v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v10, :cond_5

    .line 1375
    iget v10, v0, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v10, v11

    .line 1377
    .local v1, displayFrameWidth:I
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v6, v10, v11

    .line 1378
    .local v6, right:I
    if-le v6, v1, :cond_3

    .line 1379
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v11, v6, v1

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1381
    :cond_3
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-ge v10, v11, :cond_4

    .line 1382
    iget v10, v0, Landroid/graphics/Rect;->left:I

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1383
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1386
    :cond_4
    if-eqz v2, :cond_9

    .line 1387
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mScreenLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    sub-int v3, v10, v11

    .line 1388
    .local v3, popupTop:I
    if-gez v3, :cond_8

    .line 1389
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v10, v3

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1398
    .end local v1           #displayFrameWidth:I
    .end local v3           #popupTop:I
    .end local v6           #right:I
    :cond_5
    :goto_2
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v11, 0x1000

    or-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1400
    return v2

    .line 1364
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 1370
    :cond_7
    iget-object v10, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    add-int v10, v10, p4

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1391
    .restart local v1       #displayFrameWidth:I
    .restart local v3       #popupTop:I
    .restart local v6       #right:I
    :cond_8
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v12, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleShadowHeight:I

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 1394
    .end local v3           #popupTop:I
    :cond_9
    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v11, p0, Lcom/htc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1079
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    const-string v0, "PopupBubbleWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add view to Window Manager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return-void
.end method

.method private invokeTriangle(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1086
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 7
    .parameter "p"

    .prologue
    .line 1028
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 1029
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1033
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1034
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1035
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1036
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1038
    const/4 v0, -0x2

    .line 1043
    :cond_2
    new-instance v3, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;-><init>(Lcom/htc/widget/PopupBubbleWindow;Landroid/content/Context;)V

    .line 1044
    .local v3, popupViewContainer:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1047
    .local v2, listParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1048
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1051
    const-string v4, "PopupBubbleWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preparePopup and background is not null. mPopupView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #popupViewContainer:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    .line 1059
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    .line 1060
    return-void

    .line 1054
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1055
    const-string v4, "PopupBubbleWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preparePopup and background is null. mPopupView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareTriangle(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1063
    new-instance v0, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;-><init>(Lcom/htc/widget/PopupBubbleWindow;Landroid/content/Context;)V

    .line 1064
    .local v0, triangleViewContainer:Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1065
    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    .line 1067
    return-void
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1856
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 1858
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1859
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1860
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1861
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1864
    :cond_0
    iput p2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    .line 1865
    iput p3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    .line 1866
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1843
    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1844
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1845
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1846
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1848
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1849
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1850
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1852
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1853
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 14
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1782
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1830
    :cond_0
    :goto_0
    return-void

    .line 1786
    :cond_1
    iget-object v9, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1787
    .local v9, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_8

    iget v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v2, v0, :cond_2

    iget v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v2, v0, :cond_8

    :cond_2
    const/4 v8, 0x1

    .line 1788
    .local v8, needsUpdate:Z
    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    if-eqz v8, :cond_9

    iget-boolean v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    if-nez v2, :cond_9

    .line 1789
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1796
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    .line 1798
    .local v10, p:Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1799
    const/4 v2, -0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_a

    .line 1800
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1804
    :goto_3
    const/4 v2, -0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_b

    .line 1805
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1809
    :goto_4
    move/from16 v0, p6

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1812
    :cond_5
    iget v12, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1813
    .local v12, x:I
    iget v13, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1815
    .local v13, y:I
    if-eqz p2, :cond_c

    .line 1816
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p1, v10, v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveAnchor(Z)V

    .line 1821
    :goto_5
    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v12, v2, :cond_6

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v13, v2, :cond_d

    :cond_6
    const/4 v7, 0x1

    :goto_6
    move-object v2, p0

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v2 .. v7}, Lcom/htc/widget/PopupBubbleWindow;->update(IIIIZ)V

    .line 1823
    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 1825
    .local v11, p2:Landroid/view/WindowManager$LayoutParams;
    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1826
    iget v13, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1827
    iget v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v11, v2, v3}, Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveTriangle(Z)V

    .line 1828
    iget v3, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v12, v2, :cond_7

    iget v2, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v13, v2, :cond_e

    :cond_7
    const/4 v2, 0x1

    :goto_7
    invoke-direct {p0, v3, v4, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateTriangle(IIZ)V

    goto/16 :goto_0

    .line 1787
    .end local v8           #needsUpdate:Z
    .end local v10           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v11           #p2:Landroid/view/WindowManager$LayoutParams;
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1790
    .restart local v8       #needsUpdate:Z
    :cond_9
    if-eqz v8, :cond_4

    .line 1792
    move/from16 v0, p3

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    .line 1793
    move/from16 v0, p4

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    goto :goto_2

    .line 1802
    .restart local v10       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move/from16 v0, p6

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupWidth:I

    goto :goto_3

    .line 1807
    :cond_b
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupHeight:I

    goto :goto_4

    .line 1818
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_c
    iget v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I

    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v10, v2, v3}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1821
    :cond_d
    const/4 v7, 0x0

    goto :goto_6

    .line 1828
    .restart local v11       #p2:Landroid/view/WindowManager$LayoutParams;
    :cond_e
    const/4 v2, 0x0

    goto :goto_7
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .parameter "aboveAnchor"

    .prologue
    .line 964
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->downEnabled:Z

    .line 966
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 967
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    .line 969
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 975
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method

.method private updateAboveTriangle(Z)V
    .locals 2
    .parameter "aboveTriangler"

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveTriangle:Z

    if-eq p1, v0, :cond_0

    .line 991
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveTriangle:Z

    .line 993
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 995
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveTriangle:Z

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTriangle(IIZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "force"

    .prologue
    .line 1712
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1718
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    move v3, p3

    .line 1720
    .local v3, update:Z
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v4, p1, :cond_2

    .line 1721
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1722
    const/4 v3, 0x1

    .line 1725
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v4, p2, :cond_3

    .line 1726
    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1727
    const/4 v3, 0x1

    .line 1730
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v0

    .line 1731
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_4

    .line 1732
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1733
    const/4 v3, 0x1

    .line 1736
    :cond_4
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/htc/widget/PopupBubbleWindow;->computeTriangleFlags(I)I

    move-result v1

    .line 1737
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_5

    .line 1738
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1739
    const/4 v3, 0x1

    .line 1742
    :cond_5
    if-eqz v3, :cond_0

    .line 1743
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1483
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1484
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 1486
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->downEnabled:Z

    if-nez v3, :cond_1

    const/high16 v8, -0x4080

    :goto_0
    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1492
    .local v0, translate:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1493
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1494
    new-instance v1, Lcom/htc/widget/PopupBubbleWindow$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/PopupBubbleWindow$2;-><init>(Lcom/htc/widget/PopupBubbleWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1511
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1512
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1514
    .end local v0           #translate:Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void

    .line 1486
    :cond_1
    const/high16 v8, 0x3f80

    goto :goto_0
.end method

.method public dismissWithoutAnimation()V
    .locals 1

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1525
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->endDismissAnimation()V

    .line 1527
    :cond_0
    return-void
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .parameter "anchor"

    .prologue
    .line 1414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .parameter "anchor"
    .parameter "yOffset"

    .prologue
    .line 1429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"

    .prologue
    const/4 v9, 0x1

    .line 1450
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1451
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1453
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    .line 1454
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1456
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1457
    .local v1, bottomEdge:I
    if-eqz p3, :cond_0

    .line 1458
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1459
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    const v8, 0x2050124

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v7, v8

    .line 1462
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1463
    .local v3, distanceToBottom:I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1466
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1467
    .local v6, returnedHeight:I
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 1468
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1469
    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1472
    :cond_1
    return v6
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 788
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected invokeStartAnimation(I)V
    .locals 9
    .parameter "startRelative"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 949
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, p1

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 955
    .local v0, translateAnim:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 956
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 958
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 960
    :cond_0
    return-void
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 649
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 650
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "animationStyle"

    .prologue
    .line 409
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 410
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 368
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 638
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mClipToScreen:Z

    .line 639
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->setClippingEnabled(Z)V

    .line 640
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    .line 629
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    .line 441
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 486
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mFocusable:Z

    .line 487
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 777
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeight:I

    .line 778
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 392
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 512
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mInputMethodMode:I

    .line 513
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 705
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    .line 706
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOnDismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 1558
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 600
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 526
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mSoftInputMode:I

    .line 527
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 682
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 683
    return-void

    .line 682
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 456
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 566
    iput-boolean p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mTouchable:Z

    .line 567
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 803
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidth:I

    .line 804
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 750
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    .line 751
    iput p2, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    .line 752
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 716
    iput p1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    .line 717
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 877
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 878
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 6
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x1

    .line 895
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 901
    iput-boolean v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 902
    iput-boolean v2, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    .line 904
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/widget/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 905
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 907
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveAnchor(Z)V

    .line 909
    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-gez v3, :cond_2

    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 910
    :cond_2
    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-gez v3, :cond_3

    iget v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    iput v3, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 912
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/PopupBubbleWindow;->setAnimationStyle(I)V

    .line 913
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 915
    if-eqz v0, :cond_4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v3, :cond_4

    .line 917
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 918
    const-string v3, "PopupBubbleWindow"

    const-string v4, "showAsDropDown: window height refine"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 922
    iget-boolean v3, p0, Lcom/htc/widget/PopupBubbleWindow;->downEnabled:Z

    if-nez v3, :cond_5

    const/4 v2, -0x1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->invokeStartAnimation(I)V

    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 925
    .local v1, p2:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->prepareTriangle(Landroid/view/WindowManager$LayoutParams;)V

    .line 926
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/PopupBubbleWindow;->updateAboveTriangle(Z)V

    .line 928
    if-eqz v1, :cond_6

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v2, :cond_6

    .line 930
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 931
    const-string v2, "PopupBubbleWindow"

    const-string v3, "showAsDropDown: triangle window height refine"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz v2, :cond_0

    .line 935
    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->invokeTriangle(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 3
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 836
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 837
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mIsDropdown:Z

    .line 839
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/widget/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 840
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 842
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 843
    if-nez p2, :cond_2

    .line 844
    const/16 p2, 0x33

    .line 846
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 847
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 848
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 849
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 850
    :cond_3
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 852
    :cond_4
    if-eqz v0, :cond_5

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v1, :cond_5

    .line 854
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 855
    const-string v1, "PopupBubbleWindow"

    const-string v2, "showAtLocation: window height refine"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_5
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 859
    invoke-direct {p0, v0}, Lcom/htc/widget/PopupBubbleWindow;->invokeTriangle(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public update()V
    .locals 7

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1575
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1577
    .local v3, update:Z
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v0

    .line 1578
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1579
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1580
    const/4 v3, 0x1

    .line 1583
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    .line 1584
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1585
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1586
    const/4 v3, 0x1

    .line 1589
    :cond_3
    if-eqz v3, :cond_0

    .line 1591
    if-eqz v2, :cond_4

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v4, :cond_4

    .line 1593
    const/16 v4, 0x64

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1594
    const-string v4, "PopupBubbleWindow"

    const-string v5, "update(): window height refine"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_4
    const-string v4, "PopupBubbleWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPopupView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1613
    .local v6, p:Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(IIIIZ)V

    .line 1614
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1629
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(IIIIZ)V

    .line 1630
    return-void
.end method

.method public update(IIIIZ)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v7, -0x1

    .line 1646
    if-eq p3, v7, :cond_0

    .line 1647
    iput p3, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    .line 1648
    invoke-virtual {p0, p3}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    .line 1651
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1652
    iput p4, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    .line 1653
    invoke-virtual {p0, p4}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    .line 1656
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1709
    :cond_2
    :goto_0
    return-void

    .line 1660
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1662
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1664
    .local v5, update:Z
    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    if-gez v6, :cond_b

    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mWidthMode:I

    .line 1665
    .local v1, finalWidth:I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1666
    iput v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1667
    const/4 v5, 0x1

    .line 1670
    :cond_4
    iget v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    if-gez v6, :cond_c

    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mHeightMode:I

    .line 1671
    .local v0, finalHeight:I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1672
    iput v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1673
    const/4 v5, 0x1

    .line 1676
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1677
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1678
    const/4 v5, 0x1

    .line 1681
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1682
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1683
    const/4 v5, 0x1

    .line 1686
    :cond_7
    invoke-direct {p0}, Lcom/htc/widget/PopupBubbleWindow;->computeAnimationResource()I

    move-result v2

    .line 1687
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1688
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1689
    const/4 v5, 0x1

    .line 1692
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lcom/htc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v3

    .line 1693
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1694
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1695
    const/4 v5, 0x1

    .line 1698
    :cond_9
    if-eqz v5, :cond_2

    .line 1700
    if-eqz v4, :cond_a

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v6, :cond_a

    .line 1702
    const/16 v6, 0x64

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1703
    const-string v6, "PopupBubbleWindow"

    const-string v7, "update(): window height refine"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_a
    const-string v6, "PopupBubbleWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPopupView = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object v6, p0, Lcom/htc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1664
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_b
    iget v1, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastWidth:I

    goto/16 :goto_1

    .line 1670
    .restart local v1       #finalWidth:I
    :cond_c
    iget v0, p0, Lcom/htc/widget/PopupBubbleWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 1757
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1758
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1776
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1777
    return-void
.end method
