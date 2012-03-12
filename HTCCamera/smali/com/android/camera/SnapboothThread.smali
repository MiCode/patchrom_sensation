.class public Lcom/android/camera/SnapboothThread;
.super Ljava/lang/Thread;
.source "SnapboothThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SnapboothThread$MainHandler;
    }
.end annotation


# static fields
.field public static final CANCEL_CAPTURE:I = 0xa

.field private static final CAPTURE_STATE_ERROR:I = 0x4

.field private static final CAPTURE_STATE_IDLE:I = 0x0

.field private static final CAPTURE_STATE_TAKING_PICTURE:I = 0x1

.field private static final CAPTURE_STATE_WAITING_CLOSE_CAMERA:I = 0x2

.field private static final CAPTURE_STATE_WAITING_QUIT_THREAD:I = 0x3

.field public static final CLOSE_CAMERA:I = 0x2

.field public static final CREATE_INIT_THUMBNAIL:I = 0x64

.field public static final CREATE_MULTISHOT_BITMAP:I = 0x3

.field public static final DELETE_CURRENT_IMAGE:I = 0x65

.field private static final MULTI_SHOT_INTERVAL:I = 0x3e8

.field public static final QUIT_CAMERA_THREAD:I = 0x5

.field public static final RECHECK_STORAGE_STATE:I = 0x66

.field public static final SETTINGS_RELOAD:I = 0x1

.field public static final SETTINGS_REMAIN:I = 0x0

.field public static final SET_GE_BLOOM:I = 0x24

.field public static final SET_GE_BULGE:I = 0x20

.field public static final SET_GE_CONTRAST:I = 0x23

.field public static final SET_GE_DOTS:I = 0x27

.field public static final SET_GE_MIRROR:I = 0x22

.field public static final SET_GE_NONE:I = 0x1f

.field public static final SET_GE_PUCKER:I = 0x21

.field public static final SET_GE_SEPIA:I = 0x25

.field public static final SET_GE_VINTAGE:I = 0x26

.field public static final START_PREVIEW:I = 0x0

.field public static final STOP_PREVIEW:I = 0x1

.field public static final STORE_JPEG:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnapboothThread"

.field public static final TAKE_PICTURE:I = 0x4

.field public static final UPDATE_EFFECT_ORIENTATION:I = 0x67

.field public static final mCountDownSec:I = 0x960

.field public static mIsLastCameraClosed:Z


# instance fields
.field private Camera_Mode_Height:I

.field private Camera_Mode_Width:I

.field private Camera_Preview_Height:I

.field private Camera_Preview_Width:I

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCaptureState:I

.field private mCurrentEffectMessage:I

.field private mCurrentShutterNum:I

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mIsCapturing:Z

.field private mIsMultiShutter:Z

.field private mIsShutterSound:Z

.field private mIsTakingPicture:Z

.field private mJPEGQuality:I

