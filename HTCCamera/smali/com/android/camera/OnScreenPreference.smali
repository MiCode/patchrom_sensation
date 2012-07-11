.class public Lcom/android/camera/OnScreenPreference;
.super Ljava/lang/Object;
.source "OnScreenPreference.java"

# interfaces
.implements Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;
.implements Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final GROUP_KEY:Ljava/lang/String; = "group"

.field private static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OnScreenPreference"


# instance fields
.field private ISOValue_manual:Ljava/lang/String;

.field private ImgBrightnessValue_manual:Ljava/lang/String;

.field private ImgContrastValue_manual:Ljava/lang/String;

.field private ImgSaturationValue_manual:Ljava/lang/String;

.field private ImgSharpnessValue_manual:Ljava/lang/String;

.field private WhitebalanceValue_manual:Ljava/lang/String;

.field private bAutoFocus:Z

.field private bBlinkDetection:Z

.field private bFaceDetection:Z

.field private bFastFrameRecording:Z

.field private bIs3DCamera:Z

.field private bPostProcessing:Z

.field private bRecordWithAudio:Z

.field private bShutterSound:Z

.field private bSmileCapture:Z

.field private bStereoRecording:Z

.field private bSwitchCamera:Z

.field private bWideScreen:Z

.field private isCheckGPS_Setting:Z

.field private m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

.field private m3DFileFormatPref:Landroid/preference/ListPreference;

.field private m3DFileFormatValue:Ljava/lang/String;

.field private mAutoFocusPref:Landroid/preference/CheckBoxPreference;

.field private mAutoUploadFrequence:Ljava/lang/String;

.field private mAutoUploadPref:Landroid/preference/Preference;

.field private mAutoUploadService:Ljava/lang/String;

.field private mAutoUploadServiceLabel:Ljava/lang/String;

.field private mAutoUploadServiceTitle:Ljava/lang/String;

.field private mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mDialog:Landroid/app/Dialog;

.field private mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

.field private mFastFrameRecording:Landroid/preference/CheckBoxPreference;

.field private mGeneral_isWideScreen:Z

.field private mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mImageRatioPref:Landroid/preference/CheckBoxPreference;

.field private mManager:Landroid/preference/PreferenceManager;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field private mModeHdr:Lcom/android/camera/ModeHandler;

.field private mPostProcessingPref:Landroid/preference/CheckBoxPreference;

.field private mRecordWithAudio:Landroid/preference/CheckBoxPreference;

.field private mRecordingLengthPref:Landroid/preference/Preference;

.field private mResolutionItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewDurationPref:Landroid/preference/ListPreference;

.field private mReviewDurationValue:Ljava/lang/String;

.field private mScenePref:Landroid/preference/ListPreference;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mSelfPortraitPref:Landroid/preference/Preference;

.field private mSelfTimerPref:Landroid/preference/ListPreference;

.field private mShutterSoundPref:Landroid/preference/CheckBoxPreference;

.field private mSmileCapturePref:Landroid/preference/CheckBoxPreference;

.field private mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

.field private mTimeStampPref:Landroid/preference/CheckBoxPreference;

.field private mUIHandler:Landroid/os/Handler;

.field private mVideoFileFormatPref:Landroid/preference/ListPreference;

.field private mVideoFileFormatValue:Ljava/lang/String;

.field private oldISOValue:Ljava/lang/String;

.field private oldImgBrightnessValue:Ljava/lang/String;

.field private oldImgContrastValue:Ljava/lang/String;

.field private oldImgSaturationValue:Ljava/lang/String;

.field private oldImgSharpnessValue:Ljava/lang/String;

.field private oldWhitebalanceValue:Ljava/lang/String;

.field private tempValue_ds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 43
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    .line 44
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 45
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    .line 46
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    .line 47
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    .line 48
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    .line 49
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    .line 50
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    .line 56
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    .line 57
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    .line 58
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    .line 59
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    .line 60
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    .line 61
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 62
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 63
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    .line 64
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    .line 65
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    .line 66
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    .line 67
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    .line 68
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    .line 69
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    .line 70
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    .line 71
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    .line 72
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScenePref:Landroid/preference/ListPreference;

    .line 73
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    .line 74
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    .line 75
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    .line 78
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    .line 79
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    .line 81
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bIs3DCamera:Z

    .line 86
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    .line 92
    const-string v0, "3s"

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    .line 93
    const-string v0, "mpo"

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    .line 94
    const-string v0, "3gpp"

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->WhitebalanceValue_manual:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ISOValue_manual:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgBrightnessValue_manual:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgContrastValue_manual:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgSaturationValue_manual:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgSharpnessValue_manual:Ljava/lang/String;

    .line 112
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadFrequence:Ljava/lang/String;

    .line 127
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/OnScreenPreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/OnScreenPreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/OnScreenPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->closeDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    return p1
.end method

