.class final Lcom/android/camera/MovieModeHandler;
.super Lcom/android/camera/ModeHandler;
.source "MovieModeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieModeHandler"

.field private static mResolutionSet_2nd:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mResolutionSet_3D:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mResolutionSet_Main:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mSingleton:Lcom/android/camera/MovieModeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    .line 19
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 21
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 25
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_1

    .line 27
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->apply720PPreview()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    :cond_2
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_3
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 35
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v0

    if-ne v0, v2, :cond_a

    .line 47
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1080p()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_6
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_7

    .line 52
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_7
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_8

    .line 54
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_8
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_9

    .line 58
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_9
    :goto_0
    return-void

    .line 61
    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x60()Z

    move-result v0

    if-ne v0, v2, :cond_e

    .line 62
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_b

    .line 63
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensor()Z

    move-result v0

    if-eq v0, v2, :cond_c

    .line 67
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_c
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_d

    .line 71
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_d
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_9

    .line 76
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_e
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_f

    .line 83
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGARecording()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_HVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_f
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_9

    .line 89
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/android/camera/ModeHandler;-><init>()V

    .line 359
    return-void
.end method

.method static getMovieModeHandler()Lcom/android/camera/MovieModeHandler;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/android/camera/MovieModeHandler;

    invoke-direct {v0}, Lcom/android/camera/MovieModeHandler;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    .line 368
    :cond_0
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    return-object v0
.end method


