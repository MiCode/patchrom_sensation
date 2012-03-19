.class public abstract Lcom/htc/widget/HtcAbsListView;
.super Lcom/htc/widget/HtcAdapterView;
.source "HtcAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsListView$RecycleBin;,
        Lcom/htc/widget/HtcAbsListView$RecyclerListener;,
        Lcom/htc/widget/HtcAbsListView$LayoutParams;,
        Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;,
        Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;,
        Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;,
        Lcom/htc/widget/HtcAbsListView$PositionScroller;,
        Lcom/htc/widget/HtcAbsListView$FlingRunnable;,
        Lcom/htc/widget/HtcAbsListView$CheckForTap;,
        Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;,
        Lcom/htc/widget/HtcAbsListView$CheckForLongPress;,
        Lcom/htc/widget/HtcAbsListView$PerformClick;,
        Lcom/htc/widget/HtcAbsListView$WindowRunnnable;,
        Lcom/htc/widget/HtcAbsListView$SavedState;,
        Lcom/htc/widget/HtcAbsListView$OnScrollListener;
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
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field protected static final PROFILE_FLINGING:Z = false

.field protected static final PROFILE_SCROLLING:Z = false

.field private static final RAISE_THREAD_PRIORITY:I = -0x5

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field protected static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field protected static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private delayActionUpTime:Z

.field private delayIncludeDoneWaiting:Z

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Lcom/htc/widget/HtcFastScroller;

.field private mFiltered:Z

.field protected mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mLogFps:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

.field public mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field mOverScrollCheck:Z

.field private mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

.field protected mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field protected mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollWhenResurrectSelection:Z

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field private mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field protected mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field private mStrictModePolicy:I

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field protected mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field private prevPriority:I