.method private addEncodeType_H264(Landroid/preference/PreferenceScreen;)V
    .locals 13
    .parameter "screen"

    .prologue
    .line 768
    const-string v11, "pref_capture_format_video"

    invoke-virtual {p1, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 769
    .local v9, type:Landroid/preference/ListPreference;
    if-nez v9, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportH264()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 773
    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 774
    .local v1, allEntries:[Ljava/lang/CharSequence;
    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 775
    .local v2, allEntryValues:[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v4, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v12, 0x7f0a00bb

    invoke-virtual {v11, v12}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 778
    .local v5, entry_h264:Ljava/lang/String;
    const-string v10, "h264"

    .line 780
    .local v10, value_h264:Ljava/lang/String;
    const/4 v0, 0x0

    .line 781
    .local v0, added:Z
    const/4 v8, 0x0

    .line 782
    .local v8, temp:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v11, v2

    if-ge v6, v11, :cond_3

    .line 783
    aget-object v11, v1, v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 784
    if-nez v0, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_2

    .line 785
    const/4 v0, 0x1

    .line 786
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_2
    aget-object v11, v1, v6

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    aget-object v11, v2, v6

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 795
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 796
    .local v7, size:I
    new-array v11, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 797
    new-array v11, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private addOptinalRecordingLimit(Landroid/preference/PreferenceScreen;)V
    .locals 11
    .parameter "screen"

    .prologue
    .line 742
    const-string v9, "pref_camera_recording_limit"

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 743
    .local v6, limit:Landroid/preference/ListPreference;
    if-nez v6, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasLimit250KB()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 747
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 748
    .local v0, allEntries:[Ljava/lang/CharSequence;
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 749
    .local v1, allEntryValues:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v3, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v10, 0x7f0a00be

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 752
    .local v4, entry_250kb:Ljava/lang/CharSequence;
    const-string v8, "250kb"

    .line 753
    .local v8, value_250kb:Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v1

    if-ge v5, v9, :cond_2

    .line 756
    aget-object v9, v0, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    aget-object v9, v1, v5

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 761
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 762
    .local v7, size:I
    new-array v9, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 763
    new-array v9, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private backupISOSettings_DOT(Landroid/preference/ListPreference;)V
    .locals 4
    .parameter "prefence"

    .prologue
    .line 2833
    const/4 v0, 0x0

    .line 2834
    .local v0, scene:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2835
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene_ds"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2841
    :goto_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_iso_manual"

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2843
    return-void

    .line 2837
    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 12
    .parameter "screen"
    .parameter "Resolution"

    .prologue
    const/4 v11, 0x1

    .line 2881
    const-string v8, "null"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v11, :cond_0

    .line 2911
    :goto_0
    return-void

    .line 2883
    :cond_0
    const-string v8, "OnScreenPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeResolutionBySlowMotion Resolution:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    const-string v8, "pref_set_resolution"

    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 2887
    .local v4, list:Landroid/preference/ListPreference;
    if-nez v4, :cond_1

    .line 2888
    const-string v8, "OnScreenPreference"

    const-string v9, "setupResolutionList failed - no resolution preference"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2892
    :cond_1
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2893
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 2894
    .local v0, entrieValues:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 2895
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 2896
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ResolutionMenuItem;

    iget-object v8, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2897
    move v3, v2

    .line 2901
    :cond_2
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 2903
    .local v5, r:Lcom/android/camera/Resolution;
    const-string v8, "OnScreenPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeResolutionBySlowMotion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v7

    .line 2905
    .local v7, resolutionWidth:I
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v6

    .line 2907
    .local v6, resolutionHeight:I
    const-string v8, "OnScreenPreference"

    const-string v9, "Block Capture UI - set resolution"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8, v11}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 2910
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v6, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2895
    .end local v5           #r:Lcom/android/camera/Resolution;
    .end local v6           #resolutionHeight:I
    .end local v7           #resolutionWidth:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private check3DCamera(Z)V
    .locals 4
    .parameter "bChecked"

    .prologue
    const/16 v3, 0x4f

    const/4 v2, 0x0

    .line 2165
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2166
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2169
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2173
    :cond_0
    return-void
.end method

.method private checkAutoFocus(Z)V
    .locals 3
    .parameter "check"

    .prologue
    const/16 v2, 0x1f

    const/4 v1, 0x1

    .line 2153
    if-ne p1, v1, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2155
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2158
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    .line 2160
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2161
    return-void
.end method

.method private checkBlinkDetection(Z)V
    .locals 2
    .parameter "bChecked"

    .prologue
    const/4 v1, 0x0

    .line 2293
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2294
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2296
    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 2297
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2299
    :cond_0
    return-void
.end method

.method private checkFastFrameRecording(Landroid/preference/PreferenceScreen;Z)V
    .locals 6
    .parameter "screen"
    .parameter "bChecked"

    .prologue
    const/4 v2, 0x0

    .line 2178
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2179
    .local v0, currentResolution:Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 2181
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    .line 2182
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2183
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2185
    const-string v3, "1080p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2188
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    const-string v5, "1080p"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2189
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "720p"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2190
    const-string v3, "720p"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 2217
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/camera/OnScreenPreference;->checkRecordWithAudio(Z)V

    .line 2235
    :goto_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v2, :cond_1

    .line 2237
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    .line 2238
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    .line 2240
    :cond_1
    return-void

    .line 2192
    :cond_2
    const-string v3, "720p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2195
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    const-string v5, "720p"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2196
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_3

    .line 2198
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "QHD"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2199
    const-string v3, "QHD"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 2201
    :cond_3
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_0

    .line 2203
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "WVGA"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2204
    const-string v3, "WVGA"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 2207
    :cond_4
    const-string v3, "QCIF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2210
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    const-string v5, "QCIF"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2211
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "QVGA"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2212
    const-string v3, "QVGA"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 2215
    :cond_5
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    goto :goto_0

    .line 2221
    :cond_6
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2222
    .local v1, tempResolution:Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2224
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    invoke-static {v3, v4, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2225
    invoke-direct {p0, p1, v1}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 2230
    :goto_2
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2231
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    if-nez p2, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2232
    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-direct {p0, v2}, Lcom/android/camera/OnScreenPreference;->checkRecordWithAudio(Z)V

    goto/16 :goto_1

    .line 2228
    :cond_8
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    goto :goto_2
.end method

.method private checkGeoTagging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1101
    iget-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1103
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkLocationSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1109
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    .line 1110
    return-void
.end method

.method private checkLocationSetting()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1353
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1354
    .local v1, service:Landroid/location/LocationManager;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1358
    .end local v1           #service:Landroid/location/LocationManager;
    :cond_1
    :goto_0
    return v2

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "OnScreenPreference"

    const-string v4, "checkLocationSetting() has exception"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkRecordWithAudio(Z)V
    .locals 4
    .parameter "bChecked"

    .prologue
    const/16 v3, 0x38

    const/4 v2, 0x0

    .line 2245
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2247
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 2249
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2250
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2253
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2256
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2277
    :cond_0
    :goto_0
    return-void

    .line 2262
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2265
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2268
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2271
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkRecordingLength()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x61a8

    .line 1458
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 1460
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1462
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1467
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1469
    invoke-static {}, Lcom/android/camera/IntentManager;->getMMS_MaximumSize()I

    move-result v3

    int-to-long v0, v3

    .line 1470
    .local v0, max_bytes:J
    cmp-long v3, v0, v6

    if-gtz v3, :cond_2

    .line 1471
    const-string v3, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", less then safe size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const-wide/32 v0, 0xea60

    .line 1477
    :cond_2
    const-string v3, "%d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v5, 0x400

    div-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v6, 0x7f0a013e

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1478
    .local v2, size:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1479
    const-string v3, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1480
    .end local v0           #max_bytes:J
    .end local v2           #size:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1483
    invoke-static {}, Lcom/android/camera/IntentManager;->getVideoMaximum_Size()J

    move-result-wide v0

    .line 1484
    .restart local v0       #max_bytes:J
    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    .line 1485
    const-string v3, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", less then safe size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1491
    .end local v0           #max_bytes:J
    :cond_4
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private checkSceneSettingForDOT()Z
    .locals 13

    .prologue
    .line 2441
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v8, :cond_0

    .line 2442
    const/4 v8, 0x1

    .line 2647
    :goto_0
    return v8

    .line 2444
    :cond_0
    const/4 v0, 0x0

    .line 2445
    .local v0, bIsManual:Z
    const/4 v7, 0x0

    .line 2446
    .local v7, sceneNum:I
    const/4 v1, 0x0

    .line 2447
    .local v1, conflictsPrefs:Landroid/preference/Preference;
    const/4 v6, 0x0

    .line 2448
    .local v6, scene:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v8

    if-nez v8, :cond_b

    .line 2449
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_scene_ds"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2453
    :goto_1
    if-eqz v6, :cond_1

    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2454
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2456
    :cond_1
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 2461
    :cond_2
    const/4 v0, 0x1

    .line 2465
    :goto_2
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_effect"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2466
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 2471
    :cond_3
    if-eqz v1, :cond_4

    .line 2472
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2480
    :cond_4
    :goto_3
    if-nez v0, :cond_10

    .line 2483
    const/16 v8, 0x8

    if-eq v7, v8, :cond_e

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    .line 2485
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 2487
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance"

    const-string v10, "auto"

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2488
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "auto"

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2501
    :cond_5
    :goto_4
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_set_white_balance"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2502
    if-eqz v1, :cond_6

    .line 2504
    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    if-nez v8, :cond_6

    .line 2505
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2509
    :cond_6
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v8, v8, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v8, :cond_8

    .line 2511
    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    .line 2513
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    .line 2515
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_iso"

    const-string v10, "auto"

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2516
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v2

    .line 2517
    .local v2, contorller:Lcom/android/camera/CameraController;
    if-eqz v2, :cond_7

    .line 2519
    const-string v8, "iso"

    const-string v9, "auto"

    invoke-virtual {v2, v8, v9}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2524
    .end local v2           #contorller:Lcom/android/camera/CameraController;
    :cond_7
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_iso"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2525
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2526
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2530
    :cond_8
    const/16 v8, 0x8

    if-eq v7, v8, :cond_9

    .line 2532
    const/4 v4, 0x2

    .line 2533
    .local v4, level_def:I
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_brightness"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2534
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2537
    const/4 v4, 0x2

    .line 2538
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_contrast"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2539
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "contrast"

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2542
    const/4 v4, 0x2

    .line 2543
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_saturation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2544
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "saturation"

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2547
    const/4 v4, 0x2

    .line 2548
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_shaprness"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2549
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "sharpness"

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2552
    .end local v4           #level_def:I
    :cond_9
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_image_property"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2553
    if-eqz v1, :cond_a

    .line 2555
    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    if-nez v8, :cond_a

    .line 2556
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2647
    :cond_a
    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2451
    :cond_b
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_scene_service_ds"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 2463
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2476
    :cond_d
    if-eqz v1, :cond_4

    .line 2477
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 2491
    :cond_e
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 2493
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_f

    .line 2494
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 2497
    :goto_6
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance"

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2498
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_4

    .line 2496
    :cond_f
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance_2nd"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    goto :goto_6

    .line 2562
    :cond_10
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_11

    .line 2564
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 2565
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance"

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2566
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2574
    :cond_11
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_set_white_balance"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2575
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_12

    .line 2576
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2578
    :cond_12
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v8, v8, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v8, :cond_16

    .line 2582
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_iso_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 2583
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 2584
    :cond_13
    const-string v8, "auto"

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 2585
    :cond_14
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_iso"

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2587
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v2

    .line 2588
    .restart local v2       #contorller:Lcom/android/camera/CameraController;
    if-eqz v2, :cond_15

    .line 2590
    const-string v8, "iso"

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2594
    :cond_15
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_iso"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2595
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 2596
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_16

    .line 2597
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2600
    .end local v2           #contorller:Lcom/android/camera/CameraController;
    :cond_16
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->getCurrentEffectPreference()Ljava/lang/String;

    move-result-object v8

    const-string v9, "none"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2601
    .local v3, enable:Z
    const/4 v8, 0x1

    if-ne v3, v8, :cond_a

    .line 2603
    const/4 v5, 0x0

    .line 2604
    .local v5, nValue:I
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_brightness_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 2606
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 2607
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2610
    :goto_7
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_brightness"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2611
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v5, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2614
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_contrast_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 2615
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 2616
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2619
    :goto_8
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_contrast"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2620
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "contrast"

    invoke-static {v8, v9, v5, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2623
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_saturation_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 2624
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 2625
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2628
    :goto_9
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_saturation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2629
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "saturation"

    invoke-static {v8, v9, v5, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2632
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_sharpness_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 2633
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 2634
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2637
    :goto_a
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_shaprness"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2638
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "sharpness"

    invoke-static {v8, v9, v5, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2641
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_image_property"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2642
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_a

    .line 2643
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 2609
    :cond_17
    const/4 v5, 0x2

    goto/16 :goto_7

    .line 2618
    :cond_18
    const/4 v5, 0x2

    goto/16 :goto_8

    .line 2627
    :cond_19
    const/4 v5, 0x2

    goto :goto_9

    .line 2636
    :cond_1a
    const/4 v5, 0x2

    goto :goto_a
.end method

.method private checkSmileCapture(Z)V
    .locals 2
    .parameter "bChecked"

    .prologue
    const/4 v1, 0x0

    .line 2282
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2283
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2285
    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 2286
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2290
    :cond_0
    return-void
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    .line 1340
    :cond_0
    return-void
.end method

.method private doSettings()V
    .locals 2

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 2309
    const-string v0, "OnScreenPreference"

    const-string v1, "Block Capture UI - doSettings()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2311
    return-void
.end method

.method private filterSceneOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;I)V
    .locals 9
    .parameter "screen"
    .parameter "pref"
    .parameter "nMode"

    .prologue
    .line 2315
    if-nez p2, :cond_1

    .line 2348
    :cond_0
    :goto_0
    return-void

    .line 2319
    :cond_1
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 2320
    .local v0, allEntries:[Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2321
    .local v1, allEntryValues:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2324
    .local v3, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_5

    .line 2326
    aget-object v7, v1, v4

    const-string v8, "panorama"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v1, v4

    const-string v8, "burst"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v1, v4

    const-string v8, "hdr"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v1, v4

    const-string v8, "sunset"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2324
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2332
    :cond_3
    const/4 v7, 0x1

    if-ne p3, v7, :cond_4

    .line 2333
    aget-object v7, v1, v4

    const-string v8, "night"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2336
    :cond_4
    aget-object v7, v0, v4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2339
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2340
    .local v5, size:I
    new-array v7, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2341
    new-array v7, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2344
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 2345
    .local v6, value:Ljava/lang/String;
    invoke-virtual {p2, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 2346
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0
.end method

.method private filterUnsupportedISO(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .parameter "screen"

    .prologue
    .line 719
    const-string v7, "pref_camera_iso"

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 720
    .local v5, iso:Landroid/preference/ListPreference;
    if-nez v5, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO1250()Z

    move-result v7

    if-nez v7, :cond_0

    .line 724
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 725
    .local v0, allEntries:[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 726
    .local v1, allEntryValues:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v3, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_2

    .line 730
    aget-object v7, v0, v4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 735
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 736
    .local v6, size:I
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 737
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private filterUnsupportedOptions(Landroid/preference/PreferenceScreen;)V
    .locals 14
    .parameter "screen"

    .prologue
    const/4 v13, 0x0

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, effect:Landroid/preference/ListPreference;
    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v11, v11, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v11, :cond_1

    .line 652
    const-string v11, "pref_camera_effect"

    invoke-virtual {p1, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #effect:Landroid/preference/ListPreference;
    check-cast v0, Landroid/preference/ListPreference;

    .line 656
    .restart local v0       #effect:Landroid/preference/ListPreference;
    :goto_0
    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v11}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 657
    .local v5, res:Landroid/content/res/Resources;
    const v11, 0x7f070023

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, n1:[Ljava/lang/String;
    const v11, 0x7f070024

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 659
    .local v8, v1:[Ljava/lang/String;
    const v11, 0x7f070025

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, n2:[Ljava/lang/String;
    const v11, 0x7f070026

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 662
    .local v9, v2:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v4, nlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v10, vlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    .line 666
    .local v7, support:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v11, v11, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v11, :cond_5

    .line 669
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v11, v3

    if-ge v1, v11, :cond_5

    .line 671
    sget-boolean v11, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-nez v11, :cond_2

    aget-object v11, v9, v1

    const-string v12, "dots"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 669
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 654
    .end local v1           #i:I
    .end local v2           #n1:[Ljava/lang/String;
    .end local v3           #n2:[Ljava/lang/String;
    .end local v4           #nlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v7           #support:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #v1:[Ljava/lang/String;
    .end local v9           #v2:[Ljava/lang/String;
    .end local v10           #vlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v11, "pref_video_effect"

    invoke-virtual {p1, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #effect:Landroid/preference/ListPreference;
    check-cast v0, Landroid/preference/ListPreference;

    .restart local v0       #effect:Landroid/preference/ListPreference;
    goto :goto_0

    .line 674
    .restart local v1       #i:I
    .restart local v2       #n1:[Ljava/lang/String;
    .restart local v3       #n2:[Ljava/lang/String;
    .restart local v4       #nlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #res:Landroid/content/res/Resources;
    .restart local v7       #support:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #v1:[Ljava/lang/String;
    .restart local v9       #v2:[Ljava/lang/String;
    .restart local v10       #vlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v11

    if-eqz v11, :cond_3

    aget-object v11, v9, v1

    const-string v12, "panorama"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    aget-object v11, v9, v1

    const-string v12, "burst"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    aget-object v11, v9, v1

    const-string v12, "hdr"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 681
    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v11

    if-eqz v11, :cond_4

    aget-object v11, v9, v1

    const-string v12, "depth"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 682
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->getCurrentScene_DOT()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v11}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v11

    if-nez v11, :cond_0

    .line 685
    :cond_4
    aget-object v11, v3, v1

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    aget-object v11, v9, v1

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 690
    .end local v1           #i:I
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_6

    .line 692
    aget-object v11, v3, v13

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    aget-object v11, v9, v13

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v11, v8

    if-ge v1, v11, :cond_9

    .line 699
    aget-object v11, v8, v1

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 701
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v11, v11, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v11, :cond_7

    aget-object v11, v8, v1

    const-string v12, "sepia"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 706
    const-string v11, "vintage-sepia"

    aput-object v11, v8, v1

    .line 708
    :cond_7
    aget-object v11, v2, v1

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    aget-object v11, v8, v1

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 713
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 714
    .local v6, size:I
    new-array v11, v6, [Ljava/lang/CharSequence;

    invoke-interface {v4, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 715
    new-array v11, v6, [Ljava/lang/CharSequence;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 716
    return-void
.end method

.method private filterUnsupportedOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;Ljava/util/List;)V
    .locals 19
    .parameter "screen"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Landroid/preference/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    .line 595
    invoke-static/range {p1 .. p2}, Lcom/android/camera/OnScreenPreference;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 601
    .local v2, allEntries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 602
    .local v3, allEntryValues:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v4, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v5, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 607
    .local v9, res:Landroid/content/res/Resources;
    const v17, 0x7f070025

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 608
    .local v13, tn1:[Ljava/lang/String;
    const v17, 0x7f070026

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 609
    .local v14, tv1:[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v8, nlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v16, vlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_2

    .line 613
    const/16 v17, 0x0

    aget-object v17, v13, v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    const/16 v17, 0x0

    aget-object v17, v14, v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 617
    .local v11, tempEntry:[Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    .line 620
    .local v12, tempValue:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    array-length v7, v3

    .local v7, len:I
    :goto_1
    if-ge v6, v7, :cond_5

    .line 621
    aget-object v17, v3, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 623
    if-nez v6, :cond_3

    .line 626
    const/16 v17, 0x0

    aget-object v17, v11, v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_3
    aget-object v17, v2, v6

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    aget-object v17, v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 636
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 637
    .local v10, size:I
    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 638
    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 642
    .local v15, value:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 643
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0
.end method

.method private initImageRatio()V
    .locals 3

    .prologue
    const v2, 0x7f0a0082

    .line 1910
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 1924
    :goto_0
    return-void

    .line 1913
    :cond_0
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_1

    .line 1914
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 1922
    :goto_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 1923
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->setImageRatio_MMS()V

    goto :goto_0

    .line 1915
    :cond_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_2

    .line 1916
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1

    .line 1917
    :cond_2
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_3

    .line 1918
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1

    .line 1920
    :cond_3
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1
.end method

.method private initPreference(Landroid/preference/PreferenceScreen;Landroid/hardware/Camera;)V
    .locals 8
    .parameter "screen"
    .parameter "device"

    .prologue
    const/4 v7, 0x1

    .line 168
    if-nez p2, :cond_1

    .line 169
    const-string v5, "OnScreenPreference"

    const-string v6, "initPreference() - camera device = null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v5, "group"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 174
    .local v1, group:Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_23

    .line 175
    const/4 v4, 0x0

    .line 177
    .local v4, target:Landroid/preference/Preference;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isWideScreen()Z

    move-result v5

    if-nez v5, :cond_2

    .line 178
    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 179
    if-eqz v4, :cond_2

    .line 180
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showISOInMenu()Z

    move-result v5

    if-ne v5, v7, :cond_2b

    .line 184
    :cond_3
    const-string v5, "pref_camera_iso"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 185
    if-eqz v4, :cond_4

    .line 186
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v5

    if-nez v5, :cond_5

    .line 192
    const-string v5, "pref_camera_flash_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 193
    if-eqz v4, :cond_5

    .line 194
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v5

    if-ne v5, v7, :cond_6

    .line 198
    const-string v5, "pref_play_shutter_sound"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 199
    if-eqz v4, :cond_6

    .line 200
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v5

    if-nez v5, :cond_7

    .line 204
    const-string v5, "pref_camera_auto_focus"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 205
    if-eqz v4, :cond_7

    .line 206
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v5

    if-nez v5, :cond_8

    .line 210
    const-string v5, "pref_face_detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 211
    if-eqz v4, :cond_8

    .line 212
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showEffectInMenu()Z

    move-result v5

    if-nez v5, :cond_a

    .line 217
    const-string v5, "pref_camera_effect"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 218
    if-eqz v4, :cond_9

    .line 219
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    :cond_9
    const-string v5, "pref_video_effect"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 221
    if-eqz v4, :cond_a

    .line 222
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v5

    if-nez v5, :cond_c

    .line 228
    const-string v5, "pref_camera_scene"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 229
    if-eqz v4, :cond_b

    .line 230
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :cond_b
    const-string v5, "pref_video_scene"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 234
    if-eqz v4, :cond_c

    .line 235
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_f

    .line 241
    const-string v5, "pref_smile_capture"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 242
    if-eqz v4, :cond_d

    .line 243
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :cond_d
    const-string v5, "pref_blink detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 246
    if-eqz v4, :cond_e

    .line 247
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    :cond_e
    const-string v5, "pref_camera_tutorial"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 251
    if-eqz v4, :cond_f

    .line 252
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v5

    if-nez v5, :cond_10

    .line 258
    const-string v5, "pref_fast_fps"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 259
    if-eqz v4, :cond_10

    .line 260
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 264
    const-string v5, "pref_camera_switch"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 265
    if-eqz v4, :cond_11

    .line 266
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 267
    :cond_11
    const-string v5, "pref_front_camera_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 268
    if-eqz v4, :cond_12

    .line 269
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    :cond_12
    :goto_2
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 366
    const-string v5, "pref_camera_review_duration"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 367
    if-eqz v4, :cond_13

    .line 368
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    :cond_13
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 372
    :cond_14
    const-string v5, "pref_grid"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 373
    if-eqz v4, :cond_15

    .line 374
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_15
    const-string v5, "pref_fast_fps"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 378
    if-eqz v4, :cond_16

    .line 379
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :cond_16
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 384
    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 385
    if-eqz v4, :cond_17

    .line 386
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    :cond_17
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 392
    :cond_18
    const-string v5, "pref_camera_3D_file_format"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 393
    if-eqz v4, :cond_19

    .line 394
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 398
    :cond_19
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoFormatChoosing()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 400
    const-string v5, "pref_camera_video_file_format"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 401
    if-eqz v4, :cond_1a

    .line 402
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    :cond_1a
    sget-boolean v5, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-nez v5, :cond_1b

    .line 408
    const-string v5, "pref_post_processing"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 409
    if-eqz v4, :cond_1b

    .line 410
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 415
    :cond_1b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 417
    const-string v5, "pref_stereo_recording"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 418
    if-eqz v4, :cond_1c

    .line 419
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    :cond_1c
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-nez v5, :cond_20

    .line 424
    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 425
    if-eqz v4, :cond_1d

    .line 426
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    :cond_1d
    const-string v5, "pref_post_processing"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 429
    if-eqz v4, :cond_1e

    .line 430
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    :cond_1e
    const-string v5, "pref_face_detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 433
    if-eqz v4, :cond_1f

    .line 434
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    :cond_1f
    const-string v5, "pref_set_resolution"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 437
    if-eqz v4, :cond_20

    .line 438
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 441
    :cond_20
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 444
    :cond_21
    const-string v5, "pref_camera_3D_status"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 445
    if-eqz v4, :cond_22

    .line 446
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 451
    :cond_22
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v5

    if-nez v5, :cond_23

    .line 452
    const-string v5, "pref_auto_upload"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 453
    if-eqz v4, :cond_23

    .line 454
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    .end local v4           #target:Landroid/preference/Preference;
    :cond_23
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v5, v7, :cond_24

    .line 460
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->addOptinalRecordingLimit(Landroid/preference/PreferenceScreen;)V

    .line 461
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->addEncodeType_H264(Landroid/preference/PreferenceScreen;)V

    .line 464
    :cond_24
    const-string v5, "pref_camera_timestamp"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    .line 465
    const-string v5, "pref_camera_geo_tagging"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    .line 466
    const-string v5, "pref_post_processing"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    .line 467
    const-string v5, "pref_stereo_recording"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    .line 468
    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    .line 469
    const-string v5, "pref_camera_switch"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 470
    const-string v5, "pref_camera_3D_status"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 471
    const-string v5, "pref_camera_auto_focus"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    .line 472
    const-string v5, "pref_face_detection"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    .line 473
    const-string v5, "pref_play_shutter_sound"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    .line 474
    const-string v5, "pref_camera_review_duration"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    .line 475
    const-string v5, "pref_camera_3D_file_format"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    .line 476
    const-string v5, "pref_camera_video_file_format"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    .line 477
    const-string v5, "pref_camera_self_timer"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    .line 478
    const-string v5, "pref_camera_self_portrait"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    .line 479
    const-string v5, "pref_camera_recording_limit"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    .line 480
    const-string v5, "pref_auto_upload"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    .line 482
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 484
    const-string v5, "pref_fast_fps"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    .line 485
    const-string v5, "pref_camera_record_with_audio"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    .line 489
    :cond_25
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 491
    const-string v5, "pref_smile_capture"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    .line 492
    const-string v5, "pref_blink detection"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    .line 496
    :cond_26
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->initSettingInfo()V

    .line 499
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    .line 502
    invoke-static {}, Lcom/android/camera/DisplayDevice;->NoResolutionChoiceIn2ndCam()Z

    move-result v5

    if-ne v5, v7, :cond_27

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_27

    .line 505
    if-eqz v1, :cond_27

    .line 506
    const/4 v4, 0x0

    .line 509
    .restart local v4       #target:Landroid/preference/Preference;
    iget-boolean v5, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-ne v5, v7, :cond_27

    .line 510
    const-string v5, "pref_set_resolution"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 511
    if-eqz v4, :cond_27

    .line 512
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 517
    .end local v4           #target:Landroid/preference/Preference;
    :cond_27
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateTimeStamp()V

    .line 518
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkGeoTagging()V

    .line 519
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->initImageRatio()V

    .line 520
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateSwitchCamera()V

    .line 521
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->setupWhteBalanceList(Landroid/preference/PreferenceScreen;)V

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/camera/OnScreenPreference;->checkStorageLocation(Landroid/preference/PreferenceScreen;)V

    .line 523
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    .line 524
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkRecordingLength()V

    .line 525
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 526
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->ReloadAutoUploadSetting()V

    .line 528
    :cond_28
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 529
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateSmileCapture()V

    .line 530
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateBlinkDetection()V

    .line 534
    :cond_29
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v5

    if-ne v5, v7, :cond_2a

    .line 535
    const/4 v3, 0x0

    .line 536
    .local v3, scene:Landroid/preference/ListPreference;
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_2a

    .line 537
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_3e

    .line 539
    const-string v5, "pref_camera_scene"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3           #scene:Landroid/preference/ListPreference;
    check-cast v3, Landroid/preference/ListPreference;

    .line 540
    .restart local v3       #scene:Landroid/preference/ListPreference;
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, p1, v3, v5}, Lcom/android/camera/OnScreenPreference;->filterSceneOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;I)V

    .line 551
    .end local v3           #scene:Landroid/preference/ListPreference;
    :cond_2a
    :goto_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showEffectInMenu()Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 553
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v5

    if-nez v5, :cond_40

    .line 555
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 558
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    const/4 v0, 0x0

    .line 559
    .local v0, effect:Landroid/preference/ListPreference;
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_3f

    .line 561
    const-string v5, "pref_camera_effect"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #effect:Landroid/preference/ListPreference;
    check-cast v0, Landroid/preference/ListPreference;

    .line 565
    .restart local v0       #effect:Landroid/preference/ListPreference;
    :goto_4
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, p1, v0, v5}, Lcom/android/camera/OnScreenPreference;->filterUnsupportedOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;Ljava/util/List;)V

    goto/16 :goto_0

    .line 188
    .end local v0           #effect:Landroid/preference/ListPreference;
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    .restart local v4       #target:Landroid/preference/Preference;
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->filterUnsupportedISO(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 272
    :cond_2c
    const-string v5, "pref_camera_self_portrait"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 273
    if-eqz v4, :cond_2d

    .line 274
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    :cond_2d
    const-string v5, "pref_camera_face_number"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 276
    if-eqz v4, :cond_2e

    .line 277
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_2e
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSwitchButton()Z

    move-result v5

    if-nez v5, :cond_2f

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->hasSwitchButton()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 283
    :cond_2f
    const-string v5, "pref_camera_switch"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 284
    if-eqz v4, :cond_30

    .line 285
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    :cond_30
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2ndCamNoneMirror()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 289
    const-string v5, "pref_front_camera_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 290
    if-eqz v4, :cond_31

    .line 291
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    :cond_31
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-ne v5, v7, :cond_3d

    .line 295
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_32

    .line 297
    const-string v5, "pref_camera_iso"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 298
    if-eqz v4, :cond_32

    .line 299
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_32
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v5

    if-nez v5, :cond_33

    .line 302
    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 303
    if-eqz v4, :cond_33

    .line 304
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    :cond_33
    const-string v5, "pref_camera_metering_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 307
    if-eqz v4, :cond_34

    .line 308
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    :cond_34
    const-string v5, "pref_camera_auto_focus"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 310
    if-eqz v4, :cond_35

    .line 311
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_35
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_36

    .line 315
    const-string v5, "pref_face_detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 316
    if-eqz v4, :cond_36

    .line 317
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    :cond_36
    const-string v5, "pref_camera_scene"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 322
    if-eqz v4, :cond_37

    .line 323
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    :cond_37
    const-string v5, "pref_video_scene"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 326
    if-eqz v4, :cond_38

    .line 327
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    :cond_38
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2ndCamAutoEnhance()Z

    move-result v5

    if-nez v5, :cond_39

    .line 331
    const-string v5, "pref_post_processing"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 332
    if-eqz v4, :cond_39

    .line 333
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_39
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 339
    const-string v5, "pref_smile_capture"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 340
    if-eqz v4, :cond_3a

    .line 341
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    :cond_3a
    const-string v5, "pref_blink detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 344
    if-eqz v4, :cond_3b

    .line 345
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 348
    :cond_3b
    const-string v5, "pref_fast_fps"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 349
    if-eqz v4, :cond_3c

    .line 350
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    :cond_3c
    const-string v5, "pref_front_camera_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 353
    if-eqz v4, :cond_12

    .line 354
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 358
    :cond_3d
    const-string v5, "pref_front_camera_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 359
    if-eqz v4, :cond_12

    .line 360
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 544
    .end local v4           #target:Landroid/preference/Preference;
    .restart local v3       #scene:Landroid/preference/ListPreference;
    :cond_3e
    const-string v5, "pref_video_scene"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3           #scene:Landroid/preference/ListPreference;
    check-cast v3, Landroid/preference/ListPreference;

    .line 545
    .restart local v3       #scene:Landroid/preference/ListPreference;
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, p1, v3, v5}, Lcom/android/camera/OnScreenPreference;->filterSceneOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;I)V

    goto/16 :goto_3

    .line 564
    .end local v3           #scene:Landroid/preference/ListPreference;
    .restart local v0       #effect:Landroid/preference/ListPreference;
    .restart local v2       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_3f
    const-string v5, "pref_video_effect"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #effect:Landroid/preference/ListPreference;
    check-cast v0, Landroid/preference/ListPreference;

    .restart local v0       #effect:Landroid/preference/ListPreference;
    goto/16 :goto_4

    .line 570
    .end local v0           #effect:Landroid/preference/ListPreference;
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_40
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->filterUnsupportedOptions(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0
.end method

.method private initSettingInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 803
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_image_ratio"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    .line 804
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_switch"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    .line 805
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-ne v1, v4, :cond_e

    .line 806
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    .line 822
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_3D_status"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bIs3DCamera:Z

    .line 824
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 828
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    .line 831
    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 832
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    .line 836
    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 838
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 840
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 841
    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    if-eqz v1, :cond_4

    .line 843
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 844
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 845
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 848
    :cond_4
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 850
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 851
    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    if-eqz v1, :cond_5

    .line 853
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 855
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 856
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 862
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 864
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 865
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    .line 866
    :cond_6
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    .line 868
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-eq v1, v4, :cond_7

    .line 870
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    .line 871
    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    if-ne v1, v4, :cond_12

    .line 873
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 874
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 886
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 888
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    .line 889
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v0

    .line 890
    .local v0, bWithAudio:Z
    if-nez v0, :cond_13

    .line 892
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 893
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 902
    .end local v0           #bWithAudio:Z
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 903
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    .line 905
    :cond_9
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_a

    .line 906
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    .line 909
    :cond_a
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_b

    .line 910
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    .line 913
    :cond_b
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_c

    .line 914
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    .line 917
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHWShareButton()Z

    move-result v1

    if-ne v1, v4, :cond_d

    .line 919
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    const-string v2, "2s"

    if-ne v1, v2, :cond_d

    .line 920
    const-string v1, "3s"

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    .line 923
    :cond_d
    return-void

    .line 807
    :cond_e
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_0

    .line 809
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 812
    :cond_f
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    goto/16 :goto_0

    .line 813
    :cond_10
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-ne v1, v4, :cond_11

    .line 814
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    goto/16 :goto_0

    .line 819
    :cond_11
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_image_ratio"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    goto/16 :goto_0

    .line 878
    :cond_12
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 879
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 897
    .restart local v0       #bWithAudio:Z
    :cond_13
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 898
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method private static removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "group"
    .parameter "remove"

    .prologue
    const/4 v2, 0x1

    .line 577
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v2

    .line 579
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 580
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 581
    .local v0, child:Landroid/preference/Preference;
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 582
    check-cast v0, Landroid/preference/PreferenceGroup;

    .end local v0           #child:Landroid/preference/Preference;
    invoke-static {v0, p1}, Lcom/android/camera/OnScreenPreference;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 579
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 587
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private restorePreference()V
    .locals 2

    .prologue
    .line 1941
    const-string v0, "OnScreenPreference"

    const-string v1, "restorePreference()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 1948
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1950
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 1951
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1954
    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 1955
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1960
    :cond_3
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 1961
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1965
    :cond_4
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 1967
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 1968
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1970
    :cond_5
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 1971
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1974
    :cond_6
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 1975
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1976
    :cond_7
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_8

    .line 1977
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1980
    :cond_8
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_9

    .line 1981
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1984
    :cond_9
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_a

    .line 1985
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1988
    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1990
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 1991
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1992
    :cond_b
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    .line 1993
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1995
    :cond_c
    return-void
.end method

.method private selectResolution(Landroid/preference/Preference;)V
    .locals 13
    .parameter "prefence"

    .prologue
    const/4 v12, 0x1

    .line 1759
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1762
    :cond_0
    const-string v9, "OnScreenPreference"

    const-string v10, "only for Contacts or Square request - not select to write preference really"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :goto_0
    return-void

    .line 1767
    :cond_1
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-ne v9, v12, :cond_2

    .line 1768
    const-string v9, "OnScreenPreference"

    const-string v10, "only for Mms request - not select to write preference really"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v9, v9, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v9, :cond_7

    :cond_2
    move-object v4, p1

    .line 1778
    check-cast v4, Landroid/preference/ListPreference;

    .line 1779
    .local v4, list:Landroid/preference/ListPreference;
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1780
    .local v1, entry:Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1781
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1782
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v0

    if-ge v2, v9, :cond_3

    .line 1783
    aget-object v9, v0, v2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1784
    move v3, v2

    .line 1788
    :cond_3
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 1791
    .local v5, r:Lcom/android/camera/Resolution;
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v9, :cond_4

    .line 1792
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v9

    new-instance v10, Lcom/android/camera/OneValueEvent;

    const-string v11, "Resolution.Selected"

    invoke-direct {v10, v11, v5}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 1794
    :cond_4
    const-string v9, "OnScreenPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolutionCallback run: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v7

    .line 1796
    .local v7, resolutionWidth:I
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v6

    .line 1798
    .local v6, resolutionHeight:I
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-ne v9, v12, :cond_b

    sget-object v9, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v10, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v9, v10, :cond_b

    .line 1800
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v9

    if-ne v9, v12, :cond_a

    .line 1801
    const-string v9, "OnScreenPreference"

    const-string v10, "for Mms custom request - not select to write preference really"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    sget-object v9, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1803
    invoke-static {v12}, Lcom/android/camera/IntentManager;->setMMS_isVideoQVGA(Z)V

    .line 1820
    :cond_5
    :goto_2
    const-string v9, "OnScreenPreference"

    const-string v10, "Block Capture UI - set resolution"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9, v12}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 1822
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v9

    if-ne v9, v12, :cond_6

    .line 1823
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_fast_frame_resolution_temp"

    const-string v11, "null"

    invoke-static {v9, v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1825
    :cond_6
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v10, 0xf

    const/4 v11, 0x0

    invoke-static {v9, v10, v7, v6, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1773
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #entry:Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #list:Landroid/preference/ListPreference;
    .end local v5           #r:Lcom/android/camera/Resolution;
    .end local v6           #resolutionHeight:I
    .end local v7           #resolutionWidth:I
    :cond_7
    sget-object v9, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v10, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v9, v10, :cond_2

    goto/16 :goto_0

    .line 1782
    .restart local v0       #entries:[Ljava/lang/CharSequence;
    .restart local v1       #entry:Ljava/lang/CharSequence;
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #list:Landroid/preference/ListPreference;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1805
    .restart local v5       #r:Lcom/android/camera/Resolution;
    .restart local v6       #resolutionHeight:I
    .restart local v7       #resolutionWidth:I
    :cond_9
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/camera/IntentManager;->setMMS_isVideoQVGA(Z)V

    goto :goto_2

    .line 1807
    :cond_a
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v10, v11}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    .line 1808
    .local v8, result:Z
    if-nez v8, :cond_5

    .line 1809
    const-string v9, "OnScreenPreference"

    const-string v10, "Write preference for resolution is fail in MMS photo mode"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1814
    .end local v8           #result:Z
    :cond_b
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v10, v11}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    .line 1815
    .restart local v8       #result:Z
    if-nez v8, :cond_5

    .line 1816
    const-string v9, "OnScreenPreference"

    const-string v10, "Write preference for resolution is fail"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private selectWhiteBalance(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter "prefence"

    .prologue
    const/16 v6, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1830
    if-nez p1, :cond_0

    .line 1831
    const-string v2, "OnScreenPreference"

    const-string v3, "selectWhiteBalance failed - no white balance preference"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    :goto_0
    return-void

    .line 1835
    :cond_0
    const/4 v0, 0x0

    .line 1836
    .local v0, pref_name:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-eqz v2, :cond_2

    .line 1837
    const-string v0, "pref_camera_white_balance_2nd"

    .line 1842
    :goto_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1844
    const/4 v1, 0x0

    .line 1845
    .local v1, scene:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1846
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_scene_ds"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1850
    :goto_2
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    if-eq v2, v4, :cond_1

    .line 1852
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_white_balance_manual"

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1857
    .end local v1           #scene:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1858
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1859
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v5, v5, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 1839
    :cond_2
    const-string v0, "pref_camera_white_balance"

    goto :goto_1

    .line 1848
    .restart local v1       #scene:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_scene_service_ds"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private setImageRatio_MMS()V
    .locals 0

    .prologue
    .line 1906
    return-void
.end method

.method private setupResolutionList(Landroid/preference/PreferenceScreen;)V
    .locals 17
    .parameter "screen"

    .prologue
    .line 938
    if-nez p1, :cond_0

    .line 939
    const-string v14, "OnScreenPreference"

    const-string v15, "setupResolutionList failed - no preference screen"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :goto_0
    return-void

    .line 943
    :cond_0
    const-string v14, "pref_set_resolution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 945
    .local v6, list:Landroid/preference/ListPreference;
    if-nez v6, :cond_1

    .line 946
    const-string v14, "OnScreenPreference"

    const-string v15, "setupResolutionList failed - no resolution preference"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v14, v14, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v14, :cond_3

    .line 952
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    .line 956
    :goto_1
    const/4 v7, 0x0

    .line 957
    .local v7, r:Lcom/android/camera/Resolution;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v14, v14, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v14, :cond_4

    .line 958
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraThread;->updateImageRatio(ZLcom/android/camera/ModeHandler;)Lcom/android/camera/Resolution;

    move-result-object v7

    .line 961
    :goto_2
    const-string v14, "OnScreenPreference"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current Resolution: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v14, v15}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;

    move-result-object v11

    .line 964
    .local v11, resoItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    .line 966
    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    .line 967
    .local v12, sortedSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    invoke-virtual {v12, v11}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 968
    invoke-virtual {v12}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 970
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/ResolutionMenuItem;>;"
    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 971
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ResolutionMenuItem;

    .line 972
    .local v8, re:Lcom/android/camera/ResolutionMenuItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v14, v14, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v14, :cond_6

    .line 974
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    if-eqz v14, :cond_5

    iget-object v14, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v14}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 975
    const-string v14, "OnScreenPreference"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "#########################:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    .line 954
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/ResolutionMenuItem;>;"
    .end local v7           #r:Lcom/android/camera/Resolution;
    .end local v8           #re:Lcom/android/camera/ResolutionMenuItem;
    .end local v11           #resoItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    .end local v12           #sortedSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    :cond_3
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    goto/16 :goto_1

    .line 960
    .restart local v7       #r:Lcom/android/camera/Resolution;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v14, v15}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v7

    goto/16 :goto_2

    .line 978
    .restart local v5       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/ResolutionMenuItem;>;"
    .restart local v8       #re:Lcom/android/camera/ResolutionMenuItem;
    .restart local v11       #resoItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    .restart local v12       #sortedSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    if-nez v14, :cond_2

    iget-object v14, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v14}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v14

    if-nez v14, :cond_2

    .line 979
    const-string v14, "OnScreenPreference"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "#########################:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 984
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 987
    .end local v8           #re:Lcom/android/camera/ResolutionMenuItem;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    new-array v1, v14, [Ljava/lang/CharSequence;

    .line 988
    .local v1, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    new-array v2, v14, [Ljava/lang/CharSequence;

    .line 990
    .local v2, entryValues:[Ljava/lang/CharSequence;
    const-string v14, "OnScreenPreference"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sortedresoItems.size()#############:  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v14}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 992
    .local v9, res:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 993
    .local v4, index:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-ge v3, v14, :cond_9

    .line 994
    const/4 v10, -0x1

    .line 995
    .local v10, resDesId:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ResolutionMenuItem;

    iget v10, v14, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    .line 996
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v1, v3

    .line 997
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v3

    .line 998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ResolutionMenuItem;

    iget-object v14, v14, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v7, v14}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 999
    move v4, v3

    .line 993
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1003
    .end local v10           #resDesId:I
    :cond_9
    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1004
    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1005
    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v14, v14, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 1010
    const v13, 0x7f0a005a

    .line 1038
    .local v13, titleId:I
    :goto_5
    invoke-virtual {v6, v13}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    goto/16 :goto_0

    .line 1011
    .end local v13           #titleId:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-eqz v14, :cond_b

    .line 1012
    const v13, 0x7f0a005a

    .restart local v13       #titleId:I
    goto :goto_5

    .line 1015
    .end local v13           #titleId:I
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v15, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v14, v15}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v15, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v14, v15}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1018
    :cond_c
    const-string v14, "OnScreenPreference"

    const-string v15, "Contacts request - resolution is 1:1"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const v13, 0x7f0a0066

    .restart local v13       #titleId:I
    goto :goto_5

    .line 1021
    .end local v13           #titleId:I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    if-eqz v14, :cond_11

    .line 1023
    sget-object v14, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v15, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v14, v15, :cond_e

    .line 1024
    const v13, 0x7f0a0068

    .restart local v13       #titleId:I
    goto :goto_5

    .line 1025
    .end local v13           #titleId:I
    :cond_e
    sget-object v14, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v15, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v14, v15, :cond_f

    .line 1026
    const v13, 0x7f0a0069

    .restart local v13       #titleId:I
    goto :goto_5

    .line 1027
    .end local v13           #titleId:I
    :cond_f
    sget-object v14, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v15, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v14, v15, :cond_10

    .line 1028
    const v13, 0x7f0a0067

    .restart local v13       #titleId:I
    goto :goto_5

    .line 1031
    .end local v13           #titleId:I
    :cond_10
    const v13, 0x7f0a006a

    .restart local v13       #titleId:I
    goto :goto_5

    .line 1033
    .end local v13           #titleId:I
    :cond_11
    const v13, 0x7f0a006b

    .restart local v13       #titleId:I
    goto :goto_5
.end method

.method private setupWhteBalanceList(Landroid/preference/PreferenceScreen;)V
    .locals 14
    .parameter "screen"

    .prologue
    .line 1043
    if-nez p1, :cond_0

    .line 1044
    const-string v12, "OnScreenPreference"

    const-string v13, "setupWhteBalanceList failed - no preference screen"

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :goto_0
    return-void

    .line 1048
    :cond_0
    const-string v12, "pref_set_white_balance"

    invoke-virtual {p1, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    .line 1049
    .local v7, list:Landroid/preference/ListPreference;
    if-nez v7, :cond_1

    .line 1050
    const-string v12, "OnScreenPreference"

    const-string v13, "setupWhteBalanceList failed - no white balance preference"

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_1
    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v12}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1054
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f070021

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, allEntries:[Ljava/lang/String;
    const v12, 0x7f070022

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, allEntryValues:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .local v4, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v11, "cloudy-daylight"

    .line 1061
    .local v11, value_cloudy:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1062
    .local v8, removeWB:Z
    const/4 v2, 0x0

    .line 1063
    .local v2, current_value:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-boolean v12, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-eqz v12, :cond_2

    .line 1064
    const/4 v8, 0x1

    .line 1065
    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v13, "pref_camera_white_balance_2nd"

    invoke-static {v12, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1072
    :goto_1
    const/4 v6, 0x0

    .line 1073
    .local v6, index:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v12, v1

    if-ge v5, v12, :cond_5

    .line 1074
    if-eqz v8, :cond_3

    aget-object v12, v1, v5

    const-string v13, "cloudy-daylight"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1073
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1068
    .end local v5           #i:I
    .end local v6           #index:I
    :cond_2
    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v13, "pref_camera_white_balance"

    invoke-static {v12, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1076
    .restart local v5       #i:I
    .restart local v6       #index:I
    :cond_3
    aget-object v12, v1, v5

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1077
    move v6, v5

    .line 1078
    :cond_4
    aget-object v12, v0, v5

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    aget-object v12, v1, v5

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1082
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1083
    .local v10, size:I
    new-array v12, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1084
    new-array v12, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1085
    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0
.end method

.method private show_gps_dialog()V
    .locals 6

    .prologue
    .line 1136
    new-instance v3, Lcom/android/camera/OnScreenPreference$1;

    invoke-direct {v3, p0}, Lcom/android/camera/OnScreenPreference$1;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1147
    .local v3, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/OnScreenPreference$2;

    invoke-direct {v2, p0}, Lcom/android/camera/OnScreenPreference$2;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1155
    .local v2, negative_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/camera/OnScreenPreference$3;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenPreference$3;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1162
    .local v0, cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/camera/OnScreenPreference$4;

    invoke-direct {v1, p0}, Lcom/android/camera/OnScreenPreference$4;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1183
    .local v1, key_listener:Landroid/content/DialogInterface$OnKeyListener;
    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a014d

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a014e

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c0200

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    .line 1193
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    check-cast v4, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 1196
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1197
    return-void
.end method

.method private show_reset_dialog()V
    .locals 6

    .prologue
    .line 1202
    new-instance v3, Lcom/android/camera/OnScreenPreference$5;

    invoke-direct {v3, p0}, Lcom/android/camera/OnScreenPreference$5;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1283
    .local v3, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/OnScreenPreference$6;

    invoke-direct {v2, p0}, Lcom/android/camera/OnScreenPreference$6;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1291
    .local v2, negative_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/camera/OnScreenPreference$7;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenPreference$7;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1297
    .local v0, cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/camera/OnScreenPreference$8;

    invoke-direct {v1, p0}, Lcom/android/camera/OnScreenPreference$8;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1318
    .local v1, key_listener:Landroid/content/DialogInterface$OnKeyListener;
    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0099

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00d7

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c01da

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c01db

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    .line 1328
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    check-cast v4, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 1331
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1332
    return-void
.end method

.method private updateGeoTagging()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1114
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1116
    const-string v0, "OnScreenPreference"

    const-string v1, "updateGeoTagging() - Check Location Setting ..."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkLocationSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1120
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->show_gps_dialog()V

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    .line 1124
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    const v2, 0x7f0a00d6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v4}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    goto :goto_0
.end method

.method private updateImageRatio()V
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 1938
    :goto_0
    return-void

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    .line 1934
    iget-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    iput-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    .line 1936
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    .line 1937
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateResolution()V

    goto :goto_0
.end method

.method private updateResolution()V
    .locals 2

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 2303
    const-string v0, "OnScreenPreference"

    const-string v1, "Block Capture UI - updateResolution()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2305
    return-void
.end method

.method private updateSwitchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1864
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 1891
    :cond_0
    :goto_0
    return-void

    .line 1867
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1868
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    .line 1869
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1870
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    .line 1871
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 1873
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1874
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1878
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    .line 1879
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1885
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateTimeStamp()V
    .locals 4

    .prologue
    .line 1090
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 1091
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1092
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1093
    .local v1, now:Ljava/util/Date;
    const-string v0, "yyyy/MM/dd kk:mm"

    .line 1094
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 1097
    .end local v0           #dateFormat:Ljava/lang/String;
    .end local v1           #now:Ljava/util/Date;
    :cond_0
    return-void
.end method


# virtual methods
.method public ReloadAutoUploadSetting()V
    .locals 3

    .prologue
    .line 1498
    const-string v0, "OnScreenPreference"

    const-string v1, "ReloadAutoUploadSetting()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    if-nez v0, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload"

    invoke-static {v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    .line 1503
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_label"

    invoke-static {v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 1504
    const-string v0, "OnScreenPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReloadAutoUploadSetting() mAutoUploadService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v0, "OnScreenPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReloadAutoUploadSetting() mAutoUploadServiceLabel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v1, "Off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1507
    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1511
    :goto_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->loadAutoUploadSettings()V

    goto :goto_0

    .line 1509
    :cond_3
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public backupImageAdjustment_DOT(Ljava/lang/String;I)V
    .locals 4
    .parameter "key"
    .parameter "nValue"

    .prologue
    .line 2846
    const/4 v0, 0x0

    .line 2847
    .local v0, scene:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2848
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene_ds"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2852
    :goto_0
    const-string v1, "pref_camera_brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2853
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_brightness_manual"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2860
    :cond_0
    :goto_1
    return-void

    .line 2850
    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2854
    :cond_2
    const-string v1, "pref_camera_contrast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2855
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_contrast_manual"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 2856
    :cond_3
    const-string v1, "pref_camera_saturation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2857
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_saturation_manual"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 2858
    :cond_4
    const-string v1, "pref_camera_shaprness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2859
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_sharpness_manual"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public checkAutoCapture()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1395
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v3, v2, :cond_1

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1398
    :cond_1
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 1402
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    .line 1404
    .local v0, timer:I
    :goto_1
    if-nez v0, :cond_c

    .line 1406
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 1407
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1408
    :cond_2
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getFaceNumber(Landroid/app/Activity;)I

    move-result v3

    if-gtz v3, :cond_8

    .line 1409
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    :cond_3
    :goto_2
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1411
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 1412
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1413
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1414
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 1415
    invoke-virtual {p0, v2}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    .line 1418
    :cond_4
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 1419
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1420
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1423
    :cond_5
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1424
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1425
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #timer:I
    :cond_6
    move v0, v1

    .line 1402
    goto :goto_1

    .restart local v0       #timer:I
    :cond_7
    move v1, v2

    .line 1409
    goto :goto_2

    .line 1428
    :cond_8
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1430
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_9

    .line 1431
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1432
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1435
    :cond_9
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_a

    .line 1436
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1437
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1440
    :cond_a
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_b

    .line 1441
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1442
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1445
    :cond_b
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 1446
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    const-string v3, "no_limit"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1447
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1451
    :cond_c
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 1452
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public checkImageSettings(I)Z
    .locals 5
    .parameter "nImageSettings"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2367
    const-string v4, "pref_set_white_balance"

    and-int/lit8 v1, p1, 0x20

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v0

    .line 2371
    .local v0, updated:Z
    const-string v4, "pref_camera_iso"

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2375
    const-string v1, "pref_camera_image_property"

    sget v4, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    and-int/2addr v4, p1

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2379
    return v0

    .end local v0           #updated:Z
    :cond_0
    move v1, v3

    .line 2367
    goto :goto_0

    .restart local v0       #updated:Z
    :cond_1
    move v1, v3

    .line 2371
    goto :goto_1

    :cond_2
    move v2, v3

    .line 2375
    goto :goto_2
.end method

.method public checkSceneSetting()V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x1

    const/16 v9, 0x14

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2652
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v4, :cond_1

    .line 2830
    :cond_0
    :goto_0
    return-void

    .line 2655
    :cond_1
    const/4 v0, 0x0

    .line 2656
    .local v0, conflictsPrefs:Landroid/preference/Preference;
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {p0, v4}, Lcom/android/camera/OnScreenPreference;->getPrefSceneType(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2659
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 2661
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_set_white_balance"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    .line 2664
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "auto"

    invoke-static {v4, v11, v7, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2666
    :cond_2
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_set_white_balance"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2667
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2668
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2671
    :cond_3
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_5

    .line 2674
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 2676
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_iso"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    .line 2678
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    .line 2679
    .local v1, contorller:Lcom/android/camera/CameraController;
    if-eqz v1, :cond_4

    .line 2680
    const-string v4, "iso"

    const-string v5, "auto"

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2684
    .end local v1           #contorller:Lcom/android/camera/CameraController;
    :cond_4
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_iso"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2685
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2686
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2689
    :cond_5
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 2691
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_brightness"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    .line 2692
    const/4 v2, 0x2

    .line 2693
    .local v2, level_def:I
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_brightness"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2695
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-static {v4, v5, v2, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2698
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_contrast"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    .line 2699
    const/4 v2, 0x2

    .line 2700
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_contrast"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2702
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "contrast"

    invoke-static {v4, v9, v2, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2710
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_saturation"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    .line 2711
    const/4 v2, 0x2

    .line 2712
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_saturation"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2714
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "saturation"

    invoke-static {v4, v9, v2, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2722
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_shaprness"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    .line 2723
    const/4 v2, 0x2

    .line 2724
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_shaprness"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2726
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "sharpness"

    invoke-static {v4, v9, v2, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2734
    .end local v2           #level_def:I
    :cond_6
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_image_property"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2735
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2736
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2740
    :cond_7
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 2742
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_set_white_balance"

    iget-object v6, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2744
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    invoke-static {v4, v11, v7, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2745
    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    .line 2748
    :cond_8
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_set_white_balance"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2749
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2750
    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2752
    :cond_9
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_c

    .line 2755
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 2757
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    .line 2758
    .restart local v1       #contorller:Lcom/android/camera/CameraController;
    if-eqz v1, :cond_a

    .line 2759
    const-string v4, "iso"

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2762
    :cond_a
    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    .line 2765
    .end local v1           #contorller:Lcom/android/camera/CameraController;
    :cond_b
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_iso"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2766
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    .line 2767
    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2770
    :cond_c
    const/4 v3, 0x0

    .line 2771
    .local v3, nValue:I
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 2773
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2774
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_brightness"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2776
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-static {v4, v5, v3, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2777
    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    .line 2781
    :cond_d
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 2783
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2784
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_contrast"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2786
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "contrast"

    invoke-static {v4, v9, v3, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2792
    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    .line 2796
    :cond_e
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 2798
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2799
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_saturation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2801
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "saturation"

    invoke-static {v4, v9, v3, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2807
    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    .line 2811
    :cond_f
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 2813
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2814
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_shaprness"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2816
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "sharpness"

    invoke-static {v4, v9, v3, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2822
    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    .line 2826
    :cond_10
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_image_property"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2827
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->getCurrentEffectPreference()Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2828
    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method checkStorageLocation()V
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 1366
    const-string v0, "OnScreenPreference"

    const-string v1, "mScreen == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/camera/OnScreenPreference;->checkStorageLocation(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public checkStorageLocation(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter "screen"

    .prologue
    .line 1372
    const-string v3, "pref_camera_storage_location"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 1373
    .local v2, store:Landroid/preference/ListPreference;
    if-eqz v2, :cond_0

    .line 1374
    sget-boolean v3, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v3, :cond_1

    .line 1377
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getSDCardState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1378
    .local v0, bSDCard:Z
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1379
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_storage_location"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1391
    .end local v0           #bSDCard:Z
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    const-string v3, "group"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 1384
    .local v1, group:Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_0

    .line 1385
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public enableISO(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 2031
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "pref_camera_iso"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2032
    .local v0, property:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 2033
    if-eqz p1, :cond_1

    .line 2034
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2038
    :cond_0
    :goto_0
    return v3

    .line 2036
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public enableImageProperty(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 2017
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_image_property"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2018
    .local v0, property:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 2019
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-ne p1, v2, :cond_1

    .line 2026
    :cond_0
    :goto_0
    return v1

    .line 2022
    :cond_1
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2023
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enablePreference(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "name"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 2352
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2353
    .local v0, preference:Landroid/preference/Preference;
    if-nez v0, :cond_1

    .line 2361
    :cond_0
    :goto_0
    return v1

    .line 2356
    :cond_1
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 2358
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2359
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enableSceneOptions(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 2385
    const/4 v0, 0x0

    .line 2387
    .local v0, property:Landroid/preference/Preference;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2389
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    .line 2390
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_2

    .line 2391
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_scene"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2396
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 2397
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eq p1, v2, :cond_1

    .line 2398
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2400
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkSceneSetting()V

    .line 2408
    :goto_1
    return v1

    .line 2393
    :cond_2
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_video_scene"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0

    .line 2403
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2407
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkSceneSettingForDOT()Z

    goto :goto_1
.end method

.method public enableSelfPortrait(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 1999
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 2000
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v2

    if-lez v2, :cond_1

    .line 2013
    :cond_0
    :goto_0
    return v1

    .line 2004
    :cond_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_face_number"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2005
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 2006
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eq p1, v2, :cond_0

    .line 2009
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2010
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public exitPreference()V
    .locals 0

    .prologue
    .line 1751
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->restorePreference()V

    .line 1752
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->closeDialog()V

    .line 1753
    return-void
.end method

.method public getCurrectMenuResolution()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getCurrentEffectPreference()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2043
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    .line 2044
    .local v0, effectManager:Lcom/android/camera/effect/EffectManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "none"

    goto :goto_0
.end method

.method public getCurrentScene_DOT()I
    .locals 5

    .prologue
    .line 2865
    const/4 v1, 0x0

    .line 2866
    .local v1, scene:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2867
    .local v2, sceneNum:I
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2868
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_scene_ds"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2872
    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2873
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2877
    :cond_0
    :goto_1
    return v2

    .line 2870
    :cond_1
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_scene_service_ds"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2874
    :catch_0
    move-exception v0

    .line 2875
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "OnScreenPreference"

    const-string v4, "NumberFormatException of sceneNum"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPrefSceneType(I)Ljava/lang/String;
    .locals 5
    .parameter "mode"

    .prologue
    .line 2414
    const/4 v0, 0x0

    .line 2415
    .local v0, prev_scene:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2417
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2419
    const-string v1, "OnScreenPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrefenceValue PREF_CAMERA_SCENE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    :goto_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2429
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/BooleanEvent;

    const-string v3, "AutoScene.Enabled"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 2434
    .end local v0           #prev_scene:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 2422
    .restart local v0       #prev_scene:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_video_scene"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2424
    const-string v1, "OnScreenPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrefenceValue PREF_VIDEO_SCENE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2433
    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/BooleanEvent;

    const-string v3, "AutoScene.Enabled"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 2434
    const-string v0, "auto"

    goto :goto_1
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    .line 152
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/high16 v2, 0x7f05

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/OnScreenPreference;->initPreference(Landroid/preference/PreferenceScreen;Landroid/hardware/Camera;)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    return-object v0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v2, 0x7f050002

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v2, 0x7f050001

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public initOnScreenPreference(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Lcom/android/camera/MenuHandler;)V
    .locals 2
    .parameter "camera"
    .parameter "thread"
    .parameter "handle"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 131
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    .line 132
    iput-object p2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 133
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    .line 134
    iput-object p3, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    .line 135
    new-instance v0, Landroid/preference/PreferenceManager;

    const/16 v1, 0x64

    invoke-direct {v0, p1, v1}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    .line 136
    return-void
.end method

.method public onCheckBoxPreferenceUpdated(Landroid/preference/Preference;Z)V
    .locals 8
    .parameter "prefence"
    .parameter "checked"

    .prologue
    const/16 v4, 0x37

    const/16 v7, 0x30

    const/16 v3, 0x8

    const/16 v6, 0x23

    const/4 v5, 0x0

    .line 1534
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1535
    .local v0, ckPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1536
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, key:Ljava/lang/String;
    const-string v2, "pref_camera_switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1538
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateSwitchCamera()V

    .line 1539
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restartCamera()V

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    const-string v2, "pref_camera_3D_status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1541
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bIs3DCamera:Z

    .line 1542
    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->check3DCamera(Z)V

    goto :goto_0

    .line 1543
    :cond_2
    const-string v2, "pref_front_camera_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1544
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateResolution()V

    goto :goto_0

    .line 1545
    :cond_3
    const-string v2, "pref_camera_image_ratio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1546
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateImageRatio()V

    goto :goto_0

    .line 1547
    :cond_4
    const-string v2, "pref_camera_timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1548
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateTimeStamp()V

    .line 1549
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto :goto_0

    .line 1550
    :cond_5
    const-string v2, "pref_camera_geo_tagging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1551
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateGeoTagging()V

    goto :goto_0

    .line 1552
    :cond_6
    const-string v2, "pref_grid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1553
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1554
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 1555
    :cond_7
    const-string v2, "pref_camera_auto_focus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1556
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    .line 1557
    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkAutoFocus(Z)V

    goto :goto_0

    .line 1559
    :cond_8
    const-string v2, "pref_post_processing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1560
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    .line 1561
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    .line 1563
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1564
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v4, v5, v5, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 1568
    :cond_9
    const-string v2, "pref_stereo_recording"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1569
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    .line 1570
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    .line 1572
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x38

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1573
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x38

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v5, v5, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1575
    :cond_a
    const-string v2, "pref_camera_record_with_audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1576
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    .line 1577
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/OneValueEvent;

    const-string v4, "RecordWithAudio.Changed"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 1578
    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkRecordWithAudio(Z)V

    goto/16 :goto_0

    .line 1579
    :cond_b
    const-string v2, "pref_face_detection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1580
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    .line 1581
    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 1582
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 1584
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1585
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateSmileCapture()V

    .line 1586
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateBlinkDetection()V

    .line 1588
    :cond_d
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1589
    :cond_e
    const-string v2, "pref_play_shutter_sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1590
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    .line 1591
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    .line 1592
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, p2}, Lcom/android/camera/CameraThread;->enableShutterSound(Z)V

    goto/16 :goto_0

    .line 1593
    :cond_f
    const-string v2, "pref_camera_self_portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1595
    if-eqz p2, :cond_11

    .line 1596
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_face_number"

    const-string v4, "2faces"

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1602
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    .line 1604
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_10

    .line 1605
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->updateIndicatorLayout_AutoCapture()V

    .line 1607
    :cond_10
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1608
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1610
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1611
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1599
    :cond_11
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_face_number"

    const-string v4, "none"

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1612
    :cond_12
    const-string v2, "pref_smile_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1613
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 1614
    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkSmileCapture(Z)V

    .line 1615
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1616
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1617
    :cond_13
    const-string v2, "pref_blink detection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1618
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 1619
    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkBlinkDetection(Z)V

    .line 1620
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1621
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1622
    :cond_14
    const-string v2, "pref_fast_fps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1623
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    .line 1624
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2, p2}, Lcom/android/camera/OnScreenPreference;->checkFastFrameRecording(Landroid/preference/PreferenceScreen;Z)V

    .line 1625
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/OneValueEvent;

    const-string v4, "FastFrameRecording.Changed"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto/16 :goto_0

    .line 1627
    :cond_15
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0
.end method

.method public onListPreferenceUpdated(Landroid/preference/Preference;I)V
    .locals 9
    .parameter "prefence"
    .parameter "index"

    .prologue
    const/16 v6, 0x12

    const/16 v8, 0x25

    const/4 v4, 0x1

    const/16 v7, 0x3a

    const/4 v1, 0x0

    .line 1633
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1634
    .local v2, key:Ljava/lang/String;
    const-string v5, "pref_set_resolution"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1635
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->selectResolution(Landroid/preference/Preference;)V

    .line 1748
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1637
    .restart local p1
    :cond_1
    const-string v5, "pref_capture_format_video"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1638
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    .line 1639
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateResolution()V

    goto :goto_0

    .line 1640
    :cond_2
    const-string v5, "pref_set_white_balance"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1641
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->selectWhiteBalance(Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 1642
    .restart local p1
    :cond_3
    const-string v5, "pref_camera_self_timer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1644
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    .line 1645
    if-eqz p2, :cond_4

    .line 1646
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1647
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const v5, 0x7f0a014a

    const/4 v6, 0x0

    invoke-static {v4, v8, v5, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1652
    :cond_4
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v4, :cond_5

    .line 1653
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v4

    new-instance v5, Lcom/android/camera/OneValueEvent;

    const-string v6, "SelfTimer.Changed"

    iget-object v7, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 1655
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1656
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateSmileCapture()V

    goto :goto_0

    .line 1657
    :cond_6
    const-string v5, "pref_camera_face_number"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1659
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    .line 1660
    if-eqz p2, :cond_7

    .line 1661
    if-ne p2, v4, :cond_8

    const v3, 0x7f0a014b

    .line 1663
    .local v3, str:I
    :goto_1
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1664
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-static {v4, v8, v3, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1667
    .end local v3           #str:I
    :cond_7
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1668
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1670
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x23

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1671
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x23

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1661
    :cond_8
    const v3, 0x7f0a014c

    goto :goto_1

    .line 1672
    :cond_9
    const-string v5, "pref_camera_iso"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1673
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, p1

    .line 1674
    check-cast v4, Landroid/preference/ListPreference;

    invoke-direct {p0, v4}, Lcom/android/camera/OnScreenPreference;->backupISOSettings_DOT(Landroid/preference/ListPreference;)V

    .line 1676
    :cond_a
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v4, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1677
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v1, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1678
    .restart local p1
    :cond_b
    const-string v5, "pref_camera_review_duration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1679
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    .line 1680
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    .line 1681
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v4

    const-string v5, "SameMenuItem.Selected"

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1682
    .restart local p1
    :cond_c
    const-string v5, "pref_camera_3D_file_format"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1684
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    .line 1685
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0

    .line 1686
    .restart local p1
    :cond_d
    const-string v5, "pref_camera_video_file_format"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1688
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    .line 1689
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0

    .line 1692
    .restart local p1
    :cond_e
    const-string v5, "pref_camera_effect"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1694
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    .line 1695
    .local v0, effectManager:Lcom/android/camera/effect/EffectManager;
    if-eqz v0, :cond_f

    .line 1696
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/effect/EffectManager;->setCurrentEffect(Ljava/lang/String;)V

    .line 1697
    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v1, v4

    .line 1698
    .local v1, enable:Z
    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableImageProperty(Z)Z

    .line 1699
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableSceneOptions(Z)Z

    .line 1700
    invoke-virtual {p0, v4}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    goto/16 :goto_0

    .line 1702
    .end local v0           #effectManager:Lcom/android/camera/effect/EffectManager;
    .end local v1           #enable:Z
    .restart local p1
    :cond_11
    const-string v5, "pref_video_effect"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1704
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    .line 1705
    .restart local v0       #effectManager:Lcom/android/camera/effect/EffectManager;
    if-eqz v0, :cond_12

    .line 1706
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/effect/EffectManager;->setCurrentEffect(Ljava/lang/String;)V

    .line 1707
    :cond_12
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v1, v4

    .line 1708
    .restart local v1       #enable:Z
    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableImageProperty(Z)Z

    .line 1709
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableSceneOptions(Z)Z

    .line 1710
    invoke-virtual {p0, v4}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    goto/16 :goto_0

    .line 1715
    .end local v0           #effectManager:Lcom/android/camera/effect/EffectManager;
    .end local v1           #enable:Z
    .restart local p1
    :cond_14
    const-string v4, "pref_camera_scene"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v4, p1

    .line 1717
    check-cast v4, Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "B_whiteboard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1719
    const-string v5, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vino SET_GE_WHITEBOARD:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p1

    check-cast v4, Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "auto"

    invoke-static {v4, v7, v1, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1721
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    const-string v6, "none"

    invoke-static {v4, v5, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1722
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x3e

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1733
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkSceneSetting()V

    goto/16 :goto_0

    .line 1726
    .restart local p1
    :cond_15
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "auto"

    invoke-static {v4, v7, v1, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1727
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    const-string v6, "none"

    invoke-static {v4, v5, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1728
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v4, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1729
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    move-object v4, p1

    check-cast v4, Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v7, v1, v1, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1730
    const-string v4, "OnScreenPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vino SET_SCENE_MODE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1735
    .restart local p1
    :cond_16
    const-string v4, "pref_video_scene"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1737
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v4, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1738
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v1, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1739
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkSceneSetting()V

    goto/16 :goto_0

    .line 1741
    .restart local p1
    :cond_17
    const-string v4, "pref_camera_storage_location"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1743
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    .line 1744
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x35

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1747
    :cond_18
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0
.end method

.method public onPreferenceUpdated(Landroid/preference/Preference;)V
    .locals 2
    .parameter "prefence"

    .prologue
    .line 1515
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, key:Ljava/lang/String;
    const-string v1, "pref_set_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1517
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->show_reset_dialog()V

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    const-string v1, "pref_camera_tutorial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1519
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    .line 1520
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->startCameraTutorial()V

    goto :goto_0

    .line 1522
    :cond_2
    const-string v1, "pref_auto_upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    .line 1526
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    .line 1527
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v1}, Lcom/android/camera/AutoUploader;->ShowAutoUploadSetting()V

    goto :goto_0
.end method

.method public releaseOnScreenPreference()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 140
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    .line 141
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 142
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    .line 143
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    .line 144
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    .line 145
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    .line 146
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    .line 147
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->closeDialog()V

    .line 148
    return-void
.end method

.method public rotateDialog(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1345
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    check-cast v0, Lcom/android/camera/rotate/RotateDialog;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 1346
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1348
    :cond_0
    return-void
.end method

.method public setupResolutionList()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    .line 936
    :cond_0
    return-void
.end method

.method public updateBlinkDetection()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2130
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v1, v4, :cond_1

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 2133
    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    .line 2136
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "pref_face_detection"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2138
    .local v0, face:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2139
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2140
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2146
    :goto_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 2143
    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2144
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateFaceDetection(Z)Z
    .locals 7
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2068
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getFaceNumber(Landroid/app/Activity;)I

    move-result v5

    if-lez v5, :cond_1

    .line 2102
    :cond_0
    :goto_0
    return v4

    .line 2071
    :cond_1
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "pref_camera_auto_focus"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2076
    .local v0, auto:Landroid/preference/CheckBoxPreference;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2077
    :cond_2
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 2080
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v5, v6, :cond_5

    :cond_3
    move v1, v3

    .line 2081
    .local v1, autoFocus:Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v5

    if-nez v5, :cond_6

    move v2, v3

    .line 2092
    .local v2, enable:Z
    :goto_2
    if-nez p1, :cond_4

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    if-eq v5, v2, :cond_0

    .line 2095
    :cond_4
    if-eqz v2, :cond_a

    .line 2096
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2097
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_3
    move v4, v3

    .line 2102
    goto :goto_0

    .end local v1           #autoFocus:Z
    .end local v2           #enable:Z
    :cond_5
    move v1, v4

    .line 2080
    goto :goto_1

    .restart local v1       #autoFocus:Z
    :cond_6
    move v2, v4

    .line 2081
    goto :goto_2

    .line 2084
    .end local v1           #autoFocus:Z
    :cond_7
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 2087
    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v5, v6, :cond_8

    move v1, v3

    .line 2088
    .restart local v1       #autoFocus:Z
    :goto_4
    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v5

    if-nez v5, :cond_9

    move v2, v3

    .restart local v2       #enable:Z
    :goto_5
    goto :goto_2

    .end local v1           #autoFocus:Z
    .end local v2           #enable:Z
    :cond_8
    move v1, v4

    .line 2087
    goto :goto_4

    .restart local v1       #autoFocus:Z
    :cond_9
    move v2, v4

    .line 2088
    goto :goto_5

    .line 2099
    .restart local v2       #enable:Z
    :cond_a
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2100
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method public updateSmileCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2108
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v2, v5, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    .line 2114
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2115
    .local v1, timer:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_face_detection"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2117
    .local v0, face:Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_2

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2118
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2119
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2125
    :goto_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 2122
    :cond_3
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2123
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method
