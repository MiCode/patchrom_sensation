.class public abstract Lcom/htc/widget/HtcAbsListView2;
.super Lcom/htc/widget/HtcAdapterView;
.source "HtcAbsListView2.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsListView2$RecycleBin;,
        Lcom/htc/widget/HtcAbsListView2$RecyclerListener;,
        Lcom/htc/widget/HtcAbsListView2$LayoutParams;,
        Lcom/htc/widget/HtcAbsListView2$FlingRunnable;,
        Lcom/htc/widget/HtcAbsListView2$CheckForTap;,
        Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;,
        Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;,
        Lcom/htc/widget/HtcAbsListView2$PerformClick;,
        Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;,
        Lcom/htc/widget/HtcAbsListView2$SavedState;,
        Lcom/htc/widget/HtcAbsListView2$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/HtcAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_LEFT:I = 0x7

.field static final LAYOUT_FORCE_RIGHT:I = 0x8

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field protected static final PROFILE_FLINGING:Z = false

.field protected static final PROFILE_SCROLLING:Z = false

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FAST_SCROLL:I = 0x5

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private delayActionUpTime:Z

.field private delayIncludeDoneWaiting:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/widget/HtcAdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Lcom/htc/widget/HtcFastScroller3;

.field private mFiltered:Z

.field protected mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

.field mHeightMeasureSpec:I

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewLeft:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalLeft:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field public mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

.field protected mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field protected mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field final mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedLeft:I

.field mSelectedTop:I

.field private mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 549
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    .line 191
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 206
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 216
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 222
    new-instance v1, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 227
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 232
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 237
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 242
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 247
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 252
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    .line 258
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    .line 330
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 363
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 370
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 409
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 429
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 431
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 440
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 443
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    .line 446
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    .line 488
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2170
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2175
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2180
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 550
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    .line 552
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setVerticalScrollBarEnabled(Z)V

    .line 553
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 554
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 555
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 556
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 559
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 560
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 206
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 216
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 222
    new-instance v9, Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 227
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 232
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 237
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 242
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 247
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 252
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    .line 258
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    .line 330
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 363
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 370
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 409
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 429
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 431
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 440
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 443
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollProfilingStarted:Z

    .line 446
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingProfilingStarted:Z

    .line 488
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2170
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2175
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2180
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 564
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->initAbsListView()V

    .line 566
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 569
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 570
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 574
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 577
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 578
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->setStackFromBottom(Z)V

    .line 580
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 581
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    .line 583
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 584
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->setTextFilterEnabled(Z)V

    .line 586
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 588
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setTranscriptMode(I)V

    .line 590
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 591
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setCacheColorHint(I)V

    .line 593
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 594
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setFastScrollEnabled(Z)V

    .line 596
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 597
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->setSmoothScrollbarEnabled(Z)V

    .line 599
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 600
    return-void
.end method