.field private priorityRaised:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 599
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    .line 211
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 242
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 257
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 267
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 273
    new-instance v1, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 278
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 283
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 288
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 293
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 298
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 303
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 350
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 381
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 419
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 439
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 441
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 450
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 453
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    .line 456
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    .line 498
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 522
    new-array v1, v4, [Z

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 532
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 540
    iput-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollWhenResurrectSelection:Z

    .line 542
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    .line 2526
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    .line 2531
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    .line 2536
    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    .line 3011
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 600
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    .line 602
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 603
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 604
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 605
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 606
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 609
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 610
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 613
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 242
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 257
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 267
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 273
    new-instance v9, Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 278
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 283
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 288
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 293
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 298
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 303
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 350
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 381
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 419
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 439
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 441
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 450
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 453
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollProfilingStarted:Z

    .line 456
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mFlingProfilingStarted:Z

    .line 498
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 522
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 532
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 540
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollWhenResurrectSelection:Z

    .line 542
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    .line 2526
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    .line 2531
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    .line 2536
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    .line 3011
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 614
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->initAbsListView()V

    .line 616
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 619
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 620
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 621
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 624
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 627
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 628
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->setStackFromBottom(Z)V

    .line 630
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 631
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    .line 633
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 634
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->setTextFilterEnabled(Z)V

    .line 636
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 638
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setTranscriptMode(I)V

    .line 640
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 641
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setCacheColorHint(I)V

    .line 643
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 644
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setFastScrollEnabled(Z)V

    .line 646
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 647
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 649
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->setChoiceMode(I)V

    .line 651
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 652
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1376
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcAbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcFastScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcAbsListView;)Lcom/htc/widget/HtcAbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4561
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 4579
    :cond_0
    return v2

    .line 4562
    :cond_1
    const/4 v2, 0x1

    .line 4564
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4565
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4566
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4567
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4568
    const/4 v2, 0x0

    .line 4569
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 4573
    const/4 v2, 0x0

    .line 4574
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 993
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 994
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 997
    :cond_0
    :goto_0
    return v1

    .line 995
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 997
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 4307
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 4308
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4309
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4310
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 4312
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900ad

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 4317
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4319
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 4320
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4321
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4322
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4323
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4324
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4325
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4326
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4327
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4328
    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 4329
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4330
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 4332
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 4333
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4337
    :goto_0
    return-void

    .line 4335
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1966
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1968
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1969
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1971
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
    .line 4129
    sparse-switch p2, :sswitch_data_0

    .line 4155
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4131
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 4132
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4133
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 4134
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4158
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 4159
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 4160
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 4137
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

    .line 4138
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 4139
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4140
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4141
    .restart local v1       #dY:I
    goto :goto_0

    .line 4143
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 4144
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 4145
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 4146
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 4147
    .restart local v1       #dY:I
    goto :goto_0

    .line 4149
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

    .line 4150
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 4151
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 4152
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 4153
    .restart local v1       #dY:I
    goto :goto_0

    .line 4129
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 656
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setClickable(Z)V

    .line 657
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setFocusableInTouchMode(Z)V

    .line 658
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setWillNotDraw(Z)V

    .line 659
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 660
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setScrollingCacheEnabled(Z)V

    .line 662
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 663
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    .line 664
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    .line 665
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    .line 666
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    .line 672
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileLogFps()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    .line 676
    instance-of v1, p0, Lcom/htc/widget/HtcGridViewCore;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/htc/widget/HtcGridView;

    if-nez v1, :cond_0

    .line 677
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    .line 678
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 2964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 2966
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2967
    .local v1, pointerId:I
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2971
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2972
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 2973
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 2974
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 2975
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2976
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2979
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 2971
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2310
    const/4 v6, 0x0

    .line 2312
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2316
    :cond_0
    if-nez v6, :cond_1

    .line 2317
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2318
    invoke-super {p0, p0}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2320
    :cond_1
    if-eqz v6, :cond_2

    .line 2321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->performHapticFeedback(I)Z

    .line 2323
    :cond_2
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4102
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4103
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 4104
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getLocationOnScreen([I)V

    .line 4107
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 4108
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4109
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4114
    :goto_0
    return-void

    .line 4112
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

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
    .line 1885
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1887
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4094
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 4095
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    .line 4097
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkFocus()V

    .line 4099
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 4

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v2, "list_selector_holo_dark"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1188
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(I)V

    .line 1191
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
    .line 2986
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    .line 2987
    .local v2, count:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 2988
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2990
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 3001
    :cond_0
    return-void

    .line 2994
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2995
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2996
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2997
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2999
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2994
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 4417
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 4379
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 4298
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 4438
    instance-of v0, p1, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 804
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 805
    return-void
.end method

.method clearScrollingCache()V
    .locals 1

    .prologue
    .line 3510
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3511
    new-instance v0, Lcom/htc/widget/HtcAbsListView$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$2;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 3526
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3527
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 4343
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 4344
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 4346
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4347
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 4350
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1565
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 1566
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1567
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1568
    mul-int/lit8 v2, v1, 0x64

    .line 1570
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1571
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1572
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1573
    .local v5, width:I
    if-lez v5, :cond_0

    .line 1574
    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    .line 1577
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1578
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1579
    .local v0, bottom:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1580
    if-lez v5, :cond_1

    .line 1581
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v2, v6

    .line 1589
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #width:I
    :cond_1
    :goto_0
    return v2

    .line 1586
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1589
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1594
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1595
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1596
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1597
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1598
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1599
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1600
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1601
    .local v6, width:I
    if-lez v6, :cond_0

    .line 1602
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1617
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    .end local v6           #width:I
    :cond_0
    :goto_0
    return v7

    .line 1606
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1607
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1608
    const/4 v3, 0x0

    .line 1614
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

    .line 1609
    .end local v3           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1610
    move v3, v1

    .restart local v3       #index:I
    goto :goto_1

    .line 1612
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
    .line 1622
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

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

    .line 1459
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 1460
    .local v1, count:I
    if-lez v1, :cond_3

    .line 1461
    iget-boolean v7, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 1462
    mul-int/lit8 v2, v1, 0x64

    .line 1464
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1465
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1466
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1467
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1468
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1471
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1472
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1473
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1474
    if-lez v3, :cond_1

    .line 1475
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 1483
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 1480
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 1483
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1488
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1489
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1490
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1491
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1492
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1493
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1494
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1495
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1496
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1512
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1501
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1502
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1503
    const/4 v4, 0x0

    .line 1509
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

    .line 1504
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1505
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1507
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1518
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_0

    .line 1519
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1523
    .local v0, result:I
    :goto_0
    return v0

    .line 1521
    .end local v0           #result:I
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2222
    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3502
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3503
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3504
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3505
    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    .line 3507
    :cond_0
    return-void
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4084
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4086
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1891
    const/4 v2, 0x0

    .line 1892
    .local v2, saveCount:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 1893
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1894
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1895
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    .line 1896
    .local v3, scrollX:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 1897
    .local v4, scrollY:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1900
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    .line 1903
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 1904
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1905
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1908
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1910
    if-eqz v1, :cond_2

    .line 1911
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1914
    :cond_2
    if-eqz v0, :cond_3

    .line 1915
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1916
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    .line 1918
    :cond_3
    return-void

    .line 1892
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
    .line 2388
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2885
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 2886
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 2887
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 2889
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 2075
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->drawableStateChanged()V

    .line 2076
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2079
    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 5098
    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 3794
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 3795
    .local v0, childCount:I
    if-nez v0, :cond_1

    move v1, v2

    .line 3800
    :cond_0
    :goto_0
    return v1

    .line 3799
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v1

    .line 3800
    .local v1, motionRow:I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method protected abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 4428
    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4433
    new-instance v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 5126
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomBoundary()I
    .locals 1

    .prologue
    .line 5073
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1545
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 1546
    .local v1, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1547
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 1557
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 1550
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1551
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1554
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1555
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v4

    .line 1556
    .local v4, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1557
    .local v3, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 4494
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 779
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 780
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 791
    :cond_1
    return-object v3

    .line 783
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 784
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 785
    .local v0, count:I
    new-array v3, v0, [J

    .line 787
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 788
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 787
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 747
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 751
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 767
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    .prologue
    .line 5106
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    if-eqz v2, :cond_1

    .line 5107
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getPageHeightWithGap()I

    move-result v0

    .line 5113
    :cond_0
    return v0

    .line 5109
    :cond_1
    const/4 v0, 0x0

    .line 5110
    .local v0, childrenTotalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5111
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 5110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;
    .locals 1

    .prologue
    .line 5094
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1174
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1177
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1178
    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1183
    :goto_0
    return-void

    .line 1181
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3725
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3715
    const/4 v0, 0x0

    return v0
.end method

.method protected getItemsPerPage()I
    .locals 1

    .prologue
    .line 5157
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    .prologue
    .line 5140
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1628
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 1629
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1638
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1632
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1633
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1636
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1637
    .local v3, left:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1638
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getPageCount()I
    .locals 1

    .prologue
    .line 5166
    const/4 v0, 0x0

    return v0
.end method

.method protected getPageHeightWithGap()I
    .locals 1

    .prologue
    .line 5149
    const/4 v0, 0x0

    return v0
.end method

.method getRightBorderWidth()I
    .locals 1

    .prologue
    .line 5136
    const/4 v0, 0x0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 1644
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1645
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 1646
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1656
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1649
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1650
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1653
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1654
    .local v3, right:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v4

    .line 1655
    .local v4, width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 1656
    .local v2, fadeLength:F
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method protected getRowPerPage()I
    .locals 1

    .prologue
    .line 5174
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1754
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1755
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1757
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 4467
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1413
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1416
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 5130
    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    .prologue
    .line 5069
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1529
    .local v0, count:I
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1530
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 1539
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1533
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 1534
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1537
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1538
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1539
    .local v2, fadeLength:F
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 4462
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 3933
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 3934
    .local v0, count:I
    if-lez v0, :cond_c

    .line 3941
    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v5, :cond_3

    .line 3943
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 3945
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-eq v5, v10, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    if-lt v5, v6, :cond_2

    .line 3949
    :cond_0
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 4059
    :cond_1
    :goto_0
    return-void

    .line 3953
    :cond_2
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    packed-switch v5, :pswitch_data_0

    .line 4015
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_b

    .line 4017
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v2

    .line 4020
    .local v2, newPos:I
    if-lt v2, v0, :cond_4

    .line 4021
    add-int/lit8 v2, v0, -0x1

    .line 4023
    :cond_4
    if-gez v2, :cond_5

    .line 4024
    const/4 v2, 0x0

    .line 4028
    :cond_5
    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 4030
    .local v3, selectablePos:I
    if-ltz v3, :cond_a

    .line 4031
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3955
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3960
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 3961
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 3967
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->findSyncPosition()I

    move-result v2

    .line 3968
    .restart local v2       #newPos:I
    if-ltz v2, :cond_3

    .line 3970
    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 3971
    .restart local v3       #selectablePos:I
    if-ne v3, v2, :cond_3

    .line 3973
    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 3975
    iget-wide v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 3978
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 3986
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3982
    :cond_7
    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_1

    .line 3994
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :pswitch_1
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 3995
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 3996
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    if-eqz v4, :cond_1

    .line 3997
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getItemsPerPage()I

    move-result v1

    .line 3998
    .local v1, itemsPerPage:I
    if-lez v1, :cond_8

    .line 3999
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    mul-int/2addr v4, v1

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 4001
    :cond_8
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-lt v4, v0, :cond_1

    .line 4002
    :goto_2
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-lt v4, v0, :cond_9

    .line 4003
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto :goto_2

    .line 4005
    :cond_9
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-gez v4, :cond_1

    .line 4006
    iput v7, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    goto/16 :goto_0

    .line 4035
    .end local v1           #itemsPerPage:I
    .restart local v2       #newPos:I
    .restart local v3       #selectablePos:I
    :cond_a
    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 4036
    if-ltz v3, :cond_c

    .line 4037
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 4044
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_b
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    if-gez v5, :cond_1

    .line 4052
    :cond_c
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_d

    const/4 v4, 0x3

    :cond_d
    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 4053
    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 4054
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 4055
    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 4056
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 4057
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 4058
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 3953
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 4356
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3739
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 3740
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3741
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 3743
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 3744
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 3746
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 3747
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 3748
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 3751
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3753
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 3808
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 3809
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 3810
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3811
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 1108
    :cond_1
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 4165
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 730
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->isVisible()Z

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

    .line 2031
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 2035
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2036
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2037
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2040
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2042
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2043
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2044
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2046
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2048
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v1

    .line 2049
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2050
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 2051
    if-eqz v1, :cond_6

    .line 2052
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2058
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 2059
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 2060
    new-instance v5, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    .line 2062
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2063
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForKeyLongPress:Lcom/htc/widget/HtcAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2055
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
    .line 1715
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v5, 0x0

    .line 1822
    aput-boolean v5, p2, v5

    .line 1825
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1828
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1834
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1835
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1836
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

    .line 1842
    :cond_0
    if-eq v0, v1, :cond_2

    .line 1843
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1844
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1845
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1868
    :cond_1
    :goto_0
    return-object v0

    .line 1852
    :cond_2
    const/4 v2, 0x1

    aput-boolean v2, p2, v5

    .line 1853
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 1856
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1857
    .restart local v0       #child:Landroid/view/View;
    if-nez v0, :cond_4

    .line 1858
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

    .line 1859
    :cond_4
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_1

    .line 1860
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 3536
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 3537
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3536
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3539
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2122
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onAttachedToWindow()V

    .line 2124
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2125
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2126
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2127
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 2128
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2131
    :cond_0
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 4530
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 4532
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    .line 4534
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 4536
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$1900(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 4537
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 4538
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 4539
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 4540
    const/4 v4, 0x0

    .line 4541
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4532
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4548
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$2000(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4549
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    .line 4550
    :cond_3
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$2100(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 4551
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 4552
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 4553
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .line 4552
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4557
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 2084
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2086
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2112
    :cond_0
    :goto_0
    return-object v3

    .line 2092
    :cond_1
    sget-object v4, Lcom/htc/widget/HtcAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2097
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2098
    .local v3, state:[I
    const/4 v0, -0x1

    .line 2099
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 2100
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2101
    move v0, v2

    .line 2107
    :cond_2
    if-ltz v0, :cond_0

    .line 2108
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2099
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 4243
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4247
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 4248
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 4249
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 4250
    new-instance v0, Lcom/htc/widget/HtcAbsListView$3;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/widget/HtcAbsListView$3;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4284
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4286
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4287
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 4289
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2135
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onDetachedFromWindow()V

    .line 2138
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 2141
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    .line 2143
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2144
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 2145
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2146
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 2147
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 2151
    :cond_0
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 4063
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onDisplayHint(I)V

    .line 4064
    sparse-switch p1, :sswitch_data_0

    .line 4076
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    .line 4077
    return-void

    .line 4066
    :sswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4067
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0

    .line 4071
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4072
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    goto :goto_0

    .line 4076
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4064
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 4420
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 4421
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 4422
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    .line 4424
    :cond_0
    return-void
.end method

.method protected onFling(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    .line 5086
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5087
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 5089
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 5090
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    .line 5091
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1421
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1423
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    if-eqz v0, :cond_0

    .line 1424
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 1428
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1429
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    .line 1431
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 4360
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4362
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 4363
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 4372
    :cond_0
    :goto_0
    return-void

    .line 4367
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4368
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2896
    .local v0, action:I
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v10, :cond_0

    .line 2897
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v10, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2898
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 2960
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 2903
    :cond_0
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 2960
    goto :goto_0

    .line 2905
    :pswitch_1
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2907
    .local v4, touchMode:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 2908
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 2909
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 2911
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v2

    .line 2913
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_3

    if-ltz v2, :cond_3

    .line 2916
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2918
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 2919
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 2921
    :cond_2
    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 2922
    iput v7, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 2923
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2924
    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2925
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 2927
    .end local v5           #v:Landroid/view/View;
    :cond_3
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 2928
    if-ne v4, v12, :cond_1

    goto :goto_0

    .line 2935
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto :goto_1

    .line 2937
    :pswitch_3
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2938
    .local v3, pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 2939
    .restart local v7       #y:I
    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 2948
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2949
    iput v11, p0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 2950
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 2955
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 2903
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 2935
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2356
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2361
    sparse-switch p1, :sswitch_data_0

    .line 2381
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2364
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2367
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2371
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2372
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2373
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2374
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2376
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    goto :goto_0

    .line 2361
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1680
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    .line 1681
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 1682
    if-eqz p1, :cond_1

    .line 1683
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 1684
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1685
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 1684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1687
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->markChildrenDirty()V

    .line 1690
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 1691
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 1692
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1664
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1665
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->useDefaultSelector()V

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1668
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1669
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1670
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1671
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1672
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1346
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsListView$SavedState;

    .line 1348
    .local v0, ss:Lcom/htc/widget/HtcAbsListView$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1349
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1351
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    .line 1353
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    .line 1354
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1355
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1356
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1357
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1358
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    .line 1370
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1373
    return-void

    .line 1359
    :cond_1
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1360
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 1362
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 1363
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1364
    iget-wide v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1365
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1366
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1367
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v8, 0x0

    .line 1297
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 1299
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 1301
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Lcom/htc/widget/HtcAbsListView$SavedState;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1303
    .local v4, ss:Lcom/htc/widget/HtcAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v1, 0x1

    .line 1304
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 1305
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->selectedId:J

    .line 1307
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v9

    iput v9, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->height:I

    .line 1309
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_2

    .line 1311
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1313
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    .line 1314
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    .line 1330
    :goto_1
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1331
    iget-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v8, :cond_0

    .line 1332
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1333
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_0

    .line 1334
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1335
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1341
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_0
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v8

    .line 1303
    goto :goto_0

    .line 1316
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    if-eqz v1, :cond_3

    .line 1318
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1320
    .local v7, v:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1321
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    .line 1322
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 1324
    .end local v7           #v:Landroid/view/View;
    :cond_3
    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->viewTop:I

    .line 1325
    iput-wide v11, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->firstId:J

    .line 1326
    iput v8, v4, Lcom/htc/widget/HtcAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method onScrollToBoundary()V
    .locals 0

    .prologue
    .line 5103
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1923
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    if-eqz v0, :cond_0

    .line 1924
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    .line 1929
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1931
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 1934
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_2

    .line 1935
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    .line 1937
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4387
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4388
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4389
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 4390
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 4392
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 4393
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 4399
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 4400
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4402
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 4403
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4410
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 4394
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 4396
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 4397
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_0

    .line 4405
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .parameter "ev"

    .prologue
    .line 2548
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_2

    .line 2551
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isClickable()Z

    move-result v23

    if-nez v23, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isLongClickable()Z

    move-result v23

    if-eqz v23, :cond_1

    :cond_0
    const/16 v23, 0x1

    .line 2880
    :goto_0
    return v23

    .line 2551
    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    .line 2555
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 2556
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstanceIfExist()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    .line 2560
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 2561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 2562
    .local v14, intercepted:Z
    if-eqz v14, :cond_4

    .line 2563
    const/16 v23, 0x1

    goto :goto_0

    .line 2567
    .end local v14           #intercepted:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2572
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    .line 2573
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2575
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2577
    and-int/lit16 v0, v4, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 2880
    :cond_6
    :goto_1
    :pswitch_0
    const/16 v23, 0x1

    goto :goto_0

    .line 2579
    :pswitch_1
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 2580
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2581
    .local v21, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2582
    .local v22, y:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v15

    .line 2583
    .local v15, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 2584
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    if-ltz v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v23

    check-cast v23, Landroid/widget/ListAdapter;

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 2588
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    if-nez v23, :cond_7

    .line 2591
    new-instance v23, Lcom/htc/widget/HtcAbsListView$CheckForTap;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsListView$CheckForTap;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2593
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2615
    :cond_8
    :goto_2
    if-ltz v15, :cond_9

    .line 2617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2618
    .local v19, v:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 2620
    .end local v19           #v:Landroid/view/View;
    :cond_9
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    .line 2621
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 2622
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2623
    const/high16 v23, -0x8000

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 2595
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v23

    if-eqz v23, :cond_b

    if-gez v15, :cond_b

    .line 2599
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 2602
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 2604
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 2605
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2606
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 2608
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v15

    .line 2610
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2628
    .end local v15           #motionPosition:I
    .end local v21           #x:I
    .end local v22           #y:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 2629
    .local v18, pointerIndex:I
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 2633
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2634
    .restart local v22       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move/from16 v23, v0

    sub-int v10, v22, v23

    .line 2636
    .local v10, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    goto/16 :goto_1

    .line 2643
    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2653
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    .line 2654
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    move/from16 v23, v0

    sub-int v10, v10, v23

    .line 2655
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v23, v0

    const/high16 v24, -0x8000

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    move/from16 v23, v0

    sub-int v12, v22, v23

    .line 2658
    .local v12, incrementalDeltaY:I
    :goto_3
    const/4 v5, 0x0

    .line 2659
    .local v5, atEdge:Z
    if-eqz v12, :cond_c

    .line 2660
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lcom/htc/widget/HtcAbsListView;->trackMotionScrollWithConstrain(II)Z

    move-result v5

    .line 2664
    :cond_c
    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v23

    if-lez v23, :cond_e

    .line 2669
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->findMotionRow(I)I

    move-result v15

    .line 2670
    .restart local v15       #motionPosition:I
    if-ltz v15, :cond_d

    .line 2671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2672
    .local v16, motionView:Landroid/view/View;
    if-eqz v16, :cond_d

    .line 2673
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 2675
    .end local v16           #motionView:Landroid/view/View;
    :cond_d
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    .line 2676
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2677
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 2679
    .end local v15           #motionPosition:I
    :cond_e
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    .line 2683
    .end local v5           #atEdge:Z
    .end local v12           #incrementalDeltaY:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 2684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelectionMethod:Landroid/text/method/TextSelectionMovementMethod;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v1, v10, v2, v3}, Landroid/text/method/TextSelectionMovementMethod;->onScrollChanged(IIII)V

    goto/16 :goto_1

    :cond_10
    move v12, v10

    .line 2655
    goto :goto_3

    .line 2694
    .end local v10           #deltaY:I
    .end local v18           #pointerIndex:I
    .end local v22           #y:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_2

    .line 2803
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    move/from16 v23, v0

    if-nez v23, :cond_11

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2807
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 2809
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 2810
    .local v11, handler:Landroid/os/Handler;
    if-eqz v11, :cond_12

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2814
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/VelocityTracker;->recycle()V

    .line 2816
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2819
    :cond_13
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 2698
    .end local v11           #handler:Landroid/os/Handler;
    :pswitch_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2699
    .restart local v15       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2700
    .local v7, child:Landroid/view/View;
    if-eqz v7, :cond_20

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v23

    if-nez v23, :cond_20

    .line 2701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_14

    .line 2703
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    move/from16 v23, v0

    if-nez v23, :cond_14

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2707
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v23, v0

    if-nez v23, :cond_15

    .line 2708
    new-instance v23, Lcom/htc/widget/HtcAbsListView$PerformClick;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    .line 2711
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPerformClick:Lcom/htc/widget/HtcAbsListView$PerformClick;

    move-object/from16 v17, v0

    .line 2712
    .local v17, performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/htc/widget/HtcAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2713
    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/widget/HtcAbsListView$PerformClick;->mClickMotionPosition:I

    .line 2714
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2716
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 2719
    const/4 v6, 0x0

    .line 2720
    .local v6, b:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 2721
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 2722
    :cond_16
    const/4 v6, 0x1

    .line 2730
    :cond_17
    :goto_5
    if-eqz v6, :cond_1f

    .line 2731
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 2732
    .restart local v11       #handler:Landroid/os/Handler;
    if-eqz v11, :cond_18

    .line 2733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    if-nez v23, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    :goto_6
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2736
    :cond_18
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v23, v0

    if-nez v23, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 2738
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 2740
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 2741
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2742
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2743
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_19

    .line 2745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2746
    .local v9, d:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_19

    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v23, v0

    if-eqz v23, :cond_19

    .line 2747
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2751
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 2752
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    .line 2753
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2769
    :goto_7
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2725
    .end local v11           #handler:Landroid/os/Handler;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 2726
    :cond_1b
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 2733
    .restart local v11       #handler:Landroid/os/Handler;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v23, v0

    goto/16 :goto_6

    .line 2755
    :cond_1d
    new-instance v23, Lcom/htc/widget/HtcAbsListView$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/widget/HtcAbsListView$1;-><init>(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Lcom/htc/widget/HtcAbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 2767
    :cond_1e
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto :goto_7

    .line 2770
    .end local v11           #handler:Landroid/os/Handler;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v23, v0

    if-nez v23, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 2771
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2774
    .end local v6           #b:Z
    .end local v17           #performClick:Lcom/htc/widget/HtcAbsListView$PerformClick;
    :cond_20
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    goto/16 :goto_4

    .line 2777
    .end local v7           #child:Landroid/view/View;
    .end local v15           #motionPosition:I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v8

    .line 2778
    .local v8, childCount:I
    if-lez v8, :cond_23

    .line 2779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    if-nez v23, :cond_21

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    add-int v23, v23, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_21

    add-int/lit8 v23, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_21

    .line 2783
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2784
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 2786
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    .line 2787
    .local v20, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2788
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fe999999999999aL

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v13, v0

    .line 2790
    .local v13, initialVelocity:I
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_22

    .line 2791
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAbsListView;->onFling(I)V

    goto/16 :goto_4

    .line 2793
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onUp()V

    goto/16 :goto_4

    .line 2797
    .end local v13           #initialVelocity:I
    .end local v20           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onUp()V

    goto/16 :goto_4

    .line 2831
    .end local v8           #childCount:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 2832
    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2833
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    .line 2836
    :cond_24
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2837
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2839
    .restart local v16       #motionView:Landroid/view/View;
    if-eqz v16, :cond_25

    .line 2840
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2842
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 2844
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 2845
    .restart local v11       #handler:Landroid/os/Handler;
    if-eqz v11, :cond_26

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2849
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-eqz v23, :cond_27

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/VelocityTracker;->recycle()V

    .line 2851
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2854
    :cond_27
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I

    .line 2856
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 2857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2858
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto/16 :goto_1

    .line 2865
    .end local v11           #handler:Landroid/os/Handler;
    .end local v16           #motionView:Landroid/view/View;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionX:I

    move/from16 v21, v0

    .line 2867
    .restart local v21       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    move/from16 v22, v0

    .line 2868
    .restart local v22       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v15

    .line 2869
    .restart local v15       #motionPosition:I
    if-ltz v15, :cond_28

    .line 2871
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2872
    .restart local v19       #v:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    .line 2873
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    .line 2875
    .end local v19           #v:Landroid/view/View;
    :cond_28
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLastY:I

    goto/16 :goto_1

    .line 2577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 2636
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2694
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 2511
    if-eqz p1, :cond_0

    .line 2513
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 2517
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2520
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 2523
    :cond_0
    return-void
.end method

.method protected onUp()V
    .locals 1

    .prologue
    .line 5081
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 5082
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 5083
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2155
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onWindowFocusChanged(Z)V

    .line 2157
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2159
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_4

    .line 2162
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2163
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->resetPressedStatus(Landroid/view/View;)V

    .line 2167
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2168
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 2169
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2172
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 2173
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2174
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    .line 2175
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 2179
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->dismissPopup()V

    .line 2181
    if-ne v0, v2, :cond_2

    .line 2183
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 2207
    :cond_2
    :goto_1
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    .line 2208
    return-void

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 2157
    goto :goto_0

    .line 2186
    .restart local v0       #touchMode:I
    :cond_4
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_5

    .line 2188
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->showPopup()V

    .line 2192
    :cond_5
    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2194
    if-ne v0, v2, :cond_6

    .line 2196
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 2200
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 2201
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2202
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 880
    const/4 v7, 0x0

    .line 881
    .local v7, handled:Z
    const/4 v6, 0x1

    .line 883
    .local v6, dispatchItemClick:Z
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 884
    const/4 v7, 0x1

    .line 886
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v8

    .line 889
    .local v5, newValue:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 890
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    if-eqz v5, :cond_6

    .line 892
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 897
    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    .line 898
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 902
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 905
    const/4 v6, 0x0

    .line 922
    .end local v5           #newValue:Z
    :cond_2
    :goto_3
    iput-boolean v8, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 923
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 924
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 927
    :cond_3
    if-eqz v6, :cond_4

    .line 928
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 931
    :cond_4
    return v7

    :cond_5
    move v5, v0

    .line 888
    goto :goto_0

    .line 894
    .restart local v5       #newValue:Z
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 900
    :cond_7
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 907
    .end local v5           #newValue:Z
    :cond_8
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_2

    .line 908
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    move v5, v8

    .line 909
    .restart local v5       #newValue:Z
    :goto_4
    if-eqz v5, :cond_b

    .line 910
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 911
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 912
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 913
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 914
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 916
    :cond_9
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v5           #newValue:Z
    :cond_a
    move v5, v0

    .line 908
    goto :goto_4

    .line 917
    .restart local v5       #newValue:Z
    :cond_b
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 918
    :cond_c
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2399
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2400
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2401
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2402
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2405
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 2406
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2407
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2408
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2409
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2410
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2411
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2415
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2406
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2415
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
    .line 2428
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->pointToPosition(II)I

    move-result v0

    .line 2429
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 2430
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2432
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
    .line 1872
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1873
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

    .line 1874
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->positionSelector(IIII)V

    .line 1877
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    .line 1878
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1879
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mIsChildViewEnabled:Z

    .line 1880
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->refreshDrawableState()V

    .line 1882
    :cond_0
    return-void

    .line 1879
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
    .line 4505
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v1

    .line 4506
    .local v1, childCount:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #getter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$1800(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    move-result-object v3

    .line 4509
    .local v3, listener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4510
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4511
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 4513
    .local v4, lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget v6, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4514
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4515
    if-eqz v3, :cond_0

    .line 4517
    invoke-interface {v3, v0}, Lcom/htc/widget/HtcAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 4509
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4521
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 4522
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    .line 4523
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 3761
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 3762
    .local v0, position:I
    if-gez v0, :cond_0

    .line 3763
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 3765
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3766
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3767
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 7
    .parameter "newState"

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x5

    const/4 v5, 0x1

    .line 3016
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    if-eq p1, v2, :cond_4

    .line 3034
    packed-switch p1, :pswitch_data_0

    .line 3052
    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mLogFps:I

    if-ne v2, v5, :cond_2

    .line 3053
    const/4 v0, 0x0

    .line 3054
    .local v0, activity:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 3055
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3057
    :cond_1
    packed-switch p1, :pswitch_data_1

    .line 3077
    .end local v0           #activity:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v2, :cond_3

    .line 3078
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v2, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 3081
    :cond_3
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mLastScrollState:I

    .line 3083
    :cond_4
    return-void

    .line 3036
    :pswitch_0
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3037
    iput-boolean v6, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto :goto_0

    .line 3042
    :pswitch_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 3043
    .local v1, pri:I
    if-eq v1, v3, :cond_0

    .line 3044
    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->prevPriority:I

    .line 3045
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3046
    iput-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->priorityRaised:Z

    goto :goto_0

    .line 3059
    .end local v1           #pri:I
    .restart local v0       #activity:Ljava/lang/String;
    :pswitch_2
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_IDLE, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    sput-boolean v6, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_1

    .line 3064
    :pswitch_3
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_TOUCH_SCROLL, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    sput-boolean v5, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_1

    .line 3069
    :pswitch_4
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCROLL_STATE_FLING, activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    sput-boolean v5, Landroid/view/ViewDebug;->logFps:Z

    goto :goto_1

    .line 3034
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3057
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1435
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1436
    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    .line 1438
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1219
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1220
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->resetList()V

    .line 1221
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    .line 1222
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1224
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1444
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->removeAllViewsInLayout()V

    .line 1445
    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1446
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1447
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1448
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 1449
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 1450
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setSelectedPositionInt(I)V

    .line 1451
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->setNextSelectedPositionInt(I)V

    .line 1452
    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1453
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1454
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 1455
    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 2538
    if-eqz p1, :cond_0

    .line 2539
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2540
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2541
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2543
    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 3827
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 3829
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 3830
    const/16 v17, 0x0

    .line 3928
    :goto_0
    return v17

    .line 3833
    :cond_0
    const/4 v13, 0x0

    .line 3835
    .local v13, selectedTop:I
    const/4 v5, 0x0

    .line 3836
    .local v5, childrenTop:I
    const/4 v4, 0x0

    .line 3838
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getTopBorderHeight()I

    move-result v18

    add-int v5, v17, v18

    .line 3839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBorderHeight()I

    move-result v18

    sub-int v4, v17, v18

    .line 3841
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 3842
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 3843
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 3845
    .local v6, down:Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 3846
    move v12, v14

    .line 3848
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3850
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3851
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 3854
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_3

    .line 3855
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 3911
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 3912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3913
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 3914
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 3915
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 3916
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/htc/widget/HtcAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 3917
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 3918
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollWhenResurrectSelection:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 3919
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 3920
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAbsListView;->setSelectionInt(I)V

    .line 3921
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 3926
    :cond_2
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 3928
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 3856
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_3
    if-le v11, v4, :cond_1

    .line 3857
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 3861
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 3863
    move v12, v7

    .line 3864
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 3865
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 3866
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 3868
    .local v15, top:I
    if-nez v8, :cond_6

    .line 3870
    move v13, v15

    .line 3872
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 3875
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 3878
    :cond_6
    if-lt v15, v5, :cond_7

    .line 3880
    add-int v12, v7, v8

    .line 3881
    move v13, v15

    .line 3882
    goto/16 :goto_1

    .line 3864
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3886
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 3887
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 3888
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 3890
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_4
    if-ltz v8, :cond_1

    .line 3891
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 3892
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 3893
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 3895
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 3896
    move v13, v15

    .line 3897
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 3898
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 3902
    :cond_a
    if-gt v2, v4, :cond_b

    .line 3903
    add-int v12, v7, v8

    .line 3904
    move v13, v15

    .line 3905
    goto/16 :goto_1

    .line 3890
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 3924
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 3928
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 4177
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v4

    .line 4235
    :cond_0
    :goto_0
    return v2

    .line 4181
    :cond_1
    const/4 v2, 0x0

    .line 4182
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 4183
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 4212
    :goto_1
    if-eqz v3, :cond_0

    .line 4213
    invoke-direct {p0, v7}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 4215
    move-object v1, p3

    .line 4216
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 4217
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {p3, v5, v6, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4220
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4221
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4223
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4224
    goto :goto_0

    .line 4190
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 4191
    goto :goto_1

    .line 4193
    :sswitch_1
    iget-boolean v5, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4194
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    .line 4196
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    invoke-virtual {v5, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 4197
    const/4 v2, 0x1

    .line 4204
    :cond_3
    :goto_2
    const/4 v3, 0x0

    .line 4205
    goto :goto_1

    .line 4198
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4200
    const/4 v2, 0x1

    .line 4201
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 4208
    :sswitch_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    goto :goto_1

    .line 4227
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4228
    goto :goto_0

    .line 4231
    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 4183
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

    .line 4221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 685
    if-eqz p1, :cond_0

    .line 686
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 699
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 4477
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 4478
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mCacheColorHint:I

    .line 4479
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v0

    .line 4480
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4481
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 4480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4483
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 4485
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    .line 953
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    .line 954
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 956
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 958
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 959
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 960
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 963
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 966
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 967
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearChoices()V

    .line 968
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setLongClickable(Z)V

    .line 971
    :cond_3
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2528
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->delayActionUpTime:Z

    .line 2529
    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2533
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->delayIncludeDoneWaiting:Z

    .line 2534
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1983
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mDrawSelectorOnTop:Z

    .line 1984
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    .line 1017
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScrollEnabled:Z

    .line 1023
    if-eqz p1, :cond_2

    .line 1024
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    .line 1025
    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    .line 1030
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1388
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1389
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAbsListView;->createTextFilter(Z)V

    .line 1392
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1394
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1396
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1398
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1402
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    .line 1403
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 1406
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1699
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1701
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 1705
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1706
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1707
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView;->positionPopup()V

    .line 1711
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 1705
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 816
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 822
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 825
    :cond_2
    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_9

    .line 826
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 827
    .local v6, oldValue:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 828
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 829
    if-eqz p2, :cond_7

    .line 830
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 835
    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    .line 836
    if-eqz p2, :cond_8

    .line 837
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    .line 842
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 843
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 844
    .local v3, id:J
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 871
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 872
    iput-boolean v8, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 873
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->rememberSyncState()V

    .line 874
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayout()V

    goto :goto_0

    .line 832
    .restart local v6       #oldValue:Z
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 839
    :cond_8
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 848
    .end local v6           #oldValue:Z
    :cond_9
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    move v7, v8

    .line 851
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 852
    :cond_a
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 853
    if-eqz v7, :cond_b

    .line 854
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 859
    :cond_b
    if-eqz p2, :cond_e

    .line 860
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 861
    if-eqz v7, :cond_c

    .line 862
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 864
    :cond_c
    iput v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_d
    move v7, v0

    .line 848
    goto :goto_4

    .line 865
    .restart local v7       #updateIds:Z
    :cond_e
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 866
    :cond_f
    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 984
    new-instance v0, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mMultiChoiceModeCallback:Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/htc/widget/HtcAbsListView$MultiChoiceModeListener;)V

    .line 987
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 1095
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 1096
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/widget/HtcAbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4594
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    #setter for: Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->access$1802(Lcom/htc/widget/HtcAbsListView$RecycleBin;Lcom/htc/widget/HtcAbsListView$RecyclerListener;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    .line 4595
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 2069
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    .line 2070
    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    .line 2071
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V

    .line 1141
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mScrollingCacheEnabled:Z

    .line 1142
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1994
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1995
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1998
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1999
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2000
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2002
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2003
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2005
    .local v0, padding:Landroid/graphics/Rect;
    if-eqz p1, :cond_1

    .line 2006
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2007
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2008
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2010
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionLeftPadding:I

    .line 2011
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionTopPadding:I

    .line 2012
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionRightPadding:I

    .line 2013
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mSelectionBottomPadding:I

    .line 2014
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1073
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1074
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1213
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    .line 1214
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->requestLayoutIfNecessary()V

    .line 1216
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 1155
    iput-boolean p1, p0, Lcom/htc/widget/HtcAbsListView;->mTextFilterEnabled:Z

    .line 1156
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 4452
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mTranscriptMode:I

    .line 4453
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1962
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->touchModeDrawsInPressedState()Z

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
    .line 2333
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2334
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 2335
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2336
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2338
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2342
    :cond_0
    if-nez v6, :cond_1

    .line 2343
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2346
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2351
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 3490
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v0, :cond_1

    .line 3491
    instance-of v0, p0, Lcom/htc/widget/BouncingListView;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 3492
    check-cast v0, Lcom/htc/widget/BouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/BouncingListView;->getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 3498
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->startScroll(II)V

    .line 3499
    return-void

    .line 3494
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    goto :goto_0

    .line 3496
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 3462
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3463
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 3465
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(I)V

    .line 3466
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 3479
    new-instance v0, Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$PositionScroller;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    .line 3481
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mPositionScroller:Lcom/htc/widget/HtcAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$PositionScroller;->start(II)V

    .line 3482
    return-void
.end method

.method protected startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2483
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2484
    .local v0, distance:I
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 2485
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->createScrollingCache()V

    .line 2486
    const/4 v5, 0x3

    iput v5, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 2487
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mMotionCorrection:I

    .line 2488
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2492
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2493
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mPendingCheckForLongPress:Lcom/htc/widget/HtcAbsListView$CheckForLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2495
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAbsListView;->setPressed(Z)V

    .line 2496
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2497
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2498
    invoke-virtual {v2, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2500
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    .line 2503
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2507
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
    .line 1945
    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1950
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1948
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1945
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3550
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v5

    .line 3551
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 3552
    const/16 v29, 0x1

    .line 3705
    :goto_0
    return v29

    .line 3555
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v12

    .line 3556
    .local v12, firstTop:I
    add-int/lit8 v29, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v19

    .line 3558
    .local v19, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 3561
    .local v21, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v25, v29, v12

    .line 3562
    .local v25, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v10, v29, v30

    .line 3563
    .local v10, end:I
    sub-int v26, v19, v10

    .line 3565
    .local v26, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v15, v29, v30

    .line 3566
    .local v15, height:I
    if-gez p1, :cond_1

    .line 3567
    add-int/lit8 v29, v15, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3572
    :goto_1
    if-gez p2, :cond_2

    .line 3573
    add-int/lit8 v29, v15, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3578
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 3581
    .local v11, firstPosition:I
    if-nez v11, :cond_3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getTopBoundary()I

    move-result v30

    add-int v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getTopBorderHeight()I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    if-le v12, v0, :cond_3

    if-lez p1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->enableStopScrollNow()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 3583
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onScrollToBoundary()V

    .line 3584
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 3569
    .end local v11           #firstPosition:I
    :cond_1
    add-int/lit8 v29, v15, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 3575
    :cond_2
    add-int/lit8 v29, v15, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 3587
    .restart local v11       #firstPosition:I
    :cond_3
    add-int v29, v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBoundary()I

    move-result v29

    mul-int/lit8 v29, v29, 0x2

    sub-int v29, v10, v29

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBorderHeight()I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    if-gez p1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->enableStopScrollNow()Z

    move-result v29

    if-eqz v29, :cond_4

    if-gtz v12, :cond_4

    .line 3589
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->onScrollToBoundary()V

    .line 3590
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 3593
    :cond_4
    if-gez p2, :cond_e

    const/4 v9, 0x1

    .line 3595
    .local v9, down:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isInTouchMode()Z

    move-result v17

    .line 3596
    .local v17, inTouchMode:Z
    if-eqz v17, :cond_5

    .line 3597
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->hideSelector()V

    .line 3600
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeaderViewsCount()I

    move-result v14

    .line 3601
    .local v14, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v13, v29, v30

    .line 3603
    .local v13, footerViewsStart:I
    const/16 v27, 0x0

    .line 3604
    .local v27, start:I
    const/4 v8, 0x0

    .line 3610
    .local v8, count:I
    const/16 v20, 0x0

    .line 3611
    .local v20, lastRow:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-eqz v29, :cond_6

    move-object/from16 v29, p0

    .line 3612
    check-cast v29, Lcom/htc/widget/HtcGridViewCore;

    invoke-virtual/range {v29 .. v29}, Lcom/htc/widget/HtcGridViewCore;->getNumColumns()I

    move-result v7

    .line 3613
    .local v7, cols:I
    if-lez v7, :cond_6

    .line 3615
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getRowPerPage()I

    move-result v24

    .line 3616
    .local v24, rows:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getItemsPerPage()I

    move-result v18

    .line 3617
    .local v18, itemsPerPage:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getPageCount()I

    move-result v22

    .line 3618
    .local v22, pageCount:I
    add-int/lit8 v29, v22, -0x1

    mul-int v29, v29, v7

    mul-int v20, v29, v24

    .line 3623
    .end local v7           #cols:I
    .end local v18           #itemsPerPage:I
    .end local v22           #pageCount:I
    .end local v24           #rows:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildrenTotalHeight()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_f

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    if-nez v9, :cond_f

    .line 3673
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView;->mMotionViewNewTop:I

    .line 3675
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 3677
    if-lez v8, :cond_9

    .line 3678
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/htc/widget/HtcAbsListView;->detachViewsFromParent(II)V

    .line 3680
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 3682
    if-eqz v9, :cond_a

    .line 3683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v8

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 3686
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 3688
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3689
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v25

    if-lt v0, v2, :cond_b

    move/from16 v0, v26

    if-ge v0, v2, :cond_c

    .line 3690
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAbsListView;->fillGap(Z)V

    .line 3693
    :cond_c
    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_d

    .line 3694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v6, v29, v30

    .line 3695
    .local v6, childIndex:I
    if-ltz v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v6, v0, :cond_d

    .line 3696
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->positionSelector(Landroid/view/View;)V

    .line 3700
    .end local v6           #childIndex:I
    :cond_d
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 3702
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->invokeOnItemScrollListener()V

    .line 3703
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->awakenScrollBars()Z

    .line 3705
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 3593
    .end local v2           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v13           #footerViewsStart:I
    .end local v14           #headerViewsCount:I
    .end local v17           #inTouchMode:Z
    .end local v20           #lastRow:I
    .end local v27           #start:I
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3625
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v13       #footerViewsStart:I
    .restart local v14       #headerViewsCount:I
    .restart local v17       #inTouchMode:Z
    .restart local v20       #lastRow:I
    .restart local v27       #start:I
    :cond_f
    if-eqz v9, :cond_14

    .line 3626
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v29, p2

    .line 3627
    .local v28, top:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v5, :cond_8

    .line 3628
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3630
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 3632
    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-nez v29, :cond_8

    .line 3635
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mOverScrollCheck:Z

    move/from16 v29, v0

    if-eqz v29, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v8

    move/from16 v0, v29

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 3638
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 3639
    add-int v23, v11, v16

    .line 3640
    .local v23, position:I
    move/from16 v0, v23

    if-lt v0, v14, :cond_13

    move/from16 v0, v23

    if-ge v0, v13, :cond_13

    .line 3641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3627
    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 3651
    .end local v4           #child:Landroid/view/View;
    .end local v16           #i:I
    .end local v23           #position:I
    .end local v28           #top:I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    sub-int v3, v29, p2

    .line 3652
    .local v3, bottom:I
    add-int/lit8 v16, v5, -0x1

    .restart local v16       #i:I
    :goto_5
    if-ltz v16, :cond_8

    .line 3653
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3654
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v3, :cond_8

    .line 3657
    move/from16 v27, v16

    .line 3658
    add-int/lit8 v8, v8, 0x1

    .line 3659
    add-int v23, v11, v16

    .line 3660
    .restart local v23       #position:I
    move/from16 v0, v23

    if-lt v0, v14, :cond_15

    move/from16 v0, v23

    if-ge v0, v13, :cond_15

    .line 3661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3652
    :cond_15
    add-int/lit8 v16, v16, -0x1

    goto :goto_5
.end method

.method trackMotionScrollWithConstrain(II)Z
    .locals 1
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 5077
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->trackMotionScroll(II)Z

    move-result v0

    return v0
.end method

.method unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4
    .parameter "sel"

    .prologue
    .line 5117
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5118
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5119
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_0

    .line 5120
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5123
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1718
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 1721
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 1724
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1725
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 1726
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1727
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getTopBorderHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 1731
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1734
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1736
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getChildCount()I

    move-result v3

    .line 1739
    .local v3, count:I
    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 1742
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1743
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1744
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView;->getBottomBorderHeight()I

    move-result v9

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 1747
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1749
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 1721
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v5

    .line 1727
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v6, v7

    .line 1731
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v5

    .line 1739
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v5

    .line 1744
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v7

    .line 1747
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

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
