.class public Lcom/htc/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/VolumePanel$SoundPoolHelp;,
        Lcom/htc/view/VolumePanel$SoundID;,
        Lcom/htc/view/VolumePanel$StreamControl;,
        Lcom/htc/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

#the value of this static final field might be set in the static constructor
.field private static final Debug_volporting:Z = false

.field private static final FREE_DELAY:I = 0x2710

#the value of this static final field might be set in the static constructor
.field private static final ICS_LAYOUT_COLOR_BG_DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ICS_LAYOUT_COLOR_DEBUG:Z = false

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_PLAY_SOUND_RETRY:I = 0x7

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Lcom/htc/view/VolumePanel$StreamResources; = null

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final mNewStyle:Z


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field mIconWidth:I

.field private final mMoreButton:Landroid/view/View;

.field private mNewSkinPackage:Ljava/lang/String;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRes:Landroid/content/res/Resources;

.field private final mRetryDelay:I

.field private final mRetryDuratinons:I

.field private mRetryTimes:I

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private mSkinRes:Landroid/content/res/Resources;

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field m_HtcDimension_m1:I

.field m_HtcDimension_m2:I

.field m_HtcDimension_m4:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    sput-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    .line 135
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v3, 0x407f5c29

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    .line 312
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/view/VolumePanel$StreamResources;

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v2

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    sput-object v0, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    .line 470
    const-string v0, "volPorting"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->Debug_volporting:Z

    .line 471
    const-string v0, "volLayoutD"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    .line 472
    const-string v0, "volLayoutBGD"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 15
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 523
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 152
    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 342
    const/16 v10, 0x32

    iput v10, p0, Lcom/htc/view/VolumePanel;->mRetryDelay:I

    .line 343
    const/16 v10, 0x3e8

    iput v10, p0, Lcom/htc/view/VolumePanel;->mRetryDuratinons:I

    .line 344
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->mRetryTimes:I

    .line 467
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 468
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    .line 469
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 519
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 520
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 521
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 522
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    .line 524
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 525
    const-string v10, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 526
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 528
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110023

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    .line 531
    const-string v10, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 534
    .local v3, inflater:Landroid/view/LayoutInflater;
    sget-boolean v10, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v10, :cond_0

    .line 536
    const-string v10, "VolumePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VolumePanel initial in HTC sense = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    const v10, 0x10900ca

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    .line 540
    .local v7, view:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v11, Lcom/htc/view/VolumePanel$1;

    invoke-direct {v11, p0}, Lcom/htc/view/VolumePanel$1;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 547
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x102032e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 549
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 550
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 551
    .local v9, wm:Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 552
    const-string v10, "VolumePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dm.widthPixels: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dm.heightPixels "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x102032f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 557
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x1020331

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 558
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x1020330

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 560
    sget-boolean v10, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v10, :cond_1

    .line 561
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->initSense40Panelayout(Landroid/util/DisplayMetrics;)V

    .line 585
    :goto_0
    new-instance v10, Lcom/htc/view/VolumePanel$2;

    const v11, 0x10302fa

    move-object/from16 v0, p1

    invoke-direct {v10, p0, v0, v11}, Lcom/htc/view/VolumePanel$2;-><init>(Lcom/htc/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 594
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v11, "Volume control"

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v11, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 596
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v11, Lcom/htc/view/VolumePanel$3;

    invoke-direct {v11, p0}, Lcom/htc/view/VolumePanel$3;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 603
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 604
    .local v8, window:Landroid/view/Window;
    const/16 v10, 0x30

    invoke-virtual {v8, v10}, Landroid/view/Window;->setGravity(I)V

    .line 605
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 606
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 608
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050044

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 610
    const/16 v10, 0x7e4

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 611
    const/4 v10, -0x2

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 612
    const/4 v10, -0x2

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 613
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v10, v10, -0x5

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 614
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v10, v10, -0x3

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 615
    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 616
    const v10, 0x40028

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 619
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    new-array v10, v10, [Landroid/media/ToneGenerator;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 620
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    new-array v10, v10, [Lcom/htc/view/VolumePanel$SoundPoolHelp;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    .line 621
    new-instance v10, Landroid/os/Vibrator;

    invoke-direct {v10}, Landroid/os/Vibrator;-><init>()V

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110023

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    .line 624
    iget-boolean v10, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 626
    iget-boolean v10, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v10, :cond_4

    .line 627
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :goto_2
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->listenToRingerMode()V

    .line 633
    return-void

    .line 564
    .end local v4           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #window:Landroid/view/Window;
    :cond_1
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v10, v11, :cond_2

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 567
    .local v5, panelWidth:I
    :goto_3
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 568
    .local v6, param:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 569
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "popup_full_dark"

    const-string v13, "drawable"

    const-string v14, "com.htc"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 572
    :try_start_0
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "common_divider"

    const-string v13, "drawable"

    const-string v14, "com.htc"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 573
    :catch_0
    move-exception v2

    .line 574
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v10, "VolumePanel"

    const-string v11, "common_divider not found"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 564
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v5           #panelWidth:I
    .end local v6           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_3

    .line 624
    .restart local v4       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v8       #window:Landroid/view/Window;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 630
    :cond_4
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 948
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 961
    :cond_0
    return-void

    .line 950
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 952
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    .line 953
    .local v2, streamType:I
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 950
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 956
    :cond_3
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/VolumePanel$StreamControl;

    .line 957
    .local v1, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 958
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 959
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 11
    .parameter "streamType"

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x2

    .line 1298
    monitor-enter p0

    .line 1299
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_2

    .line 1300
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v2, listSrcFile:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x7

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "/system/media/audio/ui/Volume-1.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "/system/media/audio/ui/Volume-2.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "/system/media/audio/ui/Volume-3.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "/system/media/audio/ui/Volume-4.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "/system/media/audio/ui/Volume-5.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "/system/media/audio/ui/Volume-6.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "/system/media/audio/ui/Volume-7.mp3"

    aput-object v1, v9, v0

    .line 1310
    .local v9, effectSound:[Ljava/lang/String;
    const-string v0, "VolumePanel"

    const-string v1, "prepare sound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v9

    if-ge v10, v0, :cond_1

    .line 1312
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare sound"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v9, v10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    aget-object v0, v9, v10

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1315
    :cond_1
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v0, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v0, v6, p1

    monitor-exit p0

    move-object v3, v0

    .line 1318
    .end local v2           #listSrcFile:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #effectSound:[Ljava/lang/String;
    .end local v10           #i:I
    :goto_1
    return-object v3

    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v3, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v3, v0, p1

    monitor-exit p0

    goto :goto_1

    .line 1322
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1016
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1019
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1020
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1022
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 25

    .prologue
    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "mode_ringer_streams_affected"

    const/16 v22, 0x24

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 764
    .local v15, silentableStreams:I
    or-int/lit8 v15, v15, 0x8

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 768
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->getSkinPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->setSkinRes()V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 773
    .local v7, inflater:Landroid/view/LayoutInflater;
    new-instance v20, Ljava/util/HashMap;

    sget-object v21, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 775
    .local v13, res:Landroid/content/res/Resources;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget-object v20, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_e

    .line 776
    sget-object v20, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v16, v20, v6

    .line 777
    .local v16, streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    move/from16 v17, v0

    .line 778
    .local v17, streamType:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    sget-object v20, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 779
    sget-object v16, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 781
    :cond_0
    new-instance v14, Lcom/htc/view/VolumePanel$StreamControl;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Lcom/htc/view/VolumePanel$StreamControl;-><init>(Lcom/htc/view/VolumePanel;Lcom/htc/view/VolumePanel$1;)V

    .line 782
    .local v14, sc:Lcom/htc/view/VolumePanel$StreamControl;
    move/from16 v0, v17

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    .line 783
    const v20, 0x10900cb

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 784
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 786
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x1020330

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    .line 787
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 789
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x102031f

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    .line 790
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 791
    sget-boolean v20, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v20, :cond_1

    .line 792
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, -0x100

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 794
    :cond_1
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x1020332

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 795
    const/16 v20, 0x1

    iget v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    move/from16 v21, v0

    shl-int v20, v20, v21

    and-int v20, v20, v15

    if-eqz v20, :cond_2

    .line 796
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    :cond_2
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 799
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x106000d

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 800
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 801
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 802
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 803
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 804
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 805
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 807
    sget-boolean v20, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v20, :cond_3

    .line 808
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, -0xff0001

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 812
    :cond_3
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x102000b

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    .line 813
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    .line 814
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 815
    sget-boolean v20, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v20, :cond_4

    .line 816
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/high16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 818
    :cond_4
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x10202d9

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/SeekBar;

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 819
    sget-boolean v20, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v20, :cond_5

    .line 820
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    const/16 v21, -0x100

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 821
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->getVolumeThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 822
    .local v4, dwThum:Landroid/graphics/drawable/Drawable;
    sget-boolean v20, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v20, :cond_b

    .line 826
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 827
    .local v11, param:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 828
    const/16 v20, -0x2

    move/from16 v0, v20

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 829
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    const-string v20, "VolumePanel"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "set icon width="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/16 v18, 0x2c

    .line 833
    .local v18, thumbDefaultDebugWidth:I
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 835
    .local v19, thumbWidth:I
    :goto_1
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 836
    if-eqz v13, :cond_7

    .line 838
    const/4 v9, 0x0

    .line 839
    .local v9, list_primary_m:F
    const/4 v8, 0x0

    .line 841
    .local v8, list_item_primary_text:I
    :try_start_0
    const-string v20, "list_primary_m"

    const-string v21, "dimen"

    const-string v22, "com.htc"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 842
    const-string v20, "list_primary"

    const-string v21, "color"

    const-string v22, "com.htc"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 843
    sget-boolean v20, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v20, :cond_6

    .line 844
    const-string v20, "VolumePanel"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "font size (list_primary_m): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :cond_6
    :goto_2
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 852
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 854
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x3dcccccd

    const/high16 v22, 0x3f80

    const/high16 v23, 0x3f80

    const/16 v24, -0x1

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 857
    .end local v8           #list_item_primary_text:I
    .end local v9           #list_primary_m:F
    :cond_7
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 858
    .local v10, m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v20, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    move/from16 v21, v0

    div-int/lit8 v22, v19, 0x2

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 859
    sget-boolean v20, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v20, :cond_8

    .line 860
    const-string v20, "VolumePanel"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "volumeStreamText.setMargins "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    div-int/lit8 v22, v19, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_8
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 863
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 864
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 865
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    div-int/lit8 v21, v19, 0x2

    const/16 v22, 0x0

    div-int/lit8 v23, v19, 0x2

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 867
    :try_start_1
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "common_list_divider"

    const-string v23, "drawable"

    const-string v24, "com.htc"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 868
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "common_list_divider"

    const-string v23, "drawable"

    const-string v24, "com.htc"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 882
    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v18           #thumbDefaultDebugWidth:I
    .end local v19           #thumbWidth:I
    :goto_3
    const/16 v20, 0x6

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    if-nez v17, :cond_c

    :cond_9
    const/4 v12, 0x1

    .line 884
    .local v12, plusOne:I
    :goto_4
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v21

    add-int v21, v21, v12

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setMax(I)V

    .line 885
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 886
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 889
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel;->getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    if-eqz v4, :cond_d

    .line 891
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 896
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 833
    .end local v12           #plusOne:I
    .restart local v11       #param:Landroid/view/ViewGroup$LayoutParams;
    .restart local v18       #thumbDefaultDebugWidth:I
    :cond_a
    const/16 v19, 0x2c

    goto/16 :goto_1

    .line 846
    .restart local v8       #list_item_primary_text:I
    .restart local v9       #list_primary_m:F
    .restart local v19       #thumbWidth:I
    :catch_0
    move-exception v5

    .line 847
    .local v5, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "VolumePanel"

    const-string v21, "fail to get font stytle"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/high16 v9, 0x41d0

    .line 849
    const v8, 0x424140

    goto/16 :goto_2

    .line 869
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v8           #list_item_primary_text:I
    .end local v9           #list_primary_m:F
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    :catch_1
    move-exception v5

    .line 870
    .restart local v5       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "VolumePanel"

    const-string v21, "sc.line_divider:common_list_divider not found"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 874
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v18           #thumbDefaultDebugWidth:I
    .end local v19           #thumbWidth:I
    :cond_b
    :try_start_2
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "zzz_common_review_divider"

    const-string v23, "drawable"

    const-string v24, "android"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 875
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "zzz_common_review_divider"

    const-string v23, "drawable"

    const-string v24, "android"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 876
    :catch_2
    move-exception v5

    .line 877
    .restart local v5       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "VolumePanel"

    const-string v21, "sc.line_divider:zzz_common_review_divider not found"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 882
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 893
    .restart local v12       #plusOne:I
    :cond_d
    const-string v20, "VolumePanel"

    const-string v21, "Seek bar HTC Thumb load fail"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 898
    .end local v4           #dwThum:Landroid/graphics/drawable/Drawable;
    .end local v12           #plusOne:I
    .end local v14           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    .end local v16           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    .end local v17           #streamType:I
    :cond_e
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1007
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1008
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1009
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1415
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1416
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1417
    return-void
.end method

.method private getGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1326
    monitor-enter p0

    .line 1327
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    monitor-exit p0

    return-object v0

    .line 1329
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getHtcSenseRes(Ljava/lang/String;I)I
    .locals 5
    .parameter "htcResName"
    .parameter "defResId"

    .prologue
    .line 748
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 754
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 750
    .restart local p2
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 751
    .local v1, resId:I
    if-eqz v1, :cond_0

    move p2, v1

    goto :goto_0

    .line 752
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 753
    .local v0, npeException:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1288
    monitor-enter p0

    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1290
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v0

    monitor-exit p0

    .line 1292
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 1294
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1272
    monitor-enter p0

    .line 1273
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1275
    :try_start_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1283
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1278
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1284
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "drawableName"
    .parameter "drawableID"

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 500
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 510
    :goto_0
    return-object v0

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "VolumePanel"

    const-string v3, "progress_horizontal or seek_thumb resource not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 476
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 478
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 479
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 483
    const-string v3, ""

    goto :goto_0
.end method

.method private getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "seekBar"

    .prologue
    .line 902
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 903
    .local v1, layer:Landroid/graphics/drawable/LayerDrawable;
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_progress_empty"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 904
    .local v3, progress_empty:I
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_progress_full"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 907
    .local v4, progress_full:I
    const-string v5, "common_progress_empty"

    invoke-direct {p0, v5, v3}, Lcom/htc/view/VolumePanel;->getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 908
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const-string v5, "common_progress_full"

    invoke-direct {p0, v5, v4}, Lcom/htc/view/VolumePanel;->getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-direct {v2, v5, v6, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 909
    .local v2, progress:Landroid/graphics/drawable/ClipDrawable;
    const/high16 v5, 0x102

    invoke-virtual {v1, v5, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 910
    const v5, 0x102000d

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 912
    return-object v1
.end method

.method private getVolumeThumb()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 917
    const/4 v1, 0x0

    .line 918
    .local v1, progress_button:I
    sget-boolean v3, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v3, :cond_0

    const-string v2, "common_progress_button"

    .line 919
    .local v2, strThumbDrawableName:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 921
    :try_start_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 924
    :goto_1
    return-object v3

    .line 918
    .end local v2           #strThumbDrawableName:Ljava/lang/String;
    :cond_0
    const-string v2, "common_music_progress_button"

    goto :goto_0

    .line 922
    .restart local v2       #strThumbDrawableName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 923
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assets not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initSense40Panelayout(Landroid/util/DisplayMetrics;)V
    .locals 13
    .parameter "dm"

    .prologue
    const/4 v12, 0x0

    .line 637
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 640
    .local v4, res:Landroid/content/res/Resources;
    :try_start_0
    const-string v7, "margin_l"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 641
    const-string v7, "margin_m"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 642
    const-string v7, "margin_xs"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 657
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "m1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,m2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m4="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    const/4 v6, 0x0

    .line 660
    .local v6, screenWidth:I
    const/4 v5, 0x0

    .line 661
    .local v5, screenHeight:I
    const/4 v0, 0x0

    .line 662
    .local v0, FootBarHeight:I
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 663
    const/16 v0, 0x30

    .line 666
    :cond_1
    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_7

    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v6, v7, v0

    .line 668
    :goto_1
    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_8

    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 671
    :goto_2
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_2

    .line 672
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dm.widthPixels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,dm.heightPixels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screenWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,screenHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_2
    const/4 v2, 0x0

    .line 677
    .local v2, panelWidth:I
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 678
    int-to-double v7, v6

    const-wide v9, 0x3fb1eb851eb851ecL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 679
    int-to-double v7, v6

    const-wide v9, 0x3fe3333333333333L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int v2, v5, v7

    .line 686
    :goto_3
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 687
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 688
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 692
    const/4 v7, -0x2

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 694
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_3

    .line 697
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changed panelWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIconWidths="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_3
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "popup_full_bright"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 703
    sget-boolean v7, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    if-eqz v7, :cond_4

    .line 705
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 710
    :cond_4
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 711
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 712
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    iget v11, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 718
    :goto_4
    :try_start_1
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "common_list_divider"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 722
    :goto_5
    sget-boolean v7, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v7, :cond_5

    .line 725
    :cond_5
    return-void

    .line 643
    .end local v0           #FootBarHeight:I
    .end local v2           #panelWidth:I
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #screenHeight:I
    .end local v6           #screenWidth:I
    :catch_0
    move-exception v1

    .line 645
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "VolumePanel"

    const-string v8, "##################getDimension(res.getIdentifier(\"margin_l\") fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 647
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 648
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 649
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    goto/16 :goto_0

    .line 651
    :cond_6
    const/16 v7, 0x16

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 652
    const/16 v7, 0x10

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 653
    const/16 v7, 0x9

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    goto/16 :goto_0

    .line 666
    .end local v1           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #FootBarHeight:I
    .restart local v5       #screenHeight:I
    .restart local v6       #screenWidth:I
    :cond_7
    iget v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_1

    .line 668
    :cond_8
    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v5, v7, v0

    goto/16 :goto_2

    .line 681
    .restart local v2       #panelWidth:I
    :cond_9
    div-int/lit8 v7, v6, 0x6

    iput v7, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 682
    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    goto/16 :goto_3

    .line 714
    .restart local v3       #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    mul-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    mul-int/lit8 v10, v10, 0x2

    iget v11, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    .line 719
    :catch_1
    move-exception v1

    .line 720
    .restart local v1       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "VolumePanel"

    const-string v8, "mDivider:common_list_divider not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 727
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 728
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lcom/htc/view/VolumePanel$4;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 740
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 930
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 932
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 933
    .local v0, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 934
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 944
    :goto_0
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->addOtherVolumes()V

    .line 945
    return-void

    .line 937
    :cond_0
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 938
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 939
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 940
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 941
    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1410
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1411
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1412
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 5
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1339
    :try_start_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1340
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1341
    .local v0, index:I
    if-eqz v2, :cond_1

    .line 1342
    iput p1, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 1343
    iput p2, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1344
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1351
    .end local v0           #index:I
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_1
    :goto_1
    return-void

    .line 1344
    .restart local v0       #index:I
    .restart local v2       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_2
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1348
    .end local v0           #index:I
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :catch_0
    move-exception v1

    .line 1349
    .local v1, npeException:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private setSkinRes()V
    .locals 4

    .prologue
    .line 487
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No skin package matches with the given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V
    .locals 9
    .parameter "sc"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 965
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 966
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v1

    .line 968
    .local v1, muted:Z
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v3, v7, :cond_1

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v3, v8, :cond_5

    :cond_0
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v3, :cond_5

    :cond_1
    if-eqz v1, :cond_5

    .line 969
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 973
    :goto_0
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 974
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 975
    :cond_2
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 977
    iget-object v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 978
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v3, v7, :cond_4

    .line 979
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 980
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    if-nez v3, :cond_3

    .line 981
    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcVibrateName:Ljava/lang/String;

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    invoke-direct {p0, v3, v4}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 983
    :cond_3
    iput v6, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 984
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1000
    :cond_4
    :goto_2
    return-void

    .line 971
    :cond_5
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 977
    :cond_6
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    .line 987
    :cond_7
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    .line 988
    .local v2, ringerMode:I
    const/4 v0, 0x3

    .line 989
    .local v0, RINGER_MODE_OUTDOOR:I
    if-ne v2, v8, :cond_4

    .line 990
    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    if-nez v3, :cond_8

    .line 991
    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcOutdoorName:Ljava/lang/String;

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    invoke-direct {p0, v3, v4}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v3

    iput v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 993
    :cond_8
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 1025
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1026
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1027
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1028
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1366
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1369
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1374
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1379
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1384
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1389
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1394
    :pswitch_5
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1396
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1401
    :pswitch_6
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected internalPlaySound(IIZ)V
    .locals 4
    .parameter "streamType"
    .parameter "nInsex"
    .parameter "bCreatePlayer"

    .prologue
    .line 1225
    monitor-enter p0

    .line 1226
    const/4 v1, 0x0

    .line 1227
    .local v1, soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz p3, :cond_0

    .line 1228
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v1

    .line 1231
    :goto_0
    if-nez v1, :cond_1

    .line 1232
    const-string v2, "VolumePanel"

    const-string v3, "soundPoolHelp released abort retry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    monitor-exit p0

    .line 1237
    :goto_1
    return-void

    .line 1230
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v1

    goto :goto_0

    .line 1236
    :cond_1
    invoke-virtual {v1, p2}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnplay(I)I

    move-result v0

    .line 1237
    .local v0, nRet:I
    monitor-exit p0

    goto :goto_1

    .line 1241
    .end local v0           #nRet:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1521
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v3, :cond_2

    .line 1522
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->expand()V

    .line 1592
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1593
    :cond_1
    return-void

    .line 1523
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v3, :cond_0

    .line 1524
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1527
    .local v1, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v3, v8, :cond_1

    .line 1533
    iget v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    .line 1535
    sget-boolean v3, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_3

    .line 1536
    const-string v3, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick sc.seekbarView.getProgress() = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_3
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-nez v3, :cond_6

    .line 1539
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1540
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 1541
    .local v2, volume:I
    if-nez v2, :cond_4

    const/4 v2, 0x1

    .line 1542
    :cond_4
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1543
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1550
    .end local v2           #volume:I
    :goto_1
    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v3, v4}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    .line 1590
    :cond_5
    :goto_2
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->expand()V

    goto/16 :goto_0

    .line 1547
    :cond_6
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v5, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1548
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 1560
    :cond_7
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1561
    .local v0, ringerMode:I
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_8

    move v3, v4

    :goto_3
    invoke-virtual {v7, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1564
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v5, :cond_a

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_a

    .line 1566
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1567
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, v1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2

    .line 1561
    :cond_8
    if-ne v0, v4, :cond_9

    move v3, v5

    goto :goto_3

    :cond_9
    move v3, v6

    goto :goto_3

    .line 1569
    :cond_a
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3, v6}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1571
    invoke-virtual {p0, v8}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1354
    monitor-enter p0

    .line 1355
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1356
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1357
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->release()V

    .line 1359
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1355
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1361
    :cond_1
    monitor-exit p0

    .line 1362
    return-void

    .line 1361
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x3

    .line 1202
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1203
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlaySound(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1207
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1209
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1213
    :cond_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 1214
    .local v0, index:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/view/VolumePanel;->mRetryTimes:I

    .line 1215
    if-lez v0, :cond_2

    .line 1219
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/view/VolumePanel;->internalPlaySound(IIZ)V

    .line 1221
    :cond_2
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1421
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 1423
    const-string v3, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged progress = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sStreamType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    iget v2, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const-string v3, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged streamVolume = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    iget v2, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1428
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_3

    instance-of v2, v1, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 1429
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1431
    .local v0, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 1434
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1436
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1438
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, v7}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1443
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1444
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v2, v6, :cond_2

    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v2, :cond_3

    .line 1448
    :cond_2
    invoke-virtual {p0, v6}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1449
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p0, v6, v2, v7}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1454
    .end local v0           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_3
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1455
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1083
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 1086
    .local v0, index:I
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq p1, v9, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_0

    if-ne p1, v10, :cond_2

    :cond_0
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v4, :cond_2

    .line 1087
    :cond_1
    const/4 v0, 0x0

    .line 1092
    :cond_2
    iput-boolean v8, p0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    .line 1094
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_3

    .line 1095
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShowVolumeChanged(streamType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_3
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v1

    .line 1103
    .local v1, max:I
    packed-switch p1, :pswitch_data_0

    .line 1173
    :cond_4
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1174
    .local v3, sc:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_6

    .line 1175
    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 1176
    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1178
    :cond_5
    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1181
    :cond_6
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1182
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1183
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1185
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_7

    .line 1186
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->collapse()V

    .line 1188
    :cond_7
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1192
    :cond_8
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_9

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, v8}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1196
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1198
    :cond_9
    return-void

    .line 1107
    .end local v3           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1109
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_4

    .line 1110
    iput-boolean v7, p0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    goto :goto_0

    .line 1117
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_2
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v10}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_a

    .line 1121
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v6, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v6, v6, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v5, v6}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1127
    :cond_a
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v6, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v6, v6, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v5, v6}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1142
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 1143
    add-int/lit8 v1, v1, 0x1

    .line 1144
    goto/16 :goto_0

    .line 1148
    :pswitch_4
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 1149
    goto/16 :goto_0

    .line 1153
    :pswitch_5
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1155
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_4

    .line 1156
    iput-boolean v7, p0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1167
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1506
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1247
    monitor-enter p0

    .line 1248
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1249
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1250
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v2, v3, v0

    .line 1251
    .local v2, soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz v2, :cond_0

    .line 1252
    invoke-virtual {v2}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnstop()V

    .line 1249
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1255
    .end local v2           #soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    :cond_1
    monitor-exit p0

    .line 1256
    return-void

    .line 1255
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 1511
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1512
    .local v0, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-nez v1, :cond_0

    .line 1513
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-nez v1, :cond_0

    .line 1514
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1518
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1266
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1048
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 1052
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_2

    .line 1054
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->reorderSliders(I)V

    .line 1056
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1059
    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    .line 1062
    invoke-virtual {p0, v3}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1063
    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1066
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 1067
    invoke-virtual {p0, v3}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1068
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1069
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1072
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1073
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1075
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1076
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 1033
    invoke-virtual {p0, v1}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    :goto_0
    return-void

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1035
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createSliders()V

    .line 1037
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1038
    invoke-virtual {p0, v1, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public resetProgressBar(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 516
    return-void
.end method

.method public updateSlientSetting(II)V
    .locals 6
    .parameter "VolumeSetting"
    .parameter "sStreamType"

    .prologue
    const/4 v5, 0x2

    .line 1461
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlientSetting VolumeSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sStreamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_0
    if-eq p2, v5, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v2, :cond_3

    .line 1502
    :cond_2
    :goto_0
    return-void

    .line 1472
    :cond_3
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1473
    .local v0, currentSlientSetting:I
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlientSetting currentSlientSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1484
    :pswitch_0
    if-lez p1, :cond_5

    .line 1486
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1478
    :pswitch_1
    if-nez p1, :cond_2

    .line 1480
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1490
    :cond_5
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 1491
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1492
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1496
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :pswitch_2
    if-lez p1, :cond_2

    .line 1498
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
