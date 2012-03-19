.class public abstract Lcom/htc/opensense/widget/AlbumAbsListView;
.super Lcom/htc/opensense/widget/AlbumAdapterView;
.source "AlbumAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;,
        Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;,
        Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;,
        Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;,
        Lcom/htc/opensense/widget/AlbumAbsListView$CheckForTap;,
        Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;,
        Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;,
        Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;,
        Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;,
        Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;,
        Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/widget/AlbumAdapterView",
        "<",
        "Landroid/widget/BaseAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

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

.field mAdapter:Landroid/widget/BaseAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field mFastScrollEnabled:Z

.field private mFiltered:Z

.field mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

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

    .line 467
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;-><init>(Landroid/content/Context;)V

    .line 152
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 167
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 177
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 188
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    .line 193
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    .line 198
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    .line 203
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    .line 208
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 213
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mWidthMeasureSpec:I

    .line 260
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 286
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    .line 324
    iput-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    .line 344
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 346
    iput-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 355
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    .line 358
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollProfilingStarted:Z

    .line 361
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingProfilingStarted:Z

    .line 403
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    .line 1893
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    .line 1898
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    .line 1903
    iput-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    .line 468
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->initAbsListView()V

    .line 470
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 471
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 472
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 473
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 474
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 477
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 167
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 177
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 188
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    .line 193
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    .line 198
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    .line 203
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    .line 208
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 213
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mWidthMeasureSpec:I

    .line 260
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 286
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    .line 324
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    .line 344
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 346
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 355
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    .line 358
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollProfilingStarted:Z

    .line 361
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingProfilingStarted:Z

    .line 403
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    .line 1893
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    .line 1898
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    .line 1903
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    .line 482
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->initAbsListView()V

    .line 484
    sget-object v8, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 487
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 488
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :cond_0
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 495
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 496
    .local v5, stackFromBottom:Z
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->setStackFromBottom(Z)V

    .line 498
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 499
    .local v3, scrollingCacheEnabled:Z
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->setScrollingCacheEnabled(Z)V

    .line 501
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 502
    .local v7, useTextFilter:Z
    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setTextFilterEnabled(Z)V

    .line 504
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 506
    .local v6, transcriptMode:I
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->setTranscriptMode(I)V

    .line 508
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 509
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setCacheColorHint(I)V

    .line 514
    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 515
    .local v4, smoothScrollbar:Z
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 517
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 518
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 903
    :cond_0
    const/4 v0, 0x0

    .line 905
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense/widget/AlbumAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/widget/AlbumAbsListView;)Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;)Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/AlbumAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    return v0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2395
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 2396
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2397
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2398
    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    .line 2400
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 3059
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 3060
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3061
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3062
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3064
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ad

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 3069
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3071
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3072
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3073
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3074
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3075
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3076
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3077
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3078
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3079
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3080
    iput-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 3081
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3083
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 3084
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3088
    :goto_0
    return-void

    .line 3086
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1363
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1364
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1366
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
    .line 2887
    sparse-switch p2, :sswitch_data_0

    .line 2913
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2889
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 2890
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2891
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2892
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2916
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 2917
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 2918
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 2895
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

    .line 2896
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 2897
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2898
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 2899
    .restart local v1       #dY:I
    goto :goto_0

    .line 2901
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 2902
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2903
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 2904
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2905
    .restart local v1       #dY:I
    goto :goto_0

    .line 2907
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

    .line 2908
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 2909
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2910
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2911
    .restart local v1       #dY:I
    goto :goto_0

    .line 2887
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTouchSlop()I
    .locals 1

    .prologue
    .line 705
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 711
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    :goto_0
    return v0

    .line 708
    :pswitch_0
    const/16 v0, 0x32

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setFocusableInTouchMode(Z)V

    .line 696
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setWillNotDraw(Z)V

    .line 697
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 698
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setScrollingCacheEnabled(Z)V

    .line 700
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchSlop:I

    .line 701
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDensityScale:F

    .line 702
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1687
    const/4 v6, 0x0

    .line 1689
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1693
    :cond_0
    if-nez v6, :cond_1

    .line 1694
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1695
    invoke-super {p0, p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1697
    :cond_1
    if-eqz v6, :cond_2

    .line 1698
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->performHapticFeedback(I)Z

    .line 1700
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2860
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2861
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2862
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->getLocationOnScreen([I)V

    .line 2865
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 2866
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2867
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2872
    :goto_0
    return-void

    .line 2870
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1290
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 2851
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2852
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    .line 2853
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionPopup()V

    .line 2855
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->checkFocus()V

    .line 2857
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1849
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1850
    .local v0, distance:I
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 1851
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->createScrollingCache()V

    .line 1852
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 1853
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionCorrection:I

    .line 1854
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1858
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1859
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1861
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1862
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1863
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1864
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1866
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    .line 1869
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1873
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 0

    .prologue
    .line 719
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
    .line 2245
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v2

    .line 2246
    .local v2, count:I
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    .line 2247
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 2249
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2260
    :cond_0
    return-void

    .line 2253
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2254
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2255
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2256
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2253
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3168
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3130
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 3189
    instance-of v0, p1, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    return v0
.end method

.method clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2403
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 2404
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2405
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2406
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2408
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2409
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2411
    :cond_1
    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCachingStarted:Z

    .line 2413
    :cond_2
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 3094
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 3095
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    .line 3097
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3098
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    .line 3101
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 993
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    .line 994
    .local v1, count:I
    if-lez v1, :cond_3

    .line 995
    iget-boolean v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 996
    mul-int/lit8 v2, v1, 0x64

    .line 998
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 999
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1000
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1001
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1002
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1005
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1006
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1007
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1008
    if-lez v3, :cond_1

    .line 1009
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1017
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1014
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1017
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1022
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    .line 1023
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    .line 1024
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1025
    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1026
    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1027
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1028
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1029
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1030
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1045
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1034
    :cond_1
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    .line 1035
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1036
    const/4 v4, 0x0

    .line 1042
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

    .line 1037
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1038
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1040
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
    .line 1050
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1601
    new-instance v0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2842
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2844
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1294
    const/4 v2, 0x0

    .line 1295
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 1296
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1298
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollX:I

    .line 1299
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollY:I

    .line 1300
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1303
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    .line 1306
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 1307
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1308
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1311
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1313
    if-eqz v1, :cond_2

    .line 1314
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1317
    :cond_2
    if-eqz v0, :cond_3

    .line 1318
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1319
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mGroupFlags:I

    .line 1321
    :cond_3
    return-void

    .line 1295
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
    .line 1754
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 2180
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2185
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1463
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->drawableStateChanged()V

    .line 1464
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1467
    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 3623
    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 3179
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 3184
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 3646
    const/4 v0, 0x0

    return v0
.end method

.method getBottomBoundary()I
    .locals 1

    .prologue
    .line 3598
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    .line 1073
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1074
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 1084
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 1077
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1078
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1081
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1082
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v4

    .line 1083
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1084
    .local v3, fadeLength:F
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 3238
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    return v0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    .prologue
    .line 3631
    const/4 v0, 0x0

    .line 3632
    .local v0, childrenTotalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3633
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 3632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3635
    :cond_0
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;
    .locals 1

    .prologue
    .line 3619
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 682
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 686
    invoke-virtual {p0, v0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 2553
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 2543
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1167
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1168
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 3218
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 944
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 3650
    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    .prologue
    .line 3594
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    .line 1056
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1057
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1066
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1060
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1061
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1064
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1065
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1066
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 3213
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

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

    .line 2724
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    .line 2725
    .local v0, count:I
    if-lez v0, :cond_a

    .line 2732
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_3

    .line 2734
    iput-boolean v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 2736
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    if-ne v4, v3, :cond_2

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldItemCount:I

    if-lt v4, v5, :cond_2

    .line 2739
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2835
    :cond_1
    :goto_0
    return-void

    .line 2743
    :cond_2
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncMode:I

    packed-switch v4, :pswitch_data_0

    .line 2791
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2793
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 2796
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 2797
    add-int/lit8 v1, v0, -0x1

    .line 2799
    :cond_4
    if-gez v1, :cond_5

    .line 2800
    const/4 v1, 0x0

    .line 2804
    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2806
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 2807
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2745
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2750
    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2751
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 2757
    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->findSyncPosition()I

    move-result v1

    .line 2758
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 2760
    invoke-virtual {p0, v1, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2761
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 2763
    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    .line 2765
    iget-wide v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 2768
    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2776
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2772
    :cond_7
    iput v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    goto :goto_1

    .line 2784
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2785
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 2811
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2812
    if-ltz v2, :cond_a

    .line 2813
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2820
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    if-gez v4, :cond_1

    .line 2828
    :cond_a
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eqz v4, :cond_b

    const/4 v3, 0x3

    :cond_b
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2829
    iput v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    .line 2830
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    .line 2831
    iput v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    .line 2832
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    .line 2833
    iput-boolean v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 2834
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 2743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 3107
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2567
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 2568
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2569
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 2570
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2572
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    .line 2573
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    .line 2574
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    .line 2575
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2577
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 2606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    .line 2607
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rememberSyncState()V

    .line 2608
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    .line 2609
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2610
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;->onScroll(Lcom/htc/opensense/widget/AlbumAbsListView;III)V

    .line 616
    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 2923
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1423
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1424
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1425
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1428
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1430
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1431
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1454
    .end local v4           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1432
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1434
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1436
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isLongClickable()Z

    move-result v1

    .line 1437
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1438
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1439
    if-eqz v1, :cond_6

    .line 1440
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1446
    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 1447
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1448
    new-instance v5, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    iput-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    .line 1450
    :cond_5
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1451
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1443
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
    .line 1128
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 3
    .parameter "position"

    .prologue
    .line 1261
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1262
    .local v0, child:Landroid/view/View;
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    if-eqz v1, :cond_0

    .line 1263
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1271
    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1510
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onAttachedToWindow()V

    .line 1512
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1513
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1514
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1516
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 1472
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1474
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1500
    :cond_0
    :goto_0
    return-object v3

    .line 1480
    :cond_1
    sget-object v4, Lcom/htc/opensense/widget/AlbumAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1485
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/opensense/widget/AlbumAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1486
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1487
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1488
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1489
    move v0, v2

    .line 1495
    :cond_2
    if-ltz v0, :cond_0

    .line 1496
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1487
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 2995
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2999
    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    .line 3000
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 3001
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3002
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$2;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView$2;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3036
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3038
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3039
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3041
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1520
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onDetachedFromWindow()V

    .line 1522
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1523
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1524
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1526
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 3171
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 3172
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 3173
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resurrectSelection()Z

    .line 3175
    :cond_0
    return-void
.end method

.method onFling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 3611
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 3612
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getDefaultFlingRunnable()Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    .line 3614
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    .line 3615
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->start(I)V

    .line 3616
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 949
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 950
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resurrectSelection()Z

    .line 953
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3111
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3113
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3114
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->showPopup()V

    .line 3123
    :cond_0
    :goto_0
    return-void

    .line 3118
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 2189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2190
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 2191
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 2201
    .local v4, y:I
    packed-switch v0, :pswitch_data_0

    .line 2237
    :cond_0
    :goto_0
    return v5

    .line 2203
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->findMotionRow(I)I

    move-result v1

    .line 2204
    .local v1, motionPosition:I
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    if-ltz v1, :cond_1

    .line 2207
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2208
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    .line 2209
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionX:I

    .line 2210
    iput v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    .line 2211
    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 2212
    iput v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2213
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    .line 2215
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/high16 v6, -0x8000

    iput v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    goto :goto_0

    .line 2220
    .end local v1           #motionPosition:I
    :pswitch_1
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 2222
    :pswitch_2
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    sub-int v6, v4, v6

    invoke-direct {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->startScrollIfNeeded(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2223
    const/4 v5, 0x1

    goto :goto_0

    .line 2231
    :pswitch_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2232
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2220
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

    .line 1733
    sparse-switch p1, :sswitch_data_0

    .line 1747
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1736
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1738
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1739
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1740
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1741
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1742
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1744
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1733
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
    .line 1103
    invoke-super/range {p0 .. p5}, Lcom/htc/opensense/widget/AlbumAdapterView;->onLayout(ZIIII)V

    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    .line 1105
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    .line 1107
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->useDefaultSelector()V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1095
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1096
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1097
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1098
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1099
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 871
    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;

    .line 873
    .local v0, ss:Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;
    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 874
    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    .line 876
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncHeight:J

    .line 878
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    .line 879
    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 880
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    .line 881
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    .line 882
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    .line 883
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncMode:I

    .line 895
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    .line 898
    return-void

    .line 884
    :cond_1
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 885
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    .line 887
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    .line 888
    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 889
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    .line 890
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    .line 891
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    .line 892
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    .line 825
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    .line 827
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 829
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 831
    .local v4, ss:Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    .line 832
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 833
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->selectedId:J

    .line 834
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->height:I

    .line 836
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_2

    .line 838
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    .line 839
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    .line 840
    iput-wide v11, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    .line 855
    :goto_1
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 856
    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 857
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 858
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 859
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 860
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 866
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v8

    .line 831
    goto :goto_0

    .line 842
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    if-eqz v1, :cond_3

    .line 844
    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 845
    .local v7, v:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    .line 846
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    .line 847
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v9, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {v8, v9}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 849
    .end local v7           #v:Landroid/view/View;
    :cond_3
    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->viewTop:I

    .line 850
    iput-wide v11, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->firstId:J

    .line 851
    iput v8, v4, Lcom/htc/opensense/widget/AlbumAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method onScrollToBoundary()V
    .locals 0

    .prologue
    .line 3628
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    .line 1327
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rememberSyncState()V

    .line 1332
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3138
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3139
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3140
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 3141
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 3143
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->showPopup()V

    .line 3144
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    .line 3150
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 3151
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 3153
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 3154
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 3161
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 3145
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 3147
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    .line 3148
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    goto :goto_0

    .line 3156
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "ev"

    .prologue
    .line 1922
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1923
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1924
    .local v18, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1928
    .local v19, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 1929
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1931
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1933
    packed-switch v4, :pswitch_data_0

    .line 2175
    :cond_1
    :goto_0
    const/16 v20, 0x1

    :goto_1
    return v20

    .line 1935
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->pointToPosition(II)I

    move-result v13

    .line 1936
    .local v13, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 1937
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    if-ltz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v20

    check-cast v20, Landroid/widget/BaseAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1941
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 1944
    new-instance v20, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForTap;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForTap;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 1946
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1962
    :cond_3
    :goto_2
    if-ltz v13, :cond_4

    .line 1964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1965
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    .line 1966
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionX:I

    .line 1967
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    .line 1968
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 1970
    .end local v16           #v:Landroid/view/View;
    :cond_4
    const/high16 v20, -0x8000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    goto/16 :goto_0

    .line 1948
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v20

    if-eqz v20, :cond_6

    if-gez v13, :cond_6

    .line 1952
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1955
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->createScrollingCache()V

    .line 1956
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 1957
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->findMotionRow(I)I

    move-result v13

    .line 1958
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 1975
    .end local v13           #motionPosition:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 1976
    .local v8, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_0

    .line 1982
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_0

    .line 1992
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 1993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionCorrection:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    .line 1994
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    move/from16 v20, v0

    const/high16 v21, -0x8000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    move/from16 v20, v0

    sub-int v10, v19, v20

    .line 1995
    .local v10, incrementalDeltaY:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/htc/opensense/widget/AlbumAbsListView;->trackMotionScrollWithConstrain(II)V

    .line 1998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1999
    .local v14, motionView:Landroid/view/View;
    if-eqz v14, :cond_7

    .line 2002
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 2005
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->findMotionRow(I)I

    move-result v13

    .line 2007
    .restart local v13       #motionPosition:I
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionCorrection:I

    .line 2008
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2009
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    .line 2010
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionY:I

    .line 2011
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 2014
    .end local v13           #motionPosition:I
    :cond_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastY:I

    goto/16 :goto_0

    .end local v10           #incrementalDeltaY:I
    .end local v14           #motionView:Landroid/view/View;
    :cond_8
    move v10, v8

    .line 1994
    goto :goto_3

    .line 2023
    .end local v8           #deltaY:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_2

    .line 2128
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 2132
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2134
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 2135
    .local v9, handler:Landroid/os/Handler;
    if-eqz v9, :cond_a

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2139
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 2141
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 2027
    .end local v9           #handler:Landroid/os/Handler;
    :pswitch_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 2028
    .restart local v13       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2029
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-nez v20, :cond_17

    .line 2030
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 2032
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2036
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    .line 2037
    new-instance v20, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    .line 2040
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPerformClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;

    .line 2041
    .local v15, performClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;
    iput-object v6, v15, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2042
    iput v13, v15, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mClickMotionPosition:I

    .line 2043
    invoke-virtual {v15}, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2045
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2048
    const/4 v5, 0x0

    .line 2049
    .local v5, b:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 2050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 2051
    :cond_d
    const/4 v5, 0x1

    .line 2059
    :cond_e
    :goto_5
    if-eqz v5, :cond_16

    .line 2060
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 2061
    .restart local v9       #handler:Landroid/os/Handler;
    if-eqz v9, :cond_f

    .line 2062
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2065
    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2066
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2067
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_11

    .line 2068
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    .line 2070
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2071
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2072
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2075
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_10

    instance-of v0, v7, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 2076
    check-cast v7, Landroid/graphics/drawable/TransitionDrawable;

    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2080
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 2081
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    .line 2082
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/opensense/widget/AlbumAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2098
    :cond_11
    :goto_7
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 2054
    .end local v9           #handler:Landroid/os/Handler;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 2055
    :cond_13
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 2062
    .restart local v9       #handler:Landroid/os/Handler;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 2085
    :cond_15
    new-instance v20, Lcom/htc/opensense/widget/AlbumAbsListView$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v15}, Lcom/htc/opensense/widget/AlbumAbsListView$1;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 2100
    .end local v9           #handler:Landroid/os/Handler;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_17

    .line 2101
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/opensense/widget/AlbumAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2105
    .end local v5           #b:Z
    .end local v15           #performClick:Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;
    :cond_17
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    goto/16 :goto_4

    .line 2108
    .end local v6           #child:Landroid/view/View;
    .end local v13           #motionPosition:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    .line 2109
    .local v17, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2110
    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 2112
    .local v11, initialVelocity:I
    const/16 v12, 0x514

    .line 2113
    .local v12, maxVelocity:I
    const/16 v20, 0x514

    move/from16 v0, v20

    if-le v11, v0, :cond_19

    .line 2114
    const/16 v11, 0x514

    .line 2118
    :cond_18
    :goto_8
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v20

    if-lez v20, :cond_1a

    .line 2121
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/opensense/widget/AlbumAbsListView;->onFling(I)V

    goto/16 :goto_4

    .line 2115
    :cond_19
    const/16 v20, -0x514

    move/from16 v0, v20

    if-ge v11, v0, :cond_18

    .line 2116
    const/16 v11, -0x514

    goto :goto_8

    .line 2123
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->onUp()V

    goto/16 :goto_4

    .line 2154
    .end local v11           #initialVelocity:I
    .end local v12           #maxVelocity:I
    .end local v17           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_7
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2155
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 2156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2157
    .restart local v14       #motionView:Landroid/view/View;
    if-eqz v14, :cond_1b

    .line 2158
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2160
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    .line 2162
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 2163
    .restart local v9       #handler:Landroid/os/Handler;
    if-eqz v9, :cond_1c

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPendingCheckForLongPress:Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2167
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 2169
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 1933
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 1976
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2023
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
    .line 1877
    if-eqz p1, :cond_0

    .line 1879
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    .line 1883
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1886
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 1887
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    .line 1890
    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 3606
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 3607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    .line 3608
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1530
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onWindowFocusChanged(Z)V

    .line 1538
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1587
    :goto_0
    return-void

    .line 1545
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 1547
    .local v0, touchMode:I
    :goto_1
    if-nez p1, :cond_4

    .line 1550
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1551
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->resetPressedStatus(Landroid/view/View;)V

    .line 1555
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1556
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1558
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->dismissPopup()V

    .line 1560
    if-ne v0, v2, :cond_2

    .line 1562
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 1586
    :cond_2
    :goto_2
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    goto :goto_0

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 1545
    goto :goto_1

    .line 1565
    .restart local v0       #touchMode:I
    :cond_4
    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    .line 1567
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->showPopup()V

    .line 1571
    :cond_5
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1573
    if-ne v0, v2, :cond_6

    .line 1575
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resurrectSelection()Z

    goto :goto_2

    .line 1579
    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    .line 1580
    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 1581
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->layoutChildren()V

    goto :goto_2
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1765
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1766
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 1767
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1768
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1771
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    .line 1772
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1773
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1774
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1775
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1776
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1777
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 1781
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 1772
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1781
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
    .line 1794
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->pointToPosition(II)I

    move-result v0

    .line 1795
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 1796
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1798
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
    .line 1275
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1276
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

    .line 1277
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionSelector(IIII)V

    .line 1280
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mIsChildViewEnabled:Z

    .line 1281
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1282
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mIsChildViewEnabled:Z

    .line 1283
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->refreshDrawableState()V

    .line 1285
    :cond_0
    return-void

    .line 1282
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 0
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
    .line 3267
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 2585
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    .line 2586
    .local v0, position:I
    if-gez v0, :cond_0

    .line 2587
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2589
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2590
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2591
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2270
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2272
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/opensense/widget/AlbumAbsListView;I)V

    .line 2273
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mLastScrollState:I

    .line 2276
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 958
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->requestLayout()V

    .line 960
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->resetList()V

    .line 749
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    .line 750
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 752
    :cond_0
    return-void
.end method

.method protected abstract rescanScreen()V
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 966
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeAllViewsInLayout()V

    .line 967
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    .line 968
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    .line 969
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 970
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedPosition:I

    .line 971
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedRowId:J

    .line 972
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectedPositionInt(I)V

    .line 973
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->setNextSelectedPositionInt(I)V

    .line 974
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedTop:I

    .line 975
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 976
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 977
    return-void
.end method

.method resetListAndClearViews()V
    .locals 0

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rememberSyncState()V

    .line 985
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeAllViewsInLayout()V

    .line 988
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayout()V

    .line 989
    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 1905
    if-eqz p1, :cond_0

    .line 1906
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1907
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1908
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 1910
    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 2625
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v3

    .line 2627
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 2628
    const/16 v17, 0x0

    .line 2719
    :goto_0
    return v17

    .line 2631
    :cond_0
    const/4 v13, 0x0

    .line 2633
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 2634
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 2635
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    .line 2636
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2637
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 2639
    .local v6, down:Z
    if-lt v14, v7, :cond_3

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 2640
    move v12, v14

    .line 2642
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2643
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2644
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 2647
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_2

    .line 2648
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 2704
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mResurrectToPosition:I

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2706
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2707
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    .line 2708
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    .line 2709
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 2710
    if-lt v12, v7, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_b

    .line 2711
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mLayoutMode:I

    .line 2712
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelectionInt(I)V

    .line 2713
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invokeOnItemScrollListener()V

    .line 2717
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    .line 2719
    if-ltz v12, :cond_c

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 2649
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_2
    if-le v11, v4, :cond_1

    .line 2650
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 2654
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_3
    if-ge v14, v7, :cond_7

    .line 2656
    move v12, v7

    .line 2657
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 2658
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2659
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 2661
    .local v15, top:I
    if-nez v8, :cond_5

    .line 2663
    move v13, v15

    .line 2665
    if-gtz v7, :cond_4

    if-ge v15, v5, :cond_5

    .line 2668
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 2671
    :cond_5
    if-lt v15, v5, :cond_6

    .line 2673
    add-int v12, v7, v8

    .line 2674
    move v13, v15

    .line 2675
    goto/16 :goto_1

    .line 2657
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2679
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    .line 2680
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 2681
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 2683
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_4
    if-ltz v8, :cond_1

    .line 2684
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2685
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 2686
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2688
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    .line 2689
    move v13, v15

    .line 2690
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_8

    if-le v2, v4, :cond_9

    .line 2691
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 2695
    :cond_9
    if-gt v2, v4, :cond_a

    .line 2696
    add-int v12, v7, v8

    .line 2697
    move v13, v15

    .line 2698
    goto/16 :goto_1

    .line 2683
    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 2715
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_b
    const/4 v12, -0x1

    goto :goto_2

    .line 2719
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 2935
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 2987
    :cond_0
    :goto_0
    return v2

    .line 2939
    :cond_1
    const/4 v2, 0x0

    .line 2940
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 2941
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 2964
    :goto_1
    if-eqz v3, :cond_0

    .line 2965
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    .line 2967
    move-object v1, p3

    .line 2968
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 2969
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 2972
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2973
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2975
    :pswitch_0
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 2976
    goto :goto_0

    .line 2948
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 2949
    goto :goto_1

    .line 2951
    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    .line 2953
    const/4 v2, 0x1

    .line 2954
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2956
    :cond_3
    const/4 v3, 0x0

    .line 2957
    goto :goto_1

    .line 2960
    :sswitch_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    goto :goto_1

    .line 2979
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 2980
    goto :goto_0

    .line 2983
    :pswitch_2
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 2941
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

    .line 2973
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
    .line 3228
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mCacheColorHint:I

    .line 3229
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1895
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayActionUpTime:Z

    .line 1896
    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1900
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->delayIncludeDoneWaiting:Z

    .line 1901
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1378
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDrawSelectorOnTop:Z

    .line 1379
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 916
    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 917
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->createTextFilter(Z)V

    .line 920
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 921
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 922
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 924
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 926
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 930
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    .line 931
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataSetObserver:Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 934
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
    .line 1114
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/AlbumAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1119
    .local v0, changed:Z
    iget-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFiltered:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->positionPopup()V

    .line 1124
    :cond_0
    return v0
.end method

.method public setOnScrollListener(Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mOnScrollListener:Lcom/htc/opensense/widget/AlbumAbsListView$OnScrollListener;

    .line 603
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invokeOnItemScrollListener()V

    .line 604
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3282
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollUp:Landroid/view/View;

    .line 1458
    iput-object p2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollDown:Landroid/view/View;

    .line 1459
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    .line 649
    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollingCacheEnabled:Z

    .line 650
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1389
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1390
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1395
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1397
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1398
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1399
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1400
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionLeftPadding:I

    .line 1401
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionTopPadding:I

    .line 1402
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionRightPadding:I

    .line 1403
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectionBottomPadding:I

    .line 1404
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1405
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1406
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSmoothScrollbarEnabled:Z

    .line 582
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 741
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mStackFromBottom:Z

    .line 742
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->requestLayoutIfNecessary()V

    .line 744
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTextFilterEnabled:Z

    .line 664
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3203
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTranscriptMode:I

    .line 3204
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1357
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->touchModeDrawsInPressedState()Z

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
    .line 1710
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1711
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1712
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1713
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1715
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1719
    :cond_0
    if-nez v6, :cond_1

    .line 1720
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1723
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1728
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1340
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1345
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1343
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 23
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 2423
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v5

    .line 2424
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 2534
    :goto_0
    return-void

    .line 2428
    :cond_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v10

    .line 2429
    .local v10, firstTop:I
    add-int/lit8 v21, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 2431
    .local v15, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 2434
    .local v16, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v17, v21, v10

    .line 2435
    .local v17, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v8, v21, v22

    .line 2436
    .local v8, end:I
    sub-int v18, v15, v8

    .line 2438
    .local v18, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    .line 2439
    .local v13, height:I
    if-gez p1, :cond_1

    .line 2440
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2445
    :goto_1
    if-gez p2, :cond_2

    .line 2446
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2451
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2453
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v17

    if-lt v0, v2, :cond_3

    move/from16 v0, v18

    if-lt v0, v2, :cond_3

    .line 2454
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    .line 2455
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 2456
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    move/from16 v21, v0

    add-int v21, v21, p1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    goto/16 :goto_0

    .line 2442
    .end local v2           #absIncrementalDeltaY:I
    :cond_1
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 2448
    :cond_2
    add-int/lit8 v21, v13, -0x1

    move/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 2459
    .restart local v2       #absIncrementalDeltaY:I
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    .line 2461
    .local v9, firstPosition:I
    if-nez v9, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getTopBoundary()I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getTopBorderHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    if-le v10, v0, :cond_4

    if-lez p1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->enableStopScrollNow()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2463
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2467
    :cond_4
    add-int v21, v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getBottomBoundary()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, v8, v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getBottomBorderHeight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    if-ge v15, v0, :cond_5

    if-gez p1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->enableStopScrollNow()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 2469
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->onScrollToBoundary()V

    goto/16 :goto_0

    .line 2473
    :cond_5
    if-gez p2, :cond_8

    const/4 v7, 0x1

    .line 2475
    .local v7, down:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hideSelector()V

    .line 2477
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeaderViewsCount()I

    move-result v12

    .line 2478
    .local v12, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getFooterViewsCount()I

    move-result v22

    sub-int v11, v21, v22

    .line 2480
    .local v11, footerViewsStart:I
    const/16 v19, 0x0

    .line 2481
    .local v19, start:I
    const/4 v6, 0x0

    .line 2484
    .local v6, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildrenTotalHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 2485
    if-eqz v7, :cond_a

    .line 2486
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v21, p2

    .line 2487
    .local v20, top:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    if-ge v14, v5, :cond_6

    .line 2488
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2489
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    .line 2518
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    .end local v20           #top:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    move/from16 v21, v0

    add-int v21, v21, p1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    .line 2520
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    .line 2521
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->detachViewsFromParent(II)V

    .line 2522
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 2524
    if-eqz v7, :cond_7

    .line 2525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    add-int v21, v21, v6

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    .line 2528
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invalidate()V

    .line 2529
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->fillGap(Z)V

    .line 2530
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    .line 2532
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->invokeOnItemScrollListener()V

    goto/16 :goto_0

    .line 2473
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v11           #footerViewsStart:I
    .end local v12           #headerViewsCount:I
    .end local v19           #start:I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2492
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v11       #footerViewsStart:I
    .restart local v12       #headerViewsCount:I
    .restart local v14       #i:I
    .restart local v19       #start:I
    .restart local v20       #top:I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 2487
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2496
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    .end local v20           #top:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v3, v21, p2

    .line 2497
    .local v3, bottom:I
    add-int/lit8 v14, v5, -0x1

    .restart local v14       #i:I
    :goto_5
    if-ltz v14, :cond_6

    .line 2498
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2499
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v3, :cond_6

    .line 2502
    move/from16 v19, v14

    .line 2503
    add-int/lit8 v6, v6, 0x1

    .line 2497
    add-int/lit8 v14, v14, -0x1

    goto :goto_5
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 0
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3602
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsListView;->trackMotionScroll(II)V

    .line 3603
    return-void
.end method

.method unPressedAllChildren()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3639
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3640
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3642
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 3643
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1131
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 1134
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 1137
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 1139
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1140
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 1144
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1149
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v3

    .line 1152
    .local v3, count:I
    iget v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 1155
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1156
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1157
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 1160
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 1134
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v5

    .line 1140
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v6, v7

    .line 1144
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v5

    .line 1152
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v5

    .line 1157
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v7

    .line 1160
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