.field private mJpegData:[B

.field private mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mMultiBitmap:Landroid/graphics/Bitmap;

.field private mMultiBitmapOrientation:I

.field private mPreviewing:Z

.field private mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

.field private mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

.field private mStorageCheckRunnable:Ljava/lang/Runnable;

.field private mStorageCheckThread:Ljava/lang/Thread;

.field private mStorageState:I

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/SnapboothThread;->mIsLastCameraClosed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;)V
    .locals 4
    .parameter "activity"
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 706
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 64
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    .line 66
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    .line 67
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    .line 69
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    .line 70
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mJPEGQuality:I

    .line 72
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    .line 74
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    .line 76
    iput v2, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    .line 79
    iput v2, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    .line 86
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    .line 87
    iput v2, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    .line 88
    iput v3, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    .line 97
    iput-boolean v2, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/camera/SnapboothThread;->mIsShutterSound:Z

    .line 107
    new-instance v0, Lcom/android/camera/SnapboothThread$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$1;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/android/camera/SnapboothThread$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$2;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 142
    new-instance v0, Lcom/android/camera/SnapboothThread$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$3;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 157
    new-instance v0, Lcom/android/camera/SnapboothThread$4;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$4;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 168
    new-instance v0, Lcom/android/camera/SnapboothThread$5;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$5;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 707
    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    .line 708
    iput-object p2, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    .line 709
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/SnapboothThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->stopPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->cancelCapture()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->notifyStorageState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/SnapboothThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->capture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/SnapboothThread;I)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->getMultiDrawLeft(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/SnapboothThread;I)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->getMultiDrawTop(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsShutterSound:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/SnapboothThread;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/SnapboothThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/SnapboothThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/SnapboothThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return p1
.end method

.method static synthetic access$804(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->isLastCameraClosed()Z

    move-result v0

    return v0
.end method

.method private beginCheckStorageState()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    .line 1103
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    .line 1104
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1106
    :cond_0
    return-void
.end method

.method private cancelCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1072
    const-string v0, "SnapboothThread"

    const-string v1, "cancelCapture - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1076
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1079
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1082
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    .line 1086
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    .line 1089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    .line 1090
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1092
    const-string v0, "SnapboothThread"

    const-string v1, "cancelCapture - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method private capture()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 944
    const-string v6, "SnapboothThread"

    const-string v7, "start to capture photo"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v6}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 989
    :goto_0
    return v4

    .line 949
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 952
    iput-boolean v5, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    .line 954
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v7, p0, Lcom/android/camera/SnapboothThread;->mJPEGQuality:I

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    .line 955
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v6}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v6

    invoke-static {v6, v4}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v3

    .line 956
    .local v3, orientation:I
    if-ne v3, v5, :cond_1

    move v0, v4

    .line 957
    .local v0, captureRotation:I
    :goto_1
    const-string v6, "SnapboothThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set rotation, mCaptureRotation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setRotation(I)V

    .line 960
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 963
    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v2

    .line 964
    .local v2, loc:Landroid/location/Location;
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6, v2}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    .line 966
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "img-timestamp"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 970
    const-string v6, "SnapboothThread"

    const-string v7, "Camera - takePicture"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    sget-object v6, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v6}, Lcom/android/camera/TIME$Value;->End()V

    .line 972
    sget-object v6, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v6}, Lcom/android/camera/TIME$Value;->Start()V

    .line 976
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    .line 977
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/camera/SnapboothThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v8, p0, Lcom/android/camera/SnapboothThread;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v9, p0, Lcom/android/camera/SnapboothThread;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 989
    goto :goto_0

    .line 956
    .end local v0           #captureRotation:I
    .end local v2           #loc:Landroid/location/Location;
    :cond_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 979
    .restart local v0       #captureRotation:I
    .restart local v2       #loc:Landroid/location/Location;
    :catch_0
    move-exception v1

    .line 981
    .local v1, ex:Ljava/lang/Exception;
    iput-boolean v4, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    .line 982
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    .line 983
    const-string v5, "SnapboothThread"

    const-string v6, "take picture exception - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v5, "SnapboothThread"

    const-string v6, "take picture exception. Camera app finished"

    invoke-static {v5, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 985
    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v5}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto/16 :goto_0
.end method

.method private endCheckStorageState()I
    .locals 1

    .prologue
    .line 1116
    :goto_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1120
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    .line 1128
    :cond_0
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    if-eqz v0, :cond_1

    .line 1130
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->notifyStorageState()V

    .line 1131
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return v0

    .line 1133
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getMultiDrawLeft(I)F
    .locals 2
    .parameter "num"

    .prologue
    const/4 v1, 0x2

    .line 1046
    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1048
    :cond_0
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    if-ne v0, v1, :cond_2

    .line 1049
    :cond_1
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v0, v0

    .line 1053
    :goto_0
    return v0

    .line 1051
    :cond_2
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v0, v0

    goto :goto_0

    .line 1053
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMultiDrawTop(I)F
    .locals 2
    .parameter "num"

    .prologue
    .line 1057
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1059
    :cond_0
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1060
    :cond_1
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v0, v0

    .line 1064
    :goto_0
    return v0

    .line 1062
    :cond_2
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v0, v0

    goto :goto_0

    .line 1064
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastCameraClosed()Z
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 998
    sget-boolean v0, Lcom/android/camera/SnapboothThread;->mIsLastCameraClosed:Z

    .line 999
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadResolution()V
    .locals 2

    .prologue
    .line 927
    const-string v0, "SnapboothThread"

    const-string v1, "loadResolution() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    .line 930
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    .line 932
    sget v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_HEIGHT:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    .line 933
    sget v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_WIDTH:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    .line 935
    const-string v0, "SnapboothThread"

    const-string v1, "loadResolution() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    return-void
.end method

.method private notifyStorageState()V
    .locals 5

    .prologue
    .line 1142
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    iget v2, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1144
    :cond_0
    return-void
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 899
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 901
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 902
    const-string v0, "SnapboothThread"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_0
    return-void
.end method


# virtual methods
.method closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1008
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1010
    const-string v0, "SnapboothThread"

    const-string v1, "before stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1012
    iput-boolean v2, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 1013
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1014
    const-string v0, "SnapboothThread"

    const-string v1, "after stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/SnapboothThread;->resetJpegData()V

    .line 1021
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 1023
    const-string v0, "SnapboothThread"

    const-string v1, "before release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1025
    const-string v0, "SnapboothThread"

    const-string v1, "after release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iput-object v3, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 1028
    iput-object v3, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    .line 1030
    iput v2, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    .line 1031
    const-string v0, "SnapboothThread"

    const-string v1, "close camera - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/SnapboothThread;->mIsLastCameraClosed:Z

    .line 1035
    const-string v0, "SnapboothThread"

    const-string v1, "Release Camera - set mIsLastCameraClosed to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :goto_0
    return-void

    .line 1038
    :cond_1
    const-string v0, "SnapboothThread"

    const-string v1, "mCameraDevice == null in closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public getCurrentStorageState()I
    .locals 1

    .prologue
    .line 1151
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-object v0
.end method

