.class public Lcom/htc/music/widget/GroupListView;
.super Lcom/htc/widget/HtcListView;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/GroupListView$1;,
        Lcom/htc/music/widget/GroupListView$SavedState;,
        Lcom/htc/music/widget/GroupListView$ExpandableListContextMenuInfo;,
        Lcom/htc/music/widget/GroupListView$OnChildClickListener;,
        Lcom/htc/music/widget/GroupListView$OnGroupClickListener;,
        Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;,
        Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field private static final CHECK_STATE_OFF:I = 0x0

.field private static final CHECK_STATE_ON:I = 0x1

.field private static final CHECK_STATE_PARTIAL:I = 0x2

.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

.field private mChoiceMode:I

.field private mConnector:Lcom/htc/music/widget/GroupListConnector;

.field private mGroupIdMapChildCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-array v0, v2, [I

    sput-object v0, Lcom/htc/music/widget/GroupListView;->EMPTY_STATE_SET:[I

    .line 181
    new-array v0, v3, [I

    aput v3, v0, v2

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 186
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_EMPTY_STATE_SET:[I

    .line 191
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 196
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/htc/music/widget/GroupListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/widget/GroupListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_STATE_SETS:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/widget/GroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 226
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/music/widget/GroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 230
    invoke-direct/range {p0 .. p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    .line 212
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    .line 232
    sget-object v14, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 235
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 237
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 239
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    .line 241
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorRight:I

    .line 243
    const/4 v14, 0x4

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorLeft:I

    .line 246
    const/4 v14, 0x5

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorRight:I

    .line 249
    const/4 v14, 0x6

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    const-string v14, "common_checkbox_on"

    const v15, 0x208019f

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 257
    .local v8, checkOn:I
    const-string v14, "common_checkbox_off"

    const v15, 0x208019d

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 258
    .local v7, checkOff:I
    const-string v14, "common_checkbox_partial"

    const v15, 0x20807d5

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 260
    .local v9, checkPartial:I
    if-lez v8, :cond_0

    if-lez v7, :cond_0

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 262
    .local v5, checkBoxOn:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 263
    .local v4, checkBoxOff:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 265
    .local v6, checkBoxPartial:Landroid/graphics/drawable/Drawable;
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 266
    .local v13, groupCheckBox:Landroid/graphics/drawable/StateListDrawable;
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput v16, v14, v15

    invoke-virtual {v13, v14, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 267
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x2

    aput v16, v14, v15

    invoke-virtual {v13, v14, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 268
    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual {v13, v14, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 272
    .local v12, childCheckBoxOn:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 273
    .local v11, childCheckBoxOff:Landroid/graphics/drawable/Drawable;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 274
    .local v10, childCheckBox:Landroid/graphics/drawable/StateListDrawable;
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput v16, v14, v15

    invoke-virtual {v10, v14, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 275
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x2

    aput v16, v14, v15

    invoke-virtual {v13, v14, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 276
    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual {v10, v14, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 278
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 279
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 289
    .end local v4           #checkBoxOff:Landroid/graphics/drawable/Drawable;
    .end local v5           #checkBoxOn:Landroid/graphics/drawable/Drawable;
    .end local v6           #checkBoxPartial:Landroid/graphics/drawable/Drawable;
    .end local v10           #childCheckBox:Landroid/graphics/drawable/StateListDrawable;
    .end local v11           #childCheckBoxOff:Landroid/graphics/drawable/Drawable;
    .end local v12           #childCheckBoxOn:Landroid/graphics/drawable/Drawable;
    .end local v13           #groupCheckBox:Landroid/graphics/drawable/StateListDrawable;
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020066

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020066

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getChildOrGroupId(Lcom/htc/music/widget/GroupListPosition;)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1156
    iget v0, p1, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v2, p1, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1159
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getIndicator(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "pos"

    .prologue
    .line 421
    iget-object v2, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 422
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 424
    .local v0, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    iget-object v2, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-direct {p0, v2}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v1

    .line 437
    .local v1, stateSetIndex:I
    sget-object v2, Lcom/htc/music/widget/GroupListView;->GROUP_STATE_SETS:[[I

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 457
    .end local v1           #stateSetIndex:I
    :cond_0
    :goto_0
    return-object v0

    .line 440
    .end local v0           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 442
    .restart local v0       #indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 446
    iget-object v2, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget-object v3, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-direct {p0, v2, v3}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v1

    .line 447
    .restart local v1       #stateSetIndex:I
    sget-object v2, Lcom/htc/music/widget/GroupListView;->GROUP_STATE_SETS:[[I

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method private getItemCheckStatus(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v0

    return v0
.end method

.method private getItemCheckStatus(II)I
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v0

    return v0
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    .line 1091
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return v0

    .line 1095
    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1098
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1118
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1132
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .parameter "packedPosition"

    .prologue
    .line 1071
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1072
    const/4 v0, -0x1

    .line 1074
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 1052
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1053
    const/4 v0, 0x2

    .line 1056
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 800
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/GroupListConnector;->collapseGroup(I)Z

    move-result v0

    .line 802
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 806
    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 294
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 304
    :cond_2
    const/16 v18, 0x0

    .line 305
    .local v18, saveCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    .line 306
    .local v8, clipToPadding:Z
    :goto_1
    if-eqz v8, :cond_3

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mScrollX:I

    move/from16 v19, v0

    .line 309
    .local v19, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mScrollY:I

    move/from16 v20, v0

    .line 310
    .local v20, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mPaddingTop:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mRight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mBottom:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 314
    .end local v19           #scrollX:I
    .end local v20           #scrollY:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getHeaderViewsCount()I

    move-result v9

    .line 316
    .local v9, headerViewsCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getCount()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    .line 318
    .local v14, lastChildFlPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mBottom:I

    move/from16 v16, v0

    .line 326
    .local v16, myB:I
    const/4 v15, -0x4

    .line 329
    .local v15, lastItemType:I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 334
    .local v12, indicatorRect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getChildCount()I

    move-result v6

    .line 335
    .local v6, childCount:I
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v7, v22, v9

    .local v7, childFlPos:I
    :goto_2
    if-ge v10, v6, :cond_7

    .line 337
    if-gez v7, :cond_6

    .line 335
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 305
    .end local v6           #childCount:I
    .end local v7           #childFlPos:I
    .end local v8           #clipToPadding:Z
    .end local v9           #headerViewsCount:I
    .end local v10           #i:I
    .end local v12           #indicatorRect:Landroid/graphics/Rect;
    .end local v14           #lastChildFlPos:I
    .end local v15           #lastItemType:I
    .end local v16           #myB:I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 340
    .restart local v6       #childCount:I
    .restart local v7       #childFlPos:I
    .restart local v8       #clipToPadding:Z
    .restart local v9       #headerViewsCount:I
    .restart local v10       #i:I
    .restart local v12       #indicatorRect:Landroid/graphics/Rect;
    .restart local v14       #lastChildFlPos:I
    .restart local v15       #lastItemType:I
    .restart local v16       #myB:I
    :cond_6
    if-le v7, v14, :cond_8

    .line 405
    :cond_7
    if-eqz v8, :cond_0

    .line 406
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 345
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/widget/GroupListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 346
    .local v13, item:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    .line 347
    .local v21, t:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 349
    .local v5, b:I
    if-ltz v5, :cond_4

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_4

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v17

    .line 358
    .local v17, pos:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_9

    .line 359
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 370
    :goto_6
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    .line 373
    :cond_9
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->isStackFromBottom()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getDividerHeight()I

    move-result v22

    sub-int v22, v21, v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 383
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 390
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/music/widget/GroupListView;->getIndicator(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 391
    .local v11, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_4

    .line 393
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 394
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 395
    sub-int v22, v5, v21

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v21

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 396
    sub-int v22, v5, v21

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v21

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 399
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 401
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 360
    .end local v11           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto/16 :goto_4

    .line 362
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto/16 :goto_5

    .line 366
    :cond_c
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 367
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_6

    .line 385
    :cond_d
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getDividerHeight()I

    move-result v22

    add-int v22, v22, v5

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_7
.end method

.method public expandAllGroups()V
    .locals 5

    .prologue
    .line 1362
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v2, :cond_0

    .line 1363
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 1364
    .local v0, count:I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group Count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1365
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1366
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/GroupListConnector;->expandGroup(I)Z

    .line 1365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1369
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public expandGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 783
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/GroupListConnector;->expandGroup(I)Z

    move-result v0

    .line 785
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

    invoke-interface {v1, p1}, Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 789
    :cond_0
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getChildSeclectList()[I
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 2
    .parameter "flatListPosition"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListPosition;->getPackedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const/4 v2, -0x1

    .line 925
    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListPosition;->obtainPosition(J)Lcom/htc/music/widget/GroupListPosition;

    move-result-object v0

    .line 926
    .local v0, glPos:Lcom/htc/music/widget/GroupListPosition;
    if-nez v0, :cond_1

    .line 935
    :cond_0
    :goto_0
    return v2

    .line 930
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v3, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    .line 931
    .local v1, pmData:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    if-eqz v1, :cond_0

    .line 935
    iget-object v2, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    goto :goto_0
.end method

.method public getGroupSeclectList()[I
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getSelectedPosition()J

    move-result-wide v1

    .line 964
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 965
    const-wide/16 v3, -0x1

    .line 974
    :goto_0
    return-wide v3

    .line 967
    :cond_0
    invoke-static {v1, v2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 969
    .local v0, groupPos:I
    invoke-static {v1, v2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 971
    iget-object v3, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 974
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getSelectedItemPosition()I

    move-result v0

    .line 949
    .local v0, selectedPos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 950
    const-wide v1, 0xffffffffL

    .line 952
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/GroupListView;->getExpandableListPosition(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 23
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 603
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==handleItemClick id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v21

    .line 606
    .local v21, posMetadata:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/music/widget/GroupListView;->getChildOrGroupId(Lcom/htc/music/widget/GroupListPosition;)J

    move-result-wide p3

    .line 608
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 610
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    .line 611
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-static {v3}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    .line 612
    .local v19, pos:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v18

    .line 615
    .local v18, oldValue:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v13

    .line 617
    .local v13, count:I
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_0

    .line 618
    const/16 v17, 0x0

    .line 622
    .local v17, newValue:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    move-wide/from16 v0, v19

    move/from16 v2, v17

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 624
    if-nez v17, :cond_1

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :goto_1
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v13, :cond_4

    .line 634
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v19

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    move-wide/from16 v0, v19

    move/from16 v2, v17

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move/from16 v0, v16

    invoke-interface {v3, v4, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v11

    .line 638
    .local v11, cid:J
    if-nez v17, :cond_2

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    long-to-int v4, v11

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    .line 633
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 620
    .end local v11           #cid:J
    .end local v16           #i:I
    .end local v17           #newValue:I
    :cond_0
    const/16 v17, 0x1

    .restart local v17       #newValue:I
    goto :goto_0

    .line 628
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->append(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 641
    .restart local v11       #cid:J
    .restart local v16       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    long-to-int v4, v11

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->put(I)V

    goto :goto_3

    .line 648
    .end local v11           #cid:J
    .end local v13           #count:I
    .end local v16           #i:I
    .end local v17           #newValue:I
    .end local v18           #oldValue:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v18

    .line 649
    .restart local v18       #oldValue:I
    if-nez v18, :cond_4

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-virtual {v3}, Lcom/htc/music/widget/LongSparseIntArray;->clear()V

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x1

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 658
    .end local v18           #oldValue:I
    .end local v19           #pos:J
    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    if-eqz v3, :cond_5

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/htc/music/widget/GroupListView$OnGroupClickListener;->onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    .line 665
    const/4 v3, 0x1

    .line 771
    :goto_4
    return v3

    .line 668
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/GroupListView;->playSoundEffect(I)V

    .line 673
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "posMetadata.isExpanded"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 692
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    .line 693
    const/4 v3, 0x1

    goto :goto_4

    .line 676
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    if-eqz v3, :cond_7

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/htc/music/widget/GroupListView$OnGroupClickListener;->onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 679
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    .line 680
    const/4 v3, 0x1

    goto :goto_4

    .line 686
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/GroupListView;->playSoundEffect(I)V

    goto :goto_5

    .line 697
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v3, :cond_9

    .line 698
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-static {v3, v4}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v19

    .line 700
    .restart local v19       #pos:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v18

    .line 704
    .restart local v18       #oldValue:I
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-static {v3}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v14

    .line 707
    .local v14, groupPos:J
    const/4 v10, 0x0

    .line 708
    .local v10, childCnt:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 715
    :goto_6
    if-nez v18, :cond_b

    const/16 v17, 0x1

    .line 718
    .restart local v17       #newValue:I
    :goto_7
    if-nez v17, :cond_d

    .line 720
    add-int/lit8 v10, v10, -0x1

    .line 721
    if-gtz v10, :cond_c

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v15, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 723
    const/4 v10, 0x0

    .line 728
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    long-to-int v5, v14

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    .line 749
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    move-wide/from16 v0, v19

    move/from16 v2, v17

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 762
    .end local v10           #childCnt:I
    .end local v14           #groupPos:J
    .end local v17           #newValue:I
    .end local v18           #oldValue:I
    .end local v19           #pos:J
    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

    if-eqz v3, :cond_11

    .line 763
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/GroupListView;->playSoundEffect(I)V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->requestLayout()V

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v7, v4, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p3

    invoke-interface/range {v3 .. v9}, Lcom/htc/music/widget/GroupListView$OnChildClickListener;->onChildClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IIJ)Z

    move-result v3

    goto/16 :goto_4

    .line 711
    .restart local v10       #childCnt:I
    .restart local v14       #groupPos:J
    .restart local v18       #oldValue:I
    .restart local v19       #pos:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 716
    :cond_b
    const/16 v17, 0x0

    .restart local v17       #newValue:I
    goto/16 :goto_7

    .line 725
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v14, v15, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    goto :goto_8

    .line 733
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v22

    .line 734
    .local v22, totalChild:I
    add-int/lit8 v10, v10, 0x1

    .line 735
    move/from16 v0, v22

    if-le v10, v0, :cond_e

    move/from16 v10, v22

    .line 736
    :cond_e
    move/from16 v0, v22

    if-ne v10, v0, :cond_f

    .line 738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v14, v15, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    long-to-int v5, v14

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->append(I)V

    .line 746
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->append(I)V

    goto/16 :goto_9

    .line 743
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v14, v15, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    goto :goto_b

    .line 753
    .end local v10           #childCnt:I
    .end local v14           #groupPos:J
    .end local v17           #newValue:I
    .end local v18           #oldValue:I
    .end local v22           #totalChild:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v18

    .line 754
    .restart local v18       #oldValue:I
    if-nez v18, :cond_9

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-virtual {v3}, Lcom/htc/music/widget/LongSparseIntArray;->clear()V

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x1

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    goto/16 :goto_a

    .line 769
    .end local v18           #oldValue:I
    .end local v19           #pos:J
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    .line 771
    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 4
    .parameter "groupPosition"

    .prologue
    const/4 v0, 0x1

    .line 1340
    iget v1, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-eqz v1, :cond_0

    .line 1343
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemChecked(II)Z
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v0, 0x1

    .line 1329
    iget v1, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-eqz v1, :cond_0

    .line 1332
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1301
    move-object v0, p1

    check-cast v0, Lcom/htc/music/widget/GroupListView$SavedState;

    .line 1302
    .local v0, ss:Lcom/htc/music/widget/GroupListView$SavedState;
    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1304
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/music/widget/GroupListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    iget-object v2, v0, Lcom/htc/music/widget/GroupListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/GroupListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 1307
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1294
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1295
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/htc/music/widget/GroupListView$SavedState;

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v1}, Lcom/htc/music/widget/GroupListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/htc/music/widget/GroupListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 4
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 579
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "==performItemClick"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getHeaderViewsCount()I

    move-result v1

    .line 582
    .local v1, headerViewsCount:I
    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 584
    .local v0, footerViewsStart:I
    if-lt p2, v1, :cond_0

    if-lt p2, v0, :cond_1

    .line 586
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    .line 591
    :goto_0
    return v2

    :cond_1
    sub-int v2, p2, v1

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/htc/music/widget/GroupListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 544
    if-eqz p1, :cond_3

    .line 546
    new-instance v0, Lcom/htc/music/widget/GroupListConnector;

    invoke-direct {v0, p1}, Lcom/htc/music/widget/GroupListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    .line 551
    :goto_0
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-virtual {v0}, Lcom/htc/music/widget/LongSparseIntArray;->clear()V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->clear()V

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->clear()V

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 566
    return-void

    .line 548
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 504
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childDivider"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 470
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1186
    iput p1, p0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorLeft:I

    .line 1187
    iput p2, p0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorRight:I

    .line 1188
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 1311
    iput p1, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    .line 1312
    iget v0, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-nez v0, :cond_0

    .line 1314
    new-instance v0, Lcom/htc/music/widget/LongSparseIntArray;

    invoke-direct {v0}, Lcom/htc/music/widget/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    .line 1315
    new-instance v0, Lcom/htc/music/widget/FastSparseVector;

    invoke-direct {v0}, Lcom/htc/music/widget/FastSparseVector;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    .line 1316
    new-instance v0, Lcom/htc/music/widget/FastSparseVector;

    invoke-direct {v0}, Lcom/htc/music/widget/FastSparseVector;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    .line 1318
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1214
    iput p1, p0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    .line 1215
    iput p2, p0, Lcom/htc/music/widget/GroupListView;->mIndicatorRight:I

    .line 1216
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/music/widget/GroupListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 893
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

    .line 894
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/music/widget/GroupListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 865
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    .line 866
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 823
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

    .line 824
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 840
    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

    .line 841
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 532
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 533
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 1004
    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListPosition;->obtainChildPosition(II)Lcom/htc/music/widget/GroupListPosition;

    move-result-object v0

    .line 1006
    .local v0, elChildPos:Lcom/htc/music/widget/GroupListPosition;
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    .line 1008
    .local v1, flatChildPos:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    if-nez v1, :cond_1

    .line 1013
    if-nez p3, :cond_0

    .line 1014
    const/4 v2, 0x0

    .line 1028
    :goto_0
    return v2

    .line 1016
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListView;->expandGroup(I)Z

    .line 1018
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    .line 1021
    if-nez v1, :cond_1

    .line 1022
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1026
    :cond_1
    iget-object v2, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 1028
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 984
    invoke-static {p1}, Lcom/htc/music/widget/GroupListPosition;->obtainGroupPosition(I)Lcom/htc/music/widget/GroupListPosition;

    move-result-object v0

    .line 985
    .local v0, elGroupPos:Lcom/htc/music/widget/GroupListPosition;
    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    .line 986
    .local v1, pmData:Lcom/htc/music/widget/GroupListConnector$PositionMetadata;
    if-nez v1, :cond_0

    .line 990
    :goto_0
    return-void

    .line 989
    :cond_0
    iget-object v2, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method
