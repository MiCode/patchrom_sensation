.class public Lcom/htc/widget/HtcListView;
.super Lcom/htc/widget/BouncingListView;
.source "HtcListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# static fields
.field public static final HTC_BOTTOM_BORDER_HEIGHT:I = 0xa

.field public static final HTC_MYSTIC_BORDER_SIZE:I = 0x0

.field public static final HTC_TOP_BORDER_HEIGHT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "HtcListView"


# instance fields
.field private BACKGROUND_BORDER_HEIGHT:I

.field private BACKGROUND_SHADOW_HEIGHT:I

.field private mBd:Landroid/graphics/Bitmap;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBottomBorderHeight:I

.field private mBottomRound:Z

.field private mBottomRoundChecked:Z

.field private mContainerDrawable:Landroid/graphics/drawable/Drawable;

.field mContainerHeight:I

.field mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

.field protected mDivider:Landroid/graphics/drawable/Drawable;

.field private mDrawEndRound:Z

.field private mDrawTopRound:Z

.field protected mEmptyHeight:I

.field protected mEmptyWidth:I

.field private mFakeTopRound:Z

.field protected mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcBottomRound:Landroid/graphics/drawable/Drawable;

.field protected mHtcFastScrollEnabled:Z

.field protected mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

.field protected mHtcLastScrollState:I

.field protected mHtcListBackground:Landroid/graphics/drawable/Drawable;

.field protected mHtcListViewStyle:Z

.field protected mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field protected mHtcRoundBackgroundColor:I

.field private final mHtcTempRect:Landroid/graphics/Rect;

.field protected mHtcTopDivider:Landroid/graphics/drawable/Drawable;

.field protected mHtcTopRound:Landroid/graphics/drawable/Drawable;

.field private mIsMoreExpandableListView:Z

.field protected mLastItemBottom:I

.field protected mLastItemCnt:I

.field private mListTouchMode:I

.field private mOverListHeight:Z

.field protected mRoundRect:Landroid/graphics/Rect;

.field protected mScreenBottom:I

.field private mSeparateSection:Z

.field private mShadowPaint:Landroid/graphics/Paint;

.field protected mShouldFillEmpty:Z

.field private mTopBorderHeight:I

.field private mTopRound:Z

.field private mTopRoundChecked:Z

.field private mTruePaddingBottom:I

