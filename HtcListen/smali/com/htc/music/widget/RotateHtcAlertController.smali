.class public Lcom/htc/music/widget/RotateHtcAlertController;
.super Ljava/lang/Object;
.source "RotateHtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;,
        Lcom/htc/music/widget/RotateHtcAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mOrientation:I

.field private mRotateLayout:Lcom/htc/music/widget/RotateRelativeLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingSpecified:Z

    .line 109
    iput v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconId:I

    .line 125
    iput v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mCheckedItem:I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleDivider:Z

    .line 137
    iput-boolean v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleCenter:Z

    .line 142
    iput v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mOrientation:I

    .line 145
    new-instance v0, Lcom/htc/music/widget/RotateHtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/RotateHtcAlertController$1;-><init>(Lcom/htc/music/widget/RotateHtcAlertController;)V

    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 192
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 194
    iput-object p3, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    .line 195
    new-instance v0, Lcom/htc/music/widget/RotateHtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/htc/music/widget/RotateHtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/widget/RotateHtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/widget/RotateHtcAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/widget/RotateHtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/music/widget/RotateHtcAlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    :goto_0
    return v2

    .line 203
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 204
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 207
    check-cast v1, Landroid/view/ViewGroup;

    .line 208
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 209
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 210
    add-int/lit8 v0, v0, -0x1

    .line 211
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 212
    invoke-static {p0}, Lcom/htc/music/widget/RotateHtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 217
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 13
    .parameter "button"

    .prologue
    const/16 v12, 0x1e0

    const/16 v11, 0xf0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x140

    .line 666
    const v6, 0x3f333333

    .line 667
    .local v6, weight:F
    iget-object v7, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 668
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 671
    .local v0, conf:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_0

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v11, :cond_1

    :cond_0
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v11, :cond_4

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_4

    .line 673
    :cond_1
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_3

    .line 674
    const v6, 0x3f028f5c

    .line 689
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x20200b1

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 690
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 691
    .local v3, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 692
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v7, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x20200b8

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 697
    .local v5, rightSpacer:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 698
    .local v4, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 699
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 702
    return-void

    .line 676
    .end local v2           #leftSpacer:Landroid/view/View;
    .end local v3           #paramsL:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #paramsR:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #rightSpacer:Landroid/view/View;
    :cond_3
    const v6, 0x3f70a3d7

    goto :goto_0

    .line 680
    :cond_4
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v12, :cond_5

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v8, :cond_6

    :cond_5
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_2

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v12, :cond_2

    .line 682
    :cond_6
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_7

    .line 683
    const v6, 0x3f170a3d

    goto :goto_0

    .line 685
    :cond_7
    const v6, 0x3f051eb8

    goto :goto_0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 23
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 710
    .local v10, fullDark:I
    const-string v20, "ferro"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setBackground "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    if-nez v10, :cond_0

    .line 712
    const/16 v20, 0x0

    const v21, 0x20805e8

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 714
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 715
    .local v17, topDark:I
    if-nez v17, :cond_1

    .line 716
    const/16 v20, 0x1

    const v21, 0x20805eb

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 718
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 719
    .local v7, centerDark:I
    if-nez v7, :cond_2

    .line 720
    const/16 v20, 0x2

    const v21, 0x20805e5

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 722
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 723
    .local v4, bottomDark:I
    if-nez v4, :cond_3

    .line 724
    const/16 v20, 0x3

    const v21, 0x20805e2

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 726
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 727
    .local v9, fullBright:I
    if-nez v9, :cond_4

    .line 728
    const/16 v20, 0x4

    const v21, 0x20805e7

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 730
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    .line 731
    .local v16, topBright:I
    if-nez v16, :cond_5

    .line 732
    const/16 v20, 0x5

    const v21, 0x20805ea

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 734
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 735
    .local v6, centerBright:I
    if-nez v6, :cond_6

    .line 736
    const/16 v20, 0x6

    const v21, 0x20805e4

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 738
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 739
    .local v3, bottomBright:I
    if-nez v3, :cond_7

    .line 740
    const/16 v20, 0x7

    const v21, 0x20805e1

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 742
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 743
    .local v5, bottomMedium:I
    if-nez v5, :cond_8

    .line 744
    const/16 v20, 0x8

    const v21, 0x20805e3

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 746
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 747
    .local v8, centerMedium:I
    if-nez v8, :cond_9

    .line 748
    const/16 v20, 0x9

    const v21, 0x20805e6

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 760
    :cond_9
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    .line 761
    .local v19, views:[Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [Z

    .line 762
    .local v13, light:[Z
    const/4 v12, 0x0

    .line 763
    .local v12, lastView:Landroid/view/View;
    const/4 v11, 0x0

    .line 765
    .local v11, lastLight:Z
    const/4 v14, 0x0

    .line 766
    .local v14, pos:I
    if-eqz p6, :cond_a

    .line 767
    aput-object p1, v19, v14

    .line 768
    const/16 v20, 0x0

    aput-boolean v20, v13, v14

    .line 769
    add-int/lit8 v14, v14, 0x1

    .line 777
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 p2, 0x0

    .end local p2
    :cond_b
    aput-object p2, v19, v14

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    const/16 v20, 0x0

    :goto_0
    aput-boolean v20, v13, v14

    .line 780
    add-int/lit8 v14, v14, 0x1

    .line 781
    if-eqz p3, :cond_c

    .line 782
    aput-object p3, v19, v14

    .line 783
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mForceInverseBackground:Z

    move/from16 v20, v0

    aput-boolean v20, v13, v14

    .line 784
    add-int/lit8 v14, v14, 0x1

    .line 786
    :cond_c
    if-eqz p4, :cond_d

    .line 787
    aput-object p7, v19, v14

    .line 788
    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    .line 791
    :cond_d
    const/4 v15, 0x0

    .line 792
    .local v15, setView:Z
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_14

    .line 793
    aget-object v18, v19, v14

    .line 794
    .local v18, v:Landroid/view/View;
    if-nez v18, :cond_f

    .line 792
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 779
    .end local v15           #setView:Z
    .end local v18           #v:Landroid/view/View;
    :cond_e
    const/16 v20, 0x1

    goto :goto_0

    .line 797
    .restart local v15       #setView:Z
    .restart local v18       #v:Landroid/view/View;
    :cond_f
    if-eqz v12, :cond_10

    .line 798
    if-nez v15, :cond_12

    .line 799
    if-eqz v11, :cond_11

    move/from16 v20, v16

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 803
    :goto_4
    const/4 v15, 0x1

    .line 805
    :cond_10
    move-object/from16 v12, v18

    .line 806
    aget-boolean v11, v13, v14

    goto :goto_2

    :cond_11
    move/from16 v20, v17

    .line 799
    goto :goto_3

    .line 801
    :cond_12
    if-eqz v11, :cond_13

    move/from16 v20, v6

    :goto_5
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_13
    move/from16 v20, v7

    goto :goto_5

    .line 809
    .end local v18           #v:Landroid/view/View;
    :cond_14
    if-eqz v12, :cond_15

    .line 810
    if-eqz v15, :cond_19

    .line 815
    if-eqz v11, :cond_18

    if-eqz p4, :cond_17

    .end local v5           #bottomMedium:I
    :goto_6
    invoke-virtual {v12, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 847
    .end local v9           #fullBright:I
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 849
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/RotateHtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setSelection(I)V

    .line 854
    :cond_16
    return-void

    .restart local v5       #bottomMedium:I
    .restart local v9       #fullBright:I
    :cond_17
    move v5, v3

    .line 815
    goto :goto_6

    :cond_18
    move v5, v4

    goto :goto_6

    .line 818
    :cond_19
    if-eqz v11, :cond_1a

    .end local v9           #fullBright:I
    :goto_8
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v9       #fullBright:I
    :cond_1a
    move v9, v10

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v9, 0x0

    .line 579
    const/4 v3, 0x0

    .line 580
    .local v3, defaultButton:Landroid/view/View;
    const/4 v2, 0x1

    .line 581
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 582
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 583
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v7, 0x0

    .line 585
    .local v7, whichButtons:I
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x20200b2

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 586
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 589
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 591
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x20200b3

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 592
    .local v4, padding1:Landroid/view/View;
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 600
    .end local v4           #padding1:Landroid/view/View;
    :goto_0
    iget-boolean v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositiveDisabled:Z

    if-eqz v8, :cond_0

    .line 601
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v10, 0x33ffffff

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 602
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 606
    :cond_0
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x20200b6

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 607
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 610
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 612
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x20200b7

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 613
    .local v5, padding2:Landroid/view/View;
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 625
    .end local v5           #padding2:Landroid/view/View;
    :goto_1
    iget-boolean v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegativeDisabled:Z

    if-eqz v8, :cond_1

    .line 626
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x106000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 627
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 631
    :cond_1
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x20200b4

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 632
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 635
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x20200b5

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 638
    .local v6, padding3:Landroid/view/View;
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 653
    .end local v6           #padding3:Landroid/view/View;
    :goto_2
    if-ne v7, v2, :cond_8

    .line 654
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v8}, Lcom/htc/music/widget/RotateHtcAlertController;->centerButton(Landroid/widget/Button;)V

    .line 661
    :cond_2
    :goto_3
    if-eqz v7, :cond_a

    const/4 v8, 0x1

    :goto_4
    return v8

    .line 594
    :cond_3
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 596
    iget-object v3, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 597
    or-int/2addr v7, v2

    goto/16 :goto_0

    .line 616
    :cond_4
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 619
    if-nez v3, :cond_5

    .line 620
    iget-object v3, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 622
    :cond_5
    or-int/2addr v7, v0

    goto :goto_1

    .line 640
    :cond_6
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 643
    if-nez v3, :cond_7

    .line 644
    iget-object v3, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 646
    :cond_7
    or-int/2addr v7, v1

    goto :goto_2

    .line 655
    :cond_8
    if-ne v7, v0, :cond_9

    .line 656
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v8}, Lcom/htc/music/widget/RotateHtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 657
    :cond_9
    if-ne v7, v1, :cond_2

    .line 658
    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v8}, Lcom/htc/music/widget/RotateHtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_a
    move v8, v9

    .line 661
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 4
    .parameter "contentPanel"

    .prologue
    const v3, 0x20200ac

    const/16 v2, 0x8

    .line 554
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 555
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 558
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x20200ad

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    .line 559
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v8, 0x20200a7

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/16 v9, 0x8

    .line 480
    const/4 v0, 0x1

    .line 482
    .local v0, hasTitle:Z
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 484
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 487
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 491
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 550
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v0

    .line 494
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconId:I

    if-lez v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 496
    .local v2, titleExist:Z
    :goto_1
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x20200a8

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    .line 497
    if-eqz v2, :cond_7

    .line 500
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x20200a9

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    .line 502
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    iget v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconId:I

    if-lez v4, :cond_4

    .line 519
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .end local v2           #titleExist:Z
    :cond_3
    move v2, v5

    .line 494
    goto :goto_1

    .line 522
    .restart local v2       #titleExist:Z
    :cond_4
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 523
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 525
    :cond_5
    iget v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconId:I

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconId:I

    if-ne v4, v7, :cond_0

    .line 530
    :cond_6
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 534
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 544
    :cond_7
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 545
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 15

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200ab

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 418
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/htc/music/widget/RotateHtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 419
    invoke-direct {p0}, Lcom/htc/music/widget/RotateHtcAlertController;->setupButtons()Z

    move-result v4

    .line 421
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200a6

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 427
    .local v1, topPanel:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .line 429
    .local v11, htcContext:Landroid/content/Context;
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 433
    :goto_0
    if-nez v11, :cond_0

    .line 477
    :goto_1
    return-void

    .line 430
    :catch_0
    move-exception v10

    .line 431
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 437
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v0, 0x0

    sget-object v12, Lcom/htc/R$styleable;->AlertDialog:[I

    const/high16 v13, 0x201

    const/4 v14, 0x0

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 441
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/htc/music/widget/RotateHtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 443
    .local v6, hasTitle:Z
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200b0

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 444
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_1

    .line 445
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :cond_1
    const/4 v3, 0x0

    .line 449
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 450
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200ae

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 451
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200af

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 452
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-boolean v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_2

    .line 454
    iget v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingLeft:I

    iget v12, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingTop:I

    iget v13, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingRight:I

    iget v14, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v12, v13, v14}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 464
    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_2
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200aa

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 468
    .local v9, divider:Landroid/view/View;
    iget-boolean v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleDivider:Z

    if-eqz v0, :cond_6

    .line 469
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9           #divider:Landroid/view/View;
    :cond_4
    :goto_3
    move-object v0, p0

    .line 475
    invoke-direct/range {v0 .. v7}, Lcom/htc/music/widget/RotateHtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 476
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 458
    :cond_5
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200ae

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 471
    .restart local v9       #divider:Landroid/view/View;
    :cond_6
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    .line 394
    packed-switch p1, :pswitch_data_0

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 396
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 398
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 6

    .prologue
    const/high16 v4, 0x2

    .line 222
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 224
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mView:Landroid/view/View;

    invoke-static {v2}, Lcom/htc/music/widget/RotateHtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x2090028

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 234
    .local v1, view:Landroid/view/View;
    new-instance v2, Lcom/htc/music/widget/RotateRelativeLayout;

    iget-object v3, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/music/widget/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mRotateLayout:Lcom/htc/music/widget/RotateRelativeLayout;

    .line 235
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mRotateLayout:Lcom/htc/music/widget/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/RotateRelativeLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mRotateLayout:Lcom/htc/music/widget/RotateRelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 238
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v3, 0x202001a

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, smile:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 240
    iget-object v2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mContext:Landroid/content/Context;

    const-string v3, "common_panel_navbar_hightlight"

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/widget/RotateHtcAlertController;->setupView()V

    .line 242
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 301
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 302
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 305
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :pswitch_0
    iput-object p2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 309
    iput-object p4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 325
    :goto_0
    return-void

    .line 313
    :pswitch_1
    iput-object p2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 314
    iput-object p4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 318
    :pswitch_2
    iput-object p2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 319
    iput-object p4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDisabled(IZ)V
    .locals 2
    .parameter "whichButton"
    .parameter "disabled"

    .prologue
    .line 330
    packed-switch p1, :pswitch_data_0

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :pswitch_0
    iput-boolean p2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonPositiveDisabled:Z

    .line 347
    :goto_0
    return-void

    .line 337
    :pswitch_1
    iput-boolean p2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 341
    :pswitch_2
    iput-boolean p2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mCustomTitleView:Landroid/view/View;

    .line 256
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 368
    iput p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconId:I

    .line 369
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 370
    if-lez p1, :cond_1

    .line 371
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    if-nez p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 380
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mForceInverseBackground:Z

    .line 387
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 260
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 1113
    iput p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mOrientation:I

    .line 1114
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 246
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleCenter:Z

    .line 359
    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mTitleDivider:Z

    .line 353
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mView:Landroid/view/View;

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingSpecified:Z

    .line 271
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mView:Landroid/view/View;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingSpecified:Z

    .line 280
    iput p2, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingLeft:I

    .line 281
    iput p3, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingTop:I

    .line 282
    iput p4, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingRight:I

    .line 283
    iput p5, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mViewSpacingBottom:I

    .line 284
    return-void
.end method

.method public updateOrientation()V
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mRotateLayout:Lcom/htc/music/widget/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mRotateLayout:Lcom/htc/music/widget/RotateRelativeLayout;

    iget v1, p0, Lcom/htc/music/widget/RotateHtcAlertController;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1120
    :cond_0
    return-void
.end method
