.class public Lcom/htc/widget/HtcListViewCore;
.super Lcom/htc/widget/HtcAbsListView;
.source "HtcListViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcListViewCore$1;,
        Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;,
        Lcom/htc/widget/HtcListViewCore$FocusSelector;,
        Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAddedCounter:I

.field private mAdjustFooter:Z

.field private mAdjustForSipOff:Z

.field private mAdjustForSipOn:Z

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

.field private mFootHeight:I

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFooterViewWithoutDivider:Landroid/view/View;

.field private mForceAdjustFooter:Z

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewWithoutDivider:Landroid/view/View;

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field private mKeepFootHeight:I

.field private mKeepFootHeightUpdated:Z

.field private mLastItemCnt:I

.field private mRelayout:Z

.field private mScreenBottom:I

.field mSeperatorDiver:Landroid/graphics/drawable/Drawable;

.field protected mSpeedUp:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 147
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 126
    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    .line 128
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    .line 131
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 133
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mSpeedUp:Z

    .line 137
    new-instance v7, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;-><init>(Lcom/htc/widget/HtcListViewCore$1;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    .line 2029
    const/16 v7, 0xc3

    iput v7, p0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    .line 2030
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeightUpdated:Z

    .line 2031
    iput v9, p0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 2032
    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    .line 2033
    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    .line 2034
    iput v9, p0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    .line 2035
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    .line 2036
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    .line 2037
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    .line 2038
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    .line 3747
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    .line 153
    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 158
    .local v4, entries:[Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 159
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    :cond_0
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 164
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 172
    .local v6, htcContext:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2080669

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 175
    .local v5, group_divider:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 176
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    .end local v5           #group_divider:Landroid/graphics/drawable/Drawable;
    .end local v6           #htcContext:Landroid/content/Context;
    :cond_2
    :goto_0
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 186
    .local v2, dividerHeight:I
    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->setDividerHeight(I)V

    .line 190
    :cond_3
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    .line 191
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    return-void

    .line 177
    .end local v2           #dividerHeight:I
    :catch_0
    move-exception v3

    .line 178
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "HtcListViewCore"

    const-string v8, "resource not found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 180
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3226
    add-int/lit8 v2, p2, -0x1

    .line 3227
    .local v2, abovePosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3228
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3229
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3231
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 3235
    add-int/lit8 v2, p2, 0x1

    .line 3236
    .local v2, belowPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3237
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3238
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3240
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    .line 212
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 215
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 218
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 220
    .local v2, delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 223
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 225
    :cond_0
    if-gez v2, :cond_1

    .line 227
    const/4 v2, 0x0

    .line 245
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 246
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 249
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 231
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 232
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 234
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 237
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 240
    :cond_4
    if-lez v2, :cond_1

    .line 241
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2842
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2843
    .local v4, listBottom:I
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2845
    .local v5, listTop:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    .line 2847
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2848
    add-int/lit8 v3, v7, -0x1

    .line 2849
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2850
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2853
    :cond_0
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2854
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2856
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2857
    .local v1, goalBottom:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_1

    .line 2858
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2861
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2863
    const/4 v10, 0x0

    .line 2909
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2866
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2869
    const/4 v10, 0x0

    goto :goto_0

    .line 2872
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2874
    .local v0, amountToScroll:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2876
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2877
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2880
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2882
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2883
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2884
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2886
    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2887
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2888
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2889
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2890
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2892
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2894
    const/4 v10, 0x0

    goto :goto_0

    .line 2897
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2900
    const/4 v10, 0x0

    goto :goto_0

    .line 2903
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2904
    .restart local v0       #amountToScroll:I
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2906
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2907
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2909
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 3100
    const/4 v0, 0x0

    .line 3101
    .local v0, amountToScroll:I
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3102
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3103
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3104
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3105
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3106
    if-lez p3, :cond_0

    .line 3107
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3119
    :cond_0
    :goto_0
    return v0

    .line 3111
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3112
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3113
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3114
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3115
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
    .locals 17
    .parameter "direction"

    .prologue
    .line 2998
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 3000
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3001
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3002
    .local v8, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3027
    .end local v8           #oldFocus:Landroid/view/View;
    .local v7, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 3028
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcListViewCore;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 3032
    .local v9, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 3033
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 3034
    .local v10, selectablePosition:I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 3037
    :cond_1
    const/4 v14, 0x0

    .line 3059
    .end local v9           #positionOfNewFocus:I
    .end local v10           #selectablePosition:I
    :goto_1
    return-object v14

    .line 3004
    .end local v7           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 3005
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 3006
    .local v12, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 3008
    .local v5, listTop:I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3012
    .local v13, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 3024
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7       #newFocus:Landroid/view/View;
    goto :goto_0

    .line 3005
    .end local v7           #newFocus:Landroid/view/View;
    .end local v13           #ySearchPoint:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 3006
    .restart local v12       #topFadingEdgeShowing:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5       #listTop:I
    :cond_5
    move v13, v5

    .line 3008
    goto :goto_4

    .line 3014
    .end local v5           #listTop:I
    .end local v12           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 3016
    .local v2, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 3018
    .local v4, listBottom:I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3022
    .restart local v13       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 3014
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .end local v13           #ySearchPoint:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 3016
    .restart local v2       #bottomFadingEdgeShowing:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4       #listBottom:I
    :cond_9
    move v13, v4

    .line 3018
    goto :goto_8

    .line 3041
    .end local v2           #bottomFadingEdgeShowing:Z
    .end local v4           #listBottom:I
    .restart local v7       #newFocus:Landroid/view/View;
    .restart local v9       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/htc/widget/HtcListViewCore;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 3043
    .local v3, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v6

    .line 3044
    .local v6, maxScrollAmount:I
    if-ge v3, v6, :cond_b

    .line 3046
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3047
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->populate(II)V

    .line 3048
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3049
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcListViewCore;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3054
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3055
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->populate(II)V

    .line 3056
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3059
    .end local v3           #focusScroll:I
    .end local v6           #maxScrollAmount:I
    .end local v9           #positionOfNewFocus:I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 2628
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_1

    .line 2700
    :cond_0
    :goto_0
    return v8

    .line 2632
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2634
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2635
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/htc/widget/HtcListViewCore;->amountToScroll(II)I

    move-result v0

    .line 2638
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v6, :cond_a

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    move-result-object v1

    .line 2639
    .local v1, focusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2640
    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2641
    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2644
    :cond_2
    if-eqz v1, :cond_b

    move v3, v7

    .line 2645
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v9, :cond_4

    .line 2646
    if-eqz v1, :cond_c

    move v6, v7

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Lcom/htc/widget/HtcListViewCore;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2647
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 2648
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 2649
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2650
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    .line 2653
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2654
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2655
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2658
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2659
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    .line 2662
    :cond_4
    if-lez v0, :cond_5

    .line 2663
    const/16 v6, 0x21

    if-ne p1, v6, :cond_d

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->scrollListItemsBy(I)V

    .line 2664
    const/4 v3, 0x1

    .line 2669
    :cond_5
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2671
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2672
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_6

    .line 2673
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2678
    .end local v2           #focused:Landroid/view/View;
    :cond_6
    if-ne v4, v9, :cond_7

    if-eqz v5, :cond_7

    invoke-direct {p0, v5, p0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2680
    const/4 v5, 0x0

    .line 2681
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->hideSelector()V

    .line 2685
    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    .line 2688
    :cond_7
    if-eqz v3, :cond_0

    .line 2689
    if-eqz v5, :cond_8

    .line 2690
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 2691
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 2693
    :cond_8
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    move-result v6

    if-nez v6, :cond_9

    .line 2694
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 2696
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    move v8, v7

    .line 2697
    goto/16 :goto_0

    .line 2638
    .end local v1           #focusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
    :cond_b
    move v3, v8

    .line 2644
    goto :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_c
    move v6, v8

    .line 2646
    goto :goto_3

    .line 2663
    :cond_d
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 545
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 547
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 548
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v0, v4, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 549
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 550
    .local v3, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 551
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 547
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v3, 0x1

    .line 2312
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 2415
    :goto_0
    return v2

    .line 2316
    :cond_0
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 2317
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->layoutChildren()V

    .line 2320
    :cond_1
    const/4 v1, 0x0

    .line 2321
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2323
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 2324
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v4, :cond_2

    .line 2325
    sparse-switch p1, :sswitch_data_0

    .line 2336
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 2397
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 2398
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2401
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 2402
    goto :goto_0

    .line 2331
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->resurrectSelection()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 2332
    goto :goto_0

    .line 2340
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2347
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 2349
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->fullScroll(I)Z

    move-result v1

    .line 2352
    goto :goto_1

    .line 2356
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2363
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 2365
    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore;->fullScroll(I)Z

    move-result v1

    .line 2368
    goto :goto_1

    .line 2371
    :sswitch_3
    const/16 v4, 0x11

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcListViewCore;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2372
    goto :goto_1

    .line 2374
    :sswitch_4
    const/16 v4, 0x42

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcListViewCore;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2375
    goto :goto_1

    .line 2378
    :sswitch_5
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v4, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 2379
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->keyPressed()V

    .line 2381
    :cond_7
    const/4 v1, 0x1

    .line 2382
    goto :goto_1

    .line 2385
    :sswitch_6
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2386
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2387
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore;->pageScroll(I)Z

    .line 2391
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 2389
    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->pageScroll(I)Z

    goto :goto_2

    .line 2404
    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2406
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2409
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2412
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2325
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 2336
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 2404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    .line 1446
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1447
    .local v6, lastPosition:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1450
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1453
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1457
    .local v4, lastBottom:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBoundary()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v8

    sub-int v1, v7, v8

    .line 1461
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1462
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1463
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1467
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1468
    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1470
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1473
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 1474
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1477
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 1479
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1484
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    .line 1496
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1499
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1502
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1505
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBoundary()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v9

    add-int v6, v8, v9

    .line 1508
    .local v6, start:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v9

    sub-int v0, v8, v9

    .line 1512
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1513
    .local v7, topOffset:I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1514
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1515
    .local v3, lastBottom:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1519
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1520
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1521
    :cond_0
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1523
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1526
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 1527
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1530
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 1532
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1539
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1534
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1535
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 3130
    const/4 v0, 0x0

    .line 3131
    .local v0, distance:I
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3132
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3133
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3134
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3135
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3139
    :cond_0
    :goto_0
    return v0

    .line 3136
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3137
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 809
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 810
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 811
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 812
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 813
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 819
    :goto_0
    return-void

    .line 815
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 816
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 817
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 777
    sub-int v6, p2, p1

    .line 779
    .local v6, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->reconcileSelectedPosition()I

    move-result v1

    .line 781
    .local v1, position:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 783
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 785
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 786
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 787
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 790
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 792
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    .line 798
    :goto_0
    return-object v7

    .line 795
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 834
    .local v8, fadingEdgeLength:I
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 838
    .local v2, selectedPosition:I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Lcom/htc/widget/HtcListViewCore;->getTopSelectionPixel(III)I

    move-result v13

    .line 840
    .local v13, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/htc/widget/HtcListViewCore;->getBottomSelectionPixel(III)I

    move-result v7

    .line 843
    .local v7, bottomSelectionPixel:I
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 847
    .local v10, sel:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 850
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 854
    .local v11, spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 855
    .local v12, spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 858
    .local v9, offset:I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 874
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 876
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 877
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    .line 882
    :goto_1
    return-object v10

    .line 859
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 862
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 866
    .restart local v11       #spaceAbove:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 867
    .restart local v12       #spaceBelow:I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 870
    .restart local v9       #offset:I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 879
    .end local v9           #offset:I
    .end local v11           #spaceAbove:I
    .end local v12           #spaceBelow:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 757
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 758
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 759
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 762
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1395
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1396
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1398
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1400
    if-nez v10, :cond_2

    .line 1401
    const/4 v10, 0x0

    .line 1432
    .end local v10           #temp:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v10

    .line 1395
    .end local v5           #tempIsSelected:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1406
    .restart local v5       #tempIsSelected:Z
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    iget v9, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 1407
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_4

    .line 1408
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1410
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1411
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1412
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    .line 1413
    .local v8, childCount:I
    if-lez v8, :cond_3

    .line 1414
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    .line 1427
    :cond_3
    :goto_2
    if-nez v5, :cond_0

    .line 1429
    if-eqz v6, :cond_5

    move-object v10, v6

    .line 1430
    goto :goto_1

    .line 1417
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1419
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1420
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1421
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    .line 1422
    .restart local v8       #childCount:I
    if-lez v8, :cond_3

    .line 1423
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_2

    :cond_5
    move-object v10, v7

    .line 1432
    goto :goto_1
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2826
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 895
    move v0, p1

    .line 896
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 897
    sub-int/2addr v0, p2

    .line 899
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 912
    move v0, p1

    .line 913
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 914
    add-int/2addr v0, p2

    .line 916
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2512
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 2513
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2517
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v3

    .line 2518
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2519
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2520
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2523
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2524
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2526
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2528
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2529
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2530
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2531
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2532
    const/4 v5, 0x1

    .line 2546
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2539
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2541
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2542
    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2546
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2718
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2719
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2729
    :cond_0
    const/4 v5, 0x0

    .line 2730
    .local v5, topSelected:Z
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2731
    .local v4, selectedIndex:I
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2732
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2733
    move v7, v2

    .line 2734
    .local v7, topViewIndex:I
    move v1, v4

    .line 2735
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2736
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2737
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2745
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v3

    .line 2748
    .local v3, numChildren:I
    if-eqz v6, :cond_1

    .line 2749
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2750
    invoke-direct {p0, v6, v7, v3}, Lcom/htc/widget/HtcListViewCore;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2754
    :cond_1
    if-eqz v0, :cond_2

    .line 2755
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2756
    invoke-direct {p0, v0, v1, v3}, Lcom/htc/widget/HtcListViewCore;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2758
    :cond_2
    return-void

    .line 2739
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_3
    move v7, v4

    .line 2740
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2741
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2742
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_0

    .line 2749
    .restart local v3       #numChildren:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2755
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 2560
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    .line 2561
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2564
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v3

    .line 2565
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2566
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2567
    .local v4, selectedView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 2568
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2569
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2573
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2575
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2576
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2577
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2578
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2579
    const/4 v5, 0x1

    .line 2596
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 2586
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2591
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2592
    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 2596
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1795
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1796
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1797
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1798
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1809
    :goto_1
    return v5

    .line 1797
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1802
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1803
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1804
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1805
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1806
    goto :goto_1

    .line 1804
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1809
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 3082
    if-ne p1, p2, :cond_1

    .line 3087
    :cond_0
    :goto_0
    return v1

    .line 3086
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3087
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 2946
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 2947
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-eq p1, v7, :cond_0

    const/16 v7, 0x42

    if-ne p1, v7, :cond_6

    .line 2948
    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2950
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_3

    move v4, v6

    .line 2985
    :cond_1
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_2
    move v5, v1

    .line 2948
    goto :goto_0

    .line 2953
    .restart local v5       #startPos:I
    :cond_3
    if-ge v5, v1, :cond_4

    .line 2954
    move v5, v1

    .line 2957
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLastVisiblePosition()I

    move-result v3

    .line 2958
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2959
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2960
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 2959
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2966
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2967
    .local v2, last:I
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2970
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_8

    move v4, v6

    .line 2971
    goto :goto_1

    .line 2967
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 2973
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 2974
    move v5, v2

    .line 2977
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2978
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 2979
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 2978
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 2985
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1830
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1833
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1841
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1853
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1848
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1851
    .restart local v1       #child:Landroid/view/View;
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1853
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2768
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2769
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->measureItem(Landroid/view/View;)V

    .line 2770
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2772
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2775
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2776
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2777
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2776
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2780
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2788
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2789
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2790
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2795
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2797
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2799
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2800
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2804
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2805
    return-void

    .line 2802
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1240
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 1241
    .local v3, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1242
    new-instance v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v3           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 1244
    .restart local v3       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 1249
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1251
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1253
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1254
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1258
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1259
    return-void

    .line 1256
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 1009
    .local v10, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1013
    .local v15, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/htc/widget/HtcListViewCore;->getTopSelectionPixel(III)I

    move-result v18

    .line 1015
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/htc/widget/HtcListViewCore;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1018
    .local v8, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 1040
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1043
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 1046
    .local v9, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1050
    .local v14, sel:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1053
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1056
    .local v16, spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1059
    .local v17, spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1060
    .local v11, halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1061
    .local v13, offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1064
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1066
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1070
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1071
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 1072
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1073
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 1154
    .end local v9           #dividerHeight:I
    :goto_0
    return-object v14

    .line 1075
    .restart local v9       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 1076
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1077
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1079
    .end local v9           #dividerHeight:I
    .end local v14           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1100
    if-eqz p2, :cond_4

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1112
    .restart local v14       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1114
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1117
    .restart local v16       #spaceAbove:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1120
    .restart local v17       #spaceBelow:I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1121
    .restart local v11       #halfVerticalSpace:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1122
    .restart local v13       #offset:I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1125
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1129
    .end local v11           #halfVerticalSpace:I
    .end local v13           #offset:I
    .end local v16           #spaceAbove:I
    .end local v17           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1107
    .end local v14           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14       #sel:Landroid/view/View;
    goto :goto_1

    .line 1132
    .end local v14           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1137
    .local v4, oldTop:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1140
    .restart local v14       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1143
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1144
    .local v12, newBottom:I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1146
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1151
    .end local v12           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 3067
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    .line 3068
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3069
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3070
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3071
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3068
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3074
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2813
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2814
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2815
    .local v4, h:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2816
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2817
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2818
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2819
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2820
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 320
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 321
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    .line 322
    .local v1, info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    iget-object v3, v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 323
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 327
    .end local v1           #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :cond_0
    return-void

    .line 320
    .restart local v1       #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 3150
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 3152
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3153
    .local v5, listBottom:I
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3154
    .local v6, listTop:I
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 3156
    .local v8, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 3160
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    .line 3161
    .local v7, numChildren:I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3162
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 3163
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3164
    .local v3, lastVisiblePosition:I
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3165
    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3166
    add-int/lit8 v7, v7, 0x1

    .line 3170
    goto :goto_0

    .line 3175
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3176
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 3180
    :cond_1
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3181
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 3182
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 3183
    .local v4, layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    iget v9, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3184
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    .line 3185
    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3189
    :goto_2
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3190
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_1

    .line 3187
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 3194
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3197
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3198
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/htc/widget/HtcListViewCore;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3199
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_3

    .line 3204
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 3205
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 3208
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3209
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3212
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 3213
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 3214
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    iget v9, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3215
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    .line 3216
    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3220
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3221
    goto :goto_4

    .line 3218
    :cond_6
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 3223
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 28
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1873
    if-nez p1, :cond_1

    .line 2027
    :cond_0
    :goto_0
    return-void

    .line 1876
    :cond_1
    if-eqz p6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->shouldShowSelector()Z

    move-result v25

    if-eqz v25, :cond_e

    const/4 v14, 0x1

    .line 1877
    .local v14, isSelected:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v25

    move/from16 v0, v25

    if-eq v14, v0, :cond_f

    const/16 v23, 0x1

    .line 1878
    .local v23, updateChildSelected:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v16, v0

    .line 1879
    .local v16, mode:I
    if-lez v16, :cond_10

    const/16 v25, 0x3

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p2

    if-ne v0, v1, :cond_10

    const/4 v13, 0x1

    .line 1881
    .local v13, isPressed:Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v25

    move/from16 v0, v25

    if-eq v13, v0, :cond_11

    const/16 v22, 0x1

    .line 1882
    .local v22, updateChildPressed:Z
    :goto_4
    if-eqz p7, :cond_2

    if-nez v23, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v25

    if-eqz v25, :cond_12

    :cond_2
    const/16 v17, 0x1

    .line 1886
    .local v17, needToMeasure:Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 1887
    .local v18, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v18, :cond_3

    .line 1888
    new-instance v18, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v18           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/16 v25, -0x1

    const/16 v26, -0x2

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 1891
    .restart local v18       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 1893
    if-eqz p7, :cond_4

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    :cond_4
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 1895
    :cond_5
    if-eqz p4, :cond_13

    const/16 v25, -0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListViewCore;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1904
    :goto_7
    if-eqz v23, :cond_6

    .line 1905
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1908
    :cond_6
    if-eqz v22, :cond_7

    .line 1909
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1912
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 1913
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v25, p1

    .line 1914
    check-cast v25, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v26

    invoke-interface/range {v25 .. v26}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1918
    :cond_8
    if-eqz v17, :cond_18

    .line 1919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1921
    .local v9, childWidthSpec:I
    move-object/from16 v0, v18

    iget v15, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1923
    .local v15, lpHeight:I
    if-lez v15, :cond_17

    .line 1924
    const/high16 v25, 0x4000

    move/from16 v0, v25

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1928
    .local v6, childHeightSpec:I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v6}, Landroid/view/View;->measure(II)V

    .line 1933
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v15           #lpHeight:I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1934
    .local v24, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1935
    .local v11, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 1936
    .local v10, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getFooterViewsCount()I

    move-result v25

    if-lez v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 1938
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    move/from16 v1, p2

    if-ne v0, v1, :cond_1b

    .line 1939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 1940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    sub-int v25, v25, p3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 1941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    .line 1946
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    .line 1947
    if-gez p3, :cond_1a

    .line 1948
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 1952
    :cond_a
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeightUpdated:Z

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 1953
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeightUpdated:Z

    .line 1954
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    .line 1975
    :cond_b
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v25, v0

    if-nez v25, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    move/from16 v25, v0

    if-nez v25, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 1976
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 1977
    .local v19, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    .line 1978
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v25, v0

    if-nez v25, :cond_1e

    .line 2013
    .end local v19           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    :goto_d
    if-eqz p4, :cond_24

    move/from16 v8, p3

    .line 2015
    .local v8, childTop:I
    :goto_e
    if-eqz v17, :cond_25

    .line 2016
    add-int v7, p5, v24

    .line 2017
    .local v7, childRight:I
    add-int v5, v8, v11

    .line 2018
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v8, v7, v5}, Landroid/view/View;->layout(IIII)V

    .line 2024
    .end local v5           #childBottom:I
    .end local v7           #childRight:I
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v25

    if-nez v25, :cond_0

    .line 2025
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    .line 1876
    .end local v8           #childTop:I
    .end local v10           #dm:Landroid/util/DisplayMetrics;
    .end local v11           #h:I
    .end local v13           #isPressed:Z
    .end local v14           #isSelected:Z
    .end local v16           #mode:I
    .end local v17           #needToMeasure:Z
    .end local v18           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v22           #updateChildPressed:Z
    .end local v23           #updateChildSelected:Z
    .end local v24           #w:I
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1877
    .restart local v14       #isSelected:Z
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 1879
    .restart local v16       #mode:I
    .restart local v23       #updateChildSelected:Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1881
    .restart local v13       #isPressed:Z
    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 1882
    .restart local v22       #updateChildPressed:Z
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 1895
    .restart local v17       #needToMeasure:Z
    .restart local v18       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_13
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 1897
    :cond_14
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    .line 1898
    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    .line 1899
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1901
    :cond_15
    if-eqz p4, :cond_16

    const/16 v25, -0x1

    :goto_10
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v18

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcListViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_7

    :cond_16
    const/16 v25, 0x0

    goto :goto_10

    .line 1926
    .restart local v9       #childWidthSpec:I
    .restart local v15       #lpHeight:I
    :cond_17
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6       #childHeightSpec:I
    goto/16 :goto_8

    .line 1930
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v15           #lpHeight:I
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 1943
    .restart local v10       #dm:Landroid/util/DisplayMetrics;
    .restart local v11       #h:I
    .restart local v24       #w:I
    :cond_19
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 1944
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    goto/16 :goto_a

    .line 1950
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    sub-int v25, v25, p3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    goto/16 :goto_b

    .line 1956
    :cond_1b
    if-nez p2, :cond_b

    .line 1957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 1958
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v25, v0

    sub-int v26, p3, v11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v27

    add-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 1959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    .line 1964
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 1965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v26

    add-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v26

    sub-int v21, v25, v26

    .line 1966
    .local v21, tmp_height:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    if-ge v12, v0, :cond_1d

    .line 1967
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1968
    .local v20, tmp:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    sub-int v21, v21, v25

    .line 1969
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v25

    sub-int v21, v21, v25

    .line 1966
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 1962
    .end local v12           #i:I
    .end local v20           #tmp:Landroid/view/View;
    .end local v21           #tmp_height:I
    :cond_1c
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    goto :goto_11

    .line 1971
    .restart local v12       #i:I
    .restart local v21       #tmp_height:I
    :cond_1d
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    goto/16 :goto_c

    .line 1981
    .end local v12           #i:I
    .end local v21           #tmp_height:I
    .restart local v19       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    .line 1982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_20

    .line 1983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1986
    :goto_13
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1988
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    .line 1990
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 1991
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    .line 1992
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 1993
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    goto/16 :goto_d

    .line 1985
    :cond_20
    const/16 v25, -0x2

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_13

    .line 1997
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    move/from16 v25, v0

    if-nez v25, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 1998
    :cond_22
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_23

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    .line 2000
    const/16 v25, -0x2

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2001
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 2003
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    .line 2006
    :cond_23
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    .line 2007
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    goto/16 :goto_d

    .line 2013
    .end local v19           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_24
    sub-int v8, p3, v11

    goto/16 :goto_e

    .line 2020
    .restart local v8       #childTop:I
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v25

    sub-int v25, p5, v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2021
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v25, v8, v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_f
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    .line 570
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 571
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 573
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 575
    .local v3, listBottom:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 561
    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 562
    .local v0, listTop:I
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFootViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    .line 376
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 377
    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 414
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 415
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 343
    new-instance v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore;)V

    .line 344
    .local v0, info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 345
    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->data:Ljava/lang/Object;

    .line 346
    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->isSelectable:Z

    .line 347
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 354
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 290
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 291
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore;)V

    .line 272
    .local v0, info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 273
    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->data:Ljava/lang/Object;

    .line 274
    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->isSelectable:Z

    .line 275
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public addHeaderViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    .line 398
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 399
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2609
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 2610
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->arrowScrollImpl(I)Z

    move-result v0

    .line 2611
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2612
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2616
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2068
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 3286
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 3287
    .local v9, dividerHeight:I
    if-lez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    const/4 v10, 0x1

    .line 3289
    .local v10, drawDividers:Z
    :goto_0
    if-eqz v10, :cond_b

    .line 3291
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 3292
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3295
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    .line 3296
    .local v8, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3297
    .local v15, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    sub-int v23, v23, v24

    add-int/lit8 v14, v23, -0x1

    .line 3298
    .local v14, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    move/from16 v16, v0

    .line 3299
    .local v16, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    .line 3300
    .local v13, footerDividers:Z
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 3301
    .local v12, first:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    .line 3302
    .local v4, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3307
    .local v3, adapter:Landroid/widget/ListAdapter;
    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isOpaque()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isOpaque()Z

    move-result v23

    if-nez v23, :cond_5

    const/4 v11, 0x1

    .line 3309
    .local v11, fillForMissingDividers:Z
    :goto_1
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mIsCacheColorOpaque:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 3310
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    .line 3311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getCacheColorHint()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 3313
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 3315
    .local v20, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v24, v0

    add-int v18, v23, v24

    .line 3316
    .local v18, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 3320
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v8, :cond_b

    .line 3321
    if-nez v16, :cond_1

    add-int v23, v12, v17

    move/from16 v0, v23

    if-lt v0, v15, :cond_3

    :cond_1
    if-nez v13, :cond_2

    add-int v23, v12, v17

    move/from16 v0, v23

    if-ge v0, v14, :cond_3

    .line 3323
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3324
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3325
    .local v5, bottom:I
    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    .line 3326
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 3327
    add-int v23, v5, v9

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v0, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v0, v7, :cond_3

    .line 3333
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3320
    .end local v5           #bottom:I
    .end local v7           #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 3287
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #count:I
    .end local v10           #drawDividers:Z
    .end local v11           #fillForMissingDividers:Z
    .end local v12           #first:I
    .end local v13           #footerDividers:Z
    .end local v14           #footerLimit:I
    .end local v15           #headerCount:I
    .end local v16           #headerDividers:Z
    .end local v17           #i:I
    .end local v18           #listBottom:I
    .end local v20           #paint:Landroid/graphics/Paint;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3307
    .restart local v3       #adapter:Landroid/widget/ListAdapter;
    .restart local v4       #areAllItemsSelectable:Z
    .restart local v6       #bounds:Landroid/graphics/Rect;
    .restart local v8       #count:I
    .restart local v10       #drawDividers:Z
    .restart local v12       #first:I
    .restart local v13       #footerDividers:Z
    .restart local v14       #footerLimit:I
    .restart local v15       #headerCount:I
    .restart local v16       #headerDividers:Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 3343
    .restart local v11       #fillForMissingDividers:Z
    .restart local v18       #listBottom:I
    .restart local v20       #paint:Landroid/graphics/Paint;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 3345
    .local v19, listTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v21, v0

    .line 3347
    .local v21, scrollY:I
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v8, :cond_a

    .line 3348
    if-nez v16, :cond_7

    add-int v23, v12, v17

    move/from16 v0, v23

    if-lt v0, v15, :cond_9

    :cond_7
    if-nez v13, :cond_8

    add-int v23, v12, v17

    move/from16 v0, v23

    if-ge v0, v14, :cond_9

    .line 3350
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3351
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3352
    .local v22, top:I
    move/from16 v0, v22

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    .line 3353
    sub-int v23, v22, v9

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3354
    move/from16 v0, v22

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v0, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v0, v7, :cond_9

    .line 3364
    add-int/lit8 v23, v17, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3347
    .end local v7           #child:Landroid/view/View;
    .end local v22           #top:I
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 3373
    :cond_a
    if-lez v8, :cond_b

    if-lez v21, :cond_b

    if-eqz v10, :cond_b

    .line 3374
    move/from16 v0, v18

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3375
    add-int v23, v18, v9

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3376
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3382
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #count:I
    .end local v11           #fillForMissingDividers:Z
    .end local v12           #first:I
    .end local v13           #footerDividers:Z
    .end local v14           #footerLimit:I
    .end local v15           #headerCount:I
    .end local v16           #headerDividers:Z
    .end local v17           #i:I
    .end local v18           #listBottom:I
    .end local v19           #listTop:I
    .end local v20           #paint:Landroid/graphics/Paint;
    .end local v21           #scrollY:I
    :cond_b
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3383
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2283
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2284
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2286
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2287
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2290
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2293
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 2229
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 2233
    .local v5, populated:Z
    if-nez v5, :cond_4

    .line 2234
    const/4 v4, 0x0

    .line 2235
    .local v4, itemCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedItemPosition()I

    move-result v2

    .line 2237
    .local v2, currentItemIndex:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2238
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 2239
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2240
    .local v1, count:I
    const/16 v6, 0xf

    if-ge v1, v6, :cond_2

    .line 2241
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2242
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2243
    add-int/lit8 v4, v4, 0x1

    .line 2241
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2244
    :cond_1
    if-gt v3, v2, :cond_0

    .line 2245
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2249
    .end local v3           #i:I
    :cond_2
    move v4, v1

    .line 2253
    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2254
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2257
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #currentItemIndex:I
    .end local v4           #itemCount:I
    :cond_4
    return v5
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 3
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3396
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3398
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, p3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->shouldDrawSeperatorDivider(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3399
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 3400
    .local v1, seperatorDivider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3401
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3407
    .end local v1           #seperatorDivider:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 3405
    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3406
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 693
    const/4 v8, 0x0

    .line 695
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 697
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_0

    .line 699
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 700
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 702
    .local v6, child:Landroid/view/View;
    if-nez v6, :cond_2

    .line 711
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_0
    return-object v8

    .line 699
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 704
    .restart local v5       #selected:Z
    .restart local v6       #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int p2, v0, v1

    .line 705
    if-eqz v5, :cond_3

    .line 706
    move-object v8, v6

    .line 708
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 709
    goto :goto_0
.end method

.method fillGap(Z)V
    .locals 4
    .parameter "down"

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    .line 666
    .local v0, count:I
    if-eqz p1, :cond_1

    .line 667
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int v1, v2, v3

    .line 670
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 671
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    .line 678
    :goto_1
    return-void

    .line 667
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingTop()I

    move-result v1

    goto :goto_0

    .line 673
    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int v1, v2, v3

    .line 675
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 676
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_1

    .line 673
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_2
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 726
    const/4 v8, 0x0

    .line 728
    .local v8, selectedView:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 730
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_0

    if-ltz p1, :cond_0

    .line 732
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .line 733
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 734
    .local v6, child:Landroid/view/View;
    if-nez v6, :cond_2

    .line 743
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 745
    return-object v8

    :cond_1
    move v5, v3

    .line 732
    goto :goto_1

    .line 736
    .restart local v5       #selected:Z
    .restart local v6       #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 737
    if-eqz v5, :cond_3

    .line 738
    move-object v8, v6

    .line 740
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 741
    goto :goto_0
.end method

.method protected findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    .line 1361
    .local v0, childCount:I
    if-lez v0, :cond_4

    .line 1362
    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1363
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1364
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1365
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1366
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1380
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1363
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1370
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1371
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1372
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1373
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1370
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1378
    .end local v2           #v:Landroid/view/View;
    :cond_3
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1380
    .end local v1           #i:I
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3601
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3602
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3605
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3606
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 3608
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3609
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3611
    if-eqz v2, :cond_0

    .line 3617
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3605
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3617
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3582
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3583
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3584
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3585
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3593
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3588
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3589
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3590
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3593
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3647
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3648
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3651
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3652
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 3654
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3655
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3657
    if-eqz v2, :cond_0

    .line 3663
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 3651
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3663
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3627
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3628
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3629
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3630
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3639
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3634
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3635
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3636
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3639
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2473
    const/4 v0, 0x0

    .line 2474
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2475
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2476
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2477
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2478
    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2479
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    .line 2480
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    .line 2482
    :cond_0
    const/4 v0, 0x1

    .line 2496
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2497
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    .line 2498
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 2501
    :cond_2
    return v0

    .line 2484
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2485
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2486
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2487
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2488
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2489
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    .line 2490
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    .line 2492
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3689
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3690
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getCheckedItemIds()[J

    move-result-object v5

    .line 3719
    :cond_0
    :goto_0
    return-object v5

    .line 3695
    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3696
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3697
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3698
    .local v3, count:I
    new-array v5, v3, [J

    .line 3699
    .local v5, ids:[J
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3701
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3702
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3703
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3704
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3702
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 3710
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3713
    new-array v6, v2, [J

    .line 3714
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3716
    goto :goto_0

    .line 3719
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3442
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 3463
    const/4 v0, 0x0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3261
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 201
    const v0, 0x3ea8f5c3

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isAdjustFooter()Z
    .locals 1

    .prologue
    .line 3760
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    return v0
.end method

.method public isFootAdjusted()Z
    .locals 1

    .prologue
    .line 2056
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 3266
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->isOpaque()Z

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

.method protected layoutChildren()V
    .locals 25

    .prologue
    .line 1543
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1544
    .local v8, blockLayoutRequests:Z
    if-nez v8, :cond_0

    .line 1545
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1551
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 1553
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 1556
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->resetList()V

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    if-nez v8, :cond_0

    .line 1784
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 1787
    :cond_0
    :goto_0
    return-void

    .line 1561
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v24

    add-int v6, v2, v24

    .line 1562
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v24

    sub-int v7, v2, v24

    .line 1564
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v10

    .line 1565
    .local v10, childCount:I
    const/16 v19, 0x0

    .line 1566
    .local v19, index:I
    const/4 v5, 0x0

    .line 1569
    .local v5, delta:I
    const/4 v3, 0x0

    .line 1570
    .local v3, oldSel:Landroid/view/View;
    const/16 v20, 0x0

    .line 1571
    .local v20, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 1573
    .local v4, newSel:Landroid/view/View;
    const/4 v14, 0x0

    .line 1576
    .local v14, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 1591
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1592
    if-ltz v19, :cond_2

    move/from16 v0, v19

    if-ge v0, v10, :cond_2

    .line 1593
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1597
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1599
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    .line 1600
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    sub-int v5, v2, v24

    .line 1604
    :cond_3
    add-int v2, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1608
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1609
    .local v11, dataChanged:Z
    if-eqz v11, :cond_5

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->handleDataChanged()V

    .line 1615
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v2, :cond_6

    .line 1616
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->resetList()V

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    if-nez v8, :cond_0

    .line 1784
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1578
    .end local v11           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    .line 1579
    if-ltz v19, :cond_4

    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    .line 1580
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1621
    .restart local v11       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 1625
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1626
    .local v12, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1629
    .local v22, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    const/4 v13, 0x0

    .line 1633
    .local v13, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v11, :cond_7

    .line 1634
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_8

    .line 1635
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1634
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1642
    .end local v18           #i:I
    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v12}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1649
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    .line 1650
    .local v17, focusedChild:Landroid/view/View;
    if-eqz v17, :cond_b

    .line 1655
    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1656
    :cond_9
    move-object/from16 v13, v17

    .line 1658
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 1659
    if-eqz v14, :cond_a

    .line 1661
    invoke-virtual {v14}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1664
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->requestFocus()Z

    .line 1668
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->detachAllViewsFromParent()V

    .line 1670
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 1697
    if-nez v10, :cond_15

    .line 1698
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_14

    .line 1699
    const/4 v2, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1700
    .local v21, position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 1701
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1722
    .end local v6           #childrenTop:I
    .end local v21           #position:I
    .local v23, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1724
    if-eqz v23, :cond_1d

    .line 1727
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1728
    move-object/from16 v0, v23

    if-ne v0, v13, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_d
    const/4 v15, 0x1

    .line 1730
    .local v15, focusWasTaken:Z
    :goto_4
    if-nez v15, :cond_1b

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1735
    .local v16, focused:Landroid/view/View;
    if-eqz v16, :cond_e

    .line 1736
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearFocus()V

    .line 1738
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 1746
    .end local v15           #focusWasTaken:Z
    .end local v16           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1765
    :cond_f
    :goto_6
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1767
    invoke-virtual {v14}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1770
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 1771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 1772
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1773
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->updateScrollIndicators()V

    .line 1777
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v2, :cond_11

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    .line 1781
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1783
    if-nez v8, :cond_0

    .line 1784
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1672
    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :pswitch_2
    if-eqz v4, :cond_12

    .line 1673
    :try_start_3
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/htc/widget/HtcListViewCore;->fillFromSelection(III)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1675
    .end local v23           #sel:Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/widget/HtcListViewCore;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v23

    .line 1677
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1679
    .end local v23           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1680
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1682
    .end local v23           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1683
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1783
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenTop:I
    .end local v7           #childrenBottom:I
    .end local v10           #childCount:I
    .end local v11           #dataChanged:Z
    .end local v12           #firstPosition:I
    .end local v13           #focusLayoutRestoreDirectChild:Landroid/view/View;
    .end local v14           #focusLayoutRestoreView:Landroid/view/View;
    .end local v17           #focusedChild:Landroid/view/View;
    .end local v19           #index:I
    .end local v20           #oldFirst:Landroid/view/View;
    .end local v22           #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .end local v23           #sel:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v8, :cond_13

    .line 1784
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :cond_13
    throw v2

    .line 1686
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenTop:I
    .restart local v7       #childrenBottom:I
    .restart local v10       #childCount:I
    .restart local v11       #dataChanged:Z
    .restart local v12       #firstPosition:I
    .restart local v13       #focusLayoutRestoreDirectChild:Landroid/view/View;
    .restart local v14       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v17       #focusedChild:Landroid/view/View;
    .restart local v19       #index:I
    .restart local v20       #oldFirst:Landroid/view/View;
    .restart local v22       #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    :pswitch_5
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 1687
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    .line 1688
    .restart local v23       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1691
    .end local v23           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .line 1692
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v2, p0

    .line 1694
    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v23

    .line 1695
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1703
    .end local v23           #sel:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1704
    .restart local v21       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 1705
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v23

    .line 1706
    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1708
    .end local v21           #position:I
    .end local v23           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_17

    .line 1709
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-nez v3, :cond_16

    .end local v6           #childrenTop:I
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_16
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_7

    .line 1711
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_19

    .line 1712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v20, :cond_18

    .end local v6           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v23           #sel:Landroid/view/View;
    .restart local v6       #childrenTop:I
    :cond_18
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_8

    .line 1715
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    .restart local v23       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 1728
    .end local v6           #childrenTop:I
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1740
    .restart local v15       #focusWasTaken:Z
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1744
    .end local v15           #focusWasTaken:Z
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 1748
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    if-lez v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v2, v0, :cond_1f

    .line 1749
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1750
    .local v9, child:Landroid/view/View;
    if-eqz v9, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 1758
    .end local v9           #child:Landroid/view/View;
    :cond_1e
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v14, :cond_f

    .line 1759
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1752
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 1753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    .line 1576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1670
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 2196
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2197
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2223
    :cond_0
    :goto_0
    return v2

    .line 2201
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2202
    .local v1, count:I
    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 2203
    if-eqz p2, :cond_2

    .line 2204
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2205
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2206
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2209
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2210
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2211
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2215
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2218
    goto :goto_0

    .line 2220
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2223
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1301
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1302
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1355
    :cond_0
    :goto_0
    return v6

    .line 1306
    :cond_1
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1307
    .local v9, returnedHeight:I
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 1310
    .local v3, dividerHeight:I
    :goto_1
    const/4 v6, 0x0

    .line 1315
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1316
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 1317
    .local v7, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->recycleOnMeasure()Z

    move-result v8

    .line 1318
    .local v8, recyle:Z
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    .line 1320
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1321
    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1323
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/htc/widget/HtcListViewCore;->measureScrapChild(Landroid/view/View;II)V

    .line 1325
    if-lez v4, :cond_3

    .line 1327
    add-int/2addr v9, v3

    .line 1331
    :cond_3
    if-eqz v8, :cond_4

    .line 1332
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1335
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1337
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1340
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1307
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1348
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1349
    move v6, v9

    .line 1320
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1355
    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 921
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-super {p0, p1, v9}, Lcom/htc/widget/HtcAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 922
    .local v2, child:Landroid/view/View;
    if-nez v2, :cond_1

    .line 923
    const/4 v2, 0x0

    .line 986
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v2

    .line 924
    .restart local v2       #child:Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 925
    .local v6, tag:Ljava/lang/Object;
    iget-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mSpeedUp:Z

    if-nez v9, :cond_2

    .line 926
    instance-of v9, v6, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v9, :cond_0

    .line 927
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mSpeedUp:Z

    .line 931
    :cond_2
    const v9, 0x20201c8

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 935
    const v9, 0x2020019

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 936
    .local v4, child_top_round:Landroid/view/View;
    const v9, 0x2020018

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 946
    .local v3, child_bottom_round:Landroid/view/View;
    instance-of v9, v6, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v9, :cond_0

    move-object v7, v6

    .line 947
    check-cast v7, Lcom/htc/widget/HtcListItemSeparableType;

    .line 948
    .local v7, tagItem:Lcom/htc/widget/HtcListItemSeparableType;
    const/4 v8, 0x0

    .line 949
    .local v8, top_round:Z
    const/4 v1, 0x0

    .line 950
    .local v1, bottom_round:Z
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemSeparableType;->getTopRound()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 951
    const/4 v8, 0x1

    .line 952
    :cond_3
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne p1, v9, :cond_5

    .line 953
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v10

    add-int v5, v9, v10

    .line 955
    .local v5, listBottom:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 956
    .local v0, bottom:I
    if-le v0, v5, :cond_4

    .line 957
    const/4 v1, 0x1

    .line 960
    .end local v0           #bottom:I
    .end local v5           #listBottom:I
    :cond_4
    :goto_1
    if-eqz v8, :cond_7

    if-eqz v1, :cond_7

    .line 961
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 962
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 963
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 958
    :cond_5
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 959
    const/4 v1, 0x1

    goto :goto_1

    .line 965
    :cond_6
    const v9, 0x2080693

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 966
    :cond_7
    if-eqz v8, :cond_9

    .line 967
    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 968
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 969
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 971
    :cond_8
    const v9, 0x2080696

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 972
    :cond_9
    if-eqz v1, :cond_b

    .line 973
    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    .line 974
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 975
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 977
    :cond_a
    const v9, 0x2080694

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 979
    :cond_b
    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    .line 980
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 981
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 983
    :cond_c
    const v9, 0x2080695

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3564
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->onFinishInflate()V

    .line 3566
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    .line 3567
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3568
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3569
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->addHeaderView(Landroid/view/View;)V

    .line 3568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3571
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->removeAllViews()V

    .line 3573
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3509
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3511
    const/4 v2, -0x1

    .line 3512
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3513
    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3515
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3518
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_0

    .line 3519
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 3520
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->layoutChildren()V

    .line 3525
    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 3526
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3527
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    .line 3528
    .local v1, childCount:I
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 3530
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 3532
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3530
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3536
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3537
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3538
    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3539
    invoke-static {p3, v8, p2}, Lcom/htc/widget/HtcListViewCore;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3541
    .local v3, distance:I
    if-ge v3, v6, :cond_1

    .line 3542
    move v6, v3

    .line 3543
    move v2, v5

    goto :goto_1

    .line 3548
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_3
    if-ltz v2, :cond_4

    .line 3549
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->setSelection(I)V

    .line 3553
    :goto_2
    return-void

    .line 3551
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2298
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2303
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2308
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1193
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->onMeasure(II)V

    .line 1195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1196
    .local v10, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1197
    .local v9, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1198
    .local v11, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1200
    .local v4, heightSize:I
    const/4 v8, 0x0

    .line 1201
    .local v8, childWidth:I
    const/4 v7, 0x0

    .line 1203
    .local v7, childHeight:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1204
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1208
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Lcom/htc/widget/HtcListViewCore;->measureScrapChild(Landroid/view/View;II)V

    .line 1210
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1211
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1213
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1219
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v10, :cond_2

    .line 1220
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v11, v0, v1

    .line 1224
    :cond_2
    if-nez v9, :cond_3

    .line 1225
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1229
    :cond_3
    const/high16 v0, -0x8000

    if-ne v9, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1231
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1234
    :cond_4
    invoke-virtual {p0, v11, v4}, Lcom/htc/widget/HtcListViewCore;->setMeasuredDimension(II)V

    .line 1235
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    .line 1237
    return-void

    .line 1203
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1174
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1175
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1176
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1177
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1178
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1179
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1180
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1181
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

    if-nez v5, :cond_0

    .line 1182
    new-instance v5, Lcom/htc/widget/HtcListViewCore$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcListViewCore$FocusSelector;-><init>(Lcom/htc/widget/HtcListViewCore;Lcom/htc/widget/HtcListViewCore$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

    .line 1184
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

    invoke-virtual {v5, v1, v4}, Lcom/htc/widget/HtcListViewCore$FocusSelector;->setup(II)Lcom/htc/widget/HtcListViewCore$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->post(Ljava/lang/Runnable;)Z

    .line 1187
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->onSizeChanged(IIII)V

    .line 1188
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3669
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3672
    const/4 v0, 0x0

    .line 3674
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2427
    const/4 v1, -0x1

    .line 2428
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2430
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2431
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2437
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2438
    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2439
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2440
    const/4 v4, 0x4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2441
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 2443
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 2444
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2447
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2448
    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2451
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    .line 2452
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    .line 2453
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2454
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 2461
    .end local v2           #position:I
    :cond_3
    :goto_1
    return v3

    .line 2432
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 2433
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2434
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    .line 2461
    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1268
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 434
    const/4 v0, 0x1

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 439
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 306
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 310
    const/4 v0, 0x1

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 315
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 583
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 586
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 589
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v6

    .line 590
    .local v6, height:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getScrollY()I

    move-result v8

    .line 591
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 592
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 594
    .local v5, fadingEdge:I
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 596
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 597
    :cond_0
    add-int/2addr v8, v5

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    .line 602
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 604
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 606
    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v14, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 608
    :cond_2
    sub-int/2addr v7, v5

    .line 612
    :cond_3
    const/4 v11, 0x0

    .line 614
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 621
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 628
    :goto_0
    sub-int v4, v1, v7

    .line 629
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 649
    .end local v4           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 650
    .local v10, scroll:Z
    :goto_2
    if-eqz v10, :cond_5

    .line 651
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/htc/widget/HtcListViewCore;->scrollListItemsBy(I)V

    .line 652
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    .line 654
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 656
    :cond_5
    return v10

    .line 624
    .end local v10           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 630
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 637
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 644
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 645
    .local v12, top:I
    sub-int v3, v12, v8

    .line 646
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 640
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 649
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 536
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 538
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->resetList()V

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 541
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 474
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->resetList()V

    .line 479
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    .line 481
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 482
    :cond_1
    new-instance v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 487
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 488
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 491
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 493
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 494
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    .line 495
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    .line 496
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 497
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkFocus()V

    .line 499
    new-instance v1, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    .line 500
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 502
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 505
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 506
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 510
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 511
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 513
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 515
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    .line 524
    .end local v0           #position:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    .line 525
    return-void

    .line 484
    :cond_3
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 508
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 518
    .end local v0           #position:I
    :cond_5
    iput-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    .line 519
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkFocus()V

    .line 521
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setAdjustFooter(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 3753
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    .line 3754
    return-void
.end method

.method public setAdjustForSipOff(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2041
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    .line 2042
    return-void
.end method

.method public setAdjustForSipOn(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2045
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    .line 2046
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 3272
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3273
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsCacheColorOpaque:Z

    .line 3274
    if-eqz v0, :cond_1

    .line 3275
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3276
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    .line 3278
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3280
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setCacheColorHint(I)V

    .line 3281
    return-void

    .line 3272
    .end local v0           #opaque:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 3425
    if-eqz p1, :cond_3

    .line 3426
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 3430
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3431
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 3432
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 3433
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerIsOpaque:Z

    .line 3434
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    .line 3435
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 3436
    return-void

    .line 3428
    :cond_3
    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3452
    iput p1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 3453
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    .line 3454
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 3455
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 3477
    return-void
.end method

.method public setFootAdjusted(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2063
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    .line 2064
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 3503
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    .line 3504
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 3505
    return-void
.end method

.method public setForceAdjustFooter(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2049
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    .line 2050
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 3490
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    .line 3491
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 3492
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 3250
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    .line 3251
    if-nez p1, :cond_0

    .line 3252
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setDescendantFocusability(I)V

    .line 3254
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2080
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromTop(II)V

    .line 2081
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2265
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2266
    .local v0, count:I
    if-lez v0, :cond_0

    .line 2267
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 2278
    :goto_0
    return-void

    .line 2271
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2272
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setSelection(I)V

    goto :goto_0

    .line 2274
    :cond_1
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 2275
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromLeft(II)V
    .locals 2
    .parameter "position"
    .parameter "x"

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2136
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2137
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2138
    if-ltz p1, :cond_2

    .line 2139
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 2145
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2146
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2147
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLeftBorderWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    .line 2149
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2150
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 2151
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    .line 2154
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    goto :goto_0

    .line 2142
    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2117
    :cond_0
    :goto_0
    return-void

    .line 2097
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2098
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2099
    if-ltz p1, :cond_2

    .line 2100
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 2106
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2107
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    .line 2108
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 2110
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2111
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 2112
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 2115
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    goto :goto_0

    .line 2103
    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2166
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 2167
    const/4 v0, 0x0

    .line 2169
    .local v0, awakeScrollbars:Z
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 2171
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 2172
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_2

    .line 2173
    const/4 v0, 0x1

    .line 2179
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->layoutChildren()V

    .line 2181
    if-eqz v0, :cond_1

    .line 2182
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    .line 2184
    :cond_1
    return-void

    .line 2174
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2175
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 3744
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 3745
    return-void
.end method

.method public setTransparentWrap(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 3768
    return-void
.end method

.method public setWrappingHeader(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 3775
    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3734
    const/4 v0, 0x1

    return v0
.end method