.field private mTruePaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    .line 100
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 103
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    .line 106
    iput v3, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 110
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    .line 111
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 114
    iput v1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    .line 116
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 120
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    .line 121
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    .line 124
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    .line 125
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    .line 127
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    .line 658
    new-instance v0, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    .line 789
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 790
    iput v2, p0, Lcom/htc/widget/HtcListView;->mContainerHeight:I

    .line 791
    iput v2, p0, Lcom/htc/widget/HtcListView;->mScreenBottom:I

    .line 792
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemCnt:I

    .line 793
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/widget/HtcListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/BouncingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    .line 100
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 103
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    .line 106
    iput v3, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 110
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    .line 111
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 114
    iput v1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    .line 116
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 120
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    .line 121
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    .line 124
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    .line 125
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    .line 127
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    .line 658
    new-instance v0, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    .line 789
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 790
    iput v2, p0, Lcom/htc/widget/HtcListView;->mContainerHeight:I

    .line 791
    iput v2, p0, Lcom/htc/widget/HtcListView;->mScreenBottom:I

    .line 792
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemCnt:I

    .line 793
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    .line 136
    invoke-direct {p0, p1, p2, v1}, Lcom/htc/widget/HtcListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v4, -0x8000

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/BouncingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    .line 100
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 103
    iput v4, p0, Lcom/htc/widget/HtcListView;->mEmptyWidth:I

    .line 106
    iput v3, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 110
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    .line 111
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 114
    iput v1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    .line 116
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 120
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    .line 121
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    .line 124
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    .line 125
    iput-boolean v3, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    .line 127
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    .line 658
    new-instance v0, Lcom/htc/widget/HtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListView$1;-><init>(Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    .line 789
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 790
    iput v2, p0, Lcom/htc/widget/HtcListView;->mContainerHeight:I

    .line 791
    iput v2, p0, Lcom/htc/widget/HtcListView;->mScreenBottom:I

    .line 792
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemCnt:I

    .line 793
    iput v2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    return v0
.end method

.method private adjustBackgroundBorderHeight()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    .line 290
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScrollEnabled:Z

    .line 146
    invoke-super {p0, p0}, Lcom/htc/widget/BouncingListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->initXferPaint()V

    .line 149
    const/high16 v0, -0x3400

    invoke-static {p0, v0}, Lcom/htc/view/ViewWrapper;->setCornerStrokeColor(Landroid/view/View;I)V

    .line 150
    invoke-static {p0, v1}, Lcom/htc/view/ViewWrapper;->setCornerStrokeWidth(Landroid/view/View;I)V

    .line 151
    return-void
.end method

.method private initXferPaint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 156
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    .line 161
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 162
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 164
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 165
    return-void
.end method

.method private isDraggingItem(II)Z
    .locals 2
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 779
    iget v1, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    if-eq p1, v1, :cond_1

    .line 785
    :cond_0
    :goto_0
    return v0

    .line 781
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    if-eq p2, v1, :cond_0

    .line 782
    iput p2, p0, Lcom/htc/widget/HtcListView;->mLastItemBottom:I

    .line 783
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 170
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 171
    .local v2, htcContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 175
    .local v3, res:Landroid/content/res/Resources;
    if-nez p2, :cond_0

    if-eqz p3, :cond_9

    .line 178
    :cond_0
    if-eqz p3, :cond_1

    .line 179
    const/4 v5, 0x0

    sget-object v6, Lcom/htc/R$styleable;->HtcListView:[I

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 183
    .local v4, typedArray:Landroid/content/res/TypedArray;
    :goto_0
    const/16 v5, 0x8

    const v6, 0x20d0074

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    .line 186
    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    .line 189
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mHtcListViewStyle:Z

    .line 193
    iget-boolean v5, p0, Lcom/htc/widget/HtcListView;->mHtcListViewStyle:Z

    if-eqz v5, :cond_2

    .line 194
    sget-object v5, Lcom/htc/widget/HtcAdapterView$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V

    .line 200
    :goto_1
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    .line 205
    :goto_2
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 210
    :goto_3
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 215
    :goto_4
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    .line 220
    :goto_5
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    .line 224
    :goto_6
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 227
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    .line 232
    :goto_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :goto_8
    const v5, 0x20a002f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcListView;->mHtcRoundBackgroundColor:I

    .line 249
    const v5, 0x20b0001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    .line 250
    iget v5, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 251
    iget v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 258
    .end local v2           #htcContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_9
    return-void

    .line 181
    .restart local v2       #htcContext:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_1
    sget-object v5, Lcom/htc/R$styleable;->HtcListView:[I

    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .restart local v4       #typedArray:Landroid/content/res/TypedArray;
    goto/16 :goto_0

    .line 196
    :cond_2
    sget-object v5, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 253
    .end local v2           #htcContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "HtcListView"

    const-string v6, "resource not found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 202
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #htcContext:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #typedArray:Landroid/content/res/TypedArray;
    :cond_3
    const v5, 0x2080696

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 255
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #htcContext:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :catch_1
    move-exception v1

    .line 256
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_9

    .line 207
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #htcContext:Landroid/content/Context;
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #typedArray:Landroid/content/res/TypedArray;
    :cond_4
    const v5, 0x2080694

    :try_start_2
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 212
    :cond_5
    const v5, 0x2080669

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 217
    :cond_6
    const v5, 0x208068f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 222
    :cond_7
    const v5, 0x20800d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 229
    :cond_8
    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    .line 235
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #typedArray:Landroid/content/res/TypedArray;
    :cond_9
    const v5, 0x20d0074

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    iput v5, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    .line 236
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    .line 238
    const v5, 0x2080696

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    .line 239
    const v5, 0x2080669

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 240
    const v5, 0x2080694

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 241
    const v5, 0x208068f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    .line 242
    const v5, 0x20800d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    .line 243
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 244
    const v5, 0x20806a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8
.end method

.method private setRoundRect()V
    .locals 6

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 262
    .local v2, scale:F
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 263
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v4, 0x43a0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 264
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    const/high16 v4, 0x41a0

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 266
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v0, v3, [I

    .line 267
    .local v0, colors:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 269
    iget v3, p0, Lcom/htc/widget/HtcListView;->mHtcRoundBackgroundColor:I

    aput v3, v0, v1

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcListView;->mBd:Landroid/graphics/Bitmap;

    .line 273
    return-void
.end method

.method private updateEmptyHeight()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 541
    iput v3, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    sub-int v0, v1, v2

    .line 547
    .local v0, restAbove:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getBottomBorderHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 550
    iget v1, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    if-gez v1, :cond_0

    .line 551
    iput v3, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 797
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/BouncingListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 800
    .local v4, bounds:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    .line 801
    .local v7, childCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v10

    .line 802
    .local v10, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v12

    .line 803
    .local v12, first:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->isStackFromBottom()Z

    move-result v14

    .line 826
    .local v14, isStackFromBottom:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 970
    :cond_0
    return-void

    .line 830
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottom:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTop:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListView;->getListPaddingBottom()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    move/from16 v22, v0

    add-int v15, v21, v22

    .line 833
    .local v15, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    if-lez v12, :cond_2

    add-int v21, v12, v7

    add-int/lit8 v22, v10, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    .line 836
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTruePaddingTop:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mBottom:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTop:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mTruePaddingBottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 840
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPaddingLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 841
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mRight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mLeft:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListView;->mPaddingRight:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 846
    if-nez v14, :cond_3

    .line 847
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mOverListHeight:Z

    .line 848
    if-lez v7, :cond_3

    if-ne v7, v10, :cond_3

    .line 849
    add-int/lit8 v21, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 850
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v21

    move/from16 v0, v21

    if-ge v0, v15, :cond_3

    .line 851
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mOverListHeight:Z

    .line 857
    .end local v5           #child:Landroid/view/View;
    :cond_3
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v7, :cond_0

    .line 858
    add-int v21, v12, v13

    if-ltz v21, :cond_6

    add-int v21, v12, v13

    move/from16 v0, v21

    if-ge v0, v10, :cond_6

    .line 859
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 860
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 861
    .local v9, childTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 862
    .local v6, childBottom:I
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 863
    .local v16, tag:Ljava/lang/Object;
    const/16 v17, 0x0

    .line 864
    .local v17, tagItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v17, v16

    .line 865
    check-cast v17, Lcom/htc/widget/HtcListItemSeparable;

    .line 867
    :cond_4
    add-int v21, v12, v13

    if-nez v21, :cond_5

    .line 869
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 870
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v6, v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    .line 889
    :cond_5
    :goto_1
    add-int/lit8 v21, v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 890
    .local v8, childNext:Landroid/view/View;
    add-int v21, v12, v13

    add-int/lit8 v22, v10, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 893
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 894
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childBottom:I
    .end local v8           #childNext:Landroid/view/View;
    .end local v9           #childTop:I
    .end local v16           #tag:Ljava/lang/Object;
    .end local v17           #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_6
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 871
    .restart local v5       #child:Landroid/view/View;
    .restart local v6       #childBottom:I
    .restart local v9       #childTop:I
    .restart local v16       #tag:Ljava/lang/Object;
    .restart local v17       #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_7
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 872
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move-object/from16 v20, v16

    .line 873
    check-cast v20, Lcom/htc/widget/HtcListItemSeparableType;

    .line 874
    .local v20, tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 875
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparableType;->getTopRound()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRound:Z

    .line 876
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v6, v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto :goto_1

    .line 878
    .end local v20           #tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    :cond_8
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_9

    .line 879
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 880
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRound:Z

    .line 881
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_1

    .line 883
    :cond_9
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRoundChecked:Z

    .line 884
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mTopRound:Z

    .line 885
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mTopRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v9, v2}, Lcom/htc/widget/HtcListView;->drawStartRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_1

    .line 895
    .restart local v8       #childNext:Landroid/view/View;
    :cond_a
    :try_start_1
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 896
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    .line 897
    move-object/from16 v0, v16

    check-cast v0, Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v20, v0

    .line 898
    .restart local v20       #tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 899
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    .line 900
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 963
    .end local v8           #childNext:Landroid/view/View;
    .end local v20           #tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    :catch_0
    move-exception v11

    .line 965
    .local v11, ex:Ljava/lang/IndexOutOfBoundsException;
    const-string v21, "divider"

    const-string v22, "hit IndexOutOfBoundsException when drawing HTC Style bottom separater!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 901
    .end local v11           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v8       #childNext:Landroid/view/View;
    :cond_b
    if-eqz v17, :cond_c

    :try_start_2
    invoke-interface/range {v17 .. v17}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_c

    .line 903
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 904
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    .line 905
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    .line 907
    :cond_c
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 908
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    .line 909
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    .line 912
    :cond_d
    add-int v21, v12, v13

    add-int/lit8 v22, v10, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 915
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 916
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    .line 917
    :cond_e
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 918
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    .line 919
    move-object/from16 v0, v16

    check-cast v0, Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v20, v0

    .line 920
    .restart local v20       #tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 921
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    .line 922
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    .line 923
    .end local v20           #tagSeparator:Lcom/htc/widget/HtcListItemSeparableType;
    :cond_f
    if-eqz v17, :cond_10

    invoke-interface/range {v17 .. v17}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_10

    .line 925
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 926
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    .line 927
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    .line 929
    :cond_10
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRoundChecked:Z

    .line 930
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    .line 931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mBottomRound:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    goto/16 :goto_2

    .line 934
    :cond_11
    if-eqz v8, :cond_6

    .line 937
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListView;->mSpeedUp:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 938
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 939
    .local v18, tagNext:Ljava/lang/Object;
    const/16 v19, 0x0

    .line 940
    .local v19, tagNextItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 941
    move-object/from16 v0, v18

    check-cast v0, Lcom/htc/widget/HtcListItemSeparable;

    move-object/from16 v19, v0

    .line 944
    :cond_12
    if-eqz v16, :cond_6

    if-eqz v18, :cond_6

    .line 945
    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v18}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    if-ge v6, v15, :cond_6

    .line 948
    invoke-interface/range {v17 .. v17}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_14

    .line 949
    if-eqz v19, :cond_13

    invoke-interface/range {v19 .. v19}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_13

    .line 950
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    .line 952
    :cond_13
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    .line 955
    :cond_14
    if-eqz v19, :cond_15

    invoke-interface/range {v19 .. v19}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v21

    if-nez v21, :cond_15

    .line 956
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V

    goto/16 :goto_2

    .line 958
    :cond_15
    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/htc/widget/HtcListView;->drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 509
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->draw(Landroid/graphics/Canvas;)V

    .line 510
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 513
    :cond_0
    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1266
    :goto_0
    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1251
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"

    .prologue
    .line 1236
    if-nez p3, :cond_0

    .line 1241
    :goto_0
    return-void

    :cond_0
    move-object v0, p3

    .line 1239
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1240
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawContainer(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "topPos"
    .parameter "bottomPos"

    .prologue
    .line 758
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 759
    .local v4, bounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 760
    .local v3, boundTop:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 761
    .local v0, boundBottom:I
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 762
    .local v1, boundLeft:I
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 763
    .local v2, boundRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 764
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 767
    :goto_0
    iget v5, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    sub-int v5, p3, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 768
    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 769
    iget v5, p0, Lcom/htc/widget/HtcListView;->mRight:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 771
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawContainerBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 772
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 773
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 774
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 775
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 776
    return-void

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v5, p2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method protected drawContainerBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "canvas"
    .parameter "bounds"

    .prologue
    .line 740
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int v2, v5, v6

    .line 741
    .local v2, containerW:I
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int v1, v5, v6

    .line 742
    .local v1, containerH:I
    mul-int v5, v2, v1

    if-gtz v5, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    mul-int v5, v2, v1

    new-array v0, v5, [I

    .line 745
    .local v0, colors:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    mul-int v5, v2, v1

    if-ge v4, v5, :cond_2

    .line 747
    const v5, -0xe1e1e2

    aput v5, v0, v4

    .line 745
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 749
    :cond_2
    if-lez v1, :cond_0

    .line 750
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 751
    .local v3, fillBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/htc/widget/HtcListView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    .line 752
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 753
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawEndRound(Landroid/graphics/Canvas;IZ)V
    .locals 10
    .parameter "canvas"
    .parameter "bottomPos"
    .parameter "drawEndRound"

    .prologue
    .line 1066
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 1068
    .local v5, bounds:Landroid/graphics/Rect;
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 1069
    .local v4, boundTop:I
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 1070
    .local v1, boundBottom:I
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 1071
    .local v2, boundLeft:I
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 1073
    .local v3, boundRight:I
    iget v8, p0, Lcom/htc/widget/HtcListView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/widget/HtcListView;->mTruePaddingBottom:I

    sub-int v6, v8, v9

    .line 1076
    .local v6, listBottom:I
    iget-boolean v8, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    if-eqz v8, :cond_1

    .line 1078
    if-eqz p3, :cond_0

    .line 1080
    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v8, p2, v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 1081
    iput p2, v5, Landroid/graphics/Rect;->bottom:I

    .line 1082
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1085
    :cond_0
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1086
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1087
    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1140
    :goto_0
    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1141
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 1142
    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 1143
    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1144
    return-void

    .line 1092
    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    const/high16 v9, -0x8000

    if-ne v8, v9, :cond_2

    .line 1093
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->updateEmptyHeight()V

    .line 1096
    :cond_2
    iget v8, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    add-int v0, p2, v8

    .line 1097
    .local v0, baseLine:I
    iget-boolean v8, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    if-eqz v8, :cond_3

    .line 1098
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1099
    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1100
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1104
    :cond_3
    if-eqz p3, :cond_4

    .line 1105
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 1106
    add-int/lit8 v8, v0, 0x1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1107
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v5, v8}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1109
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1110
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1111
    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1114
    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    add-int v7, p2, v8

    .line 1115
    .local v7, shaderH:I
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1116
    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 1117
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1119
    iget v8, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x0

    iget v9, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 1121
    iget v8, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1123
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1126
    .end local v7           #shaderH:I
    :cond_4
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1127
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1128
    invoke-virtual {p0, p1, v5}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1130
    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    add-int v7, p2, v8

    .line 1131
    .restart local v7       #shaderH:I
    iput p2, v5, Landroid/graphics/Rect;->top:I

    .line 1132
    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 1133
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"

    .prologue
    .line 1188
    if-nez p3, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    move-object v1, p3

    .line 1192
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    instance-of v0, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 1194
    .local v0, clipDivider:Z
    if-nez v0, :cond_2

    .line 1195
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1201
    :goto_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1203
    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1197
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1198
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_1
.end method

.method protected drawMiddleSeparater(Landroid/graphics/Canvas;IZZ)V
    .locals 7
    .parameter "canvas"
    .parameter "pos"
    .parameter "drawStartRound"
    .parameter "drawEndRound"

    .prologue
    .line 1150
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 1152
    .local v4, bounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 1153
    .local v3, boundTop:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1154
    .local v0, boundBottom:I
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 1155
    .local v1, boundLeft:I
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 1160
    .local v2, boundRight:I
    if-eqz p3, :cond_0

    .line 1161
    iget v5, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    sub-int v5, p2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1162
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1163
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1166
    :cond_0
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 1167
    add-int/lit8 v5, p2, 0x1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1168
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1170
    if-eqz p4, :cond_1

    .line 1171
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1172
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1173
    iget-object v5, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1178
    :cond_1
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 1179
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1180
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 1181
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 1182
    return-void
.end method

.method protected drawStartRound(Landroid/graphics/Canvas;IZ)V
    .locals 10
    .parameter "canvas"
    .parameter "topPos"
    .parameter "drawStartRound"

    .prologue
    .line 977
    iget-object v4, p0, Lcom/htc/widget/HtcListView;->mHtcTempRect:Landroid/graphics/Rect;

    .line 979
    .local v4, bounds:Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 980
    .local v3, boundTop:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 981
    .local v0, boundBottom:I
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 982
    .local v1, boundLeft:I
    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 984
    .local v2, boundRight:I
    iget v5, p0, Lcom/htc/widget/HtcListView;->mTruePaddingTop:I

    .line 987
    .local v5, listTop:I
    iget-boolean v8, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    if-eqz v8, :cond_1

    .line 988
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 989
    iget v8, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x0

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 991
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v8}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 993
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 994
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 995
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 997
    if-eqz p3, :cond_0

    .line 998
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 1000
    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 1002
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1055
    :cond_0
    :goto_0
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 1056
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1057
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 1058
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 1059
    return-void

    .line 1006
    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    sub-int v8, p2, v8

    if-ge v5, v8, :cond_3

    move v7, v5

    .line 1009
    .local v7, topLine:I
    :goto_1
    if-eqz p3, :cond_4

    .line 1010
    add-int/lit8 v8, p2, -0x1

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 1011
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1012
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v4, v8}, Lcom/htc/widget/HtcListView;->drawHtcDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 1014
    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    sub-int v6, p2, v8

    .line 1015
    .local v6, shaderH:I
    if-gez v6, :cond_2

    .line 1016
    const/4 v6, 0x0

    .line 1019
    :cond_2
    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1021
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1022
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1025
    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 1026
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1027
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 1030
    iput p2, v4, Landroid/graphics/Rect;->top:I

    .line 1032
    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_BORDER_HEIGHT:I

    add-int/2addr v8, p2

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 1035
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1006
    .end local v6           #shaderH:I
    .end local v7           #topLine:I
    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    sub-int v7, p2, v8

    goto :goto_1

    .line 1038
    .restart local v7       #topLine:I
    :cond_4
    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1039
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1040
    invoke-virtual {p0, p1, v4}, Lcom/htc/widget/HtcListView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1043
    iget v8, p0, Lcom/htc/widget/HtcListView;->BACKGROUND_SHADOW_HEIGHT:I

    sub-int v6, p2, v8

    .line 1044
    .restart local v6       #shaderH:I
    if-gez v6, :cond_5

    .line 1045
    const/4 v6, 0x0

    .line 1047
    :cond_5
    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 1048
    iput p2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1049
    iget-object v8, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/widget/HtcListView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v8, v9}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"
    .parameter "paint"

    .prologue
    .line 1214
    if-nez p3, :cond_0

    .line 1230
    :goto_0
    return-void

    .line 1220
    :cond_0
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1221
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public enableScrollWhenResurrectSelection(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 1322
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mScrollWhenResurrectSelection:Z

    .line 1323
    return-void
.end method

.method protected getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 1271
    iget v0, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    .prologue
    .line 1287
    const/4 v0, 0x0

    return v0
.end method

.method public getListSelectorPressed()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1332
    .local v0, listSelector:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 1333
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .end local v0           #listSelector:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1335
    :cond_0
    return-object v0
.end method

.method getRightBorderWidth()I
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x0

    return v0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 1276
    iget v0, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    return v0
.end method

.method protected htcInvokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 592
    :cond_0
    return-void
.end method

.method protected htcReportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 602
    iget v0, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 605
    iput p1, p0, Lcom/htc/widget/HtcListView;->mHtcLastScrollState:I

    .line 608
    :cond_0
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public isOverListHeight()Z
    .locals 1

    .prologue
    .line 1310
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->mOverListHeight:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 528
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 530
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 531
    const/4 v1, 0x1

    .line 534
    .end local v0           #intercepted:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1302
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    .line 1303
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/BouncingListView;->onLayout(ZIIII)V

    .line 1304
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->htcInvokeOnItemScrollListener()V

    .line 622
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 626
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 640
    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcListView;->htcReportScrollStateChange(I)V

    .line 641
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 482
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/BouncingListView;->onSizeChanged(IIII)V

    .line 483
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcFastScroller;->onSizeChanged(IIII)V

    .line 486
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    .line 491
    iget v2, p0, Lcom/htc/widget/HtcListView;->mListTouchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 494
    .local v1, mInputManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 498
    .end local v1           #mInputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 500
    .local v0, intercepted:Z
    if-eqz v0, :cond_1

    .line 501
    const/4 v2, 0x1

    .line 504
    .end local v0           #intercepted:Z
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 650
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 652
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/HtcListView;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->setDataSetListener(Lcom/htc/widget/HtcAdapterView$OnDataSetListener;)V

    .line 655
    :cond_0
    return-void
.end method

.method public setBottomBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 411
    iput p1, p0, Lcom/htc/widget/HtcListView;->mBottomBorderHeight:I

    .line 413
    return-void
.end method

.method public setBottomDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 308
    return-void
.end method

.method public setBottomRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcBottomRound:Landroid/graphics/drawable/Drawable;

    .line 327
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 328
    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mBouncingEnabled:Z

    .line 454
    return-void
.end method

.method public setCompletedTopRound(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1317
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mFakeTopRound:Z

    .line 1318
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "divider"

    .prologue
    .line 443
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 445
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mHtcFastScrollEnabled:Z

    .line 459
    if-eqz p1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/HtcFastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->stop()V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    goto :goto_0
.end method

.method public setFastScrollSectionsDirty()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mHtcFastScroller:Lcom/htc/widget/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFastScroller;->setSectionsDirty()V

    .line 478
    :cond_0
    return-void
.end method

.method public setFillEmpty(Z)V
    .locals 0
    .parameter "fillEmpty"

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mShouldFillEmpty:Z

    .line 393
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .parameter "filterText"

    .prologue
    .line 711
    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 725
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 737
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    return-void
.end method

.method public setHorizontal(Z)V
    .locals 1
    .parameter "isHorizontal"

    .prologue
    .line 1294
    if-eqz p1, :cond_0

    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListView;->setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V

    .line 1296
    return-void

    .line 1294
    :cond_0
    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    goto :goto_0
.end method

.method public setIsMoreExpandableListView(Z)V
    .locals 0
    .parameter "isMoreExpandableListView"

    .prologue
    .line 1344
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mIsMoreExpandableListView:Z

    .line 1345
    return-void
.end method

.method public setLeftBorderWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 424
    return-void
.end method

.method public setLeftDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 338
    return-void
.end method

.method public setLeftRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 356
    return-void
.end method

.method public setListBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcListBackground:Landroid/graphics/drawable/Drawable;

    .line 375
    return-void
.end method

.method public setMiddleDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcMiddleDivider:Landroid/graphics/drawable/Drawable;

    .line 299
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 582
    return-void
.end method

.method public setRightBorderWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 434
    return-void
.end method

.method public setRightDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 347
    return-void
.end method

.method public setRightRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 365
    return-void
.end method

.method public setRoundBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 384
    return-void
.end method

.method public setRoundCorner(ZZ)V
    .locals 0
    .parameter "is_top_round"
    .parameter "is_bottom_round"

    .prologue
    .line 1339
    iput-boolean p1, p0, Lcom/htc/widget/HtcListView;->mDrawTopRound:Z

    .line 1340
    iput-boolean p2, p0, Lcom/htc/widget/HtcListView;->mDrawEndRound:Z

    .line 1341
    return-void
.end method

.method public setTopBorderHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 401
    iput p1, p0, Lcom/htc/widget/HtcListView;->mTopBorderHeight:I

    .line 403
    return-void
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcTopDivider:Landroid/graphics/drawable/Drawable;

    .line 282
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 283
    return-void
.end method

.method public setTopRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/widget/HtcListView;->mHtcTopRound:Landroid/graphics/drawable/Drawable;

    .line 317
    invoke-direct {p0}, Lcom/htc/widget/HtcListView;->adjustBackgroundBorderHeight()V

    .line 318
    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 11
    .parameter "position"

    .prologue
    const v10, 0x20201c8

    const v9, 0x2020085

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 670
    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v2

    .line 671
    .local v2, first:I
    sub-int v4, p1, v2

    .line 672
    .local v4, target_child:I
    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v6

    .line 674
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 675
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v10, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v9, :cond_0

    .line 682
    instance-of v7, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v7, :cond_3

    .line 683
    check-cast v0, Lcom/htc/widget/HtcListItem;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/htc/widget/HtcListItem;->isBottomRounded()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    .line 685
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 686
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_5

    instance-of v7, v3, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v7, :cond_5

    .line 687
    check-cast v3, Lcom/htc/widget/HtcListItemSeparableType;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_2

    .line 689
    .restart local v3       #tag:Ljava/lang/Object;
    :cond_5
    instance-of v7, v3, Lcom/htc/widget/HtcListItemSeparable;

    if-eqz v7, :cond_0

    .line 692
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 693
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 694
    .local v1, childNext:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v10, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 697
    :cond_6
    iget-boolean v7, p0, Lcom/htc/widget/HtcListView;->mSeparateSection:Z

    if-eqz v7, :cond_0

    move v6, v5

    goto :goto_0
.end method
