.class public Lcom/scalado/camera/autorama/Autorama;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaImage;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaListener;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;,
        Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;,
        Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;,
        Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;,
        Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;,
        Lcom/scalado/camera/autorama/Autorama$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State:[I = null

.field public static final DEFAULT_DIRECTION_TRIGGER:I = 0xa

.field public static final DEFAULT_MAX_DEVIATION:I = 0x64

.field public static final DEFAULT_OVERLAP:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"


# instance fields
.field private mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field private mAutoramaImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama/Autorama$AutoramaImage;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

.field mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

.field private mAutoramaPostviewImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama/Autorama$AutoramaImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Lcom/scalado/camera/Camera;

.field private mCapturedImages:I

.field private mCapturingFinished:Z

.field private mDirection:Lcom/scalado/caps/autorama/Direction;

.field private mFeatureImplementation:Lcom/scalado/camera/Feature$FeatureImplementation;

.field private mJpegCallbackHandler:Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

.field private mLastPreviewImage:Lcom/scalado/base/Image;

.field private mLens:Lcom/scalado/caps/autorama/Lens;

.field private mPostviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

.field private mPreviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

.field private mPreviewConfig:Lcom/scalado/base/Image$Config;

.field private mPreviewDimensions:Lcom/scalado/base/Size;

.field private mShutterCallbackHandler:Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

.field private mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

.field private mState:Lcom/scalado/camera/autorama/Autorama$State;

.field private mStopRequested:Z

.field private mTargetCoordinates:Landroid/graphics/Point;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

.field mTrackingX:F

.field mTrackingY:F

.field private mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method static synthetic $SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State()[I
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcom/scalado/camera/autorama/Autorama;->$SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scalado/camera/autorama/Autorama$State;->values()[Lcom/scalado/camera/autorama/Autorama$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->RENDERING:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/scalado/camera/autorama/Autorama;->$SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/scalado/caps/autorama/Lens;)V
    .locals 4
    .parameter "lens"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 472
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-direct {v0, p0}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    .line 248
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

    .line 249
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mShutterCallbackHandler:Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

    .line 250
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPostviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

    .line 251
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mJpegCallbackHandler:Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

    .line 258
    iput v2, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    .line 259
    iput v2, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    .line 473
    if-nez p1, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lens must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;

    .line 477
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 478
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    .line 479
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    .line 481
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mFeatureImplementation:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 483
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->reset()V

    .line 484
    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    return-void
.end method

.method static synthetic access$10(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->capture()V

    return-void
.end method

.method static synthetic access$11(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-void
.end method

.method static synthetic access$12(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    return-void
.end method

.method static synthetic access$13(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    return-object v0
.end method

.method static synthetic access$14(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Size;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;

    return-void
.end method

.method static synthetic access$15(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image$Config;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-void
.end method

.method static synthetic access$16(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;

    return-void
.end method

.method static synthetic access$17(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$18(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/autorama/Autorama;)I
    .locals 1
    .parameter

    .prologue
    .line 255
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    return v0
.end method

.method static synthetic access$20(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/ViewfinderTracker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    return-void
.end method

.method static synthetic access$21(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    return-void
.end method

.method static synthetic access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    return-object v0
.end method

.method static synthetic access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    return-object v0
.end method

.method static synthetic access$24(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    return-object v0
.end method

.method static synthetic access$25(Lcom/scalado/camera/autorama/Autorama;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    return-void
.end method

.method static synthetic access$26(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;

    return-void
.end method

.method static synthetic access$27(Lcom/scalado/camera/autorama/Autorama;)Z
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    return v0
.end method

.method static synthetic access$28(Lcom/scalado/camera/autorama/Autorama;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturingFinished:Z

    return-void
.end method

.method static synthetic access$29(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->stopTracking()V

    return-void
.end method

.method static synthetic access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic access$30(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$31(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;

    return-object v0
.end method

.method static synthetic access$32(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$33(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->restartPreview()V

    return-void
.end method

.method static synthetic access$34(Lcom/scalado/camera/autorama/Autorama;)Z
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturingFinished:Z

    return v0
.end method

.method static synthetic access$35(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V

    return-void
.end method

.method static synthetic access$36(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    return-void
.end method

.method static synthetic access$37(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->startTracking()V

    return-void
.end method

.method static synthetic access$39(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Lens;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;

    return-object v0
.end method

.method static synthetic access$4(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object v0
.end method

.method static synthetic access$40(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 797
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/camera/autorama/Autorama;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$42(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$43(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->reset()V

    return-void
.end method

.method static synthetic access$44(Lcom/scalado/camera/autorama/Autorama;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    return-object v0
.end method

.method static synthetic access$6(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$ShutterCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-void
.end method

.method static synthetic access$7(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$8(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$9(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method private capture()V
    .locals 5

    .prologue
    .line 682
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    if-ne v0, v1, :cond_0

    .line 683
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Autorama can not capture, already capturing. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    return-void

    .line 687
    :cond_0
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Start autorama capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    .line 689
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediateCaptureStart(I)V

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mShutterCallbackHandler:Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scalado/camera/autorama/Autorama;->mPostviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mJpegCallbackHandler:Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method private createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    .locals 11
    .parameter "lens"
    .parameter "direction"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scalado/caps/autorama/Lens;",
            "Lcom/scalado/caps/autorama/Direction;",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama/Autorama$AutoramaImage;",
            ">;)",
            "Lcom/scalado/caps/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, sources:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/camera/autorama/Autorama$AutoramaImage;>;"
    const/4 v10, 0x0

    .line 798
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 799
    const-string v6, "ScaladoCameraFramework"

    const-string v7, "No sources when rendering autorama."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No sources when rendering autorama."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 803
    :cond_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 804
    const-string v6, "ScaladoCameraFramework"

    const-string v7, "Only one source when rendering autorama. Returning session based on this single image."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {p3, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 808
    .local v0, decoder:Lcom/scalado/caps/Decoder;
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 844
    .end local v0           #decoder:Lcom/scalado/caps/Decoder;
    :goto_0
    return-object v4

    .line 812
    :cond_1
    sget-object v6, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne p2, v6, :cond_2

    .line 813
    const-string v6, "ScaladoCameraFramework"

    const-string v7, "Cannot complete stitch due to Direction UNKNOWN. Returning session based on this single image."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p3, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 817
    .restart local v0       #decoder:Lcom/scalado/caps/Decoder;
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 818
    .local v4, session:Lcom/scalado/caps/Session;
    goto :goto_0

    .line 822
    .end local v0           #decoder:Lcom/scalado/caps/Decoder;
    .end local v4           #session:Lcom/scalado/caps/Session;
    :cond_2
    new-instance v5, Lcom/scalado/caps/autorama/Stitcher;

    invoke-virtual {p3, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    invoke-direct {v5, p1, v6, p2}, Lcom/scalado/caps/autorama/Stitcher;-><init>(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Direction;)V

    .line 825
    .local v5, stitcher:Lcom/scalado/caps/autorama/Stitcher;
    sget-object v6, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq p2, v6, :cond_3

    sget-object v6, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne p2, v6, :cond_4

    .line 827
    :cond_3
    iget-object v6, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    invoke-static {v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$5(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    move-result-object v6

    new-instance v7, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    iget-object v8, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z
    invoke-static {v8}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$6(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v8

    iget-object v9, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z
    invoke-static {v9}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$7(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;-><init>(ZZ)V

    invoke-virtual {v5, v6, v7}, Lcom/scalado/caps/autorama/Stitcher;->setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;)V

    .line 834
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_5

    .line 839
    invoke-static {v5}, Lcom/scalado/caps/autorama/PanoramaDecoder;->create(Lcom/scalado/caps/autorama/Stitcher;)Lcom/scalado/base/Iterator;

    move-result-object v2

    .line 840
    .local v2, iterator:Lcom/scalado/base/Iterator;
    invoke-virtual {v2, v10}, Lcom/scalado/base/Iterator;->step(I)F

    .line 841
    invoke-virtual {v2}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/caps/autorama/PanoramaDecoder;

    .line 844
    .local v3, panoramaDecoder:Lcom/scalado/caps/autorama/PanoramaDecoder;
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    .line 830
    .end local v1           #i:I
    .end local v2           #iterator:Lcom/scalado/base/Iterator;
    .end local v3           #panoramaDecoder:Lcom/scalado/caps/autorama/PanoramaDecoder;
    :cond_4
    sget-object v6, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->LINEAR:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    new-instance v7, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    iget-object v8, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z
    invoke-static {v8}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$6(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v8

    iget-object v9, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z
    invoke-static {v9}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$7(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;-><init>(ZZ)V

    invoke-virtual {v5, v6, v7}, Lcom/scalado/caps/autorama/Stitcher;->setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;)V

    goto :goto_1

    .line 835
    .restart local v1       #i:I
    :cond_5
    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v6, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->addToStitcher(Lcom/scalado/caps/autorama/Stitcher;)V

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private panoramaCompleted()V
    .locals 3

    .prologue
    .line 697
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Panorama Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->RENDERING:Lcom/scalado/camera/autorama/Autorama$State;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    .line 701
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    invoke-interface {v0}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 709
    :cond_1
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$2;

    invoke-direct {v0, p0}, Lcom/scalado/camera/autorama/Autorama$2;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    .line 784
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 785
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 852
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    .line 853
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$1(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 860
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 863
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 865
    :cond_3
    iput v1, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    .line 866
    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    .line 867
    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturingFinished:Z

    .line 868
    return-void
.end method

.method private restartPreview()V
    .locals 4

    .prologue
    .line 650
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 651
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/scalado/camera/autorama/Autorama$1;

    invoke-direct {v1, p0}, Lcom/scalado/camera/autorama/Autorama$1;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    .line 659
    .local v1, timerTask:Ljava/util/TimerTask;
    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 660
    return-void
.end method

.method private startTracking()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

    invoke-interface {v0, v1}, Lcom/scalado/camera/Feature$FeatureSocket;->setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 667
    return-void
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/Feature$FeatureSocket;->setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 676
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 553
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_0

    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->stopTracking()V

    .line 562
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->reset()V

    .line 563
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDirection()Lcom/scalado/caps/autorama/Direction;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/Direction;->clone()Lcom/scalado/caps/autorama/Direction;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mFeatureImplementation:Lcom/scalado/camera/Feature$FeatureImplementation;

    return-object v0
.end method

.method public getLowResolutionPanorama(Z)Lcom/scalado/caps/Session;
    .locals 7
    .parameter "includeLatestPreview"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 591
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 592
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must wait until at least 1 image has been captured"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 595
    :cond_0
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 597
    .local v2, images:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/camera/autorama/Autorama$AutoramaImage;>;"
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 599
    .local v1, direction:Lcom/scalado/caps/autorama/Direction;
    if-eqz p1, :cond_7

    .line 601
    sget-object v4, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v1, v4, :cond_1

    .line 602
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-virtual {v4, v5}, Lcom/scalado/caps/autorama/Transform;->getDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    .line 605
    :cond_1
    sget-object v4, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v1, v4, :cond_b

    .line 606
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;

    if-eqz v4, :cond_a

    .line 608
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_8

    :cond_2
    iget v3, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    .line 609
    .local v3, relevantTrackingCoordinate:F
    :goto_0
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_4

    :cond_3
    cmpg-float v4, v3, v6

    if-ltz v4, :cond_6

    .line 610
    :cond_4
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_9

    :cond_5
    cmpl-float v4, v3, v6

    if-lez v4, :cond_9

    .line 611
    :cond_6
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-direct {v0, p0, v4, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    .line 612
    .local v0, autoramaImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 627
    .end local v0           #autoramaImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    .end local v3           #relevantTrackingCoordinate:F
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;

    invoke-direct {p0, v4, v1, v2}, Lcom/scalado/camera/autorama/Autorama;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;

    move-result-object v4

    return-object v4

    .line 608
    :cond_8
    iget v3, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    goto :goto_0

    .line 615
    .restart local v3       #relevantTrackingCoordinate:F
    :cond_9
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getLowResolutionPanorama: Skipping last preview frame because to little translation in determined direction: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 619
    .end local v3           #relevantTrackingCoordinate:F
    :cond_a
    const-string v4, "ScaladoCameraFramework"

    const-string v5, "getLowResolutionPanorama: No last preview image found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 623
    :cond_b
    const-string v4, "ScaladoCameraFramework"

    const-string v5, "getLowResolutionPanorama: Direction unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNumberOfCapturedImages()I
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 638
    const/4 v0, 0x0

    .line 641
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOptions()Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 570
    invoke-static {}, Lcom/scalado/camera/autorama/Autorama;->$SWITCH_TABLE$com$scalado$camera$autorama$Autorama$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 576
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 573
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/scalado/camera/autorama/Autorama$AutoramaListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    .line 509
    return-void
.end method

.method public stop(Z)V
    .locals 4
    .parameter "takeOneLastPicture"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/scalado/camera/autorama/Autorama;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    if-ne v0, v1, :cond_1

    .line 521
    iput-boolean v3, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    .line 522
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Currently capturing. Will stop when capture completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    if-eqz p1, :cond_6

    .line 526
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v0, v1, :cond_6

    .line 527
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_6

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_6

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_6

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_6

    .line 531
    :cond_5
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Will make one more capture and then stop."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iput-boolean v3, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    .line 533
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->capture()V

    goto :goto_0

    .line 536
    :cond_6
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Stopping now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    invoke-interface {v0}, Lcom/scalado/camera/Camera;->stopPreview()V

    .line 538
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->stopTracking()V

    .line 539
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V

    goto :goto_0
.end method