# virtual methods
.method public IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z
    .locals 2
    .parameter "camera"

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v0

    .line 349
    .local v0, r:Lcom/android/camera/Resolution;
    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :cond_0
    const/4 v1, 0x1

    .line 353
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;
    .locals 5
    .parameter "camera"

    .prologue
    const/4 v4, 0x1

    .line 235
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 237
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_1

    .line 239
    invoke-static {}, Lcom/android/camera/IntentManager;->getMMS_isVideoQVGA()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 240
    const-string v2, "MovieModeHandler"

    const-string v3, "Mms custom request - QVGA"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v2, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    .line 335
    :goto_0
    return-object v2

    .line 243
    :cond_0
    const-string v2, "MovieModeHandler"

    const-string v3, "Mms custom request - QCIF"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 247
    :cond_1
    const-string v2, "MovieModeHandler"

    const-string v3, "Mms request - resolution setting is QCIF"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 250
    :cond_2
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 252
    const-string v2, "MovieModeHandler"

    const-string v3, "CU request - resolution setting is QCIF"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 256
    :cond_3
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 258
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 259
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 262
    :cond_4
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 265
    :cond_5
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 267
    :cond_6
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_d

    invoke-static {}, Lcom/android/camera/IntentManager;->hasVideoQuality()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 270
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v2

    if-ne v2, v4, :cond_c

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/camera/MovieModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, key:Ljava/lang/String;
    const-string v2, "pref_capture_resolution_video_2nd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 275
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 276
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 278
    :cond_7
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 280
    :cond_8
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-eq v2, v3, :cond_9

    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->HD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_a

    .line 282
    :cond_9
    sget-object v2, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 283
    :cond_a
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_b

    .line 284
    sget-object v2, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 286
    :cond_b
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 289
    .end local v0           #key:Ljava/lang/String;
    :cond_c
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 296
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/camera/MovieModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .restart local v0       #key:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_e

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 300
    :cond_e
    const-string v2, "pref_capture_resolution_video_2nd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 302
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDefaultQuality720p()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_10

    .line 303
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    .line 331
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 335
    :cond_f
    invoke-static {p1, v1}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 305
    :cond_10
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 308
    :cond_11
    const-string v2, "pref_capture_resolution_video_3D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 310
    sget-object v2, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 313
    :cond_12
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDefaultQuality1080pMainCam()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 314
    sget-object v2, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 315
    :cond_13
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDefaultQuality720p()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 316
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 317
    :cond_14
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_15

    .line 318
    sget-object v2, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 319
    :cond_15
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_16

    .line 320
    sget-object v2, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 321
    :cond_16
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_18

    .line 323
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGARecording()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 324
    sget-object v2, Lcom/android/camera/Resolution;->Video_HVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 326
    :cond_17
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 329
    :cond_18
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getResolutionMenuItem(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;
    .locals 8
    .parameter "camera"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 118
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 121
    .local v3, items:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v6

    if-ne v6, v7, :cond_1

    .line 122
    const-string v6, "MovieModeHandler"

    const-string v7, "Mms request - resolution menu has only QCIF"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v5, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    .line 124
    .local v5, r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v6, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v7, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v6, v7, :cond_0

    .line 126
    sget-object v5, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    .line 127
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_0
    :goto_0
    return-object v3

    .line 131
    :cond_1
    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 133
    const-string v6, "MovieModeHandler"

    const-string v7, "CU request - resolution menu has only QCIF"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v5, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    .line 135
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_2
    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v6

    if-ne v6, v7, :cond_5

    .line 141
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 142
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 144
    sget-object v5, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    .line 145
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_3
    sget-object v5, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    .line 150
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_4
    sget-object v5, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    .line 155
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_5
    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v6

    if-ne v6, v7, :cond_c

    invoke-static {}, Lcom/android/camera/IntentManager;->hasVideoQuality()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 162
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v6

    if-ne v6, v7, :cond_b

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/camera/MovieModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, key:Ljava/lang/String;
    const-string v6, "pref_capture_resolution_video_2nd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 167
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 168
    sget-object v5, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    .line 169
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_6
    sget-object v5, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    .line 174
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 178
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_7
    sget-object v6, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v7, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-eq v6, v7, :cond_8

    sget-object v6, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v7, Lcom/android/camera/DisplayDevice$Resolution;->HD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v6, v7, :cond_9

    .line 181
    :cond_8
    sget-object v5, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    .line 182
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 185
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_9
    sget-object v6, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v7, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v6, v7, :cond_a

    .line 187
    sget-object v5, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    .line 188
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 193
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_a
    sget-object v5, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    .line 194
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 199
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_b
    sget-object v5, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    .line 200
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 205
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_c
    const-string v6, "pref_camera_switch"

    invoke-static {p1, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 206
    .local v1, bSwitchCamera:Z
    const-string v6, "pref_camera_3D_status"

    invoke-static {p1, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 208
    .local v0, bIs3DMode:Z
    if-ne v1, v7, :cond_d

    .line 209
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v6, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 210
    sget-object v6, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/Resolution;

    .line 211
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    .end local v2           #i:I
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz v0, :cond_e

    .line 217
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    sget-object v6, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 218
    sget-object v6, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/Resolution;

    .line 219
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 223
    .end local v2           #i:I
    .end local v5           #r:Lcom/android/camera/Resolution;
    :cond_e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    sget-object v6, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 224
    sget-object v6, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/Resolution;

    .line 225
    .restart local v5       #r:Lcom/android/camera/Resolution;
    new-instance v6, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
    .locals 4
    .parameter "camera"

    .prologue
    const/4 v3, 0x1

    .line 97
    const-string v2, "pref_camera_switch"

    invoke-static {p1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 98
    .local v1, bSwitchCamera:Z
    if-ne v1, v3, :cond_0

    .line 99
    const-string v2, "pref_capture_resolution_video_2nd"

    .line 110
    :goto_0
    return-object v2

    .line 103
    :cond_0
    const-string v2, "pref_camera_3D_status"

    invoke-static {p1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 104
    .local v0, bIs3DMode:Z
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, v3, :cond_1

    .line 106
    const-string v2, "pref_capture_resolution_video_3D"

    goto :goto_0

    .line 110
    :cond_1
    const-string v2, "pref_capture_resolution_video_main"

    goto :goto_0
.end method
