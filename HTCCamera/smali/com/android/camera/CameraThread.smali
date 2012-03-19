.class public Lcom/android/camera/CameraThread;
.super Ljava/lang/Thread;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/IEventManagerOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraThread$ErrorListener;,
        Lcom/android/camera/CameraThread$InfoListener;,
        Lcom/android/camera/CameraThread$OneShotPreviewCallback;,
        Lcom/android/camera/CameraThread$DecodeThread;,
        Lcom/android/camera/CameraThread$PreviewCallback;,
        Lcom/android/camera/CameraThread$HtcCallback;,
        Lcom/android/camera/CameraThread$ErrorCallback;,
        Lcom/android/camera/CameraThread$AutoFocusCallback;,
        Lcom/android/camera/CameraThread$ScaladoThread;,
        Lcom/android/camera/CameraThread$MainHandler;,
        Lcom/android/camera/CameraThread$CommonCaptureHandler;,
        Lcom/android/camera/CameraThread$StorePictureCallback;
    }
.end annotation


# static fields
.field public static final CALCULATE_FPS:I = 0x19

.field public static final CAMERA_MODE:I = 0x0

.field public static final CAMERA_TYPE_FRONT:I = 0x2

.field public static final CAMERA_TYPE_MAIN:I = 0x1

.field public static final CAMERA_TYPE_MAIN_3D:I = 0x3

.field public static final CAMERA_TYPE_UNKNOWN:I = 0x0

.field public static final CANCEL_FOCUS:I = 0x6

.field public static final CANNOT_STAT_ERROR:I = 0x2

.field private static final CAPTURE_STATE_ERROR:I = 0x4

.field private static final CAPTURE_STATE_IDLE:I = 0x0

.field private static final CAPTURE_STATE_TAKING_PICTURE:I = 0x1

.field private static final CAPTURE_STATE_WAITING_CLOSE_CAMERA:I = 0x2

.field private static final CAPTURE_STATE_WAITING_QUIT_THREAD:I = 0x3

.field private static final CHANGE_ZOOM:I = 0x46

.field public static final CHECK_INTERNAL_STORAGE:I = 0x34

.field public static final CHECK_RECORD_SIZE_LIMIT:I = 0x16

.field public static final CHECK_STORAGE_STATUS:I = 0x35

.field public static final CLOSE_CAMERA:I = 0x2

.field public static final CLOSE_CAMERA_DELAYED:I = 0x18

.field private static final CLOSE_CAMERA_DELAYED_TIME:I = 0x7d0

.field public static final CREATE_IMAGE_THUMB:I = 0x1d

.field public static final CREATE_THUMB:I = 0x39

.field public static final CREATE_VIDEO_THUMB:I = 0x1e

.field public static final DISABLE_TOUCH_AEC:I = 0x1f

.field public static final ENABLE_CAF:I = 0x2e

.field public static final ENTER_VIDEO_MODE:I = 0xb

.field public static final EVENT_AUTOSCENE_ENABLED:Ljava/lang/String; = "AutoScene.Enabled"

.field public static final EVENT_AUTOSMILECAPTURE:Ljava/lang/String; = "HTCCallback.AutoSmileCapture"

.field public static final EVENT_BLINKONOFF_CHANGED:Ljava/lang/String; = "HTCCallback.BlinkOffChanged"

.field public static final EVENT_BLINK_CHANGED:Ljava/lang/String; = "HTCCallback.BlinkChanged"

.field public static final EVENT_FOCUS_FINISHED:Ljava/lang/String; = "Focus.Finished"

.field public static final EVENT_LOWLIGHT_CHANGED:Ljava/lang/String; = "HTCCallback.LowLightChanged"

.field public static final EVENT_MACROFOCUS_CHANGED:Ljava/lang/String; = "HTCCallback.MarcoFocusChanged"

.field public static final EVENT_MEDIA_DELETION_COMPLETED:Ljava/lang/String; = "Media.DeletionCompleted"

.field public static final EVENT_MEDIA_SAVED:Ljava/lang/String; = "Media.Saved"

.field public static final EVENT_MEDIA_SAVE_FAILED:Ljava/lang/String; = "Media.SaveFailed"

.field public static final EVENT_POSTVIEW_IMAGE_CREATE:Ljava/lang/String; = "ReviewAnimation.PostviewCreated"

.field public static final EVENT_POWER_REC_WARNING_RECEIVED:Ljava/lang/String; = "PowerRecWarning.Received"

.field public static final EVENT_POWER_WARNING_RECEIVED:Ljava/lang/String; = "PowerWarning.Received"

.field public static final EVENT_PREVIEW_STARTED:Ljava/lang/String; = "Preview.Started"

.field public static final EVENT_PREVIEW_STARTING:Ljava/lang/String; = "Preview.Starting"

.field public static final EVENT_PREVIEW_STOPPED:Ljava/lang/String; = "Preview.Stopped"

.field public static final EVENT_PREVIEW_STOPPING:Ljava/lang/String; = "Preview.Stopping"

.field public static final EVENT_RECORDING_STARTED:Ljava/lang/String; = "Recording_Started"

.field public static final EVENT_REQUEST_CLOSE_CAMERA:Ljava/lang/String; = "Request.CloseCamera"

.field public static final EVENT_REQUEST_DELETE_MEDIA:Ljava/lang/String; = "Request.DeleteLatestMedia"

.field public static final EVENT_SMILE_CHANGED:Ljava/lang/String; = "HTCCallback.SmileChanged"

.field public static final EVENT_TAKE_PICTURE_ENDED:Ljava/lang/String; = "Capture.Ended"

.field public static final EVENT_TAKE_PICTURE_STARTED:Ljava/lang/String; = "Capture.Started"

.field public static final EVENT_VIDEO_THUMB_CREATED:Ljava/lang/String; = "VideoThumbnailImage.Created"

.field public static final EVENT_ZOOM_CHANGED:Ljava/lang/String; = "Zoom.Changed"

.field public static final EVENT_ZOOM_RANGE_RETRIEVED:Ljava/lang/String; = "Zoom.RangeRetrieved"

.field public static final EXIT_VIDEO_MODE:I = 0xc

.field public static final LOAD_SETTINGS:I = 0x1c

.field public static final NO_STORAGE_ERROR:I = 0x1

.field public static final POST_PROCESSING:I = 0x37

.field public static final QUIT_CAMERA_THREAD:I = 0x8

.field public static final RECORDING_FINISH_AUTO_FOCUS:I = 0x2d

.field public static final RECORDING_MESSAGE:I = 0xa

.field public static final RESET_ZOOM_VALUE:I = 0x30

.field public static final SEND_POWER_WARNING_MSG:I = 0x3b

.field public static final SETTINGS_RELOAD:I = 0x1

.field public static final SETTINGS_REMAIN:I = 0x0

.field public static final SET_BLINK_DETECTION:I = 0x3c

.field public static final SET_BRIGHTNESS_VALUE:I = 0x11

.field public static final SET_CUSTOM_EFFECT_PROP:I = 0x2c

.field public static final SET_EFFECT:I = 0x13

.field public static final SET_FACE_OPTIONS:I = 0x20

.field public static final SET_FLASH_MODE:I = 0x15

.field public static final SET_GE_WHITEBOARD:I = 0x3e

.field public static final SET_IMAGE_PROPERTY:I = 0x14

.field public static final SET_ISO:I = 0x12

.field public static final SET_OLA_ORIENTATION_PARAMETER:I = 0x2b

.field public static final SET_RESOLUTION:I = 0xf

.field public static final SET_SCENE_MODE:I = 0x3a

.field public static final SET_SMILE_CAPTURE:I = 0x3d

.field public static final SET_WHITE_BALANCE:I = 0x10

.field public static final START_FOCUS:I = 0x5

.field public static final START_PREVIEW:I = 0x0

.field public static final START_RECORDING:I = 0x9

.field public static final START_RECORDING_DELAY:I = 0x36

.field private static final START_RECORDING_DELAY_TIME:I = 0x12c

.field public static final STEREO_RECORDING:I = 0x38

.field public static final STOP_PREVIEW:I = 0x1

.field public static final STOP_VIDEO_RECORDING_DELAY:I = 0x2f

.field public static final STORAGE_FULL:I = 0x3

.field public static final STORAGE_OK:I = 0x0

.field public static Storage_Status:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraThread"

.field public static final TAKE_FOCUS:I = 0x4

.field public static final TAKE_PICTURE:I = 0x7

.field public static final TAKE_PREVIEW:I = 0x1a

.field public static final THUMB_FILE_PATH:Ljava/lang/String; = "thumb_file_path"

.field public static final VIDEO_MODE:I = 0x1

.field public static final WAIT_SELFTIMER:I = 0x3

.field public static final ZOOM_UNKNOWN:I = -0x80000000

.field public static mEnableCAF:Z

.field public static mEnableTouchAEC:Z

.field public static mIsLastCameraClosed:Z

.field private static mLastContentUri:Landroid/net/Uri;

.field public static mTakeFocus:Z


# instance fields
.field private Camera_Mode_Height:I

.field private Camera_Mode_Width:I

.field private Camera_Preview_Height:I

.field private Camera_Preview_Width:I

.field private final HTC_CALLBACK_AUTOSMILECAPTURE:I

.field private final HTC_CALLBACK_BLINKONOFF_CHANGED:I

.field private final HTC_CALLBACK_BLINK_CHANGED:I

.field private final HTC_CALLBACK_LOWLIGHT_CHANGED:I

.field private final HTC_CALLBACK_MACROFOCUS_CHANGED:I

.field private final HTC_CALLBACK_SMILE_CHANGED:I

.field private final MINIMUN_CAMERA_REMAIN_SPACE:J

.field private Video_Mode_Height:I

.field private Video_Mode_Width:I

.field private bIsStereo:Z

.field private bShowFocusIcon:Z

.field private bShutterSound:Z

.field private bSwitchCamera:Z

.field public m3DButtonStatus:I

.field private m3DFileFormat:Ljava/lang/String;

.field public m3DPreviewStatus:I

.field private mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraActivity:Lcom/android/camera/HTCCamera;

.field private mCameraDevice:Landroid/hardware/Camera;

.field mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

.field private mCanStartPreview:Z

.field private mCaptureHandler:Lcom/android/camera/ICaptureHandler;

.field private mCaptureRotation:I

.field private mCaptureState:I

.field private mCheckingThread:Ljava/lang/Thread;

.field private final mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

.field private mComponentManager:Lcom/android/camera/component/ComponentManager;

.field private mCurrentColorEffect:Ljava/lang/String;

.field private mCurrentResolution:Lcom/android/camera/Resolution;

.field private mEncoderType:I

.field private mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

.field private mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFps:I

.field private mHtcCallback:Lcom/android/camera/CameraThread$HtcCallback;

.field private mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

.field private mIsCaptureInterrupted:Z

.field private mIsOnlySetResolution:Z

.field private mIsStart_fps:Z

.field private mJPEGQuality:I

.field private mJPEGQualityKey:Ljava/lang/String;

