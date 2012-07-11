.class public Lcom/android/camera/MenuHandler;
.super Ljava/lang/Object;
.source "MenuHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MenuHandler$HeaderAdapter;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_LEVEL_NUMBER:I = 0x5

.field private static final NO_VALUE:Ljava/lang/String; = "no-value"

.field public static final PROPERTY_LEVEL_NUMBER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MenuHandler"


# instance fields
.field private bShowCustomView:Z

.field private mAutoCaptureOptions:[Ljava/lang/String;

.field private mAutoCaptureTag_face:Ljava/lang/String;

.field private mAutoCaptureTag_timer:Ljava/lang/String;

.field private mAutoCaptureValues:[Ljava/lang/String;

.field private mAutoCaptureView:Landroid/widget/ListView;

.field private mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mContentDivider_Brightness:Landroid/view/View;

.field private mContentDivider_Contrast:Landroid/view/View;

.field private mContentDivider_Saturation:Landroid/view/View;

.field private mContentLayout_Brightness:Landroid/view/View;

.field private mContentLayout_Contrast:Landroid/view/View;

.field private mContentLayout_Saturation:Landroid/view/View;

.field private mContentLayout_Sharpness:Landroid/view/View;

.field private mContentText_Brightness:Landroid/widget/TextView;

.field private mContentText_Contrast:Landroid/widget/TextView;

.field private mContentText_Saturation:Landroid/widget/TextView;

.field private mContentText_Sharpness:Landroid/widget/TextView;

.field private mContentValue_Brightness:Landroid/view/View;

.field private mContentValue_Contrast:Landroid/view/View;

.field private mContentValue_Saturation:Landroid/view/View;

.field private mContentValue_Sharpness:Landroid/view/View;

.field private mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

.field private mEdgeSpace_Brightness:Landroid/view/View;

.field private mEdgeSpace_Sharpness:Landroid/view/View;

.field private mEffectManager:Lcom/android/camera/effect/EffectManager;

.field private mFaceIndex:I

.field private mFaceItems:I

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mImagePropertyTitle:Landroid/view/View;

.field private mImagePropertyView:Landroid/view/View;

.field mInflater:Landroid/view/LayoutInflater;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLineSpace_Brightness:Landroid/view/View;

.field private mLineSpace_Contrast:Landroid/view/View;

.field private mLineSpace_Saturation:Landroid/view/View;

.field private mListWidth:I

.field private mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mResView:Lcom/android/camera/widget/ResolutionView;

.field private mResources:Landroid/content/res/Resources;

.field private mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

.field private mSettingsView:Lcom/android/camera/widget/SettingsView;

.field private mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

.field private mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

.field private mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

.field private mTimerIndex:I

.field private mTimerItems:I

.field private mTitleSpace:Landroid/view/View;

.field private mTitleText_Brightness:Landroid/widget/TextView;

.field private mTitleText_Contrast:Landroid/widget/TextView;

.field private mTitleText_Saturation:Landroid/widget/TextView;

.field private mTitleText_Sharpness:Landroid/widget/TextView;

.field private mUIHandler:Landroid/os/Handler;

.field private mWheelLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 58
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    .line 59
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 60
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;

    .line 61
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    .line 64
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    .line 65
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    .line 66
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    .line 67
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLayout:Landroid/widget/LinearLayout;

    .line 68
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    .line 70
    iput-boolean v1, p0, Lcom/android/camera/MenuHandler;->bShowCustomView:Z

    .line 73
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    .line 77
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    .line 79
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    .line 80
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 81
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    .line 82
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    .line 84
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    .line 85
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    .line 86
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    .line 87
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    .line 89
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    .line 90
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    .line 91
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    .line 92
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Sharpness:Landroid/view/View;

    .line 93
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    .line 94
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    .line 95
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    .line 96
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    .line 97
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    .line 98
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    .line 99
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    .line 100
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    .line 101
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    .line 102
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    .line 103
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    .line 104
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    .line 105
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    .line 106
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    .line 107
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 108
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 109
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 110
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 115
    iput v1, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    .line 116
    iput v1, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    .line 117
    iput v1, p0, Lcom/android/camera/MenuHandler;->mFaceItems:I

    .line 118
    iput v1, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    .line 119
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    .line 120
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_face:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_timer:Ljava/lang/String;

    .line 1067
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MenuHandler;)Lcom/android/camera/widget/SlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/MenuHandler;)Lcom/android/camera/OnScreenPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/MenuHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->isDisableFaceItems()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/MenuHandler;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/MenuHandler;->isFaceItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/MenuHandler;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/MenuHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/MenuHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/MenuHandler;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/MenuHandler;->checkAutoCaptureItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/MenuHandler;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/MenuHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/MenuHandler;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/MenuHandler;)Lcom/android/camera/widget/SettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/MenuHandler;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/MenuHandler;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/MenuHandler;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MenuHandler;->setEnabledStateOnViews(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/MenuHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkAutoCaptureItem(I)Z
    .locals 8
    .parameter "pos"

    .prologue
    const v7, 0x7f0a014a

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/16 v5, 0x25

    const/4 v2, 0x0

    .line 931
    iget v3, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    if-eq p1, v3, :cond_0

    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    if-ne p1, v3, :cond_1

    .line 932
    :cond_0
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    invoke-virtual {v3, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move v1, v2

    .line 968
    :goto_0
    return v1

    .line 936
    :cond_1
    if-lt p1, v1, :cond_3

    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    if-gt p1, v3, :cond_3

    .line 937
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    invoke-virtual {v3, v4, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 938
    iget v3, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    iget v4, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_2

    .line 940
    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    if-ne v3, v1, :cond_2

    .line 942
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 943
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5, v7, v2, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 947
    :cond_2
    iput p1, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    goto :goto_0

    .line 949
    :cond_3
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    invoke-virtual {v3, v4, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 950
    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v3, v3, 0x2

    if-ne p1, v3, :cond_5

    .line 952
    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    if-le v3, v1, :cond_4

    .line 954
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 955
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5, v7, v2, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 965
    :cond_4
    :goto_1
    iput p1, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    goto :goto_0

    .line 960
    :cond_5
    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v3, v3, 0x3

    if-ne p1, v3, :cond_6

    const v0, 0x7f0a014b

    .line 962
    .local v0, str:I
    :goto_2
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 963
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5, v0, v2, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_1

    .line 960
    .end local v0           #str:I
    :cond_6
    const v0, 0x7f0a014c

    goto :goto_2
.end method

.method private createAutoCaptureList()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 886
    const-string v1, "MenuHandler"

    const-string v2, "Create Auto-capture List"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 890
    new-instance v0, Lcom/android/camera/MenuHandler$10;

    invoke-direct {v0, p0}, Lcom/android/camera/MenuHandler$10;-><init>(Lcom/android/camera/MenuHandler;)V

    .line 919
    .local v0, listener:Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/MenuHandler;->createMultiChoiceListView([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    .line 922
    .end local v0           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 923
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 924
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 925
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->isDisableFaceItems()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/MenuHandler;->disableFaceItems(Z)V

    .line 926
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    return-object v1
.end method

.method private createImagePropertyView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 439
    const-string v1, "MenuHandler"

    const-string v2, "Create ImageProperty View"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    .line 445
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    .line 446
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 448
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    const v2, 0x7f0800e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    .line 449
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    const v2, 0x7f0800e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    .line 450
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    const v2, 0x7f0800e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    .line 451
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    .line 453
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    .line 454
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    .line 455
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    .line 456
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    .line 457
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    .line 458
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    .line 459
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    .line 460
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Sharpness:Landroid/view/View;

    .line 461
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    .line 462
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    .line 463
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    .line 464
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    .line 465
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    .line 466
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    .line 467
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    .line 468
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    .line 469
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    .line 470
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    .line 471
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    .line 472
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    .line 473
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    .line 475
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    .line 477
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 478
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    .line 480
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 481
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    .line 483
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 484
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    .line 486
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 487
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    .line 489
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$2;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$2;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V

    .line 505
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$3;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$3;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V

    .line 525
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$4;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$4;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V

    .line 545
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$5;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$5;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V

    .line 565
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$6;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$6;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 578
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$7;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$7;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 591
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$8;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$8;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 604
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$9;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$9;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    const-string v2, "pref_camera_brightness"

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/camera/MenuHandler;->updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V

    .line 621
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    const-string v2, "pref_camera_contrast"

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/camera/MenuHandler;->updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V

    .line 624
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    const-string v2, "pref_camera_saturation"

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/camera/MenuHandler;->updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V

    .line 627
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    const-string v2, "pref_camera_shaprness"

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/camera/MenuHandler;->updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V

    .line 632
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    .line 633
    .local v0, current_orientation:I
    invoke-direct {p0, v0}, Lcom/android/camera/MenuHandler;->updateImagePropertyView(I)V

    .line 636
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    return-object v1
.end method

.method private createMultiChoiceListView([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 3
    .parameter "values"
    .parameter "options"
    .parameter "listener"

    .prologue
    const/4 v2, -0x1

    .line 1015
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1016
    .local v0, view:Landroid/widget/ListView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1018
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 1019
    new-instance v1, Lcom/android/camera/MenuHandler$HeaderAdapter;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/camera/MenuHandler$HeaderAdapter;-><init>(Lcom/android/camera/MenuHandler;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1020
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1021
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1024
    return-object v0
.end method

.method private createResolutionView()V
    .locals 6

    .prologue
    .line 314
    const-string v2, "MenuHandler"

    const-string v3, "Create Resolution View"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    if-nez v2, :cond_0

    .line 317
    new-instance v2, Lcom/android/camera/widget/ResolutionView;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/camera/widget/ResolutionView;-><init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/CameraThread;)V

    iput-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    .line 319
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->setOnPreferenceUpdatedListener(Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;)V

    .line 320
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    .line 321
    .local v0, orientation:I
    invoke-direct {p0, v0}, Lcom/android/camera/MenuHandler;->getListViewWidth(I)I

    move-result v1

    .line 322
    .local v1, width:I
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v1, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .end local v0           #orientation:I
    .end local v1           #width:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->setVisible(Z)V

    .line 330
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->setVisible(Z)V

    .line 332
    return-void

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private createSettingsView()V
    .locals 8

    .prologue
    .line 288
    const-string v0, "MenuHandler"

    const-string v1, "Create Settings View"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/android/camera/widget/SettingsView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    iget-object v5, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/SettingsView;-><init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    .line 293
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->setOnPreferenceUpdatedListener(Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;)V

    .line 295
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    .line 296
    .local v6, orientation:I
    invoke-direct {p0, v6}, Lcom/android/camera/MenuHandler;->getListViewWidth(I)I

    move-result v7

    .line 297
    .local v7, width:I
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v7, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    .end local v6           #orientation:I
    .end local v7           #width:I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->setVisible(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->setVisible(Z)V

    .line 310
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private createSingleChoiceListView([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 4
    .parameter "values"
    .parameter "options"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1000
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1001
    .local v0, view:Landroid/widget/ListView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1003
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 1004
    new-instance v1, Lcom/android/camera/MenuHandler$HeaderAdapter;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/camera/MenuHandler$HeaderAdapter;-><init>(Lcom/android/camera/MenuHandler;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1007
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1008
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1009
    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1011
    return-object v0
.end method

.method private disableFaceItems(Z)V
    .locals 4
    .parameter "disable"

    .prologue
    .line 976
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MenuHandler$HeaderAdapter;

    .line 977
    .local v0, adapter:Lcom/android/camera/MenuHandler$HeaderAdapter;
    const/4 v2, 0x1

    .line 978
    .local v2, update:Z
    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v1, v3, 0x2

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 979
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/MenuHandler$HeaderAdapter;->setDisabledList(IZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 980
    const/4 v2, 0x0

    .line 985
    :cond_0
    if-eqz v2, :cond_1

    .line 986
    invoke-virtual {v0}, Lcom/android/camera/MenuHandler$HeaderAdapter;->notifyDataSetChanged()V

    .line 987
    :cond_1
    return-void

    .line 978
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getAutoCaptureString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 820
    const-string v10, "MenuHandler"

    const-string v11, "Get Auto-capture String"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_face_number"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, face:Ljava/lang/String;
    const-string v10, "MenuHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get PreferenceName.PREF_FACE_NUMBER = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    if-eqz v2, :cond_0

    const-string v10, "null"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 825
    :cond_0
    const-string v2, "none"

    .line 826
    :cond_1
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_self_timer"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 827
    .local v7, timer:Ljava/lang/String;
    const-string v10, "MenuHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get PreferenceName.PREF_SELF_TIMER = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    if-eqz v7, :cond_2

    const-string v10, "null"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 829
    :cond_2
    const-string v7, "none"

    .line 832
    :cond_3
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    if-nez v10, :cond_7

    .line 833
    :cond_4
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 834
    .local v4, face_values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070015

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 835
    .local v3, face_options:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070014

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 836
    .local v9, timer_values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070013

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 837
    .local v8, timer_options:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v1, all_values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v0, all_options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v10, v4

    iput v10, p0, Lcom/android/camera/MenuHandler;->mFaceItems:I

    .line 841
    array-length v10, v9

    iput v10, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    .line 843
    const-string v10, "no-value"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_timer:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v10, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    if-ge v5, v10, :cond_5

    .line 846
    aget-object v10, v9, v5

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    aget-object v10, v8, v5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 850
    :cond_5
    const-string v10, "no-value"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_face:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    const/4 v5, 0x0

    :goto_1
    iget v10, p0, Lcom/android/camera/MenuHandler;->mFaceItems:I

    if-ge v5, v10, :cond_6

    .line 853
    aget-object v10, v4, v5

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    aget-object v10, v3, v5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 857
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    .line 858
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 859
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    .line 860
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 863
    .end local v0           #all_options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #all_values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #face_options:[Ljava/lang/String;
    .end local v4           #face_values:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v8           #timer_options:[Ljava/lang/String;
    .end local v9           #timer_values:[Ljava/lang/String;
    :cond_7
    const/4 v5, 0x1

    .restart local v5       #i:I
    :goto_2
    iget v10, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    if-gt v5, v10, :cond_8

    .line 864
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 865
    iput v5, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    .line 870
    :cond_8
    iget v10, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v5, v10, 0x2

    :goto_3
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_9

    .line 871
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 872
    iput v5, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    .line 877
    :cond_9
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    iget v11, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    aget-object v6, v10, v11

    .line 878
    .local v6, str:Ljava/lang/String;
    const-string v10, "none"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 879
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    iget v12, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 881
    :cond_a
    return-object v6

    .line 863
    .end local v6           #str:Ljava/lang/String;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 870
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private getListViewWidth(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 265
    const/4 v0, -0x1

    return v0
.end method

.method private getWheelPadding(I)I
    .locals 2
    .parameter "current_orientation"

    .prologue
    .line 780
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->isInverse_ScreenOrientation(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 781
    sget v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    .line 785
    :goto_0
    return v0

    .line 782
    :cond_0
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_ScreenOrientation(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 783
    sget v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 785
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "resource"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 1029
    if-eqz p1, :cond_0

    .line 1030
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private isDisableFaceItems()Z
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFaceItem(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 972
    iget v0, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 1034
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 1036
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1037
    check-cast v1, Landroid/view/ViewGroup;

    .line 1038
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1039
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/camera/MenuHandler;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 1038
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1042
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setWheelInverse(Z)V
    .locals 1
    .parameter "inverse"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setInverse(Z)V

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setInverse(Z)V

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setInverse(Z)V

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v0, :cond_3

    .line 816
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setInverse(Z)V

    .line 817
    :cond_3
    return-void
.end method

.method private showTilteLayout(Z)V
    .locals 7
    .parameter "visibile"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 685
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 687
    .local v1, resources:Landroid/content/res/Resources;
    if-ne p1, v6, :cond_4

    .line 689
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 690
    .local v0, parm:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 696
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 701
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 702
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 719
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 720
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 721
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 723
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 727
    :cond_2
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 728
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 729
    :cond_3
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 734
    .end local v0           #parm:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 735
    .restart local v0       #parm:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 741
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 747
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 754
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 755
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 760
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 764
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 765
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 766
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 768
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 769
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 770
    :cond_5
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 771
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 772
    :cond_6
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 773
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 774
    :cond_7
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0
.end method

.method private updateImagePropertyView(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 663
    iget-boolean v2, p0, Lcom/android/camera/MenuHandler;->bShowCustomView:Z

    if-nez v2, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 669
    const/4 v1, 0x0

    .line 670
    .local v1, rotate:I
    const/4 v0, 0x0

    .line 671
    .local v0, inverse:Z
    if-eqz p1, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 672
    :cond_2
    const/4 v1, 0x1

    .line 673
    const/4 v0, 0x1

    .line 676
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/MenuHandler;->setWheelInverse(Z)V

    .line 677
    invoke-direct {p0, v0}, Lcom/android/camera/MenuHandler;->showTilteLayout(Z)V

    .line 678
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 679
    invoke-direct {p0, v1}, Lcom/android/camera/MenuHandler;->updateWheelPadding(I)V

    goto :goto_0
.end method

.method private updateListViewWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v1}, Lcom/android/camera/widget/SettingsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 272
    .local v0, LayoutParam:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/SettingsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v1, p1}, Lcom/android/camera/widget/SettingsView;->updateSubMenuWidth(I)V

    .line 285
    .end local v0           #LayoutParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private updateSettingsView()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView;->notifyMainLayoutChanged()V

    .line 345
    :cond_0
    return-void
.end method

.method private updateWheelPadding(I)V
    .locals 2
    .parameter "current_orientation"

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/android/camera/MenuHandler;->getWheelPadding(I)I

    move-result v0

    .line 791
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setRotatePadding(I)V

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v1, :cond_1

    .line 795
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setRotatePadding(I)V

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v1, :cond_2

    .line 798
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setRotatePadding(I)V

    .line 800
    :cond_2
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v1, :cond_3

    .line 801
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setRotatePadding(I)V

    .line 802
    :cond_3
    return-void
.end method


# virtual methods
.method public closeMainPanel()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    .line 997
    :cond_0
    return-void
.end method

.method public closeSubMenu(Z)Z
    .locals 1
    .parameter "anim"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/SettingsView;->closeSubMenu(Z)Z

    move-result v0

    .line 351
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exitMenuHandler()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->exitPreference()V

    .line 245
    :cond_0
    return-void
.end method

.method public getCustomView(Landroid/preference/Preference;)Landroid/view/View;
    .locals 3
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 371
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/MenuHandler;->bShowCustomView:Z

    .line 373
    if-nez p1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-object v1

    .line 376
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, key:Ljava/lang/String;
    const-string v2, "pref_camera_image_property"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createImagePropertyView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 379
    :cond_2
    const-string v2, "pref_camera_auto_capture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createAutoCaptureList()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getMenuResolutionItem(I)Ljava/lang/String;
    .locals 2
    .parameter "nItem"

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-nez v1, :cond_0

    .line 1060
    const/4 v1, 0x0

    .line 1064
    :goto_0
    return-object v1

    .line 1062
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenPreference;->getCurrectMenuResolution()Ljava/util/LinkedList;

    move-result-object v0

    .line 1064
    .local v0, items:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ResolutionMenuItem;

    iget-object v1, v1, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getResView()Lcom/android/camera/widget/ResolutionView;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    return-object v0
.end method

.method public getSettingsView()Lcom/android/camera/widget/SettingsView;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    return-object v0
.end method

.method public getSummary(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 3
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 356
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-object v1

    .line 359
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, key:Ljava/lang/String;
    const-string v2, "pref_camera_image_property"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 362
    :cond_2
    const-string v2, "pref_camera_auto_capture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->getAutoCaptureString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MenuHandler;->bShowCustomView:Z

    .line 388
    return-void
.end method

.method public initMenuHandler(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Landroid/view/View;)V
    .locals 3
    .parameter "camera"
    .parameter "thread"
    .parameter "content"

    .prologue
    .line 128
    const-string v0, "MenuHandler"

    const-string v1, "initMenuHandler() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 130
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    .line 131
    iput-object p2, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 132
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;

    .line 133
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    .line 134
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    .line 135
    new-instance v0, Lcom/android/camera/OnScreenPreference;

    invoke-direct {v0}, Lcom/android/camera/OnScreenPreference;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    .line 136
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/OnScreenPreference;->initOnScreenPreference(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Lcom/android/camera/MenuHandler;)V

    .line 138
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    const v0, 0x7f080134

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    .line 142
    const v0, 0x7f080133

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLayout:Landroid/widget/LinearLayout;

    .line 143
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/MenuHandler;->mListWidth:I

    .line 145
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_face:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_timer:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/android/camera/MenuHandler$1;

    invoke-direct {v0, p0}, Lcom/android/camera/MenuHandler$1;-><init>(Lcom/android/camera/MenuHandler;)V

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    .line 168
    const-string v0, "MenuHandler"

    const-string v1, "initMenuHandler() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public releaseMenuHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 174
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    .line 175
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 176
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;

    .line 177
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    .line 178
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    .line 179
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    .line 180
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLayout:Landroid/widget/LinearLayout;

    .line 181
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    .line 182
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    .line 184
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 185
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    .line 186
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 187
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    .line 188
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    .line 189
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    .line 190
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    .line 191
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    .line 192
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    .line 193
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    .line 194
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    .line 195
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    .line 196
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    .line 197
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    .line 198
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    .line 199
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    .line 200
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    .line 201
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    .line 202
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    .line 203
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    .line 204
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    .line 205
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    .line 206
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    .line 207
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    .line 208
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    .line 209
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    .line 210
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    .line 211
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    .line 212
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 213
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 214
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 215
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    .line 217
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    .line 218
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    .line 220
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_face:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_timer:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->releaseOnScreenPreference()V

    .line 225
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    .line 227
    :cond_0
    return-void
.end method

.method public resetMenuHandler()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPanelVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const-string v0, "MenuHandler"

    const-string v1, "mPanel isn\'t visible, resetTabView when it is reset to visible"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 236
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createSettingsView()V

    .line 237
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createResolutionView()V

    goto :goto_0
.end method

.method public updateDisableItems()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v4, :cond_3

    .line 394
    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .line 395
    .local v0, currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/android/camera/effect/AutoScene;

    if-eqz v4, :cond_1

    .line 396
    :cond_0
    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .line 398
    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    .line 399
    .local v1, disabledImageSettings:I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v4, v1}, Lcom/android/camera/OnScreenPreference;->checkImageSettings(I)Z

    move-result v2

    .line 402
    .local v2, updated:Z
    iget-object v5, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    const-string v6, "pref_camera_self_timer"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->isSelfTimerSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v4

    or-int/2addr v2, v4

    .line 423
    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v4, v3}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 424
    if-eqz v2, :cond_3

    .line 425
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->updateSettingsView()V

    .line 427
    .end local v0           #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #disabledImageSettings:I
    .end local v2           #updated:Z
    :cond_3
    return-void

    .restart local v0       #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    :cond_4
    move v1, v3

    .line 398
    goto :goto_0

    .restart local v1       #disabledImageSettings:I
    .restart local v2       #updated:Z
    :cond_5
    move v4, v3

    .line 402
    goto :goto_1
.end method

.method public updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V
    .locals 8
    .parameter "wheel"
    .parameter "pref_key"
    .parameter "level_num"

    .prologue
    .line 641
    const/4 v4, 0x0

    .line 642
    .local v4, level_min:I
    add-int/lit8 v3, p3, -0x1

    .line 643
    .local v3, level_max:I
    add-int v6, v4, v3

    div-int/lit8 v2, v6, 0x2

    .line 644
    .local v2, level_def:I
    move v1, v2

    .line 646
    .local v1, level:I
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v6, p2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, str_level:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 653
    .end local v5           #str_level:Ljava/lang/String;
    :goto_0
    if-ge v1, v4, :cond_1

    .line 654
    move v1, v4

    .line 658
    :cond_0
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZ)Z

    .line 659
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "MenuHandler"

    const-string v7, "updateLevelBar - get level failed!!"

    invoke-static {v6, v7, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    move v1, v2

    goto :goto_0

    .line 655
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    if-le v1, v3, :cond_0

    .line 656
    move v1, v3

    goto :goto_1
.end method

.method public updateOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/OnScreenPreference;->rotateDialog(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public final updateResolutionList()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->setupResolutionList()V

    .line 436
    :cond_0
    return-void
.end method

.method public final updateStorageLocationItem()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-nez v0, :cond_1

    .line 1048
    const-string v0, "MenuHandler"

    const-string v1, "No OnScreenPreference instance"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->checkStorageLocation()V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView;->notifyMainLayoutChanged()V

    goto :goto_0
.end method