.method public releaseSnapboothThread()V
    .locals 0

    .prologue
    .line 715
    return-void
.end method

.method public resetJpegData()V
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    .line 920
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 695
    const-string v0, "SnapboothThread"

    const-string v1, "*************************************** run"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 697
    new-instance v0, Lcom/android/camera/SnapboothThread$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/SnapboothThread$MainHandler;-><init>(Lcom/android/camera/SnapboothThread;Lcom/android/camera/SnapboothThread$1;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    .line 698
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    .line 699
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 700
    return-void
.end method

.method public startPreview(IZ)V
    .locals 10
    .parameter "status"
    .parameter "isCapturing"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 738
    const-string v4, "SnapboothThread"

    const-string v6, "startPreview() - start"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-boolean v4, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    if-eqz v4, :cond_0

    .line 743
    const-string v4, "SnapboothThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera has been in Prevewing. mPreviewing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_1

    .line 750
    const-string v4, "SnapboothThread"

    const-string v6, "Open camera while startPreview"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :try_start_0
    invoke-static {}, Lcom/android/camera/SensorHolder;->getSecondCamID()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 761
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 764
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/camera/SnapboothThread;->mIsLastCameraClosed:Z

    .line 766
    const-string v4, "SnapboothThread"

    const-string v6, "StartPreview - Set mIsLastCameraClosed to false"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    new-instance v4, Lcom/android/camera/CameraController;

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v4, v6}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;)V

    iput-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    .line 777
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4}, Lcom/android/camera/CameraController;->setSupportedList()V

    .line 781
    :cond_1
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v4, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z

    .line 784
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "touch-aec"

    const-string v7, "off"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v4, "SnapboothThread"

    const-string v6, "Disable touch aec !!!"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "enable-caf"

    const-string v7, "off"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v4, "SnapboothThread"

    const-string v6, "Start preview - disable continue AF !!!"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "cam-mode"

    invoke-virtual {v4, v6, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 795
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "front-camera-mode"

    const-string v7, "mirror"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "sound-off"

    const-string v7, "true"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 804
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->loadResolution()V

    .line 805
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v6, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    .line 806
    const-string v4, "SnapboothThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetPictureSize: CAMERA MODE, Width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v6, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 811
    const-string v4, "SnapboothThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetPreviewSize: CAMERA MODE, Width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "taking-picture-zoom"

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v3

    .line 816
    .local v3, info:Lcom/android/camera/CameraController$SettingInfo;
    sget-boolean v4, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    if-ne v4, v8, :cond_2

    .line 818
    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v4

    sput v4, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    .line 819
    sput-boolean v5, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 822
    :cond_2
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "taking-picture-zoom"

    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 824
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 826
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v6, 0x5a

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 828
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 830
    .local v2, holder:Landroid/view/SurfaceHolder;
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 847
    :goto_1
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v6, Lcom/android/camera/SnapboothThread$6;

    invoke-direct {v6, p0}, Lcom/android/camera/SnapboothThread$6;-><init>(Lcom/android/camera/SnapboothThread;)V

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 861
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 867
    :goto_2
    iput-boolean v8, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 869
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-virtual {v4, v9}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 872
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    if-eqz p2, :cond_5

    move v4, v5

    :goto_3
    const/4 v7, 0x0

    invoke-static {v6, v9, v4, v5, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 881
    iget v4, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    if-eqz v4, :cond_3

    .line 882
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    iget v5, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    invoke-virtual {v4, v5}, Lcom/android/camera/SnapboothThread$MainHandler;->sendEmptyMessage(I)Z

    .line 885
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    .line 888
    :cond_4
    const-string v4, "SnapboothThread"

    const-string v5, "start_preview() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    .end local v2           #holder:Landroid/view/SurfaceHolder;
    .end local v3           #info:Lcom/android/camera/CameraController$SettingInfo;
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SnapboothThread"

    const-string v5, "open camera failed"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 771
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto/16 :goto_0

    .line 831
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #holder:Landroid/view/SurfaceHolder;
    .restart local v3       #info:Lcom/android/camera/CameraController$SettingInfo;
    :catch_1
    move-exception v1

    .line 832
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "SnapboothThread"

    const-string v6, "mCameraDevice.setPreviewDisplay failed"

    invoke-static {v4, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto :goto_1

    .line 862
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 863
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "SnapboothThread"

    const-string v6, "start preview failed"

    invoke-static {v4, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 864
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto :goto_2

    .line 872
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5
    const/4 v4, 0x3

    goto :goto_3
.end method