.method private acceptFilter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1036
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/Filterable;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Filterable;

    invoke-interface {v2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 1043
    :goto_0
    return v2

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    .line 1041
    .local v0, context:Landroid/content/Context;
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1043
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    return v0
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 3722
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 3723
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3724
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3725
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3727
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ad

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    .line 3732
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3734
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3735
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3736
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3737
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3738
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3739
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3740
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3741
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3742
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    .line 3743
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3745
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 3746
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3750
    :goto_0
    return-void

    .line 3748
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1644
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1646
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1647
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1649
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 3589
    sparse-switch p2, :sswitch_data_0

    .line 3615
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3591
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 3592
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3593
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 3594
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3618
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 3619
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 3620
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 3597
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 3598
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 3599
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3600
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 3601
    .restart local v1       #dY:I
    goto :goto_0

    .line 3603
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 3604
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 3605
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 3606
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 3607
    .restart local v1       #dY:I
    goto :goto_0

    .line 3609
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 3610
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 3611
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 3612
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3613
    .restart local v1       #dY:I
    goto :goto_0

    .line 3589
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 788
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFocusableInTouchMode(Z)V

    .line 789
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setWillNotDraw(Z)V

    .line 790
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 791
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setScrollingCacheEnabled(Z)V

    .line 793
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    .line 794
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    .line 795
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1965
    const/4 v6, 0x0

    .line 1967
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1971
    :cond_0
    if-nez v6, :cond_1

    .line 1972
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1973
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1975
    :cond_1
    if-eqz v6, :cond_2

    .line 1976
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->performHapticFeedback(I)Z

    .line 1978
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 10

    .prologue
    const/high16 v9, 0x41a0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3544
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3547
    .local v2, screenHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3550
    .local v3, screenWidth:I
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 3551
    .local v4, xy:[I
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getLocationOnScreen([I)V

    .line 3556
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3557
    aget v5, v4, v7

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v1, v5, v6

    .line 3558
    .local v1, rightGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3559
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x15

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3574
    .end local v1           #rightGap:I
    :goto_0
    return-void

    .line 3562
    .restart local v1       #rightGap:I
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v1, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 3565
    .end local v1           #rightGap:I
    :cond_1
    const/4 v5, 0x1

    aget v5, v4, v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mDensityScale:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    add-int v0, v5, v6

    .line 3566
    .local v0, bottomGap:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3567
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x51

    aget v7, v4, v7

    invoke-virtual {v5, p0, v6, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 3570
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    aget v6, v4, v7

    invoke-virtual {v5, v6, v0, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1573
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3535
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 3537
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    .line 3539
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkFocus()V

    .line 3541
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 4

    .prologue
    .line 798
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    const-string v2, "list_selector_holo_dark"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 800
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(I)V

    .line 803
    :cond_0
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2613
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    .line 2614
    .local v2, count:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 2615
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    .line 2617
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2628
    :cond_0
    return-void

    .line 2621
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2622
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2623
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2624
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2626
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2621
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3827
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3791
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 3848
    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    return v0
.end method

.method protected clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2830
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 2831
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2832
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2833
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 2835
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2836
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2838
    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    .line 2840
    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 3756
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 3757
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 3759
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3760
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 3763
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1232
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1233
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1234
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1235
    mul-int/lit8 v2, v1, 0x64

    .line 1237
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1238
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1239
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1240
    .local v5, width:I
    if-lez v5, :cond_0

    .line 1241
    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    .line 1244
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1245
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1246
    .local v0, bottom:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1247
    if-lez v5, :cond_1

    .line 1248
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v2, v6

    .line 1256
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #width:I
    :cond_1
    :goto_0
    return v2

    .line 1253
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1256
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1261
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1262
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1263
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1264
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1265
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1266
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1267
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1268
    .local v6, width:I
    if-lez v6, :cond_0

    .line 1269
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1284
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    .end local v6           #width:I
    :cond_0
    :goto_0
    return v7

    .line 1273
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1274
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1275
    const/4 v3, 0x0

    .line 1281
    .local v3, index:I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1276
    .end local v3           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1277
    move v3, v1

    .restart local v3       #index:I
    goto :goto_1

    .line 1279
    .end local v3           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3       #index:I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1133
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1134
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1135
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1136
    mul-int/lit8 v2, v1, 0x64

    .line 1138
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1139
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1140
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1141
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1142
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1145
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1146
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1147
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1148
    if-lez v3, :cond_1

    .line 1149
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1157
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1154
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1157
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1162
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1163
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1164
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1165
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1166
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1167
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1168
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1169
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1170
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1185
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1174
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1175
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1176
    const/4 v4, 0x0

    .line 1182
    .local v4, index:I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1177
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1178
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1180
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1879
    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2822
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 2823
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2824
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 2825
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    .line 2827
    :cond_0
    return-void
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 3525
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3526
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3528
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1577
    const/4 v2, 0x0

    .line 1578
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 1579
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1580
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1581
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    .line 1582
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    .line 1583
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1586
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    .line 1589
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 1590
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1591
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1594
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1596
    if-eqz v1, :cond_2

    .line 1597
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1600
    :cond_2
    if-eqz v0, :cond_3

    .line 1601
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1602
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mGroupFlags:I

    .line 1604
    :cond_3
    return-void

    .line 1578
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 2030
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2524
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 2525
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller3;->draw(Landroid/graphics/Canvas;)V

    .line 2528
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1754
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->drawableStateChanged()V

    .line 1755
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1758
    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 4291
    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionColumn(I)I
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 3838
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 3843
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 4326
    const/4 v0, 0x0

    return v0
.end method

.method getBottomBoundary()I
    .locals 1

    .prologue
    .line 4256
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 1213
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1214
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 1224
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 1217
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1218
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1221
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1222
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v4

    .line 1223
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1224
    .local v3, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 3897
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    .prologue
    .line 4299
    const/4 v0, 0x0

    .line 4300
    .local v0, childrenTotalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4301
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 4300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4303
    :cond_0
    return v0
.end method

.method getChildrenTotalWidth()I
    .locals 3

    .prologue
    .line 4308
    const/4 v0, 0x0

    .line 4309
    .local v0, childrenTotalWidth:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4310
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 4309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4312
    :cond_0
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
    .locals 1

    .prologue
    .line 4287
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 775
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 779
    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3120
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3110
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    .prologue
    .line 4340
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBoundary()I
    .locals 1

    .prologue
    .line 4261
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1295
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 1296
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1305
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1299
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1300
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1303
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1304
    .local v3, left:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1305
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method getRightBorderWidth()I
    .locals 1

    .prologue
    .line 4336
    const/4 v0, 0x0

    return v0
.end method

.method getRightBoundary()I
    .locals 1

    .prologue
    .line 4265
    const/4 v0, 0x0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1312
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 1313
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1323
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1316
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1317
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1320
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1321
    .local v3, right:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v4

    .line 1322
    .local v4, width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 1323
    .local v2, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1446
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1447
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1449
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 3877
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1083
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 4330
    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    .prologue
    .line 4252
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    .line 1196
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1197
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1206
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1200
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1201
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1204
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1205
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1206
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 3872
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3391
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 3392
    .local v0, count:I
    if-lez v0, :cond_c

    .line 3399
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_4

    .line 3401
    iput-boolean v6, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 3403
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    if-ne v4, v3, :cond_3

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    if-lt v4, v5, :cond_3

    .line 3408
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3409
    const/16 v3, 0x8

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3519
    :cond_1
    :goto_0
    return-void

    .line 3411
    :cond_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_0

    .line 3417
    :cond_3
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    packed-switch v4, :pswitch_data_0

    .line 3467
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3469
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v1

    .line 3472
    .local v1, newPos:I
    if-lt v1, v0, :cond_5

    .line 3473
    add-int/lit8 v1, v0, -0x1

    .line 3475
    :cond_5
    if-gez v1, :cond_6

    .line 3476
    const/4 v1, 0x0

    .line 3480
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3482
    .local v2, selectablePos:I
    if-ltz v2, :cond_a

    .line 3483
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3419
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3424
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3425
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 3431
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->findSyncPosition()I

    move-result v1

    .line 3432
    .restart local v1       #newPos:I
    if-ltz v1, :cond_4

    .line 3434
    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3435
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_4

    .line 3437
    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 3440
    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncWidth:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 3443
    :cond_8
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3452
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3447
    :cond_9
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_1

    .line 3460
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3461
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 3487
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_a
    invoke-virtual {p0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3488
    if-ltz v2, :cond_c

    .line 3489
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 3496
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_b
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    if-gez v4, :cond_1

    .line 3506
    :cond_c
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3507
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v3, :cond_d

    const/16 v3, 0x8

    :goto_2
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3513
    :goto_3
    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 3514
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 3515
    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 3516
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 3517
    iput-boolean v6, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 3518
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 3507
    :cond_d
    const/4 v3, 0x7

    goto :goto_2

    .line 3509
    :cond_e
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v4, :cond_f

    const/4 v3, 0x3

    :cond_f
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_3

    .line 3417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 3769
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3134
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 3135
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3136
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 3137
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3139
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 3140
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 3141
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 3144
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    .line 3147
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3149
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 3188
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 3189
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 3190
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3191
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller3;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView2;III)V

    .line 709
    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 3625
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1706
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1707
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 1708
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1711
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1713
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1714
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1737
    .end local v4           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1715
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1717
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 1719
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isLongClickable()Z

    move-result v1

    .line 1720
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1721
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1722
    if-eqz v1, :cond_6

    .line 1723
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1729
    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 1730
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1731
    new-instance v5, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    .line 1733
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1734
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1726
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1368
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    .line 1513
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1516
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1522
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1523
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1524
    const-string v2, "HtcAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal getView exception, getView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scrapView, this) should not be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_0
    if-eq v0, v1, :cond_1

    .line 1531
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1532
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1533
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1553
    :cond_1
    :goto_0
    return-object v0

    .line 1541
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1542
    .restart local v0       #child:Landroid/view/View;
    if-nez v0, :cond_3

    .line 1543
    const-string v2, "HtcAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal getView exception, getView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", null, this) should not be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_3
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1545
    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 2849
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 2850
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2849
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2852
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1801
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onAttachedToWindow()V

    .line 1803
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1804
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1805
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1807
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 1763
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1765
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1791
    :cond_0
    :goto_0
    return-object v3

    .line 1771
    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView2;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1776
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1777
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1778
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1779
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1780
    move v0, v2

    .line 1786
    :cond_2
    if-ltz v0, :cond_0

    .line 1787
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1778
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 3697
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3701
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 3702
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3704
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1811
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onDetachedFromWindow()V

    .line 1813
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1814
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1815
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1817
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 3830
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 3831
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3832
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    .line 3834
    :cond_0
    return-void
.end method

.method onFling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 4279
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    if-nez v0, :cond_0

    .line 4280
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    .line 4282
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 4283
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->start(I)V

    .line 4284
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1088
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1089
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    .line 1092
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1093
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3773
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3775
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3776
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 3785
    :cond_0
    :goto_0
    return-void

    .line 3780
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3781
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/high16 v9, -0x8000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2533
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 2534
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 2537
    .local v5, y:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v8, :cond_0

    .line 2538
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v8, p1}, Lcom/htc/widget/HtcFastScroller3;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2539
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 2605
    .end local v1           #intercepted:Z
    :goto_0
    return v6

    .line 2544
    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v6, v7

    .line 2605
    goto :goto_0

    .line 2548
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2549
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v2

    .line 2555
    .local v2, motionPosition:I
    :goto_2
    iget v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    if-ltz v2, :cond_2

    .line 2558
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2561
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2562
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2563
    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2570
    :goto_3
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2571
    iput v7, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2572
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 2574
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    .line 2575
    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto :goto_1

    .line 2551
    .end local v2           #motionPosition:I
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v2

    .restart local v2       #motionPosition:I
    goto :goto_2

    .line 2565
    .restart local v3       #v:Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2566
    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    .line 2580
    .end local v2           #motionPosition:I
    .end local v3           #v:Landroid/view/View;
    :pswitch_1
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 2583
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2584
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    sub-int v8, v4, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 2588
    :cond_5
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 2599
    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2600
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto :goto_1

    .line 2544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2580
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 2011
    sparse-switch p1, :sswitch_data_0

    .line 2023
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2014
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2016
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2017
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    .line 2018
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2019
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2020
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2011
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1343
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    .line 1344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 1345
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 1346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 1347
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1331
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1332
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->useDefaultSelector()V

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    .line 1335
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1336
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1337
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1338
    iget v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1339
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 982
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsListView2$SavedState;

    .line 984
    .local v0, ss:Lcom/htc/widget/HtcAbsListView2$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 985
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 988
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncWidth:J

    .line 994
    :goto_0
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_3

    .line 995
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 996
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 999
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1000
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    .line 1001
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1008
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    .line 1030
    :cond_0
    :goto_2
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setFilterText(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 1033
    return-void

    .line 991
    :cond_1
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    goto :goto_0

    .line 1003
    :cond_2
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1004
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    goto :goto_1

    .line 1009
    :cond_3
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1010
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 1012
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 1013
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1015
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1018
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1019
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    .line 1020
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    .line 1027
    :goto_3
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_2

    .line 1022
    :cond_4
    iget v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1023
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 919
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 921
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/htc/widget/HtcAbsListView2$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAbsListView2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 923
    .local v4, ss:Lcom/htc/widget/HtcAbsListView2$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    .line 924
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemId()J

    move-result-wide v2

    .line 925
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->selectedId:J

    .line 928
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 929
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->width:I

    .line 934
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_4

    .line 937
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 938
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 943
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    .line 944
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    .line 966
    :goto_3
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    .line 967
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 968
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    .line 969
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 970
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 971
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->filter:Ljava/lang/String;

    .line 977
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v8

    .line 923
    goto :goto_0

    .line 931
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->height:I

    goto :goto_1

    .line 940
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_2

    .line 946
    :cond_4
    if-eqz v1, :cond_6

    .line 948
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 951
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 952
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 956
    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    .line 957
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    goto :goto_3

    .line 954
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    goto :goto_4

    .line 959
    .end local v7           #v:Landroid/view/View;
    :cond_6
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewTop:I

    .line 960
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->viewLeft:I

    .line 961
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->firstId:J

    .line 962
    iput v8, v4, Lcom/htc/widget/HtcAbsListView2$SavedState;->position:I

    goto :goto_3
.end method

.method onScrollToBoundary()V
    .locals 0

    .prologue
    .line 4296
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1610
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_1

    .line 1613
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller3;->onSizeChanged(IIII)V

    .line 1615
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3798
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3799
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3800
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 3801
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 3803
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 3804
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 3810
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 3811
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 3813
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 3814
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 3821
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 3805
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 3807
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3808
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_0

    .line 3816
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 2194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller3;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 2195
    .local v14, intercepted:Z
    if-eqz v14, :cond_0

    .line 2196
    const/16 v22, 0x1

    .line 2519
    .end local v14           #intercepted:Z
    :goto_0
    return v22

    .line 2199
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2200
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 2201
    .local v20, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2210
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 2211
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2213
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2215
    packed-switch v4, :pswitch_data_0

    .line 2519
    :cond_2
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    .line 2217
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v15

    .line 2218
    .local v15, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 2219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    if-ltz v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v22

    check-cast v22, Landroid/widget/ListAdapter;

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 2223
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 2226
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$CheckForTap;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2228
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2252
    :cond_4
    :goto_2
    if-ltz v15, :cond_5

    .line 2254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 2257
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2258
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2259
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2266
    :goto_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2268
    .end local v18           #v:Landroid/view/View;
    :cond_5
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    .line 2269
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    .line 2230
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_7

    if-gez v15, :cond_7

    .line 2234
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2237
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    .line 2238
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2241
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 2242
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    .line 2248
    :goto_4
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2244
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    goto :goto_4

    .line 2261
    .restart local v18       #v:Landroid/view/View;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2262
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    goto :goto_3

    .line 2274
    .end local v15           #motionPosition:I
    .end local v18           #v:Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    move/from16 v22, v0

    sub-int v9, v21, v22

    .line 2277
    .local v9, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    move/from16 v22, v0

    sub-int v8, v20, v22

    .line 2280
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    goto/16 :goto_1

    .line 2288
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 2289
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2291
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView2;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2304
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 2305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v8, v8, v22

    .line 2307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    move/from16 v22, v0

    sub-int v11, v20, v22

    .line 2308
    .local v11, incrementalDeltaX:I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    .line 2311
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2312
    .local v16, motionView:Landroid/view/View;
    if-eqz v16, :cond_b

    .line 2315
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 2318
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionColumn(I)I

    move-result v15

    .line 2320
    .restart local v15       #motionPosition:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2322
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    .line 2323
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionX:I

    .line 2324
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2327
    .end local v15           #motionPosition:I
    :cond_b
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastX:I

    goto/16 :goto_1

    .end local v11           #incrementalDeltaX:I
    .end local v16           #motionView:Landroid/view/View;
    :cond_c
    move v11, v8

    .line 2307
    goto :goto_5

    .line 2330
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v9, v9, v22

    .line 2332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    .line 2333
    .local v12, incrementalDeltaY:I
    :goto_6
    if-eqz v12, :cond_e

    .line 2334
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScrollWithConstrain(II)V

    .line 2338
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2339
    .restart local v16       #motionView:Landroid/view/View;
    if-eqz v16, :cond_f

    .line 2342
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    .line 2345
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->findMotionRow(I)I

    move-result v15

    .line 2347
    .restart local v15       #motionPosition:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2349
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    .line 2350
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionY:I

    .line 2351
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2354
    .end local v15           #motionPosition:I
    :cond_f
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLastY:I

    goto/16 :goto_1

    .end local v12           #incrementalDeltaY:I
    .end local v16           #motionView:Landroid/view/View;
    :cond_10
    move v12, v9

    .line 2332
    goto :goto_6

    .line 2365
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    .line 2472
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2476
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2478
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2479
    .local v10, handler:Landroid/os/Handler;
    if-eqz v10, :cond_12

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2483
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 2485
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2369
    .end local v10           #handler:Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 2370
    .restart local v15       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2371
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-nez v22, :cond_1f

    .line 2372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 2374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2378
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v22, v0

    if-nez v22, :cond_14

    .line 2379
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView2$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    .line 2382
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPerformClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    move-object/from16 v17, v0

    .line 2383
    .local v17, performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;
    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mChild:Landroid/view/View;

    .line 2384
    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mClickMotionPosition:I

    .line 2385
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView2$PerformClick;->rememberWindowAttachCount()V

    .line 2387
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 2390
    const/4 v5, 0x0

    .line 2391
    .local v5, b:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    .line 2392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 2393
    :cond_15
    const/4 v5, 0x1

    .line 2401
    :cond_16
    :goto_8
    if-eqz v5, :cond_1e

    .line 2402
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2403
    .restart local v10       #handler:Landroid/os/Handler;
    if-eqz v10, :cond_17

    .line 2404
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-nez v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    :goto_9
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2407
    :cond_17
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2408
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2409
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_19

    .line 2410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 2411
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2412
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2413
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(Landroid/view/View;)V

    .line 2414
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2417
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_18

    instance-of v0, v7, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_18

    .line 2418
    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2422
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 2423
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    .line 2424
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 2440
    :cond_19
    :goto_a
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2396
    .end local v10           #handler:Landroid/os/Handler;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 2397
    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 2404
    .restart local v10       #handler:Landroid/os/Handler;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    goto/16 :goto_9

    .line 2427
    :cond_1d
    new-instance v22, Lcom/htc/widget/HtcAbsListView2$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/widget/HtcAbsListView2$1;-><init>(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Lcom/htc/widget/HtcAbsListView2$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 2442
    .end local v10           #handler:Landroid/os/Handler;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_1f

    .line 2443
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 2447
    .end local v5           #b:Z
    .end local v17           #performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;
    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    goto/16 :goto_7

    .line 2450
    .end local v6           #child:Landroid/view/View;
    .end local v15           #motionPosition:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 2451
    .local v19, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2455
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_20

    .line 2456
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 2462
    .local v13, initialVelocity:I
    :goto_b
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v22

    if-lez v22, :cond_21

    .line 2465
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAbsListView2;->onFling(I)V

    goto/16 :goto_7

    .line 2458
    .end local v13           #initialVelocity:I
    :cond_20
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .restart local v13       #initialVelocity:I
    goto :goto_b

    .line 2467
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onUp()V

    goto/16 :goto_7

    .line 2498
    .end local v13           #initialVelocity:I
    .end local v19           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_7
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2499
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2500
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2501
    .restart local v16       #motionView:Landroid/view/View;
    if-eqz v16, :cond_22

    .line 2502
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2504
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 2506
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 2507
    .restart local v10       #handler:Landroid/os/Handler;
    if-eqz v10, :cond_23

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2511
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 2513
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 2280
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2365
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 2154
    if-eqz p1, :cond_0

    .line 2156
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2160
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2163
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 2164
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2167
    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 4274
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 4275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 4276
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1821
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onWindowFocusChanged(Z)V

    .line 1823
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 1825
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 1828
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1829
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->resetPressedStatus(Landroid/view/View;)V

    .line 1833
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->setChildrenDrawingCacheEnabled(Z)V

    .line 1834
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1836
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->dismissPopup()V

    .line 1838
    if-ne v0, v2, :cond_1

    .line 1840
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 1864
    :cond_1
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    .line 1865
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v2

    .line 1823
    goto :goto_0

    .line 1843
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v3, :cond_4

    .line 1845
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->showPopup()V

    .line 1849
    :cond_4
    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1851
    if-ne v0, v2, :cond_5

    .line 1853
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resurrectSelection()Z

    goto :goto_1

    .line 1857
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 1858
    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 1859
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2041
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2042
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2043
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2044
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchFrame:Landroid/graphics/Rect;

    .line 2047
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 2048
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2049
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2050
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2051
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2052
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2053
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2057
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2048
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2057
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2070
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->pointToPosition(II)I

    move-result v0

    .line 2071
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2074
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1557
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1558
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    .line 1559
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1560
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->positionSelector(IIII)V

    .line 1563
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    .line 1564
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1565
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mIsChildViewEnabled:Z

    .line 1566
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->refreshDrawableState()V

    .line 1568
    :cond_0
    return-void

    .line 1565
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3908
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v1

    .line 3909
    .local v1, childCount:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1500(Lcom/htc/widget/HtcAbsListView2$RecycleBin;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    move-result-object v3

    .line 3912
    .local v3, listener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3913
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3914
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 3916
    .local v4, lp:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3917
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3918
    if-eqz v3, :cond_0

    .line 3920
    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView2$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 3912
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3924
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 3925
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 3926
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 3157
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 3158
    .local v0, position:I
    if-gez v0, :cond_0

    .line 3159
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3161
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3162
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3163
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2638
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView2$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView2;I)V

    .line 2641
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mLastScrollState:I

    .line 2644
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1098
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    .line 1100
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->resetList()V

    .line 833
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 834
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 836
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1106
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 1107
    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1108
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1109
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1110
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 1111
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 1112
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setSelectedPositionInt(I)V

    .line 1113
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->setNextSelectedPositionInt(I)V

    .line 1114
    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    .line 1115
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1116
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 1117
    return-void
.end method

.method resetListAndClearViews()V
    .locals 2

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->rememberSyncState()V

    .line 1125
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->removeAllViewsInLayout()V

    .line 1126
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->clear()V

    .line 1127
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->setViewTypeCount(I)V

    .line 1128
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayout()V

    .line 1129
    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 2182
    if-eqz p1, :cond_0

    .line 2183
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2184
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2185
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2187
    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 25

    .prologue
    .line 3207
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v3

    .line 3209
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 3210
    const/16 v23, 0x0

    .line 3386
    :goto_0
    return v23

    .line 3213
    :cond_0
    const/16 v19, 0x0

    .line 3216
    .local v19, selectedTop:I
    const/16 v16, 0x0

    .line 3218
    .local v16, selectedLeft:I
    const/4 v7, 0x0

    .line 3219
    .local v7, childrenTop:I
    const/4 v4, 0x0

    .line 3220
    .local v4, childrenBottom:I
    const/4 v5, 0x0

    .line 3221
    .local v5, childrenLeft:I
    const/4 v6, 0x0

    .line 3223
    .local v6, childrenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 3224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v24

    add-int v5, v23, v24

    .line 3225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v24

    sub-int v6, v23, v24

    .line 3232
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 3233
    .local v9, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    move/from16 v20, v0

    .line 3234
    .local v20, toPosition:I
    const/4 v8, 0x1

    .line 3236
    .local v8, down:Z
    move/from16 v0, v20

    if-lt v0, v9, :cond_7

    add-int v23, v9, v3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 3237
    move/from16 v17, v20

    .line 3239
    .local v17, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v17, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3242
    .local v14, selected:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 3243
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 3244
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v18

    .line 3247
    .local v18, selectedRight:I
    move/from16 v0, v16

    if-ge v0, v5, :cond_4

    .line 3248
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v16, v5, v23

    .line 3360
    .end local v14           #selected:Landroid/view/View;
    .end local v18           #selectedRight:I
    :cond_1
    :goto_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    .line 3361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView2$FlingRunnable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 3365
    :cond_2
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 3366
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 3369
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 3370
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    .line 3374
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/htc/widget/HtcAbsListView2;->lookForSelectablePosition(IZ)I

    move-result v17

    .line 3375
    move/from16 v0, v17

    if-lt v0, v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLastVisiblePosition()I

    move-result v23

    move/from16 v0, v17

    move/from16 v1, v23

    if-gt v0, v1, :cond_16

    .line 3376
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3377
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setSelectionInt(I)V

    .line 3378
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    .line 3384
    :goto_4
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 3386
    if-ltz v17, :cond_17

    const/16 v23, 0x1

    goto/16 :goto_0

    .line 3227
    .end local v8           #down:Z
    .end local v9           #firstPosition:I
    .end local v17           #selectedPos:I
    .end local v20           #toPosition:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v24

    add-int v7, v23, v24

    .line 3228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v24

    sub-int v4, v23, v24

    goto/16 :goto_1

    .line 3249
    .restart local v8       #down:Z
    .restart local v9       #firstPosition:I
    .restart local v14       #selected:Landroid/view/View;
    .restart local v17       #selectedPos:I
    .restart local v18       #selectedRight:I
    .restart local v20       #toPosition:I
    :cond_4
    move/from16 v0, v18

    if-le v0, v6, :cond_1

    .line 3250
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v23, v6, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v24

    sub-int v16, v23, v24

    goto/16 :goto_2

    .line 3254
    .end local v18           #selectedRight:I
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    .line 3255
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 3258
    .local v15, selectedBottom:I
    move/from16 v0, v19

    if-ge v0, v7, :cond_6

    .line 3259
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v19, v7, v23

    goto/16 :goto_2

    .line 3260
    :cond_6
    if-le v15, v4, :cond_1

    .line 3261
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v23, v4, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v24

    sub-int v19, v23, v24

    goto/16 :goto_2

    .line 3267
    .end local v14           #selected:Landroid/view/View;
    .end local v15           #selectedBottom:I
    .end local v17           #selectedPos:I
    :cond_7
    move/from16 v0, v20

    if-ge v0, v9, :cond_e

    .line 3269
    move/from16 v17, v9

    .line 3270
    .restart local v17       #selectedPos:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    if-ge v10, v3, :cond_1

    .line 3271
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3272
    .local v22, v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 3275
    .local v21, top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 3277
    .local v12, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 3278
    if-nez v10, :cond_9

    .line 3280
    move/from16 v16, v12

    .line 3282
    if-gtz v9, :cond_8

    if-ge v12, v5, :cond_9

    .line 3285
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    add-int v5, v5, v23

    .line 3288
    :cond_9
    if-lt v12, v5, :cond_d

    .line 3290
    add-int v17, v9, v10

    .line 3291
    move/from16 v16, v12

    .line 3292
    goto/16 :goto_2

    .line 3295
    :cond_a
    if-nez v10, :cond_c

    .line 3297
    move/from16 v19, v21

    .line 3299
    if-gtz v9, :cond_b

    move/from16 v0, v21

    if-ge v0, v7, :cond_c

    .line 3302
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    add-int v7, v7, v23

    .line 3305
    :cond_c
    move/from16 v0, v21

    if-lt v0, v7, :cond_d

    .line 3307
    add-int v17, v9, v10

    .line 3308
    move/from16 v19, v21

    .line 3309
    goto/16 :goto_2

    .line 3270
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3315
    .end local v10           #i:I
    .end local v12           #left:I
    .end local v17           #selectedPos:I
    .end local v21           #top:I
    .end local v22           #v:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 3316
    .local v11, itemCount:I
    const/4 v8, 0x0

    .line 3317
    add-int v23, v9, v3

    add-int/lit8 v17, v23, -0x1

    .line 3319
    .restart local v17       #selectedPos:I
    add-int/lit8 v10, v3, -0x1

    .restart local v10       #i:I
    :goto_6
    if-ltz v10, :cond_1

    .line 3320
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3323
    .restart local v22       #v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v21

    .line 3324
    .restart local v21       #top:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 3325
    .local v2, bottom:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 3326
    .restart local v12       #left:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v13

    .line 3328
    .local v13, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 3329
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_10

    .line 3330
    move/from16 v16, v12

    .line 3331
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_f

    if-le v13, v6, :cond_10

    .line 3332
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHorizontalFadingEdgeLength()I

    move-result v23

    sub-int v6, v6, v23

    .line 3336
    :cond_10
    if-gt v13, v6, :cond_14

    .line 3337
    add-int v17, v9, v10

    .line 3338
    move/from16 v16, v12

    .line 3339
    goto/16 :goto_2

    .line 3342
    :cond_11
    add-int/lit8 v23, v3, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_13

    .line 3343
    move/from16 v19, v21

    .line 3344
    add-int v23, v9, v3

    move/from16 v0, v23

    if-lt v0, v11, :cond_12

    if-le v2, v4, :cond_13

    .line 3345
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getVerticalFadingEdgeLength()I

    move-result v23

    sub-int v4, v4, v23

    .line 3349
    :cond_13
    if-gt v2, v4, :cond_14

    .line 3350
    add-int v17, v9, v10

    .line 3351
    move/from16 v19, v21

    .line 3352
    goto/16 :goto_2

    .line 3319
    :cond_14
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 3372
    .end local v2           #bottom:I
    .end local v10           #i:I
    .end local v11           #itemCount:I
    .end local v12           #left:I
    .end local v13           #right:I
    .end local v21           #top:I
    .end local v22           #v:Landroid/view/View;
    :cond_15
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    goto/16 :goto_3

    .line 3380
    :cond_16
    const/16 v17, -0x1

    .line 3381
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    .line 3382
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    goto/16 :goto_4

    .line 3386
    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 3637
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 3689
    :cond_0
    :goto_0
    return v2

    .line 3641
    :cond_1
    const/4 v2, 0x0

    .line 3642
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 3643
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 3666
    :goto_1
    if-eqz v3, :cond_0

    .line 3667
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 3669
    move-object v1, p3

    .line 3670
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 3671
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v1, p3, v5, v6, v4}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    .line 3674
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3675
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3677
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3678
    goto :goto_0

    .line 3650
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 3651
    goto :goto_1

    .line 3653
    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 3655
    const/4 v2, 0x1

    .line 3656
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3658
    :cond_3
    const/4 v3, 0x0

    .line 3659
    goto :goto_1

    .line 3662
    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    goto :goto_1

    .line 3681
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3682
    goto :goto_0

    .line 3685
    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 3643
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 3675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 3887
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mCacheColorHint:I

    .line 3888
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2172
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayActionUpTime:Z

    .line 2173
    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2177
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->delayIncludeDoneWaiting:Z

    .line 2178
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1661
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mDrawSelectorOnTop:Z

    .line 1662
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 616
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    .line 618
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScrollEnabled:Z

    .line 624
    if-eqz p1, :cond_2

    .line 625
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller3;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    goto :goto_0

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller3;->stop()V

    .line 631
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFastScroller:Lcom/htc/widget/HtcFastScroller3;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1054
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1055
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->createTextFilter(Z)V

    .line 1058
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1060
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1062
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1064
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1068
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    .line 1069
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1072
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1354
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1359
    .local v0, changed:Z
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mFiltered:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView2;->positionPopup()V

    .line 1364
    :cond_0
    return v0
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView2$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView2$OnScrollListener;

    .line 696
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    .line 697
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3940
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView2$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView2$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->access$1502(Lcom/htc/widget/HtcAbsListView2$RecycleBin;Lcom/htc/widget/HtcAbsListView2$RecyclerListener;)Lcom/htc/widget/HtcAbsListView2$RecyclerListener;

    .line 3941
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1741
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1742
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    .line 1743
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    .line 1750
    :goto_0
    return-void

    .line 1746
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    .line 1747
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    goto :goto_0
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->clearScrollingCache()V

    .line 742
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollingCacheEnabled:Z

    .line 743
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1673
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "sel"

    .prologue
    const/4 v3, 0x0

    .line 1676
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1677
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1678
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1680
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1681
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1682
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1683
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionLeftPadding:I

    .line 1684
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionTopPadding:I

    .line 1685
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionRightPadding:I

    .line 1686
    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectionBottomPadding:I

    .line 1687
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1688
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1689
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mSmoothScrollbarEnabled:Z

    .line 675
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 825
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    .line 826
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->requestLayoutIfNecessary()V

    .line 828
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 756
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTextFilterEnabled:Z

    .line 757
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3862
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mTranscriptMode:I

    .line 3863
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1640
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 1988
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1989
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1990
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1991
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1993
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1997
    :cond_0
    if-nez v6, :cond_1

    .line 1998
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2001
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2006
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2126
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2127
    .local v0, distance:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 2128
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->createScrollingCache()V

    .line 2129
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2130
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionCorrection:I

    .line 2131
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2135
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2136
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2138
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2139
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2140
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2141
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2143
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->reportScrollStateChange(I)V

    .line 2146
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView2;->requestDisallowInterceptTouchEvent(Z)V

    .line 2150
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1623
    iget v0, p0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1628
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1626
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1623
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 29
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 2862
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 2863
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 3101
    :goto_0
    return-void

    .line 2867
    :cond_0
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v11

    .line 2868
    .local v11, firstTop:I
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v16

    .line 2871
    .local v16, lastBottom:I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 2872
    .local v9, firstLeft:I
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getRight()I

    move-result v17

    .line 2875
    .local v17, lastRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 2885
    .local v19, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 2886
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v22, v27, v9

    .line 2887
    .local v22, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 2888
    .local v8, end:I
    sub-int v23, v17, v8

    .line 2889
    .local v23, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    move/from16 v28, v0

    sub-int v26, v27, v28

    .line 2891
    .local v26, width:I
    if-gez p1, :cond_1

    .line 2892
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2897
    :goto_1
    if-gez p2, :cond_2

    .line 2898
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2923
    .end local v26           #width:I
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2925
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v22

    if-lt v0, v2, :cond_7

    move/from16 v0, v23

    if-lt v0, v2, :cond_7

    .line 2926
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2929
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 2930
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    .line 2931
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2932
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    goto/16 :goto_0

    .line 2894
    .end local v2           #absIncrementalDeltaY:I
    .restart local v26       #width:I
    :cond_1
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 2900
    :cond_2
    add-int/lit8 v27, v26, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 2904
    .end local v8           #end:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    .end local v26           #width:I
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v22, v27, v11

    .line 2905
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 2906
    .restart local v8       #end:I
    sub-int v23, v16, v8

    .line 2907
    .restart local v23       #spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v14, v27, v28

    .line 2909
    .local v14, height:I
    if-gez p1, :cond_4

    .line 2910
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2915
    :goto_3
    if-gez p2, :cond_5

    .line 2916
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto/16 :goto_2

    .line 2912
    :cond_4
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    .line 2918
    :cond_5
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 2934
    .end local v14           #height:I
    .restart local v2       #absIncrementalDeltaY:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    .line 2935
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 2936
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_0

    .line 2940
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 2943
    .local v10, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 2945
    if-nez v10, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBoundary()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    if-le v9, v0, :cond_8

    if-lez p1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 2947
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2951
    :cond_8
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBoundary()I

    move-result v27

    mul-int/lit8 v27, v27, 0x2

    sub-int v27, v8, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-gez p1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 2953
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2958
    :cond_9
    if-nez v10, :cond_a

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBoundary()I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    if-le v11, v0, :cond_a

    if-lez p1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 2960
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2964
    :cond_a
    add-int v27, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBoundary()I

    move-result v27

    mul-int/lit8 v27, v27, 0x2

    sub-int v27, v8, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-gez p1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->enableStopScrollNow()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 2966
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2971
    :cond_b
    if-gez p2, :cond_e

    const/4 v7, 0x1

    .line 2973
    .local v7, down:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->hideSelector()V

    .line 2975
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeaderViewsCount()I

    move-result v13

    .line 2976
    .local v13, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getFooterViewsCount()I

    move-result v28

    sub-int v12, v27, v28

    .line 2978
    .local v12, footerViewsStart:I
    const/16 v24, 0x0

    .line 2979
    .local v24, start:I
    const/4 v6, 0x0

    .line 2984
    .local v6, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 2985
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalWidth()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 2986
    if-eqz v7, :cond_11

    .line 2987
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v18, v27, p2

    .line 2988
    .local v18, left:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_5
    if-ge v15, v5, :cond_c

    .line 2989
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2990
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    .line 3029
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #left:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalLeft:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewLeft:I

    .line 3080
    :goto_6
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 3081
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/widget/HtcAbsListView2;->detachViewsFromParent(II)V

    .line 3084
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v27

    if-eqz v27, :cond_19

    .line 3085
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenLeftAndRight(I)V

    .line 3091
    :goto_7
    if-eqz v7, :cond_d

    .line 3092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v6

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 3095
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 3096
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAbsListView2;->fillGap(Z)V

    .line 3097
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 3099
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->invokeOnItemScrollListener()V

    goto/16 :goto_0

    .line 2971
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v12           #footerViewsStart:I
    .end local v13           #headerViewsCount:I
    .end local v24           #start:I
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2993
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v12       #footerViewsStart:I
    .restart local v13       #headerViewsCount:I
    .restart local v15       #i:I
    .restart local v18       #left:I
    .restart local v24       #start:I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 2994
    add-int v20, v10, v15

    .line 2995
    .local v20, position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_10

    move/from16 v0, v20

    if-ge v0, v12, :cond_10

    .line 2996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2988
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 3007
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #left:I
    .end local v20           #position:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v21, v27, p2

    .line 3008
    .local v21, right:I
    add-int/lit8 v15, v5, -0x1

    .restart local v15       #i:I
    :goto_8
    if-ltz v15, :cond_c

    .line 3009
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3010
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 3013
    move/from16 v24, v15

    .line 3014
    add-int/lit8 v6, v6, 0x1

    .line 3015
    add-int v20, v10, v15

    .line 3016
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v12, :cond_12

    .line 3017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3008
    :cond_12
    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    .line 3031
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    .end local v21           #right:I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getChildrenTotalHeight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_14

    .line 3032
    if-eqz v7, :cond_17

    .line 3033
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v25, v27, p2

    .line 3034
    .local v25, top:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_9
    if-ge v15, v5, :cond_14

    .line 3035
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3036
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v25

    if-lt v0, v1, :cond_15

    .line 3075
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v25           #top:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mMotionViewNewTop:I

    goto/16 :goto_6

    .line 3039
    .restart local v4       #child:Landroid/view/View;
    .restart local v15       #i:I
    .restart local v25       #top:I
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 3040
    add-int v20, v10, v15

    .line 3041
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_16

    move/from16 v0, v20

    if-ge v0, v12, :cond_16

    .line 3042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3034
    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 3053
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    .end local v25           #top:I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v3, v27, p2

    .line 3054
    .local v3, bottom:I
    add-int/lit8 v15, v5, -0x1

    .restart local v15       #i:I
    :goto_a
    if-ltz v15, :cond_14

    .line 3055
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3056
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v3, :cond_14

    .line 3059
    move/from16 v24, v15

    .line 3060
    add-int/lit8 v6, v6, 0x1

    .line 3061
    add-int v20, v10, v15

    .line 3062
    .restart local v20       #position:I
    move/from16 v0, v20

    if-lt v0, v13, :cond_18

    move/from16 v0, v20

    if-ge v0, v12, :cond_18

    .line 3063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3054
    :cond_18
    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 3087
    .end local v3           #bottom:I
    .end local v4           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v20           #position:I
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_7
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 0
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 4270
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView2;->trackMotionScroll(II)V

    .line 4271
    return-void
.end method

.method unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4
    .parameter "sel"

    .prologue
    .line 4317
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4318
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4319
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_0

    .line 4320
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4317
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4323
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method updateScrollIndicators()V
    .locals 12

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1373
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->isHorizontalStyle()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1375
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 1378
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v8, :cond_4

    move v1, v6

    .line 1381
    .local v1, canScrollLeft:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1382
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 1383
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1384
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getLeftBorderWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_5

    move v1, v6

    .line 1388
    .end local v4           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollLeft:Landroid/view/View;

    if-eqz v1, :cond_6

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1391
    .end local v1           #canScrollLeft:Z
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1393
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 1396
    .local v5, count:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v8, v10, :cond_7

    move v2, v6

    .line 1399
    .local v2, canScrollRight:Z
    :goto_3
    if-nez v2, :cond_2

    if-lez v5, :cond_2

    .line 1400
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1401
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getRightBorderWidth()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_8

    move v2, v6

    .line 1404
    .end local v4           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollRight:Landroid/view/View;

    if-eqz v2, :cond_9

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_3
    :goto_6
    return-void

    :cond_4
    move v1, v7

    .line 1378
    goto :goto_0

    .restart local v1       #canScrollLeft:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1384
    goto :goto_1

    .end local v4           #child:Landroid/view/View;
    :cond_6
    move v8, v9

    .line 1388
    goto :goto_2

    .end local v1           #canScrollLeft:Z
    .restart local v5       #count:I
    :cond_7
    move v2, v7

    .line 1396
    goto :goto_3

    .restart local v2       #canScrollRight:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_8
    move v2, v7

    .line 1401
    goto :goto_4

    .end local v4           #child:Landroid/view/View;
    :cond_9
    move v7, v9

    .line 1404
    goto :goto_5

    .line 1408
    .end local v2           #canScrollRight:Z
    .end local v5           #count:I
    :cond_a
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v8, :cond_c

    .line 1411
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v8, :cond_e

    move v3, v6

    .line 1414
    .local v3, canScrollUp:Z
    :goto_7
    if-nez v3, :cond_b

    .line 1415
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_b

    .line 1416
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1417
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getTopBorderHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v8, v10, :cond_f

    move v3, v6

    .line 1421
    .end local v4           #child:Landroid/view/View;
    :cond_b
    :goto_8
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollUp:Landroid/view/View;

    if-eqz v3, :cond_10

    move v8, v7

    :goto_9
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1424
    .end local v3           #canScrollUp:Z
    :cond_c
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 1426
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getChildCount()I

    move-result v5

    .line 1429
    .restart local v5       #count:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v8, v5

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v8, v10, :cond_11

    move v0, v6

    .line 1432
    .local v0, canScrollDown:Z
    :goto_a
    if-nez v0, :cond_d

    if-lez v5, :cond_d

    .line 1433
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1434
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2;->getBottomBorderHeight()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v8, v10, :cond_12

    move v0, v6

    .line 1437
    .end local v4           #child:Landroid/view/View;
    :cond_d
    :goto_b
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_13

    :goto_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .end local v0           #canScrollDown:Z
    .end local v5           #count:I
    :cond_e
    move v3, v7

    .line 1411
    goto :goto_7

    .restart local v3       #canScrollUp:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_f
    move v3, v7

    .line 1417
    goto :goto_8

    .end local v4           #child:Landroid/view/View;
    :cond_10
    move v8, v9

    .line 1421
    goto :goto_9

    .end local v3           #canScrollUp:Z
    .restart local v5       #count:I
    :cond_11
    move v0, v7

    .line 1429
    goto :goto_a

    .restart local v0       #canScrollDown:Z
    .restart local v4       #child:Landroid/view/View;
    :cond_12
    move v0, v7

    .line 1434
    goto :goto_b

    .end local v4           #child:Landroid/view/View;
    :cond_13
    move v7, v9

    .line 1437
    goto :goto_c
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
