.class public Lcom/android/camera/rotate/RotateHtcAlertController;
.super Ljava/lang/Object;
.source "RotateHtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;,
        Lcom/android/camera/rotate/RotateHtcAlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static current_orientation:I


# instance fields
.field private TAG:Ljava/lang/String;

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

.field mContentView:Landroid/view/View;

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

.field mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "RotateHtcDialogController"

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->TAG:Ljava/lang/String;

    .line 78
    iput-boolean v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingSpecified:Z

    .line 100
    iput v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    .line 113
    iput-boolean v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mForceInverseBackground:Z

    .line 118
    iput v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    .line 129
    iput-boolean v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleDivider:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleCenter:Z

    .line 140
    new-instance v0, Lcom/android/camera/rotate/RotateHtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/rotate/RotateHtcAlertController$1;-><init>(Lcom/android/camera/rotate/RotateHtcAlertController;)V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 187
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 189
    iput-object p3, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    .line 190
    new-instance v0, Lcom/android/camera/rotate/RotateHtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/android/camera/rotate/RotateHtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mHandler:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/rotate/RotateHtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/rotate/RotateHtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/rotate/RotateHtcAlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    :goto_0
    return v2

    .line 198
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 199
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 202
    check-cast v1, Landroid/view/ViewGroup;

    .line 203
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 204
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 205
    add-int/lit8 v0, v0, -0x1

    .line 206
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 207
    invoke-static {p0}, Lcom/android/camera/rotate/RotateHtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 212
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 13
    .parameter "button"

    .prologue
    const/16 v12, 0xf0

    const/4 v11, 0x0

    const/16 v10, 0x1e0

    const/16 v8, 0x140

    const/4 v9, 0x1

    .line 703
    const v6, 0x3f333333

    .line 704
    .local v6, weight:F
    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 705
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 708
    .local v0, conf:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_0

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v12, :cond_1

    :cond_0
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v12, :cond_4

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_4

    .line 710
    :cond_1
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_3

    .line 711
    const v6, 0x3f028f5c

    .line 750
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x20200b1

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 751
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 752
    .local v3, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 753
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x20200b8

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 758
    .local v5, rightSpacer:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 759
    .local v4, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 760
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 763
    return-void

    .line 713
    .end local v2           #leftSpacer:Landroid/view/View;
    .end local v3           #paramsL:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #paramsR:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #rightSpacer:Landroid/view/View;
    :cond_3
    const v6, 0x3f028f5c

    goto :goto_0

    .line 717
    :cond_4
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v10, :cond_5

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v8, :cond_6

    :cond_5
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_8

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v10, :cond_8

    .line 719
    :cond_6
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_7

    .line 720
    const v6, 0x3ee66666

    goto :goto_0

    .line 722
    :cond_7
    const v6, 0x3f051eb8

    goto :goto_0

    .line 726
    :cond_8
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x320

    if-ne v7, v8, :cond_9

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v10, :cond_a

    :cond_9
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v10, :cond_c

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x320

    if-ne v7, v8, :cond_c

    .line 728
    :cond_a
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_b

    .line 729
    const v6, 0x3ec28f5c

    goto :goto_0

    .line 731
    :cond_b
    const v6, 0x3edc28f6

    goto :goto_0

    .line 734
    :cond_c
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x21c

    if-ne v7, v8, :cond_d

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x3c0

    if-eq v7, v8, :cond_e

    :cond_d
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x3c0

    if-ne v7, v8, :cond_10

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x21c

    if-ne v7, v8, :cond_10

    .line 736
    :cond_e
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_f

    .line 737
    const v6, 0x3eb91687

    goto/16 :goto_0

    .line 739
    :cond_f
    const v6, 0x3f35c28f

    goto/16 :goto_0

    .line 742
    :cond_10
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x2d0

    if-ne v7, v8, :cond_11

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x500

    if-eq v7, v8, :cond_12

    :cond_11
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v8, 0x500

    if-ne v7, v8, :cond_2

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x2d0

    if-ne v7, v8, :cond_2

    .line 744
    :cond_12
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_13

    .line 745
    const/high16 v6, 0x3ee0

    goto/16 :goto_0

    .line 747
    :cond_13
    const v6, 0x3e958e22

    goto/16 :goto_0
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
    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 796
    .local v10, fullDark:I
    if-nez v10, :cond_0

    .line 797
    const/16 v20, 0x0

    const v21, 0x20805e8

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 799
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 800
    .local v17, topDark:I
    if-nez v17, :cond_1

    .line 801
    const/16 v20, 0x1

    const v21, 0x20805eb

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 803
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 804
    .local v7, centerDark:I
    if-nez v7, :cond_2

    .line 805
    const/16 v20, 0x2

    const v21, 0x20805e5

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 807
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 808
    .local v4, bottomDark:I
    if-nez v4, :cond_3

    .line 809
    const/16 v20, 0x3

    const v21, 0x20805e2

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 811
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 812
    .local v9, fullBright:I
    if-nez v9, :cond_4

    .line 813
    const/16 v20, 0x4

    const v21, 0x20805e7

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 815
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    .line 816
    .local v16, topBright:I
    if-nez v16, :cond_5

    .line 817
    const/16 v20, 0x5

    const v21, 0x20805ea

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 819
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 820
    .local v6, centerBright:I
    if-nez v6, :cond_6

    .line 821
    const/16 v20, 0x6

    const v21, 0x20805e4

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 823
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 824
    .local v3, bottomBright:I
    if-nez v3, :cond_7

    .line 825
    const/16 v20, 0x7

    const v21, 0x20805e1

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 827
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 828
    .local v5, bottomMedium:I
    if-nez v5, :cond_8

    .line 829
    const/16 v20, 0x8

    const v21, 0x20805e3

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 831
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 832
    .local v8, centerMedium:I
    if-nez v8, :cond_9

    .line 833
    const/16 v20, 0x9

    const v21, 0x20805e6

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 845
    :cond_9
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    .line 846
    .local v19, views:[Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [Z

    .line 847
    .local v13, light:[Z
    const/4 v12, 0x0

    .line 848
    .local v12, lastView:Landroid/view/View;
    const/4 v11, 0x0

    .line 850
    .local v11, lastLight:Z
    const/4 v14, 0x0

    .line 851
    .local v14, pos:I
    if-eqz p6, :cond_a

    .line 852
    aput-object p1, v19, v14

    .line 853
    const/16 v20, 0x0

    aput-boolean v20, v13, v14

    .line 854
    add-int/lit8 v14, v14, 0x1

    .line 862
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

    .line 866
    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    .line 868
    add-int/lit8 v14, v14, 0x1

    .line 869
    if-eqz p3, :cond_c

    .line 870
    aput-object p3, v19, v14

    .line 871
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mForceInverseBackground:Z

    move/from16 v20, v0

    aput-boolean v20, v13, v14

    .line 872
    add-int/lit8 v14, v14, 0x1

    .line 874
    :cond_c
    if-eqz p4, :cond_d

    .line 875
    aput-object p7, v19, v14

    .line 876
    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    .line 879
    :cond_d
    const/4 v15, 0x0

    .line 880
    .local v15, setView:Z
    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_13

    .line 881
    aget-object v18, v19, v14

    .line 882
    .local v18, v:Landroid/view/View;
    if-nez v18, :cond_e

    .line 880
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 885
    :cond_e
    if-eqz v12, :cond_f

    .line 886
    if-nez v15, :cond_11

    .line 887
    if-eqz v11, :cond_10

    move/from16 v20, v16

    :goto_2
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 891
    :goto_3
    const/4 v15, 0x1

    .line 893
    :cond_f
    move-object/from16 v12, v18

    .line 894
    aget-boolean v11, v13, v14

    goto :goto_1

    :cond_10
    move/from16 v20, v17

    .line 887
    goto :goto_2

    .line 889
    :cond_11
    if-eqz v11, :cond_12

    move/from16 v20, v6

    :goto_4
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_12
    move/from16 v20, v7

    goto :goto_4

    .line 897
    .end local v18           #v:Landroid/view/View;
    :cond_13
    if-eqz v12, :cond_14

    .line 898
    if-eqz v15, :cond_18

    .line 903
    if-eqz v11, :cond_17

    if-eqz p4, :cond_16

    .end local v5           #bottomMedium:I
    :goto_5
    invoke-virtual {v12, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 935
    .end local v9           #fullBright:I
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 937
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setSelection(I)V

    .line 942
    :cond_15
    return-void

    .restart local v5       #bottomMedium:I
    .restart local v9       #fullBright:I
    :cond_16
    move v5, v3

    .line 903
    goto :goto_5

    :cond_17
    move v5, v4

    goto :goto_5

    .line 906
    :cond_18
    if-eqz v11, :cond_19

    .end local v9           #fullBright:I
    :goto_7
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .restart local v9       #fullBright:I
    :cond_19
    move v9, v10

    goto :goto_7
.end method

.method private setupButtons()Z
    .locals 17

    .prologue
    .line 568
    const/4 v6, 0x0

    .line 569
    .local v6, defaultButton:Landroid/view/View;
    const/4 v3, 0x1

    .line 570
    .local v3, BIT_BUTTON_POSITIVE:I
    const/4 v1, 0x2

    .line 571
    .local v1, BIT_BUTTON_NEGATIVE:I
    const/4 v2, 0x4

    .line 572
    .local v2, BIT_BUTTON_NEUTRAL:I
    const/4 v13, 0x0

    .line 573
    .local v13, whichButtons:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b2

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 574
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 577
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b3

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 580
    .local v9, padding1:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 588
    .end local v9           #padding1:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveDisabled:Z

    if-eqz v14, :cond_0

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x33ffffff

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 594
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b6

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 595
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 598
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b7

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 601
    .local v10, padding2:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 613
    .end local v10           #padding2:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeDisabled:Z

    if-eqz v14, :cond_1

    .line 614
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x106000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 619
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b4

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 620
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x20200b5

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 626
    .local v11, padding3:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 641
    .end local v11           #padding3:Landroid/view/View;
    :goto_2
    if-ne v13, v3, :cond_9

    .line 642
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/rotate/RotateHtcAlertController;->centerButton(Landroid/widget/Button;)V

    .line 649
    :cond_2
    :goto_3
    const/4 v5, 0x0

    .line 651
    .local v5, context:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 658
    :goto_4
    if-eqz v5, :cond_3

    .line 659
    const-string v14, "popup_bottom_left"

    const v15, 0x2080b13

    invoke-static {v5, v14, v15}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 660
    .local v8, left_bkg:I
    const-string v14, "popup_bottom_center"

    const v15, 0x2080b0f

    invoke-static {v5, v14, v15}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 661
    .local v4, center_bkg:I
    const-string v14, "popup_bottom_right"

    const v15, 0x2080b17

    invoke-static {v5, v14, v15}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 663
    .local v12, right_bkg:I
    if-ne v13, v3, :cond_b

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 698
    .end local v4           #center_bkg:I
    .end local v8           #left_bkg:I
    .end local v12           #right_bkg:I
    :cond_3
    :goto_5
    if-eqz v13, :cond_11

    const/4 v14, 0x1

    :goto_6
    return v14

    .line 582
    .end local v5           #context:Landroid/content/Context;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 585
    or-int/2addr v13, v3

    goto/16 :goto_0

    .line 604
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    if-nez v6, :cond_6

    .line 608
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 610
    :cond_6
    or-int/2addr v13, v1

    goto/16 :goto_1

    .line 628
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 631
    if-nez v6, :cond_8

    .line 632
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 634
    :cond_8
    or-int/2addr v13, v2

    goto/16 :goto_2

    .line 643
    :cond_9
    if-ne v13, v1, :cond_a

    .line 644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/rotate/RotateHtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 645
    :cond_a
    if-ne v13, v2, :cond_2

    .line 646
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/rotate/RotateHtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 652
    .restart local v5       #context:Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 653
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 666
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #center_bkg:I
    .restart local v8       #left_bkg:I
    .restart local v12       #right_bkg:I
    :cond_b
    if-ne v13, v1, :cond_c

    .line 667
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 668
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 669
    :cond_c
    if-ne v13, v2, :cond_d

    .line 670
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 672
    :cond_d
    const/4 v14, 0x3

    if-ne v13, v14, :cond_e

    .line 673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 675
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 677
    :cond_e
    const/4 v14, 0x5

    if-ne v13, v14, :cond_f

    .line 678
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 681
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 682
    :cond_f
    const/4 v14, 0x6

    if-ne v13, v14, :cond_10

    .line 683
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 684
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 687
    :cond_10
    const/4 v14, 0x7

    if-ne v13, v14, :cond_3

    .line 688
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 692
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const v15, 0x2030001

    invoke-virtual {v14, v5, v15}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_5

    .line 698
    .end local v4           #center_bkg:I
    .end local v8           #left_bkg:I
    .end local v12           #right_bkg:I
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_6
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x20200ac

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 541
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 542
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x20200ad

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    .line 546
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 556
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 558
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 11
    .parameter "topPanel"

    .prologue
    const v10, 0x20200a7

    const/16 v9, 0x8

    .line 472
    const/4 v1, 0x1

    .line 474
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 476
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 479
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 483
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 537
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 485
    :cond_1
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x1

    .line 487
    .local v0, hasTextTitle:Z
    :goto_1
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x20200a8

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    .line 488
    if-eqz v0, :cond_6

    .line 491
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x20200a9

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    .line 493
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    if-lez v4, :cond_4

    .line 507
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleCenter:Z

    if-eqz v4, :cond_0

    .line 524
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 525
    .local v3, titleTemplate:Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 485
    .end local v0           #hasTextTitle:Z
    .end local v3           #titleTemplate:Landroid/widget/LinearLayout;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 509
    .restart local v0       #hasTextTitle:Z
    :cond_4
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 510
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 511
    :cond_5
    iget v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    if-nez v4, :cond_2

    .line 516
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 520
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 531
    :cond_6
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 532
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object v4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 15

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200ab

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 411
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/android/camera/rotate/RotateHtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 412
    invoke-direct {p0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setupButtons()Z

    move-result v4

    .line 414
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200a6

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 420
    .local v1, topPanel:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .line 422
    .local v11, htcContext:Landroid/content/Context;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 427
    :goto_0
    const/4 v0, 0x0

    sget-object v12, Lcom/htc/R$styleable;->AlertDialog:[I

    const/high16 v13, 0x201

    const/4 v14, 0x0

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 431
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 433
    .local v6, hasTitle:Z
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200b0

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 434
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 435
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_0
    const/4 v3, 0x0

    .line 439
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 440
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200ae

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 441
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200af

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 442
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 444
    iget v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingLeft:I

    iget v12, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingTop:I

    iget v13, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingRight:I

    iget v14, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v12, v13, v14}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 457
    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200aa

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 460
    .local v9, divider:Landroid/view/View;
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleDivider:Z

    if-eqz v0, :cond_6

    .line 461
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9           #divider:Landroid/view/View;
    :cond_4
    :goto_2
    move-object v0, p0

    .line 467
    invoke-direct/range {v0 .. v7}, Lcom/android/camera/rotate/RotateHtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 468
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 469
    return-void

    .line 423
    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v6           #hasTitle:Z
    .end local v7           #buttonPanel:Landroid/view/View;
    :catch_0
    move-exception v10

    .line 424
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 451
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    .restart local v5       #a:Landroid/content/res/TypedArray;
    .restart local v6       #hasTitle:Z
    .restart local v7       #buttonPanel:Landroid/view/View;
    :cond_5
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x20200ae

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 463
    .restart local v9       #divider:Landroid/view/View;
    :cond_6
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    .line 387
    packed-switch p1, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 387
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
    .line 383
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 5

    .prologue
    const/high16 v3, 0x2

    const/4 v4, 0x0

    .line 217
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 219
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x2090028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    .line 227
    new-instance v1, Lcom/android/camera/rotate/RotateLinearLayout;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/rotate/RotateLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 228
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateLinearLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 230
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, mView:Landroid/view/View;
    const v1, 0x20a0015

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 232
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    invoke-direct {p0}, Lcom/android/camera/rotate/RotateHtcAlertController;->setupView()V

    .line 236
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 401
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
    .line 405
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 406
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
    .line 296
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 300
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :pswitch_0
    iput-object p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 304
    iput-object p4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 320
    :goto_0
    return-void

    .line 308
    :pswitch_1
    iput-object p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 309
    iput-object p4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 313
    :pswitch_2
    iput-object p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 314
    iput-object p4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 300
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
    .line 325
    packed-switch p1, :pswitch_data_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :pswitch_0
    iput-boolean p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveDisabled:Z

    .line 342
    :goto_0
    return-void

    .line 332
    :pswitch_1
    iput-boolean p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 336
    :pswitch_2
    iput-boolean p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 325
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
    .line 249
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mCustomTitleView:Landroid/view/View;

    .line 250
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 361
    iput p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    .line 362
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 363
    if-lez p1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    if-nez p1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 373
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mForceInverseBackground:Z

    .line 380
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 254
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 767
    sput p1, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    .line 769
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 240
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleCenter:Z

    .line 352
    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mTitleDivider:Z

    .line 348
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 263
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/rotate/RotateHtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 266
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
    .line 273
    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mView:Landroid/view/View;

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingSpecified:Z

    .line 275
    iput p2, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingLeft:I

    .line 276
    iput p3, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingTop:I

    .line 277
    iput p4, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingRight:I

    .line 278
    iput p5, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mViewSpacingBottom:I

    .line 279
    return-void
.end method

.method public updateOrientation()V
    .locals 4

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOrientation called current_orientation ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 778
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    sget v1, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_ScreenOrientation(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->isInverse_ScreenOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 780
    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 783
    :goto_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v1, :cond_2

    .line 787
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    sget v2, Lcom/android/camera/rotate/RotateHtcAlertController;->current_orientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 788
    :cond_2
    return-void

    .line 782
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method