.field private mJpegData:[B

.field private mLastMediaInfo:Lcom/android/camera/MediaInfo;

.field private mLocation:Landroid/location/Location;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field public mMode:I

.field private mNumber:I

.field public mOneShotBitmap:Landroid/graphics/Bitmap;

.field private mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;

.field private mPlaySoundFromCameraService:Z

.field private mPreviewCallback:Lcom/android/camera/CameraThread$PreviewCallback;

.field private mPreviewData:[B

.field private mPreviewing:Z

.field public mRecPowerWarning:Z

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecording:Z

.field private mStartRecordingTime:J

.field public mSyncObject:Ljava/lang/Object;

.field private volatile mTaking_picture:Z

.field mUIHandler:Landroid/os/Handler;

.field private mVideoPath:Ljava/lang/String;

.field private m_EventManager:Lcom/android/camera/EventManager;

.field private volatile m_MaxZoom:I

.field private volatile m_MinZoom:I

.field private mbCanTakePicture:Z

.field private mbNoneEffect:Z

.field private mfilename:Ljava/lang/String;

.field private mfilepath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    .line 269
    sput-boolean v1, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    .line 271
    sput-boolean v1, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    .line 273
    sput-boolean v1, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    .line 354
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    .line 396
    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 5
    .parameter "activity"
    .parameter "handler"

    .prologue
    const/high16 v1, -0x8000

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3161
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 229
    iput v3, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_SMILE_CHANGED:I

    .line 230
    iput v4, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_AUTOSMILECAPTURE:I

    .line 231
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_BLINK_CHANGED:I

    .line 232
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_BLINKONOFF_CHANGED:I

    .line 233
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_LOWLIGHT_CHANGED:I

    .line 234
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_MACROFOCUS_CHANGED:I

    .line 255
    iput v1, p0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    .line 256
    iput v1, p0, Lcom/android/camera/CameraThread;->m_MinZoom:I

    .line 261
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mFocusAreaSupported:Z

    .line 262
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mMeteringAreaSupported:Z

    .line 275
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    .line 277
    iput v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    .line 279
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 281
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    .line 283
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 285
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mPreviewData:[B

    .line 287
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 289
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 291
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    .line 293
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    .line 295
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    .line 297
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    .line 299
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    .line 326
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentResolution:Lcom/android/camera/Resolution;

    .line 330
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    .line 334
    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    .line 337
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    .line 339
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    .line 341
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    .line 343
    iput-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    .line 345
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    .line 350
    iput v3, p0, Lcom/android/camera/CameraThread;->mNumber:I

    .line 352
    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    .line 356
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    .line 358
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->MINIMUN_CAMERA_REMAIN_SPACE:J

    .line 363
    iput v3, p0, Lcom/android/camera/CameraThread;->mFps:I

    .line 365
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsStart_fps:Z

    .line 368
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 370
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    .line 384
    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 399
    iput v4, p0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 400
    iput v4, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    .line 405
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    .line 408
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    .line 413
    new-instance v0, Lcom/android/camera/CameraThread$CommonCaptureHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$CommonCaptureHandler;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    .line 3157
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    .line 3159
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 3171
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 3173
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 3175
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 4401
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    .line 4543
    new-instance v0, Lcom/android/camera/CameraThread$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$AutoFocusCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;

    .line 4545
    new-instance v0, Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    .line 4548
    new-instance v0, Lcom/android/camera/CameraThread$HtcCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$HtcCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mHtcCallback:Lcom/android/camera/CameraThread$HtcCallback;

    .line 4550
    new-instance v0, Lcom/android/camera/CameraThread$PreviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$PreviewCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Lcom/android/camera/CameraThread$PreviewCallback;

    .line 4552
    new-instance v0, Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$OneShotPreviewCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    .line 4554
    new-instance v0, Lcom/android/camera/CameraThread$InfoListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$InfoListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    .line 4556
    new-instance v0, Lcom/android/camera/CameraThread$ErrorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    .line 4741
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    .line 4743
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    .line 3162
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 3163
    iput-object p2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 3164
    return-void
.end method

.method private NeedToApplyAMR_NB()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3362
    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_1

    .line 3373
    :cond_0
    :goto_0
    return v2

    .line 3365
    :cond_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 3366
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v4}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 3367
    .local v1, r:Lcom/android/camera/Resolution;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v3, :cond_2

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    sget-object v4, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    .line 3371
    goto :goto_0
.end method

.method private SetICSFocusParam(II)V
    .locals 13
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 5857
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 5858
    .local v4, x:I
    int-to-float v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 5859
    .local v5, y:I
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    .line 5860
    .local v1, focusWidth:I
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v0

    div-int/lit8 v2, v0, 0x4

    .line 5863
    .local v2, focusHeight:I
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v6

    .line 5864
    .local v6, previewWidth:I
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v7

    .line 5868
    .local v7, previewHeight:I
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getMaxNumFocusAreas()I

    move-result v10

    .line 5869
    .local v10, iMaxNumFocusAreas:I
    if-lez v10, :cond_3

    const-string v0, "auto"

    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mFocusAreaSupported:Z

    .line 5873
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getMaxNumMeteringAreas()I

    move-result v11

    .line 5874
    .local v11, iMaxNumMeteringAreas:I
    if-lez v11, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mMeteringAreaSupported:Z

    .line 5875
    const-string v0, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICS focus MaxNumFocusAreas:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",MaxNumMeteringAreas:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5881
    .end local v10           #iMaxNumFocusAreas:I
    .end local v11           #iMaxNumMeteringAreas:I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    .line 5883
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x1

    invoke-direct {v3, v8, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mMeteringArea:Ljava/util/List;

    .line 5885
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x1

    invoke-direct {v3, v8, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5888
    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/CameraThread;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 5893
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    .line 5894
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 5895
    const-string v0, "CameraThread"

    const-string v3, "ICS focus setFocusAreas "

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5898
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 5900
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 5901
    :cond_2
    const-string v0, "CameraThread"

    const-string v3, "ICS focus setMeteringAreas "

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5902
    return-void

    .line 5869
    .restart local v10       #iMaxNumFocusAreas:I
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5874
    .restart local v11       #iMaxNumMeteringAreas:I
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 5877
    .end local v10           #iMaxNumFocusAreas:I
    .end local v11           #iMaxNumMeteringAreas:I
    :catch_0
    move-exception v9

    .line 5878
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "CameraThread"

    const-string v3, "SetICSFocusParam throws exception:"

    invoke-static {v0, v3, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/CameraThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraThread;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakePicture()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$OneShotPreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraThread;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->SetICSFocusParam(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->handleAutoFocus(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/CameraThread;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->capture()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/CameraThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsStart_fps:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/CameraThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/CameraThread;->mFps:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/camera/CameraThread;->mFps:I

    return p1
.end method

.method static synthetic access$3108(Lcom/android/camera/CameraThread;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/CameraThread;->mFps:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/CameraThread;->mFps:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkStorageStatus()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/CameraThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return p1
.end method

.method private capture()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3982
    const-string v5, "CameraThread"

    const-string v6, "start to capture photo"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3983
    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 3984
    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->mIsCaptureInterrupted:Z

    .line 3987
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v5, :cond_0

    .line 3988
    const-string v5, "CameraThread"

    const-string v6, "take picture , mCamController is null, return"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3989
    iput v9, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 4085
    :goto_0
    return-void

    .line 3994
    :cond_0
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v6, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    .line 3996
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v4

    .line 3997
    .local v4, orientation:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 3998
    const-string v5, "CameraThread"

    const-string v6, "orientation = OrientationEventListener.ORIENTATION_UNKNOWN"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    const/4 v4, 0x0

    .line 4006
    :goto_1
    const/4 v2, 0x0

    .line 4007
    .local v2, iCamID:I
    iget-boolean v5, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-ne v5, v7, :cond_4

    .line 4009
    invoke-static {}, Lcom/android/camera/SensorHolder;->getSecondCamID()I

    move-result v2

    .line 4020
    :goto_2
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 4021
    .local v3, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 4022
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v7, :cond_6

    .line 4023
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v4

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    .line 4028
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v5, :cond_1

    .line 4030
    const-string v5, "CameraThread"

    const-string v6, "set rotation landscape while 3D photo mode"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4031
    iput v8, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    .line 4036
    :cond_1
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set rotation, mCaptureRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4038
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v6, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setRotation(I)V

    .line 4041
    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    .line 4042
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    .line 4044
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->isAddTimeStamp()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4045
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "img-timestamp"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4046
    const-string v5, "CameraThread"

    const-string v6, "add time stamp on photo"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4052
    :goto_4
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4054
    const-string v5, "CameraThread"

    const-string v6, "Camera - takePicture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4055
    sget-object v5, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v5}, Lcom/android/camera/TIME$Value;->End()V

    .line 4059
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCaptureHandler:Lcom/android/camera/ICaptureHandler;

    .line 4060
    .local v0, captureHandler:Lcom/android/camera/ICaptureHandler;
    if-nez v0, :cond_2

    .line 4062
    const-string v5, "CameraThread"

    const-string v6, "No capture handler is specified, use default handler"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    .line 4066
    :cond_2
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before capturing, capture handler is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4069
    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 4071
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, p0, v5}, Lcom/android/camera/ICaptureHandler;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V

    .line 4074
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V

    .line 4077
    iget-object v5, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v6, "Capture.Started"

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4079
    :catch_0
    move-exception v1

    .line 4080
    .local v1, ex:Ljava/lang/Exception;
    iput v9, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 4081
    const-string v5, "CameraThread"

    const-string v6, "take picture exception - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4082
    const-string v5, "CameraThread"

    const-string v6, "take picture exception. Camera app finished"

    invoke-static {v5, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4083
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 4001
    .end local v0           #captureHandler:Lcom/android/camera/ICaptureHandler;
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #iCamID:I
    .end local v3           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_3
    add-int/lit8 v5, v4, 0x2d

    div-int/lit8 v5, v5, 0x5a

    mul-int/lit8 v4, v5, 0x5a

    goto/16 :goto_1

    .line 4013
    .restart local v2       #iCamID:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4014
    invoke-static {}, Lcom/android/camera/SensorHolder;->get3DCamID()I

    move-result v2

    goto/16 :goto_2

    .line 4016
    :cond_5
    invoke-static {}, Lcom/android/camera/SensorHolder;->getMainCamID()I

    move-result v2

    goto/16 :goto_2

    .line 4025
    .restart local v3       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_6
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v5, v4

    rem-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    goto/16 :goto_3

    .line 4048
    :cond_7
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "img-timestamp"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4049
    const-string v5, "CameraThread"

    const-string v6, "not add time stamp on photo"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private checkCanTakePicture()V
    .locals 2

    .prologue
    .line 4747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    .line 4748
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CameraThread$3;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$3;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    .line 4781
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4782
    return-void
.end method

.method private checkCanTakeRecorder()V
    .locals 2

    .prologue
    .line 4785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    .line 4786
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CameraThread$4;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$4;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    .line 4818
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4819
    return-void
.end method

.method private checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "root"
    .parameter "name"
    .parameter "extension"

    .prologue
    .line 4560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4561
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4562
    .local v0, f:Ljava/io/File;
    const/4 v1, 0x0

    .line 4564
    .local v1, index:I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4565
    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 4566
    if-ltz v1, :cond_0

    .line 4567
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 4569
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4571
    :cond_1
    return-object p2
.end method

.method private checkStorageStatus()V
    .locals 2

    .prologue
    .line 4893
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()V

    .line 4896
    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4898
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4899
    const-string v0, "CameraThread"

    const-string v1, "Storage Error!! exit action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4900
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 4904
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    .line 4906
    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4910
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "Storage Error!! close self-timer"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4911
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4912
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4914
    :cond_3
    return-void
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 5829
    if-le p0, p2, :cond_0

    .line 5831
    .end local p2
    :goto_0
    return p2

    .line 5830
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 5831
    goto :goto_0
.end method

.method private getJPEGQualityPreference()I
    .locals 4

    .prologue
    .line 3845
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_capture_quality"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3847
    .local v0, qualityValue:Ljava/lang/String;
    const/4 v1, 0x2

    .line 3848
    .local v1, value:I
    const-string v2, "_super"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    .line 3850
    if-eqz v0, :cond_0

    const-string v2, "_super"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3851
    :cond_0
    const/4 v1, 0x2

    .line 3852
    const-string v2, "_super"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    .line 3861
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v2

    return v2

    .line 3853
    :cond_2
    const-string v2, "_fine"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3854
    const/4 v1, 0x1

    .line 3855
    const-string v2, "_fine"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    goto :goto_0

    .line 3856
    :cond_3
    const-string v2, "_normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3857
    const/4 v1, 0x0

    .line 3858
    const-string v2, "_normal"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 3280
    sget-object v0, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getSavedFile(Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;
    .locals 5
    .parameter "dcfInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException;
        }
    .end annotation

    .prologue
    .line 4577
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4579
    .local v1, storageDirectory:Ljava/lang/String;
    const/4 v0, 0x0

    .line 4582
    .local v0, pPack:Lcom/android/camera/DCFRuler$PathPackage;
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v2, :cond_2

    .line 4584
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4586
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    .line 4587
    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    .line 4588
    const-string v2, "CameraThread"

    const-string v3, "m3DFileFormat == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4603
    :goto_0
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FOLDER = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NAME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4612
    :goto_1
    return-object v0

    .line 4592
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    const-string v3, "jps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4594
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->JPS:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    .line 4595
    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".jps"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    goto :goto_0

    .line 4599
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->MPO:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    .line 4600
    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".mpo"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    goto :goto_0

    .line 4607
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    .line 4608
    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    .line 4609
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FOLDER = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NAME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getVideoEncoder()I
    .locals 4

    .prologue
    .line 4167
    const/4 v0, 0x0

    .line 4168
    .local v0, result:I
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_capture_format_video"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4170
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 4171
    const/4 v0, 0x3

    .line 4182
    :goto_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4183
    const/4 v0, 0x1

    .line 4185
    :cond_0
    return v0

    .line 4172
    :cond_1
    const-string v2, "h263"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4173
    const/4 v0, 0x1

    goto :goto_0

    .line 4174
    :cond_2
    const-string v2, "h264"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4175
    const/4 v0, 0x2

    goto :goto_0

    .line 4177
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handleAutoFocus(Z)V
    .locals 7
    .parameter "focused"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    .line 4088
    const-string v0, "CameraThread"

    const-string v1, "handleAutoFocus() start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4092
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isCancelFocus()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 4093
    const-string v0, "CameraThread"

    const-string v1, "handleAutoFocus() end - cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4138
    :goto_0
    return-void

    .line 4097
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4098
    if-eqz p1, :cond_5

    .line 4099
    const-string v0, "CameraThread"

    const-string v1, " Now We have Focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4100
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-nez v0, :cond_2

    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceFocusSound()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v0, :cond_2

    .line 4102
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "Play Focused Sound - successful"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const v2, 0x7f060002

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4109
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    if-eqz v0, :cond_3

    .line 4110
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4131
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "Focus.Finished"

    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 4133
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    if-eqz v0, :cond_4

    .line 4134
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-static {v0, v1, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 4135
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-static {v0, v1, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 4137
    const-string v0, "CameraThread"

    const-string v1, "handleAutoFocus() end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4112
    :cond_5
    const-string v0, "CameraThread"

    const-string v1, " Now We don\'t have Focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4119
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    if-eqz v0, :cond_3

    .line 4120
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_1
.end method

.method private hasStorageTest()V
    .locals 3

    .prologue
    .line 4864
    const/4 v1, 0x0

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    .line 4866
    :try_start_0
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4867
    const/4 v1, 0x1

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    .line 4869
    :cond_0
    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/DCFRuler;->getReleativeVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/ImageManager;->hasStorage(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4870
    const/4 v1, 0x1

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4880
    :cond_1
    :goto_0
    return-void

    .line 4873
    :catch_0
    move-exception v0

    .line 4877
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraThread"

    const-string v2, "cannot know storage state"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4878
    const/4 v1, 0x2

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    goto :goto_0
.end method

.method private isAddTimeStamp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3833
    iget v1, p0, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3841
    :cond_0
    :goto_0
    return v0

    .line 3836
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3841
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_timestamp"

    invoke-static {v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private isMMSRecording()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3378
    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_1

    .line 3387
    :cond_0
    :goto_0
    return v2

    .line 3381
    :cond_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 3382
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v4}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 3383
    .local v1, r:Lcom/android/camera/Resolution;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v3, :cond_2

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    .line 3385
    goto :goto_0
.end method

.method private loadResolution()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3396
    const-string v4, "CameraThread"

    const-string v5, "loadResolution() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_7

    .line 3401
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    .line 3405
    .local v1, mModeHdr:Lcom/android/camera/ModeHandler;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3409
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v4}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v3

    .line 3411
    .local v3, r:Lcom/android/camera/Resolution;
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    .line 3412
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    .line 3413
    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3414
    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    .line 3485
    :cond_1
    :goto_0
    const-string v4, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEncoderType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 3488
    .local v2, matrix:Landroid/graphics/Matrix;
    const/4 v4, 0x0

    const/16 v5, 0x5a

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/camera/CameraThread;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 3493
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3496
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mCurrentResolution:Lcom/android/camera/Resolution;

    .line 3497
    const-string v4, "CameraThread"

    const-string v5, "loadResolution() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    return-void

    .line 3418
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_2
    const/4 v0, 0x0

    .line 3419
    .local v0, bWideScreen:Z
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-ne v4, v6, :cond_3

    .line 3420
    const/4 v0, 0x0

    .line 3431
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraThread;->updateImageRatio(ZLcom/android/camera/ModeHandler;)Lcom/android/camera/Resolution;

    move-result-object v3

    .line 3433
    .restart local v3       #r:Lcom/android/camera/Resolution;
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    .line 3434
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    .line 3435
    if-eqz v0, :cond_6

    .line 3436
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-eqz v4, :cond_5

    .line 3437
    sget v4, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3438
    sget v4, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    .line 3454
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v4, :cond_1

    .line 3456
    sget v4, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3457
    sget v4, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_0

    .line 3424
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 3425
    const/4 v0, 0x0

    goto :goto_1

    .line 3427
    :cond_4
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_image_ratio"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 3440
    .restart local v3       #r:Lcom/android/camera/Resolution;
    :cond_5
    sget v4, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3441
    sget v4, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    .line 3448
    :cond_6
    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3449
    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    .line 3464
    .end local v0           #bWideScreen:Z
    .end local v1           #mModeHdr:Lcom/android/camera/ModeHandler;
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_7
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v1

    .line 3465
    .restart local v1       #mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v4}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v3

    .line 3466
    .restart local v3       #r:Lcom/android/camera/Resolution;
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    .line 3467
    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    .line 3470
    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    sget-object v4, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v4, v5, :cond_9

    .line 3472
    iput v6, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 3473
    :cond_9
    sget-object v4, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3474
    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3475
    iput v8, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 3477
    :cond_b
    iput v7, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 3479
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->notSupportH264()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3480
    iput v8, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 3482
    :cond_d
    iput v7, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0
.end method

.method private loadSettings()V
    .locals 22

    .prologue
    .line 3502
    const-string v18, "CameraThread"

    const-string v19, "Start to Load Settings to Set Camera "

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/DCFRuler$StorageCardControl;->initStorageType(Landroid/app/Activity;)V

    .line 3514
    const/4 v11, 0x0

    .line 3515
    .local v11, nAlarmVolume:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 3516
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v18

    if-eqz v18, :cond_0

    if-eqz v11, :cond_b

    .line 3518
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    .line 3519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "sound-off"

    const-string v20, "true"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    :goto_0
    const/16 v17, 0x0

    .line 3530
    .local v17, wbValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 3532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance_2nd"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3573
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 3577
    const-string v18, "pref_camera_brightness"

    const-string v19, "exposure-compensation"

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3586
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->getJPEGQualityPreference()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    .line 3589
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v13

    .line 3595
    .local v13, restriction:Lcom/android/camera/FlashRestriction;
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 3596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "off"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 3615
    .end local v13           #restriction:Lcom/android/camera/FlashRestriction;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 3616
    .local v16, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "pref_play_shutter_sound"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_15

    :cond_2
    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bShutterSound:Z

    .line 3657
    const/4 v7, 0x0

    .line 3661
    .local v7, effectValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    if-nez v18, :cond_16

    .line 3662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_effect"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3669
    :goto_4
    const-string v18, "none"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 3670
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    .line 3674
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 3675
    const-string v18, "CameraThread"

    const-string v19, " Load Settings - ImageProperty "

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3676
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->setImageProperty()V

    .line 3703
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_flicker_adjustment"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3705
    .local v9, flickerValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/android/camera/CameraController;->setAntibanding(Ljava/lang/String;)V

    .line 3708
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 3710
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 3713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "preview-iso"

    const-string v20, "on"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "iso"

    const-string v20, "auto"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3737
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 3739
    sget-boolean v18, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 3741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_post_processing"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 3744
    .local v4, bValue:Z
    if-eqz v4, :cond_1c

    .line 3745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "postproc-enable-imboost"

    const-string v20, "on"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "postproc-enable-denoise"

    const-string v20, "on"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3758
    .end local v4           #bValue:Z
    :cond_5
    :goto_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 3760
    const/4 v12, 0x0

    .line 3761
    .local v12, prev_scene:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 3763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    if-nez v18, :cond_1d

    .line 3765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_scene"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3773
    :goto_8
    const-string v18, "auto"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    if-nez v12, :cond_1e

    .line 3774
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/camera/BooleanEvent;

    const-string v20, "AutoScene.Enabled"

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 3778
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 3783
    .end local v12           #prev_scene:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 3785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_blink detection"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3788
    .local v5, bValueBlink:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_smile_capture"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 3791
    .local v6, bValueSmile:Z
    if-eqz v5, :cond_1f

    .line 3792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "ola-sbd-options"

    const-string v20, "03"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    .end local v5           #bValueBlink:Z
    .end local v6           #bValueSmile:Z
    :cond_8
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 3805
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 3807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_stereo_recording"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 3810
    .restart local v4       #bValue:Z
    if-eqz v4, :cond_21

    .line 3811
    const-string v18, "CameraThread"

    const-string v19, "Stereo = true"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bIsStereo:Z

    .line 3822
    .end local v4           #bValue:Z
    :cond_9
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 3824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_3D_file_format"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    .line 3825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "3d-file-format"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3826
    const-string v18, "CameraThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Set 3D file format: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3829
    :cond_a
    const-string v18, "CameraThread"

    const-string v19, "End to Load Settings to Set Camera"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    return-void

    .line 3522
    .end local v7           #effectValue:Ljava/lang/String;
    .end local v9           #flickerValue:Ljava/lang/String;
    .end local v16           #sp:Landroid/content/SharedPreferences;
    .end local v17           #wbValue:Ljava/lang/String;
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    goto/16 :goto_0

    .line 3535
    .restart local v17       #wbValue:Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v18

    if-nez v18, :cond_d

    .line 3537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 3543
    :cond_d
    const/4 v14, 0x0

    .line 3544
    .local v14, scene:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v18

    if-nez v18, :cond_f

    .line 3545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_scene_ds"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3549
    :goto_c
    const/4 v15, 0x0

    .line 3550
    .local v15, sceneNum:I
    if-eqz v14, :cond_e

    const-string v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 3551
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3553
    :cond_e
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v15, v0, :cond_10

    .line 3554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance_manual"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 3547
    .end local v15           #sceneNum:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_scene_service_ds"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    .line 3557
    .restart local v15       #sceneNum:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    .line 3560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance"

    const-string v20, "auto"

    invoke-static/range {v18 .. v20}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 3561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 3566
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance_2nd"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 3598
    .end local v14           #scene:Ljava/lang/String;
    .end local v15           #sceneNum:I
    .restart local v13       #restriction:Lcom/android/camera/FlashRestriction;
    :cond_12
    const/4 v8, 0x0

    .line 3599
    .local v8, flash:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 3600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->isTurnOnTorch()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 3601
    const-string v8, "torch"

    .line 3608
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3603
    :cond_13
    const-string v8, "off"

    goto :goto_d

    .line 3605
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_flash_mode"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    .line 3616
    .end local v8           #flash:Ljava/lang/String;
    .end local v13           #restriction:Lcom/android/camera/FlashRestriction;
    .restart local v16       #sp:Landroid/content/SharedPreferences;
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 3665
    .restart local v7       #effectValue:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_video_effect"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 3672
    :cond_17
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    goto/16 :goto_5

    .line 3719
    .restart local v9       #flickerValue:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "preview-iso"

    const-string v20, "off"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_iso"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3725
    .local v10, isoValue:Ljava/lang/String;
    if-eqz v10, :cond_19

    const-string v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 3726
    :cond_19
    const-string v10, "auto"

    .line 3727
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 3728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "iso"

    const-string v20, "auto"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3730
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "iso"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3749
    .end local v10           #isoValue:Ljava/lang/String;
    .restart local v4       #bValue:Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "postproc-enable-imboost"

    const-string v20, "off"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "postproc-enable-denoise"

    const-string v20, "off"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3769
    .end local v4           #bValue:Z
    .restart local v12       #prev_scene:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_video_scene"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_8

    .line 3776
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/camera/BooleanEvent;

    const-string v20, "AutoScene.Enabled"

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto/16 :goto_9

    .line 3794
    .end local v12           #prev_scene:Ljava/lang/String;
    .restart local v5       #bValueBlink:Z
    .restart local v6       #bValueSmile:Z
    :cond_1f
    if-eqz v6, :cond_20

    .line 3795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "ola-sbd-options"

    const-string v20, "10"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 3798
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "ola-sbd-options"

    const-string v20, "00"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 3815
    .end local v5           #bValueBlink:Z
    .end local v6           #bValueSmile:Z
    .restart local v4       #bValue:Z
    :cond_21
    const-string v18, "CameraThread"

    const-string v19, "Stereo = false"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bIsStereo:Z

    goto/16 :goto_b
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 5845
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 5847
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 5850
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 5851
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5852
    return-void

    :cond_0
    move v0, v1

    .line 5845
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 5835
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 5836
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 5837
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5838
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5839
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3135
    const-string v1, "CameraThread"

    const-string v2, "releaseMediaRecorder()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 3138
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3143
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3148
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3153
    :goto_2
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 3155
    :cond_0
    return-void

    .line 3139
    :catch_0
    move-exception v0

    .line 3140
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.setOnInfoListener(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3144
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 3145
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3149
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 3150
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.release() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resetCameraFlag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3249
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    .line 3250
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 3251
    return-void
.end method

.method private setCounter(Ljava/lang/String;I)V
    .locals 5
    .parameter "keyName"
    .parameter "v"

    .prologue
    .line 4617
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4618
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v2, p1, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4622
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 4619
    :catch_0
    move-exception v0

    .line 4620
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incCounter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setImageProperty()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 3867
    const-string v0, "pref_camera_contrast"

    const-string v1, "contrast"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3873
    const-string v0, "pref_camera_saturation"

    const-string v1, "saturation"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3879
    const-string v0, "pref_camera_shaprness"

    const-string v1, "sharpness"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3883
    return-void
.end method

.method private setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "pref_key"
    .parameter "param_key"
    .parameter "level_num"

    .prologue
    .line 3887
    const/4 v1, 0x0

    .line 3888
    .local v1, info:Lcom/android/camera/CameraController$SettingInfo;
    const/4 v3, 0x0

    .line 3889
    .local v3, value:I
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v4, p1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3891
    .local v2, level:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3893
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, p2, v5, p3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v3

    .line 3897
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3907
    :goto_0
    return-void

    .line 3898
    :catch_0
    move-exception v0

    .line 3899
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CameraThread"

    const-string v5, "get level failed !!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3900
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    .line 3901
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0

    .line 3904
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    .line 3905
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private stop_video_recording()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2556
    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-eqz v2, :cond_0

    .line 2558
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2562
    :goto_0
    const-string v2, "CameraThread"

    const-string v3, "stop recording, so cancel auto focus, mTakeFocus = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    sput-boolean v7, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    .line 2567
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2569
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v1

    .line 2570
    .local v1, keepSound:Z
    if-eqz v1, :cond_1

    .line 2572
    invoke-static {}, Lcom/android/camera/SoundEffect;->disableSoundEffect()I

    .line 2576
    .end local v1           #keepSound:Z
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_2

    .line 2579
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2589
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2590
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    .line 2591
    :cond_3
    const-string v2, "CameraThread"

    const-string v3, "stop video recording : reconnect camera device"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2597
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2598
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2602
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2629
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-eq v2, v6, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v6, :cond_a

    .line 2631
    :cond_5
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_9

    .line 2632
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2f

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 2648
    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2649
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v6, :cond_8

    .line 2651
    :cond_6
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->needsReview()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isUIReady()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2652
    :cond_7
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v7, v7, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2657
    :cond_8
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "CAMCORDER_MODE=OFF"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2659
    return-void

    .line 2559
    :catch_0
    move-exception v0

    .line 2560
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "cancel focus failed"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2580
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2581
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "CameraThread"

    const-string v3, "mRecorder.stop() - Runtime exception caught"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2592
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 2593
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "CameraThread"

    const-string v3, "camera reconnect exception."

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2599
    .end local v0           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2600
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop preview exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2634
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    goto/16 :goto_4

    .line 2637
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    goto/16 :goto_4
.end method

.method private stop_video_recording_delay()V
    .locals 19

    .prologue
    .line 2663
    const-string v2, "CameraThread"

    const-string v3, "stop_video_recording_delay start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    :try_start_0
    const-string v13, "video/3gpp"

    .line 2667
    .local v13, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2669
    const-string v13, "video/mp4"

    .line 2679
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v2, :cond_1

    .line 2681
    const-string v13, "video/mp4-3d"

    .line 2685
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 2689
    .local v17, filePath:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/android/camera/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 2696
    .local v18, thumb:Landroid/graphics/Bitmap;
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/ThumbnailEvent;

    const-string v4, "VideoThumbnailImage.Created"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v4, v0, v1}, Lcom/android/camera/ThumbnailEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 2697
    if-eqz v18, :cond_2

    .line 2699
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 2700
    const/16 v18, 0x0

    .line 2703
    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/DCFRuler$StorageCardControl;->setURIType(I)V

    .line 2705
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v14}, Lcom/android/camera/HTCCamera;->getRecordMS()J

    move-result-wide v14

    invoke-virtual/range {v2 .. v15}, Lcom/android/camera/ImageManager;->addVideo(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    .line 2720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    sget-object v3, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 2721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    .line 2722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v13, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 2725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/camera/ImageManager;->setVideoSize(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/VideoSavedEvent;

    const-string v4, "Media.Saved"

    sget-object v5, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v5, v0}, Lcom/android/camera/VideoSavedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2734
    .end local v13           #mimeType:Ljava/lang/String;
    .end local v17           #filePath:Ljava/lang/String;
    .end local v18           #thumb:Landroid/graphics/Bitmap;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2737
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->setRecPowerWarning(Z)V

    .line 2740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v2}, Lcom/android/camera/AutoUploader;->setSaveDone()V

    .line 2742
    const-string v2, "CameraThread"

    const-string v3, "stop_video_recording_delay end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    return-void

    .line 2691
    .restart local v13       #mimeType:Ljava/lang/String;
    .restart local v17       #filePath:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 2693
    .local v16, ex:Ljava/lang/Throwable;
    const/16 v18, 0x0

    .line 2694
    .restart local v18       #thumb:Landroid/graphics/Bitmap;
    :try_start_3
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create video thumbnail for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2729
    .end local v13           #mimeType:Ljava/lang/String;
    .end local v16           #ex:Ljava/lang/Throwable;
    .end local v17           #filePath:Ljava/lang/String;
    .end local v18           #thumb:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v16

    .line 2730
    .local v16, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "stop_video_recording(), create uri failed!!"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v4, "Media.SaveFailed"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v5, v0}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_1
.end method

.method private store_image([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;)Z
    .locals 18
    .parameter "jpeg_data"
    .parameter "callback"
    .parameter "dcfInfo"

    .prologue
    .line 4626
    :try_start_0
    const-string v2, "CameraThread"

    const-string v3, "Store Jpeg Image..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4631
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/camera/CameraThread;->getSavedFile(Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v17

    .line 4632
    .local v17, name_pack:Lcom/android/camera/DCFRuler$PathPackage;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/DCFRuler$StorageCardControl;->setURIType(I)V

    .line 4635
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v2, :cond_3

    .line 4637
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    const/4 v10, 0x0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    invoke-virtual/range {v2 .. v13}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    .line 4650
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v3, ".jps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    const-string v3, "image/jps"

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 4672
    :goto_0
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    .line 4673
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    .line 4674
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Store image - directory name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  file name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4677
    sget-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    .line 4678
    const-string v2, "CameraThread"

    const-string v3, "Store image: mLastContentUri = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    .line 4686
    :goto_1
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IAddImage_cancelable;

    move-result-object v16

    .line 4689
    .local v16, mAddImageCancelable:Lcom/android/camera/ImageManager$IAddImage_cancelable;
    invoke-interface/range {v16 .. v16}, Lcom/android/camera/ImageManager$IAddImage_cancelable;->get()V

    .line 4690
    const/16 v16, 0x0

    .line 4691
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mImageCounter:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/CameraThread;->setCounter(Ljava/lang/String;I)V

    .line 4692
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryCounter:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/CameraThread;->setCounter(Ljava/lang/String;I)V

    .line 4695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    sget-object v3, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 4696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    .line 4699
    if-eqz p2, :cond_0

    .line 4700
    sget-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/CameraThread$StorePictureCallback;->onPictureStored([BLandroid/net/Uri;Ljava/lang/String;)V

    .line 4722
    :cond_0
    const/4 v2, 0x1

    .end local v16           #mAddImageCancelable:Lcom/android/camera/ImageManager$IAddImage_cancelable;
    .end local v17           #name_pack:Lcom/android/camera/DCFRuler$PathPackage;
    :goto_2
    return v2

    .line 4653
    .restart local v17       #name_pack:Lcom/android/camera/DCFRuler$PathPackage;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    const-string v3, "image/mpo"

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 4702
    .end local v17           #name_pack:Lcom/android/camera/DCFRuler$PathPackage;
    :catch_0
    move-exception v14

    .line 4703
    .local v14, de:Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException;
    const-string v2, "CameraThread"

    const-string v3, "The number of the Files are over, please insert a new sdcard "

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4704
    if-eqz p2, :cond_2

    .line 4705
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Lcom/android/camera/CameraThread$StorePictureCallback;->onError([BLjava/lang/Exception;)V

    .line 4706
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v4, "Media.SaveFailed"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v14}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 4707
    const/4 v2, 0x0

    goto :goto_2

    .line 4657
    .end local v14           #de:Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException;
    .restart local v17       #name_pack:Lcom/android/camera/DCFRuler$PathPackage;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    const/4 v10, 0x0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v12}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    .line 4669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    const-string v3, "image/jpeg"

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 4708
    .end local v17           #name_pack:Lcom/android/camera/DCFRuler$PathPackage;
    :catch_1
    move-exception v15

    .line 4709
    .local v15, ex:Ljava/io/IOException;
    const-string v2, "CameraThread"

    const-string v3, "Cannot find available image file location, please check the storage card"

    invoke-static {v2, v3, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4710
    if-eqz p2, :cond_4

    .line 4711
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v15}, Lcom/android/camera/CameraThread$StorePictureCallback;->onError([BLjava/lang/Exception;)V

    .line 4712
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v4, "Media.SaveFailed"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v15}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 4713
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 4683
    .end local v15           #ex:Ljava/io/IOException;
    .restart local v17       #name_pack:Lcom/android/camera/DCFRuler$PathPackage;
    :cond_5
    :try_start_2
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Store image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 4714
    .end local v17           #name_pack:Lcom/android/camera/DCFRuler$PathPackage;
    :catch_2
    move-exception v15

    .line 4715
    .local v15, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "Exception while compressing image."

    invoke-static {v2, v3, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4716
    if-eqz p2, :cond_6

    .line 4717
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v15}, Lcom/android/camera/CameraThread$StorePictureCallback;->onError([BLjava/lang/Exception;)V

    .line 4718
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v4, "Media.SaveFailed"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v15}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 4719
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method private store_image_on_data([B)V
    .locals 3
    .parameter "jpeg_data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4726
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/test_image.jpg"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4728
    .local v0, buf:Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 4729
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 4730
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 4731
    return-void
.end method

.method private store_image_on_sdcard([B)V
    .locals 3
    .parameter "jpeg_data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4734
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sdcard/test_image.jpg"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4736
    .local v0, buf:Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 4737
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 4738
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 4739
    return-void
.end method

.method private final threadAccessCheck()V
    .locals 2

    .prologue
    .line 5716
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5717
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5718
    :cond_0
    return-void
.end method


# virtual methods
.method public IsEqualOrAbove720p()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3346
    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_1

    .line 3357
    :cond_0
    :goto_0
    return v2

    .line 3349
    :cond_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 3350
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v4}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 3352
    .local v1, r:Lcom/android/camera/Resolution;
    sget-object v4, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 3353
    goto :goto_0

    .line 3354
    :cond_3
    sget-object v4, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    .line 3355
    goto :goto_0
.end method

.method public calculatePicturesRemaining()J
    .locals 17

    .prologue
    .line 4822
    const-string v13, "CameraThread"

    const-string v14, "calculatePicturesRemaining() - start"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4824
    const-wide/16 v4, 0x0

    .line 4826
    .local v4, freeshot:J
    :try_start_0
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v13, v14}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v8

    .line 4828
    .local v8, resolution:Lcom/android/camera/Resolution;
    invoke-static {}, Lcom/android/camera/ResolutionSize;->getInstance()Lcom/android/camera/ResolutionSize;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getNameResId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ResolutionSize;->getSize(ILjava/lang/String;)I

    move-result v13

    int-to-long v2, v13

    .line 4830
    .local v2, fSize:J
    const-wide/16 v13, -0x1

    cmp-long v13, v13, v2

    if-nez v13, :cond_0

    .line 4831
    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getResolutionSize fail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4833
    const-wide/32 v2, 0x61a80

    .line 4838
    :cond_0
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4840
    .local v12, storageDirectory:Ljava/lang/String;
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4841
    .local v11, stat:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v15, v15

    mul-long/2addr v13, v15

    const-wide/32 v15, 0x100000

    sub-long v9, v13, v15

    .line 4843
    .local v9, space:J
    div-long v6, v9, v2

    .line 4844
    .local v6, remaining:J
    move-wide v4, v6

    .line 4846
    const-wide/16 v13, 0x0

    cmp-long v13, v4, v13

    if-gez v13, :cond_1

    .line 4847
    const-wide/16 v4, 0x0

    .line 4849
    :cond_1
    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "return freeshot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4857
    .end local v2           #fSize:J
    .end local v6           #remaining:J
    .end local v8           #resolution:Lcom/android/camera/Resolution;
    .end local v9           #space:J
    .end local v11           #stat:Landroid/os/StatFs;
    .end local v12           #storageDirectory:Ljava/lang/String;
    :goto_0
    const-string v13, "CameraThread"

    const-string v14, "calculatePicturesRemaining() - end"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4858
    return-wide v4

    .line 4851
    :catch_0
    move-exception v1

    .line 4852
    .local v1, ex:Ljava/lang/Exception;
    const-string v13, "CameraThread"

    const-string v14, "catch - calculatePicturesRemaining with exception: "

    invoke-static {v13, v14, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4853
    const-string v13, "CameraThread"

    const-string v14, "return freeshot = -1"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4854
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 5803
    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICS focus calculateTapArea:x,y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5804
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 5805
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 5806
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/CameraThread;->clamp(III)I

    move-result v3

    .line 5807
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/CameraThread;->clamp(III)I

    move-result v5

    .line 5810
    .local v5, top:I
    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICS focus calculateTapArea:left,right,top,bottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5816
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5817
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v6, :cond_0

    .line 5818
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5820
    :cond_0
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/CameraThread;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 5821
    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICS focus calculateTapArea:left,right,top,bottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5826
    return-void
.end method

.method public canTakePicture()Z
    .locals 1

    .prologue
    .line 3292
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method public final changeZoom(I)V
    .locals 6
    .parameter "zoom"

    .prologue
    const/16 v5, 0x46

    .line 5509
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, p0, :cond_a

    .line 5511
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - start sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5514
    sget v1, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    .line 5515
    .local v1, oldZoom:I
    if-ne v1, p1, :cond_0

    .line 5598
    .end local v1           #oldZoom:I
    :goto_0
    return-void

    .line 5519
    .restart local v1       #oldZoom:I
    :cond_0
    sput p1, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    .line 5522
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v2, :cond_2

    .line 5524
    :cond_1
    const-string v2, "CameraThread"

    const-string v3, "Camera is not open, cannot change zoom"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5529
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v2

    if-nez v2, :cond_9

    .line 5531
    if-ge v1, p1, :cond_6

    .line 5533
    move v0, v1

    .line 5536
    .local v0, currentZoom:I
    :cond_3
    add-int/lit8 v2, v0, 0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5537
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 5538
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 5539
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5541
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending zooming request found, stop zooming at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5542
    sput v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    .line 5584
    .end local v0           #currentZoom:I
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/OneValueEvent;

    const-string v4, "Zoom.Changed"

    sget v5, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 5586
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - end sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5545
    .restart local v0       #currentZoom:I
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 5546
    if-lt v0, p1, :cond_3

    goto :goto_1

    .line 5550
    .end local v0           #currentZoom:I
    :cond_6
    move v0, v1

    .line 5553
    .restart local v0       #currentZoom:I
    :cond_7
    add-int/lit8 v2, v0, -0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5554
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 5555
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 5556
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5558
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending zooming request found, stop zooming at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5559
    sput v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    goto :goto_1

    .line 5562
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 5563
    if-gt v0, p1, :cond_7

    goto :goto_1

    .line 5568
    .end local v0           #currentZoom:I
    :cond_9
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v3, p1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 5569
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 5572
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5576
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 5578
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 5588
    .end local v1           #oldZoom:I
    :cond_a
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_b

    .line 5590
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - start async"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5592
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v5, p1, v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 5594
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - end async"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5597
    :cond_b
    const-string v2, "CameraThread"

    const-string v3, "Cannot change zoom because there is no handler"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method close_camera()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5071
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v2, v4, :cond_0

    .line 5073
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording()V

    .line 5074
    iput-boolean v5, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    .line 5078
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-ne v2, v4, :cond_1

    .line 5080
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5084
    :goto_0
    const-string v2, "CameraThread"

    const-string v3, "cancel auto focus, mTakeFocus = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5085
    sput-boolean v5, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    .line 5088
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-ne v2, v4, :cond_2

    .line 5090
    const-string v2, "CameraThread"

    const-string v3, "before stopPreview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5091
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 5092
    iput-boolean v5, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 5093
    const-string v2, "CameraThread"

    const-string v3, "after stopPreview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5097
    :cond_2
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    .line 5098
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->resetJpegData()V

    .line 5100
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_4

    .line 5101
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 5102
    const-string v2, "CameraThread"

    const-string v3, "before release"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    new-instance v0, Lcom/android/camera/CloseCameraRequestEvent;

    const-string v2, "Request.CloseCamera"

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v0, v2, v3}, Lcom/android/camera/CloseCameraRequestEvent;-><init>(Ljava/lang/String;Landroid/hardware/Camera;)V

    .line 5108
    .local v0, event:Lcom/android/camera/CloseCameraRequestEvent;
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 5116
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/CloseCameraRequestEvent;->isHandled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5117
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 5119
    :cond_3
    const-string v2, "CameraThread"

    const-string v3, "after release"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5120
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    .line 5121
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 5122
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 5124
    iput v5, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 5125
    const-string v2, "CameraThread"

    const-string v3, "close camera - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5128
    sput-boolean v4, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    .line 5129
    const-string v2, "CameraThread"

    const-string v3, "Release Camera - set mIsLastCameraClosed to true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5132
    .end local v0           #event:Lcom/android/camera/CloseCameraRequestEvent;
    :goto_2
    return-void

    .line 5081
    :catch_0
    move-exception v1

    .line 5082
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "cancel focus failed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5110
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #event:Lcom/android/camera/CloseCameraRequestEvent;
    :catch_1
    move-exception v1

    .line 5112
    .local v1, ex:Ljava/lang/Throwable;
    const-string v2, "CameraThread"

    const-string v3, "Exception was occurred while requesting close camera"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5131
    .end local v0           #event:Lcom/android/camera/CloseCameraRequestEvent;
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_4
    const-string v2, "CameraThread"

    const-string v3, "mCameraDevice == null in close_camera"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final createPostViewImage(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 5779
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5794
    :goto_0
    return-void

    .line 5783
    :cond_0
    if-nez p1, :cond_1

    .line 5785
    const-string v0, "CameraThread"

    const-string v1, "!!!!!!!! bitmap == null !!!!!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5789
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "bitmap != null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5791
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5792
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/PictureEvent;

    const-string v2, "ReviewAnimation.PostviewCreated"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/camera/PictureEvent;-><init>(Ljava/lang/String;[BLandroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 5793
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public final createPostViewImage([B)V
    .locals 11
    .parameter "postviewData"

    .prologue
    const/4 v10, 0x0

    .line 5750
    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 5775
    :cond_0
    :goto_0
    return-void

    .line 5754
    :cond_1
    if-nez p1, :cond_2

    .line 5756
    const-string v7, "CameraThread"

    const-string v8, "!!!!!!!! postviewData == null !!!!!!!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5760
    :cond_2
    const-string v7, "CameraThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postviewData != null, postviewData.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5762
    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 5763
    .local v4, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v4, :cond_0

    .line 5766
    const-string v7, "postview-size"

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5767
    .local v5, str:Ljava/lang/String;
    const/16 v7, 0x78

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 5768
    .local v2, nIndex:I
    invoke-virtual {v5, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 5769
    .local v6, strTmp:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5770
    .local v1, nHeight:I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 5771
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5772
    .local v3, nWidth:I
    sget-object v7, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    invoke-static {v1, v3, v7, p1}, Lcom/android/camera/ImageUtility;->createBitmapFromRawData(IILcom/scalado/base/Image$Config;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5773
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v8, Lcom/android/camera/PictureEvent;

    const-string v9, "ReviewAnimation.PostviewCreated"

    invoke-direct {v8, v9, p1, v0, v10}, Lcom/android/camera/PictureEvent;-><init>(Ljava/lang/String;[BLandroid/graphics/Bitmap;Z)V

    invoke-virtual {v7, v8}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 5774
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public final deleteLatestMedia()V
    .locals 6

    .prologue
    .line 5605
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 5607
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5610
    new-instance v2, Lcom/android/camera/DeletionRequestEvent;

    const-string v4, "Request.DeleteLatestMedia"

    invoke-direct {v2, v4}, Lcom/android/camera/DeletionRequestEvent;-><init>(Ljava/lang/String;)V

    .line 5611
    .local v2, event:Lcom/android/camera/DeletionRequestEvent;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v4, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 5614
    invoke-virtual {v2}, Lcom/android/camera/DeletionRequestEvent;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5616
    const-string v4, "CameraThread"

    const-string v5, "Use default method to delete latest media"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5622
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 5623
    .local v1, context:Landroid/content/Context;
    sget-object v0, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    .line 5624
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/camera/CameraThread$5;

    const-string v4, "Default media deletion thread"

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/android/camera/CameraThread$5;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    .line 5660
    .local v3, workerThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 5662
    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 5673
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #workerThread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5689
    .end local v2           #event:Lcom/android/camera/DeletionRequestEvent;
    :goto_1
    return-void

    .line 5665
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #event:Lcom/android/camera/DeletionRequestEvent;
    .restart local v3       #workerThread:Ljava/lang/Thread;
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/DCFRuler;->backToCounterForImage(Landroid/app/Activity;Lcom/android/camera/DCFInfo;)V

    goto :goto_0

    .line 5668
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/DCFRuler;->backToCounterForVideo(Landroid/app/Activity;)V

    goto :goto_0

    .line 5675
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #event:Lcom/android/camera/DeletionRequestEvent;
    .end local v3           #workerThread:Ljava/lang/Thread;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v4, :cond_2

    .line 5677
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5678
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v5, Lcom/android/camera/CameraThread$6;

    invoke-direct {v5, p0}, Lcom/android/camera/CameraThread$6;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 5685
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5688
    :cond_2
    const-string v4, "CameraThread"

    const-string v5, "Cannot delete media because there is no handler"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableShutterSound(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3328
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    .line 3329
    return-void

    .line 3328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final endTakePicture()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5237
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 5240
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v0, :cond_0

    .line 5242
    const-string v0, "CameraThread"

    const-string v1, "mTaking_picture == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5264
    :goto_0
    return-void

    .line 5247
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 5248
    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 5251
    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eq v0, v1, :cond_1

    .line 5253
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sending CLOSE_CAMERA message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5254
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 5263
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Capture.Ended"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 5258
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "reset mCaptureState to CAPTURE_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5259
    iput v2, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    goto :goto_1
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public final getCameraType()I
    .locals 1

    .prologue
    .line 5696
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5697
    const/4 v0, 0x2

    .line 5700
    :goto_0
    return v0

    .line 5698
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5699
    const/4 v0, 0x3

    goto :goto_0

    .line 5700
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCaptureHeight()I
    .locals 1

    .prologue
    .line 3317
    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    .line 3318
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    .line 3320
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getCaptureWidth()I
    .locals 1

    .prologue
    .line 3310
    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    .line 3311
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    .line 3313
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    goto :goto_0
.end method

.method public final getCommonCaptureHandler()Lcom/android/camera/CameraThread$CommonCaptureHandler;
    .locals 1

    .prologue
    .line 5205
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "name"

    .prologue
    .line 5197
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    .prologue
    .line 5189
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    return-object v0
.end method

.method public final getEventManager()Lcom/android/camera/EventManager;
    .locals 1

    .prologue
    .line 5708
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    .prologue
    .line 3260
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-object v0
.end method

.method public final getLastMediaInfo()Lcom/android/camera/MediaInfo;
    .locals 1

    .prologue
    .line 5725
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0}, Lcom/android/camera/MediaInfo;->clone()Lcom/android/camera/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMaximumZoom()I
    .locals 1

    .prologue
    .line 5501
    iget v0, p0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    return v0
.end method

.method public final getMinimumZoom()I
    .locals 1

    .prologue
    .line 5493
    iget v0, p0, Lcom/android/camera/CameraThread;->m_MinZoom:I

    return v0
.end method

.method public final getMode()I
    .locals 1

    .prologue
    .line 5454
    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 3303
    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    .line 3304
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    .line 3306
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 3296
    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    .line 3297
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3299
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    goto :goto_0
.end method

.method public getRecorderStatus()Z
    .locals 1

    .prologue
    .line 3284
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    return v0
.end method

.method public getRecordingTime()J
    .locals 6

    .prologue
    .line 5730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5731
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getStoredDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5140
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    return-object v0
.end method

.method public getStoredFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5135
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    return-object v0
.end method

.method getStoredVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5144
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public hasShutterSound()Z
    .locals 1

    .prologue
    .line 3324
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    return v0
.end method

.method public final interruptCapture()V
    .locals 2

    .prologue
    .line 5213
    const-string v0, "CameraThread"

    const-string v1, "interruptCapture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5216
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 5219
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v0, :cond_0

    .line 5221
    const-string v0, "CameraThread"

    const-string v1, "Capturing is not in progress"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5229
    :goto_0
    return-void

    .line 5226
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsCaptureInterrupted:Z

    .line 5228
    const-string v0, "CameraThread"

    const-string v1, "interruptCapture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public is2ndCamera()Z
    .locals 1

    .prologue
    .line 3332
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    return v0
.end method

.method public is3DMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4919
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4925
    :cond_0
    :goto_0
    return v0

    .line 4922
    :cond_1
    iget v2, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 4925
    goto :goto_0
.end method

.method public is720p()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3336
    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_1

    .line 3342
    :cond_0
    :goto_0
    return v2

    .line 3339
    :cond_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 3340
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v3}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 3342
    .local v1, r:Lcom/android/camera/Resolution;
    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isCameraTakingPicture()Z
    .locals 1

    .prologue
    .line 3288
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method public isLastCameraClosed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2109
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 2111
    sget-boolean v1, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    if-nez v1, :cond_1

    .line 2112
    const-string v1, "CameraThread"

    const-string v2, "mIsLastCameraClosed = false, waiting for last camera close"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    :goto_0
    return v0

    .line 2117
    :cond_0
    iget v1, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eqz v1, :cond_1

    .line 2118
    const-string v1, "CameraThread"

    const-string v2, "mCaptureState != CAPTURE_STATE_IDLE, waiting for camera close"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2123
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 3254
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return v0
.end method

.method public isRecPowerWarning()Z
    .locals 1

    .prologue
    .line 5737
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    return v0
.end method

.method public final isShutterSoundNeeded()Z
    .locals 1

    .prologue
    .line 5169
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTakingFocus()Z
    .locals 1

    .prologue
    .line 5290
    sget-boolean v0, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    return v0
.end method

.method public final isTakingPicture()Z
    .locals 1

    .prologue
    .line 5308
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method public final isWaitingForTakingFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5280
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_1

    .line 5281
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5282
    :cond_1
    return v0
.end method

.method public final isWaitingForTakingPicture()Z
    .locals 2

    .prologue
    .line 5298
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    .line 5299
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    .line 5300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isZoomRangeRetrieved()Z
    .locals 2

    .prologue
    .line 5485
    iget v0, p0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final playShutterSound()V
    .locals 5

    .prologue
    .line 5177
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    if-nez v0, :cond_0

    .line 5179
    const-string v0, "CameraThread"

    const-string v1, "Play Take Picture Sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5180
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const v2, 0x7f060001

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 5182
    :cond_0
    return-void
.end method

.method public releaseCameraThread()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3167
    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 3168
    iput-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 3169
    return-void
.end method

.method public resetJpegData()V
    .locals 1

    .prologue
    .line 3264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 3265
    return-void
.end method

.method public final restartPreview(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 2499
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2501
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartPreview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 2503
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraThread;->startPreview(I)V

    .line 2504
    const-string v0, "CameraThread"

    const-string v1, "restartPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    :goto_0
    return-void

    .line 2506
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_1

    .line 2508
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartPreview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start async"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CameraThread$1;-><init>(Lcom/android/camera/CameraThread;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2516
    const-string v0, "CameraThread"

    const-string v1, "restartPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2519
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "Cannot re-start preview because there is no handler for camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 3178
    const-string v0, "CameraThread"

    const-string v1, "*************************************** run"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3180
    new-instance v0, Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    .line 3183
    new-instance v0, Lcom/android/camera/EventManager;

    invoke-direct {v0, p0}, Lcom/android/camera/EventManager;-><init>(Lcom/android/camera/IEventManagerOwner;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    .line 3186
    new-instance v0, Lcom/android/camera/component/ComponentManager;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ComponentManager;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    .line 3187
    new-instance v0, Lcom/android/camera/component/CameraThreadComponentFactory;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v0, v1}, Lcom/android/camera/component/CameraThreadComponentFactory;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0}, Lcom/android/camera/component/CameraThreadComponentFactory;->createAllSupportedComponents()V

    .line 3190
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->enableAutoInitialization(Z)V

    .line 3193
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3195
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3196
    const-string v0, "CameraThread"

    const-string v1, "Cannot notify UI that camera thread is running, because message cannot be sent"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    .line 3217
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3220
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentManager;->removeComponents()V

    .line 3223
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v0}, Lcom/android/camera/EventManager;->close()V

    .line 3224
    return-void

    .line 3199
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "Cannot notify UI that camera thread is running, because there is no UI handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setCanStartPreview()V
    .locals 1

    .prologue
    .line 5271
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 5272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 5273
    return-void
.end method

.method public final setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 5436
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 5439
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-eqz v0, :cond_0

    .line 5441
    const-string v0, "CameraThread"

    const-string v1, "Set capture handler while taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5442
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set capture handler while taking picture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5446
    :cond_0
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCaptureHandler:Lcom/android/camera/ICaptureHandler;

    .line 5447
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 5152
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 5154
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v0, :cond_1

    .line 5162
    :cond_0
    :goto_0
    return-void

    .line 5157
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5159
    :cond_2
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    .line 5160
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    .line 5161
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method public final setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 5462
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5465
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 5467
    const-string v0, "CameraThread"

    const-string v1, "Cannot set mode during preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5468
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot set mode during preview"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5470
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-eqz v0, :cond_1

    .line 5472
    const-string v0, "CameraThread"

    const-string v1, "Cannot set mode during recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5473
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot set mode during recording"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5477
    :cond_1
    iput p1, p0, Lcom/android/camera/CameraThread;->mMode:I

    .line 5478
    return-void
.end method

.method public setRecPowerWarning(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 5741
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mRecPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5742
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    .line 5743
    return-void
.end method

.method public showStorageToast(Z)V
    .locals 12
    .parameter "checkSize"

    .prologue
    const/16 v11, 0x8a

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x25

    .line 4930
    sget-boolean v3, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v3, :cond_4

    .line 4933
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v3, :cond_4

    .line 4935
    const-string v3, "CameraThread"

    const-string v4, "no storage, ready to switch"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4936
    sget v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    .line 4937
    .local v1, old_status:I
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/DCFRuler$StorageCardControl;->toggleStorageType(Landroid/app/Activity;)V

    .line 4938
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()V

    .line 4939
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v3, :cond_3

    .line 4941
    if-ne p1, v9, :cond_0

    .line 4942
    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_1

    .line 4943
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 4944
    const/4 v3, 0x3

    sput v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    .line 4955
    :cond_0
    :goto_0
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 4956
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4957
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v3

    if-nez v3, :cond_2

    const v0, 0x7f0a0152

    .line 4960
    .local v0, mode:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7, v0, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4961
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 5066
    .end local v0           #mode:I
    .end local v1           #old_status:I
    :goto_2
    return-void

    .line 4947
    .restart local v1       #old_status:I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4948
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v4}, Lcom/android/camera/RecordLimitCheck;->setByteRate(Lcom/android/camera/HTCCamera;)V

    .line 4949
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/RecordLimitCheck;->remainTime(Z)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 4950
    const/4 v3, 0x3

    sput v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    goto :goto_0

    .line 4957
    :cond_2
    const v0, 0x7f0a0153

    goto :goto_1

    .line 4965
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/DCFRuler$StorageCardControl;->toggleStorageType(Landroid/app/Activity;)V

    .line 4967
    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    .line 4974
    .end local v1           #old_status:I
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v3

    if-ne v3, v9, :cond_5

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v9, :cond_5

    .line 4976
    const-string v3, "CameraThread"

    const-string v4, "take picture on contact picture request - not show storage status"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4980
    :cond_5
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 4984
    :pswitch_0
    const/4 v2, 0x0

    .line 4985
    .local v2, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v3

    if-ne v3, v9, :cond_7

    .line 4986
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 4990
    :goto_3
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@@@ status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 4992
    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4993
    const-string v3, "CameraThread"

    const-string v4, "media shared"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4994
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4997
    sget-boolean v3, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v3, :cond_8

    .line 4999
    const v0, 0x7f0a0037

    .line 5000
    .restart local v0       #mode:I
    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v3, v9, :cond_6

    .line 5001
    const v0, 0x7f0a0038

    .line 5025
    :cond_6
    :goto_4
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7, v0, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 4988
    .end local v0           #mode:I
    :cond_7
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 5004
    :cond_8
    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_a

    .line 5006
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v11, :cond_9

    .line 5007
    const v0, 0x7f0a0037

    .restart local v0       #mode:I
    goto :goto_4

    .line 5009
    .end local v0           #mode:I
    :cond_9
    const v0, 0x7f0a0035

    .restart local v0       #mode:I
    goto :goto_4

    .line 5013
    .end local v0           #mode:I
    :cond_a
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v11, :cond_b

    .line 5014
    const v0, 0x7f0a0038

    .restart local v0       #mode:I
    goto :goto_4

    .line 5016
    .end local v0           #mode:I
    :cond_b
    const v0, 0x7f0a0036

    .restart local v0       #mode:I
    goto :goto_4

    .line 5028
    .end local v0           #mode:I
    :cond_c
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "media status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5030
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5032
    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "bad_removal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5036
    :cond_d
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x20c00a1

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5041
    :cond_e
    invoke-static {}, Lcom/android/camera/ImageManager;->isNonWritable()Z

    move-result v3

    if-ne v3, v9, :cond_10

    .line 5042
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v11, :cond_f

    .line 5043
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0039

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5045
    :cond_f
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0032

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5047
    :cond_10
    const-string v3, "CameraThread"

    const-string v4, "no storage - unknown case, maybe prepare storage"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5052
    .end local v2           #status:Ljava/lang/String;
    :pswitch_1
    const-string v3, "CameraThread"

    const-string v4, "cannot know storage state"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5055
    :pswitch_2
    const-string v3, "CameraThread"

    const-string v4, "storage full"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5056
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5057
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v3

    if-ne v3, v9, :cond_11

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v3, v11, :cond_11

    .line 5059
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0033

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5061
    :cond_11
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0034

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 4980
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startPreview(I)V
    .locals 22
    .parameter "status"

    .prologue
    .line 2130
    const-string v17, "CameraThread"

    const-string v18, "startPreview() - start"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2133
    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Camera has been in Prevewing. mPreviewing="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mMode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    :cond_0
    :goto_0
    return-void

    .line 2138
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2139
    const-string v17, "CameraThread"

    const-string v18, "isRecPowerWarning(), won\'t start preview"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2144
    :cond_2
    sget v17, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2145
    const/16 v17, 0x0

    sput v17, Lcom/android/camera/CameraThread;->Storage_Status:I

    .line 2147
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_switch"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    .line 2153
    invoke-static {}, Lcom/android/camera/HTCCameraAdvanceSetting;->isSetDefault()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2154
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    .line 2156
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 2157
    const-string v17, "CameraThread"

    const-string v18, "open the Camera in start_camera_preview"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    .line 2161
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 2163
    invoke-static {}, Lcom/android/camera/SensorHolder;->getSecondCamID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    .line 2197
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mHtcCallback:Lcom/android/camera/CameraThread$HtcCallback;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setHtcCallback(Landroid/hardware/Camera$HtcCallback;)V

    .line 2203
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    .line 2204
    const-string v17, "CameraThread"

    const-string v18, "Open Camera - set mIsLastCameraClosed to false"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2227
    new-instance v17, Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->setSupportedList()V

    .line 2231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    move/from16 v17, v0

    const/high16 v18, -0x8000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "taking-picture-zoom"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v9

    .line 2235
    .local v9, info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->m_MinZoom:I

    .line 2236
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    .line 2239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/camera/RangeEvent;

    const-string v19, "Zoom.RangeRetrieved"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m_MinZoom:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lcom/android/camera/RangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 2242
    .end local v9           #info:Lcom/android/camera/CameraController$SettingInfo;
    :cond_6
    const/16 p1, 0x1

    .line 2248
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 2250
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    if-nez v17, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v17

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_18

    .line 2252
    const-string v17, "CameraThread"

    const-string v18, "Enable zero-shutter-lag"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "capture-mode"

    const-string v19, "burst"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "picture-count"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 2263
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2272
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z

    .line 2275
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_3D_status"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v19

    invoke-static/range {v17 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 2280
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x1f

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "touch-aec"

    const-string v19, "off"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    .line 2284
    const-string v17, "CameraThread"

    const-string v18, "Disable touch aec !!!"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    const-string v17, "CameraThread"

    const-string v18, "Start preview - disable continue AF !!!"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x2e

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "enable-caf"

    const-string v19, "off"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    .line 2292
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 2293
    const-string v17, "CameraThread"

    const-string v18, "reset flashlight mode !!!"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "off"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 2297
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_fast_fps"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2301
    .local v7, fastFPS:Z
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 2303
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cam-mode"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 2324
    .end local v7           #fastFPS:Z
    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canChangeFrameRate()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2326
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const/16 v18, 0x3a98

    const/16 v19, 0x3a98

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2336
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_front_camera_mode"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 2340
    .local v13, mirror:Z
    if-eqz v13, :cond_1d

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "front-camera-mode"

    const-string v19, "mirror"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    .end local v13           #mirror:Z
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2368
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->loadResolution()V

    .line 2370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_1e

    .line 2371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 2372
    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SetPreviewSize: CAMERA MODE, Width = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    .line 2375
    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SetPictureSize: CAMERA MODE, Width = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Camera mode RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2397
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "taking-picture-zoom"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v9

    .line 2399
    .restart local v9       #info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v12

    .line 2400
    .local v12, minZoom:I
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v11

    .line 2402
    .local v11, maxZoom:I
    sget-boolean v17, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 2403
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v17

    sput v17, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    .line 2404
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 2407
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    if-nez v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v17

    if-nez v17, :cond_20

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "taking-picture-zoom"

    sget v19, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 2413
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    const/16 v18, 0x5a

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    .line 2418
    .local v8, holder:Landroid/view/SurfaceHolder;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2425
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v17, v0

    const-string v18, "Preview.Starting"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 2430
    :try_start_3
    const-string v17, "CameraThread"

    const-string v18, "mCameraDevice.startPreview() - start"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera;->startPreview()V

    .line 2432
    const-string v17, "CameraThread"

    const-string v18, "mCameraDevice.startPreview() - end"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2433
    const/16 v16, 0x1

    .line 2441
    .local v16, succeeded:Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    move/from16 v17, v0

    if-nez v17, :cond_21

    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_21

    .line 2442
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2448
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->start_calculate_fps()V

    .line 2450
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 2453
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x54

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2460
    :cond_10
    if-eqz v16, :cond_11

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v17, v0

    const-string v18, "Preview.Started"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 2463
    :cond_11
    const-string v17, "CameraThread"

    const-string v18, "start preview, mTakeFocus = false"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    .line 2466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v17

    if-nez v17, :cond_12

    .line 2471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1f

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x23

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2d

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    .line 2484
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_22

    .line 2486
    const-string v17, "[ANALYTIC_com.android.camera]"

    const-string v18, "[camera_preview]complete"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    :goto_c
    const-string v17, "CameraThread"

    const-string v18, "startPreview() - end"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2172
    .end local v8           #holder:Landroid/view/SurfaceHolder;
    .end local v9           #info:Lcom/android/camera/CameraController$SettingInfo;
    .end local v11           #maxZoom:I
    .end local v12           #minZoom:I
    .end local v16           #succeeded:Z
    :cond_13
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v15

    .line 2177
    .local v15, powerRestrict:Lcom/android/camera/FlashRestriction;
    invoke-virtual {v15}, Lcom/android/camera/FlashRestriction;->checkLowPower()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 2178
    const-string v17, "CameraThread"

    const-string v18, "power is low in 3D mode, won\'t start preview"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x3b

    const-wide/16 v19, 0x64

    invoke-static/range {v17 .. v20}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 2206
    .end local v15           #powerRestrict:Lcom/android/camera/FlashRestriction;
    :catch_0
    move-exception v6

    .line 2207
    .local v6, ex:Ljava/lang/Exception;
    const-string v17, "CameraThread"

    const-string v18, "open camera failed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2209
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xda

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 2211
    const v14, 0x7f0a004b

    .line 2212
    .local v14, mode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 2213
    const v14, 0x7f0a004c

    .line 2214
    :cond_14
    const/16 v4, 0x7d0

    .line 2215
    .local v4, DELLAY_FOR_SHOW_LAUNCH_FAIL_MESSAGE:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const/16 v18, 0x25

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2217
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v0, v4

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2223
    .end local v4           #DELLAY_FOR_SHOW_LAUNCH_FAIL_MESSAGE:I
    .end local v14           #mode:I
    :cond_15
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2185
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_16
    :try_start_6
    invoke-static {}, Lcom/android/camera/SensorHolder;->get3DCamID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 2193
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto/16 :goto_1

    .line 2189
    :cond_17
    invoke-static {}, Lcom/android/camera/SensorHolder;->getMainCamID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_e

    .line 2218
    .restart local v4       #DELLAY_FOR_SHOW_LAUNCH_FAIL_MESSAGE:I
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v14       #mode:I
    :catch_1
    move-exception v5

    .line 2220
    .local v5, e:Ljava/lang/InterruptedException;
    const-string v17, "CameraThread"

    const-string v18, "Camera thread was interrupted when show toast due to sensor resource is locked"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 2258
    .end local v4           #DELLAY_FOR_SHOW_LAUNCH_FAIL_MESSAGE:I
    .end local v5           #e:Ljava/lang/InterruptedException;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v14           #mode:I
    :cond_18
    const-string v17, "CameraThread"

    const-string v18, "Disable zero-shutter-lag"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "capture-mode"

    const-string v19, "normal"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2265
    :catch_2
    move-exception v6

    .line 2267
    .local v6, ex:Ljava/lang/RuntimeException;
    const-string v17, "CameraThread"

    const-string v18, "Cannot enable/disable zero-shutter-lag"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2309
    .end local v6           #ex:Ljava/lang/RuntimeException;
    .restart local v7       #fastFPS:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v10

    .line 2310
    .local v10, keepSound:Z
    if-eqz v10, :cond_1a

    .line 2311
    invoke-static {}, Lcom/android/camera/SoundEffect;->disableSoundEffect()I

    .line 2314
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cam-mode"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 2319
    .end local v7           #fastFPS:Z
    .end local v10           #keepSound:Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cam-mode"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 2331
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const v19, 0x30d40

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_5

    .line 2344
    .restart local v13       #mirror:Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "front-camera-mode"

    const-string v19, "reverse"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2381
    .end local v13           #mirror:Z
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 2383
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 2384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x67

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2385
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 2386
    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SetPreviewSize in start_preview: VIDEO MODE, Width = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Video mode in start_preview RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_7

    .line 2410
    .restart local v9       #info:Lcom/android/camera/CameraController$SettingInfo;
    .restart local v11       #maxZoom:I
    .restart local v12       #minZoom:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "taking-picture-zoom"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 2419
    .restart local v8       #holder:Landroid/view/SurfaceHolder;
    :catch_3
    move-exception v6

    .line 2420
    .local v6, ex:Ljava/io/IOException;
    const-string v17, "CameraThread"

    const-string v18, "mCameraDevice.setPreviewDisplay failed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_9

    .line 2434
    .end local v6           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 2435
    .local v6, ex:Ljava/lang/Exception;
    const-string v17, "CameraThread"

    const-string v18, "start preview failed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->finish()V

    .line 2437
    const/16 v16, 0x0

    .restart local v16       #succeeded:Z
    goto/16 :goto_a

    .line 2445
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_21
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    goto/16 :goto_b

    .line 2489
    :cond_22
    const-string v17, "[ANALYTIC_com.android.camera]"

    const-string v18, "[camcorder_preview]complete"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public final startScaladoPostProcessing(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 5428
    return-void
.end method

.method public start_calculate_fps()V
    .locals 0

    .prologue
    .line 3229
    return-void
.end method

.method start_video_recording(I)V
    .locals 24
    .parameter "status"

    .prologue
    .line 2748
    const-string v3, "CameraThread"

    const-string v4, "start_video_recording - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2752
    const-string v3, "CameraThread"

    const-string v4, "start recording before stop recoding delay"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v4, 0x2f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2754
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    .line 2757
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_1

    .line 2758
    const-string v3, "CameraThread"

    const-string v4, "mRecorder != null in start video recording"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2762
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_2

    .line 2763
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2769
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    .line 2770
    const-string v3, "CameraThread"

    const-string v4, "mCameraDevice is null in start video recording"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    :goto_0
    return-void

    .line 2774
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v3, :cond_4

    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 2776
    const-string v3, "CameraThread"

    const-string v4, "Start recording and not touch focus - enable continue AF !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v4, "enable-caf"

    const-string v5, "on"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2780
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    .line 2784
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "CAMCORDER_MODE=ON"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2790
    const-string v3, "CameraThread"

    const-string v4, "Won\'t access mCameraDevice due to PowerWarning"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2794
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/CameraThread;->mRecording:Z

    .line 2795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 2796
    const-string v3, "CameraThread"

    const-string v4, "start video recording: unlock camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 2799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v20

    .line 2800
    .local v20, orientation:I
    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_f

    .line 2801
    const-string v3, "CameraThread"

    const-string v4, "orientation = OrientationEventListener.ORIENTATION_UNKNOWN"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    const/16 v20, 0x0

    .line 2807
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v3, :cond_6

    .line 2809
    const-string v3, "CameraThread"

    const-string v4, "set rotation landscape while 3D video mode"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    const/16 v20, 0x0

    .line 2813
    :cond_6
    invoke-static/range {v20 .. v20}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    .line 2814
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set rotation, mCaptureRotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v4}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-static {v4}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2820
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    .line 2822
    .local v14, holder:Landroid/view/SurfaceHolder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v14}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v15

    .line 2831
    .local v15, keepSound:Z
    if-eqz v15, :cond_9

    .line 2834
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2836
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    if-eqz v3, :cond_10

    .line 2838
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v19

    .line 2840
    .local v19, orient:I
    const/4 v3, 0x1

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/camera/SoundEffect;->setSoundEffect(ZI)I

    .line 2841
    invoke-static {}, Lcom/android/camera/SoundEffect;->enableSoundEffect()I

    .line 2842
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[START RECORD] Stereo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    .end local v19           #orient:I
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2855
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2857
    const/4 v7, 0x0

    .line 2858
    .local v7, bHasSetPath:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2860
    const-string v3, "CameraThread"

    const-string v4, "is Service Mode."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v2

    .line 2863
    .local v2, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2865
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v2, :cond_14

    if-eqz v1, :cond_14

    .line 2868
    :try_start_1
    const-string v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v23

    .line 2869
    .local v23, videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    if-eqz v23, :cond_13

    .line 2871
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "mime_type"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "bucket_display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2872
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2873
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    .line 2874
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2875
    .local v18, mime_type:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2876
    .local v22, subfolder:Ljava/lang/String;
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mime_type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",bucket_display_name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2882
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "video/3gpp"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 2885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2889
    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/android/camera/ImageManager;->hasStorage(ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2892
    const/4 v7, 0x1

    .line 2909
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v18           #mime_type:Ljava/lang/String;
    .end local v22           #subfolder:Ljava/lang/String;
    .end local v23           #videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_a
    :goto_4
    if-nez v7, :cond_c

    .line 2911
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_15

    .line 2913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2917
    :goto_5
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v3, 0x32

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2918
    .local v9, buf:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/camera/DCFRuler;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    .line 2923
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3, v9}, Lcom/android/camera/DCFRuler;->getVideoNameAndNumber(Landroid/app/Activity;Ljava/lang/StringBuffer;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/CameraThread;->mNumber:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2934
    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    .line 2935
    const-string v13, ".3gp"

    .line 2937
    .local v13, extention:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2939
    const-string v13, ".mp4"

    .line 2949
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    .line 2950
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save video: directory name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  file name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    .line 2953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2957
    .end local v9           #buf:Ljava/lang/StringBuffer;
    .end local v13           #extention:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v16

    .line 2958
    .local v16, limit:Lcom/android/camera/RecordLimitCheck;
    if-eqz v16, :cond_16

    .line 2960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setFilePath(Ljava/lang/String;)V

    .line 2961
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->calculateRemainSpace()V

    .line 2969
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->getVideoBitrate()I

    move-result v8

    .line 2970
    .local v8, bitrate:I
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set encode bitrate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v8}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2978
    .end local v8           #bitrate:I
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->getMaxSeconds()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2979
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2985
    :goto_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->getMaxBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2998
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v3, v4, :cond_17

    .line 2999
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 3004
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 3005
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoSize: width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraThread;->mEncoderType:I

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 3013
    if-eqz v15, :cond_e

    .line 3017
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->IsEqualOrAbove720p()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3018
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support128kBitrate()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_18

    .line 3019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x7d00

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 3020
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 3045
    :cond_d
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 3047
    const-string v3, "CameraThread"

    const-string v4, "AMR_NB"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 3065
    :cond_e
    :goto_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 3085
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    .line 3106
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 3112
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v4, "[record_video]complete"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 3125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "counter_video"

    new-instance v5, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CameraThread;->mNumber:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 3129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v4, "Recording_Started"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 3131
    const-string v3, "CameraThread"

    const-string v4, "start_video_recording - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2804
    .end local v7           #bHasSetPath:Z
    .end local v14           #holder:Landroid/view/SurfaceHolder;
    .end local v15           #keepSound:Z
    .end local v16           #limit:Lcom/android/camera/RecordLimitCheck;
    :cond_f
    add-int/lit8 v20, v20, 0x5a

    goto/16 :goto_1

    .line 2823
    .restart local v14       #holder:Landroid/view/SurfaceHolder;
    :catch_0
    move-exception v11

    .line 2824
    .local v11, ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    const-string v4, "setPreviewDisplay failed, Camera app finished"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2825
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2846
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v15       #keepSound:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v19

    .line 2848
    .restart local v19       #orient:I
    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/camera/SoundEffect;->setSoundEffect(ZI)I

    .line 2849
    invoke-static {}, Lcom/android/camera/SoundEffect;->enableSoundEffect()I

    .line 2850
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[START RECORD] Stereo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2887
    .end local v19           #orient:I
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v7       #bHasSetPath:Z
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v18       #mime_type:Ljava/lang/String;
    .restart local v22       #subfolder:Ljava/lang/String;
    .restart local v23       #videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_11
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 2900
    .end local v10           #c:Landroid/database/Cursor;
    .end local v18           #mime_type:Ljava/lang/String;
    .end local v22           #subfolder:Ljava/lang/String;
    .end local v23           #videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v11

    .line 2902
    .local v11, ex:Ljava/io/FileNotFoundException;
    const-string v3, "CameraThread"

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2895
    .end local v11           #ex:Ljava/io/FileNotFoundException;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v18       #mime_type:Ljava/lang/String;
    .restart local v22       #subfolder:Ljava/lang/String;
    .restart local v23       #videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_12
    :try_start_9
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "floder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",has no storage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2898
    .end local v10           #c:Landroid/database/Cursor;
    .end local v18           #mime_type:Ljava/lang/String;
    .end local v22           #subfolder:Ljava/lang/String;
    :cond_13
    const-string v3, "CameraThread"

    const-string v4, "Video File Descriptor is null."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    .line 2906
    .end local v23           #videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_14
    const-string v3, "CameraThread"

    const-string v4, "SaveUri or ContentResolver is null."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2915
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_5

    .line 2925
    .restart local v9       #buf:Ljava/lang/StringBuffer;
    :catch_2
    move-exception v11

    .line 2927
    .local v11, ex:Ljava/io/IOException;
    const-string v3, "CameraThread"

    const-string v4, "Cannot find available video file location, please check the storage card"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2928
    const-string v3, "CameraThread"

    const-string v4, "Camera app finished"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2929
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_6

    .line 2972
    .end local v9           #buf:Ljava/lang/StringBuffer;
    .end local v11           #ex:Ljava/io/IOException;
    .restart local v16       #limit:Lcom/android/camera/RecordLimitCheck;
    :catch_3
    move-exception v12

    .line 2973
    .local v12, exception:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    const-string v4, "mRecorder.setParameters() failed"

    invoke-static {v3, v4, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2980
    .end local v12           #exception:Ljava/lang/Exception;
    :catch_4
    move-exception v12

    .line 2981
    .local v12, exception:Ljava/lang/RuntimeException;
    const-string v3, "CameraThread"

    const-string v4, "mRecorder.setMaxDuration() failed - only use ui message to check time out"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V

    goto/16 :goto_8

    .line 2986
    .end local v12           #exception:Ljava/lang/RuntimeException;
    :catch_5
    move-exception v12

    .line 2991
    .restart local v12       #exception:Ljava/lang/RuntimeException;
    const-string v3, "CameraThread"

    const-string v4, "mRecorder.setMaxFileSize() failed - use message to check file size"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->restartCheckFile()V

    goto/16 :goto_9

    .line 2995
    .end local v12           #exception:Ljava/lang/RuntimeException;
    :cond_16
    const-string v3, "CameraThread"

    const-string v4, "RecordLimitCheck is null !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3001
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_a

    .line 3022
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0x1f400

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 3023
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 3024
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->setBackgroundDataSetting(Z)V

    goto/16 :goto_b

    .line 3028
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3030
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v17

    .line 3031
    .local v17, mModeHdr:Lcom/android/camera/ModeHandler;
    if-eqz v17, :cond_1c

    .line 3033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v21

    .line 3034
    .local v21, r:Lcom/android/camera/Resolution;
    sget-object v3, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3035
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0x17700

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 3042
    .end local v21           #r:Lcom/android/camera/Resolution;
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_b

    .line 3037
    .restart local v21       #r:Lcom/android/camera/Resolution;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xfa00

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_d

    .line 3040
    .end local v21           #r:Lcom/android/camera/Resolution;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xfa00

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_d

    .line 3050
    .end local v17           #mModeHdr:Lcom/android/camera/ModeHandler;
    :cond_1d
    const-string v3, "CameraThread"

    const-string v4, "AAC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    if-eqz v3, :cond_1e

    .line 3054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 3060
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_c

    .line 3058
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_e

    .line 3066
    :catch_6
    move-exception v11

    .line 3067
    .local v11, ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorder prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    const-string v3, "CameraThread"

    const-string v4, "Camera app finished"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 3070
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 3071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 3117
    .end local v11           #ex:Ljava/lang/Exception;
    :catch_7
    move-exception v11

    .line 3118
    .restart local v11       #ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorder start failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    const-string v3, "CameraThread"

    const-string v4, "Camera app finished"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3120
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 3121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0
.end method

.method public final stopPreview()V
    .locals 2

    .prologue
    .line 2527
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 2529
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2533
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    .line 2534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 2536
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    :goto_0
    return-void

    .line 2538
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_2

    .line 2540
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$2;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2548
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2551
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "Cannot stop preview because there is no handler for camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop_calculate_fps()V
    .locals 0

    .prologue
    .line 3240
    return-void
.end method

.method public final storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V
    .locals 7
    .parameter "jpegData"
    .parameter "callback"
    .parameter "dcfInfo"
    .parameter "isLastPicture"

    .prologue
    .line 5328
    const-string v0, "CameraThread"

    const-string v1, "storeTakenPicture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5331
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 5334
    if-nez p1, :cond_5

    .line 5335
    const-string v0, "CameraThread"

    const-string v1, "!!!!!!!! jpegData == null !!!!!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5340
    :goto_0
    if-nez p3, :cond_0

    .line 5342
    const-string v0, "CameraThread"

    const-string v1, "No DCF information specified, use default value"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5343
    sget-object p3, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    .line 5347
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isRequestSquare()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isUnknownServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5348
    :cond_1
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 5351
    :cond_2
    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v0, :cond_6

    .line 5353
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraThread;->store_image([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5356
    .local v5, filePath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v0, Lcom/android/camera/PictureSavedEvent;

    const-string v1, "Media.Saved"

    sget-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object v2, p1

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PictureSavedEvent;-><init>(Ljava/lang/String;[BZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 5363
    .end local v5           #filePath:Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5366
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5367
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 5370
    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "storeTakenPicture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5371
    return-void

    .line 5337
    :cond_5
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegData != null, jpegData.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5360
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v2, "Media.SaveFailed"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_1
.end method

.method public final storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Z)V
    .locals 1
    .parameter "jpegData"
    .parameter "callback"
    .parameter "isLastPicture"

    .prologue
    .line 5324
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    .line 5325
    return-void
.end method

.method public final storeTakenPicture([BLcom/android/camera/DCFInfo;Z)V
    .locals 1
    .parameter "jpegData"
    .parameter "dcfInfo"
    .parameter "isLastPicture"

    .prologue
    .line 5320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    .line 5321
    return-void
.end method

.method public final storeTakenPicture([BZ)V
    .locals 1
    .parameter "jpegData"
    .parameter "isLastPicture"

    .prologue
    const/4 v0, 0x0

    .line 5316
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    .line 5317
    return-void
.end method

.method public updateImageRatio(ZLcom/android/camera/ModeHandler;)Lcom/android/camera/Resolution;
    .locals 12
    .parameter "bWideScreen"
    .parameter "mModeHdr"

    .prologue
    .line 3911
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v5

    .line 3912
    .local v5, r:Lcom/android/camera/Resolution;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3915
    :cond_0
    const-string v9, "CameraThread"

    const-string v10, "Contacts request - directly get CONTACT_STYLE resolution"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    .end local v5           #r:Lcom/android/camera/Resolution;
    :goto_0
    return-object v5

    .line 3919
    .restart local v5       #r:Lcom/android/camera/Resolution;
    :cond_1
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eq p1, v9, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v9

    if-nez v9, :cond_3

    .line 3920
    :cond_2
    const-string v9, "CameraThread"

    const-string v10, "not need to update image ratio"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3924
    :cond_3
    const-string v9, "CameraThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateImageRatio - Current Resolution: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3925
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;

    move-result-object v7

    .line 3926
    .local v7, resoItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3927
    .local v1, WideItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3929
    .local v0, OriginalItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 3930
    .local v8, sortedSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 3931
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3933
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/ResolutionMenuItem;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3934
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ResolutionMenuItem;

    .line 3935
    .local v6, re:Lcom/android/camera/ResolutionMenuItem;
    iget-object v9, v6, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3936
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 3938
    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 3941
    .end local v6           #re:Lcom/android/camera/ResolutionMenuItem;
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 3942
    const-string v9, "CameraThread"

    const-string v10, "Note: the number of resolution pairs for image ratio are not equal"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3944
    :cond_6
    const/4 v4, 0x0

    .line 3945
    .local v4, new_resolution:Lcom/android/camera/Resolution;
    if-eqz p1, :cond_8

    .line 3946
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 3947
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3948
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 3946
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3952
    .end local v2           #i:I
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 3953
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3954
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 3952
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3959
    :cond_a
    if-nez v4, :cond_c

    .line 3961
    const-string v9, "CameraThread"

    const-string v10, "update image ratio is fail"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3976
    :cond_b
    :goto_4
    const-string v9, "CameraThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateImageRatio - New Resolution: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 3978
    goto/16 :goto_0

    .line 3967
    :cond_c
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    .line 3969
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v10}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_4
.end method
