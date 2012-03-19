.class public Lcom/android/camera/HTCCamera;
.super Landroid/app/Activity;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/IEventManagerOwner;
.implements Lcom/android/camera/IEventHandler;
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCCamera$39;,
        Lcom/android/camera/HTCCamera$MainHandler;,
        Lcom/android/camera/HTCCamera$CaptureCategory;
    }
.end annotation


# static fields
.field public static final ACTION_ORIENTATION_LIGHT:Ljava/lang/String; = "com.htc.content.intent.action.ORIENTATION_LIGHT"

.field public static final AUTO_SMILE_CAPTURE:I = 0x53

.field private static final BEEP_NO_SOUND:I = -0x1

.field private static final BEEP_TIME:I = 0xc8

.field public static final CAMERA_THREAD_RUNNING:I = 0x66

.field public static final CANCEL_FOCUS_END:I = 0x1d

.field private static final CAPTURE_BEEP_COUNT:I = 0x5

.field public static final CHANGE_INDICATOR_LAYOUT:I = 0xb

.field public static final CHECK_FACE_DETECTION:I = 0x23

.field public static final CHECK_SCENE_CHANGE:I = 0x20

.field public static final CLEAN_FACE_FOCUS:I = 0x36

.field public static final CLOSE_CAPTURE_UI:I = 0x10

.field public static final CLOSE_SELF_TIMER:I = 0x46

.field public static final COUNT_DOWN_SELFTIMER:I = 0x5

.field public static final DOT_SCENE_ACTION:I = 0x5

.field public static final DOT_SCENE_AUTO:I = 0x0

.field public static final DOT_SCENE_BURST:I = 0x3

.field public static final DOT_SCENE_HDR:I = 0x2

.field public static final DOT_SCENE_MACRO:I = 0x6

.field public static final DOT_SCENE_MANUAL:I = 0x8

.field public static final DOT_SCENE_NIGHT:I = 0x4

.field public static final DOT_SCENE_PANORAMA:I = 0x1

.field public static final DOT_SCENE_PORTRAIT:I = 0x7

.field public static final DO_CREATE_AFTER_PREVIEW:I = 0x2e

.field public static final DO_CREATE_RESUME_AFTER_PREVIEW:I = 0x2d

.field public static final DO_RESUME_AFTER_PREVIEW:I = 0x2f

.field public static final EFFECT_CONTROL_TIMEOUT:I = 0x1388

.field public static final ENABLE_GARBAGE_COLLECTION:I = 0x38

.field public static final ENABLE_SENSOR_FOCUS:I = 0x1e

.field public static final EVENT_ACTION_SCREEN_CLOSED:Ljava/lang/String; = "ActionScreen.Closed"

.field public static final EVENT_ACTION_SCREEN_CLOSING:Ljava/lang/String; = "ActionScreen.Closing"

.field public static final EVENT_ACTION_SCREEN_OPEN:Ljava/lang/String; = "ActionScreen.Open"

.field public static final EVENT_ACTIVATE:Ljava/lang/String; = "CameraActivity.Activate"

.field public static final EVENT_AUTOSCENE_ENABLED:Ljava/lang/String; = "AutoScene.Enabled"

.field public static final EVENT_CAMERA_THREAD_RUNNING:Ljava/lang/String; = "CameraActivity.CameraThreadRunning"

.field public static final EVENT_CAPTURE_UI_CLOSED:Ljava/lang/String; = "CaptureUI.Closed"

.field public static final EVENT_CAPTURE_UI_OPEN:Ljava/lang/String; = "CaptureUI.Open"

.field public static final EVENT_CAPTURE_UI_UNBLOCK:Ljava/lang/String; = "CaptureUI.Unblock"

.field public static final EVENT_DEACTIVATE:Ljava/lang/String; = "CameraActivity.Deactivate"

.field public static final EVENT_DEVICE_ORIENTATION_CHANGED:Ljava/lang/String; = "DeviceOrientation.Changed"

.field public static final EVENT_EFFECT_APPLIED:Ljava/lang/String; = "Effect.Applied"

.field public static final EVENT_EFFECT_CANCELED:Ljava/lang/String; = "Effect.Canceled"

.field public static final EVENT_EFFECT_CONTROL_VISIBILITY_CHANGED:Ljava/lang/String; = "EffectControl.VisibilityChanged"

.field public static final EVENT_EFFECT_LIST_UPDATED:Ljava/lang/String; = "EffectList.Updated"

.field public static final EVENT_EFFECT_PANEL_CLOSED:Ljava/lang/String; = "EffectPanel.Closed"

.field public static final EVENT_EFFECT_PANEL_MOVING:Ljava/lang/String; = "EffectPanel.Moving"

.field public static final EVENT_EFFECT_PANEL_OPEN:Ljava/lang/String; = "EffectPanel.Open"

.field public static final EVENT_EFFECT_PANEL_OPENING:Ljava/lang/String; = "EffectPanel.Opening"

.field public static final EVENT_FAST_FRAME_RECORDING_CHANGED:Ljava/lang/String; = "FastFrameRecording.Changed"

.field public static final EVENT_FOCUS_FINISHED:Ljava/lang/String; = "Focus.Finished"

.field public static final EVENT_KEY_DOWN:Ljava/lang/String; = "Key.Down"

.field public static final EVENT_KEY_UP:Ljava/lang/String; = "Key.Up"

.field public static final EVENT_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "MediaScanner.Finished"

.field public static final EVENT_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "MediaScanner.Started"

.field public static final EVENT_MENU_CLOSED:Ljava/lang/String; = "Menu.Closed"

.field public static final EVENT_MENU_COLLAPSED:Ljava/lang/String; = "Menu.Collapsed"

.field public static final EVENT_MENU_EXPANDED:Ljava/lang/String; = "Menu.Expanded"

.field public static final EVENT_MENU_OPENING:Ljava/lang/String; = "Menu.Opening"

.field public static final EVENT_MENU_TIME_OUT:Ljava/lang/String; = "Menu.TimeOut"

.field public static final EVENT_NEW_INTENT:Ljava/lang/String; = "CameraActivity.NewIntent"

.field public static final EVENT_PAUSING:Ljava/lang/String; = "CameraActivity.Pausing"

.field public static final EVENT_PREVIEW_STARTED:Ljava/lang/String; = "CameraActivity.PreviewStarted"

.field public static final EVENT_PROTRAIT_MODE_CHANGED:Ljava/lang/String; = "PortraitMode.Changed"

.field public static final EVENT_QUERY_CAN_TRIGGER_FOCUS:Ljava/lang/String; = "Query.CanTriggerFocus"

.field public static final EVENT_QUERY_CONFIRM_DELETING_MEDIA_MESSAGE:Ljava/lang/String; = "Query.ConfirmDeletingMediaMessage"

.field public static final EVENT_QUERY_EFFECT_CENTER:Ljava/lang/String; = "Query.EffectCenter"

.field public static final EVENT_QUERY_IS_EFFECT_CONTROL_VISIBLE:Ljava/lang/String; = "Query.IsEffectControlVisible"

.field public static final EVENT_QUERY_IS_EFFECT_PANEL_OPEN:Ljava/lang/String; = "Query.IsEffectPanelOpen"

.field public static final EVENT_QUERY_IS_ZOOM_LOCK_NEEDED:Ljava/lang/String; = "Query.IsZoomLockNeeded"

.field public static final EVENT_QUERY_MEDIA_TO_SETAS:Ljava/lang/String; = "Query.MediaToSetAs"

.field public static final EVENT_QUERY_MEDIA_TO_SHARE:Ljava/lang/String; = "Query.MediaToShare"

.field public static final EVENT_RECORDING_STARTED:Ljava/lang/String; = "Recording.Started"

.field public static final EVENT_RECORDING_STARTING:Ljava/lang/String; = "Recording.Starting"

.field public static final EVENT_RECORDING_STOPPED:Ljava/lang/String; = "Recording.Stopped"

.field public static final EVENT_RECORDING_STOPPING:Ljava/lang/String; = "Recording.Stopping"

.field public static final EVENT_RECORDING_TIME_CHANGED:Ljava/lang/String; = "Recording.TimeChanged"

.field public static final EVENT_RECORD_WITH_AUDIO_CHANGED:Ljava/lang/String; = "RecordWithAudio.Changed"

.field public static final EVENT_REMAINING_COUNTER_HIDDEN:Ljava/lang/String; = "RemainingCounter.Hidden"

.field public static final EVENT_REMAINING_COUNTER_SHOWING:Ljava/lang/String; = "RemainingCounter.Showing"

.field public static final EVENT_REMOVABLE_STORAGE_EJECTED:Ljava/lang/String; = "RemovableStorage.Ejected"

.field public static final EVENT_REMOVABLE_STORAGE_MOUNTED:Ljava/lang/String; = "RemovableStorage.Mounted"

.field public static final EVENT_REMOVABLE_STORAGE_UNMOUNTED:Ljava/lang/String; = "RemovableStorage.Unmounted"

.field public static final EVENT_REQUEST_CLOSE_EFFECT_PANEL:Ljava/lang/String; = "Request.CloseEffectPanel"

.field public static final EVENT_REQUEST_OPEN_EFFECT_PANEL:Ljava/lang/String; = "Request.OpenEffectPanel"

.field public static final EVENT_REQUEST_RESET_TO_DEFAULT:Ljava/lang/String; = "Request.ResetToDefault"

.field public static final EVENT_REQUEST_SET_MEDIA_AS:Ljava/lang/String; = "Request.SetMediaAs"

.field public static final EVENT_REQUEST_SHARE_MEDIA:Ljava/lang/String; = "Request.ShareMedia"

.field public static final EVENT_REQUEST_TOGGLE_EFFECT_PANEL:Ljava/lang/String; = "Request.ToggleEffectPanel"

.field public static final EVENT_RESOLUTION_SELECTED:Ljava/lang/String; = "Resolution.Selected"

.field public static final EVENT_RESTART_CAMERA:Ljava/lang/String; = "Camera.Restart"

.field public static final EVENT_RESUMING:Ljava/lang/String; = "CameraActivity.Resuming"

.field public static final EVENT_ROTATION_CHANGED:Ljava/lang/String; = "CameraActivity.RotateChanged"

.field public static final EVENT_SAME_MENU_ITEM_SELETED:Ljava/lang/String; = "SameMenuItem.Selected"

.field public static final EVENT_SECOND_LAYOUT_CLOSE:Ljava/lang/String; = "SecondLayout.Closed"

.field public static final EVENT_SECOND_LAYOUT_OPEN:Ljava/lang/String; = "SecondLayout.Opened"

.field public static final EVENT_SELF_TIMER_CHANGED:Ljava/lang/String; = "SelfTimer.Changed"

.field public static final EVENT_SELF_TIMER_COUNT_DOWN:Ljava/lang/String; = "SelfTimer.CountDown"

.field public static final EVENT_SELF_TIMER_STARTED:Ljava/lang/String; = "SelfTimer.Started"

.field public static final EVENT_SELF_TIMER_STOPPED:Ljava/lang/String; = "SelfTimer.Stopped"

.field public static final EVENT_SENSOR_VALUE_CHANGED:Ljava/lang/String; = "SensorValue.RotateChanged"

.field public static final EVENT_SWITCHING_MODE:Ljava/lang/String; = "Mode.Switching"

.field public static final EVENT_SWITCH_3D_MODE:Ljava/lang/String; = "3DMode.Switched"

.field public static final EVENT_SWITCH_MODE:Ljava/lang/String; = "Mode.Switched"

.field public static final EVENT_THUMBNAIL_BUTTON_CLICKED:Ljava/lang/String; = "ThumbnailButton.Clicked"

.field public static final EVENT_ZOOM_CHANGED:Ljava/lang/String; = "Zoom.Changed"

.field public static final EVENT_ZOOM_LOCKED_CHANGED:Ljava/lang/String; = "Zoom.LockedStateChanged"

.field public static final EXTRA_MANUAL:Ljava/lang/String; = "manual"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final FADEOUT_SCENE_LANDSCAPE:I = 0x4c

.field public static final FADEOUT_SCENE_PORTRAIT:I = 0x4a

.field public static final FADEOUT_SCENE_SUN_NIGHT:I = 0x4b

.field public static final FINISH_FOCUS:I = 0x1c

.field public static final FOCUSING_NO_ACTION:I = 0x1

.field public static final FOCUSING_PRESS_CAPTURE:I = 0x3

.field public static final FOCUSING_PRESS_RECORD:I = 0x4

.field public static final FOCUSING_TAP_CAPTURE:I = 0x2

.field public static final FOCUS_MODE_FACE:I = 0x2

.field public static final FOCUS_MODE_SENSOR:I = 0x0

.field public static final FOCUS_MODE_TOUCH:I = 0x1

.field public static final FOCUS_MODE_WAIT_FACE:I = 0x3

.field public static final HIDE_CAPTURE_REVIEW:I = 0x3a

.field public static final HTC_CAM_SWITCH_CHANGE:I = 0xe

.field public static final HW_3D_BUTTON_SWITCH:I = 0x48

.field public static final INTENT_ACTION_ALBUM:Ljava/lang/String; = "FROM_CAMERA"

.field private static final INTENT_KEY_JPEG_DATA:Ljava/lang/String; = "jpeg_data"

.field public static final INTENT_MODE_CAMCORDER:Ljava/lang/String; = "comcorder"

.field public static final INTENT_MODE_CAMERA:Ljava/lang/String; = "camera"

.field public static final INTENT_MODE_KEY:Ljava/lang/String; = "capture_mode"

.field public static final INTENT_PREVIEW_CAPTURE:Ljava/lang/String; = "capture"

.field public static final INTENT_PREVIEW_FILMSTRIP:Ljava/lang/String; = "filmstrip"

.field public static final INTENT_PREVIEW_KEY:Ljava/lang/String; = "preview_mode"

.field private static final INTENT_REVIEW_DURATION:Ljava/lang/String; = "review_duration"

.field public static final LOAD_LATEST_THUMBNAIL:I = 0x33

.field public static final LONG_PRESS_AREA:I = 0xf

.field public static final LONG_PRESS_PERIOD:J = 0x190L

.field public static final LONG_PRESS_SW_CAPTURE:I = 0x42

.field public static final LONG_PRESS_SW_CAPTURE_TIMEOUT:I = 0x3e8

.field public static final MENU_3D_CAMERA_SWITCH:I = 0x4f

.field private static final MIN_VOLUME:I = 0x1

.field public static final NO_FOCUSING:I = 0x0

.field private static final NO_KEEP_VOLUME:I = -0x1

.field public static final OPEN_CAPTURE_UI:I = 0xf

.field public static final PANEL_FADEOUT:I = 0x16

.field public static final PANEL_FADEOUT_TIMEOUT:I = 0x1f40

.field public static final PLAY_FOCUS_SOUND:I = 0x15

.field public static final PLAY_SOUND:I = 0x14

.field public static final PLAY_SOUND_POOL:I = 0x45

.field public static final PREPARE_FOCUS_BEFORE_CAPTURE:I = 0x22

.field public static final PREVIEW_DUPLICATE_END:I = 0x2b

.field public static final PREVIEW_DUPLICATE_START:I = 0x2a

.field public static final PROGRESS_STATUS:I = 0xd

.field public static final REQUEST_SURFACEVIEW_LAYOUT:I = 0x6

.field public static final RESET_GRID_VIEW:I = 0x8

.field public static final RESET_SURFACEVIEW_LAYOUT:I = 0x7

.field public static final RESTART_CHECK_SENSOR_FOCUS:I = 0x1f

.field public static final REVIEW_DURATION_NO_TIME:I = -0x1

.field public static final SCENE_GUIDE_TIMEOUT:I = 0xbb8

.field public static final SCREEN_SAVE:I = 0x24

.field public static final SELECT_ACTION_SCREEN:I = 0x26

.field public static final SET_LANDSCAPE:I = 0x67

.field public static final SHOW_3D_HINT:I = 0x50

.field public static final SHOW_CAPTURE_REVIEW:I = 0x39

.field public static final SHOW_FOCUSING:I = 0x18

.field public static final SHOW_FOCUS_END:I = 0x1b

.field public static final SHOW_FOCUS_FAIL:I = 0x1a

.field public static final SHOW_FOCUS_SUCCESS:I = 0x19

.field public static final SHOW_FPS:I = 0x28

.field public static final SHOW_GPS_INDICATOR:I = 0x29

.field public static final SHOW_RECORDING_INDICATOR:I = 0x2

.field public static final SHOW_STABLE_ICON:I = 0x4d

.field public static final SHOW_STABLE_ICON_PORT:I = 0x4e

.field public static final SHOW_TOAST:I = 0x25

.field public static final START_ALBUM_CAMERA:I = 0x11

.field public static final START_ALBUM_VIDEO:I = 0x12

.field public static final START_FACE_FOCUS:I = 0x35

.field public static final START_RECORDING_INDICATOR:I = 0x3

.field public static final START_SELF_PORTRAIT:I = 0x44

.field public static final START_SENSOR_FOCUS:I = 0x21

.field public static final STATUS_END:I = 0x0

.field public static final STATUS_RESUME:I = 0x1

.field public static final STOP_RECORDING_FINISH:I = 0x41

.field public static final STOP_RECORDING_INDICATOR:I = 0x4

.field public static final SUSPEND_ON_RECORDING:I = 0x40

.field public static final SWITCH_3D_PREVIEW_READY:I = 0x49

.field private static final TAG:Ljava/lang/String; = "HTCCamera"

.field public static final TRIGGER_STOP_RECORD:I = 0x52

.field public static final UNBLOCK_CAPTURE_UI:I = 0x34

.field public static final UNFREEZE_UI:I = 0x3f

.field public static final UPDATE_CAPTURE_MODE_LAYOUT:I = 0xc

.field public static final UPDATE_FLASH_FROM_RESTRICTION:I = 0x2c

.field public static final UPDATE_SCENE_ICON:I = 0x54

.field public static final UPDATE_STORAGE_LOCATION_MENU:I = 0x68

.field public static final UPDATE_THUMBNAIL_BUTTON:I = 0x32

.field public static bFocusFromPress:Z

.field public static bHoldFocusKey:Z

.field private static mBeepCount:I

.field private static mBlock3DSwitch:Z

.field private static mBlockCaptureUI:Z

.field private static mCurrentBeepLevel:I

.field public static mFocusMode:I

.field private static mFocus_Screen_X:I

.field private static mFocus_Screen_Y:I

.field private static mIsKeyguardShow:Z

.field private static mIsSelfPortraitTask:Z

.field private static mIsSelfTimerTask:Z

.field private static mIsWaitKeyguardBeforePreview:Z

.field private static mTurnOnTorch_Camcorder:Z


# instance fields
.field private CHECK_SWING_DURATION:I

.field public Display_Orientation:I

.field private From_ratio_land:F

.field private From_ratio_port:F

.field public SCREEN_DELAY:I

.field private SWING_LIMIT_ANGLE:I

.field private SWING_LIMIT_RATIO:F

.field private SWING_STABLE_THRESHOLD:I

.field private SWING_STEP:F

.field private To_ratio_land:F

.field private To_ratio_port:F

.field private animation_DURATION:I

.field private bCancelFocus:Z

.field private connManager:Landroid/net/ConnectivityManager;

.field private image_shift_ratio:F

.field private keep_backgroundDataSetting:Z

.field private leftBound_ratio:F

.field private m3DButtonStatus:I

.field private final m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

.field private m3DOptimalLandscape:Z

.field private m3DPreviewReady:Z

.field private m3DStatusInitialized:Z

.field private m3DTriggerCapture:Z

.field private mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

.field private mActivityOnPause:Z

.field private mArrowHintLayout:Landroid/view/View;

.field private mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mAudioCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mAudioErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mAudioStreamType:I

.field private final mAudioSyncRoot:Ljava/lang/Object;

.field public mAutoUploader:Lcom/android/camera/AutoUploader;

.field private mBlockPowerWarning:Z

.field mCameraDevice:Landroid/hardware/Camera;

.field mCameraHandler:Landroid/os/Handler;

.field private mCameraLayout:Landroid/widget/RelativeLayout;

.field mCameraThread:Lcom/android/camera/CameraThread;

.field private final mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

.field private mCanShowFocusView:Z

.field private mCapture_btn_ds:Landroid/widget/Button;

.field private mCapture_combine_ds:Landroid/view/View;

.field private mCapture_icon:Landroid/widget/ImageView;

.field mCapture_press:Landroid/graphics/drawable/Drawable;

.field mCapture_press_ds:Landroid/graphics/drawable/Drawable;

.field mCapture_rest:I

.field mCapture_rest_ds:I

.field private final mCloseActionScreenRunnable:Ljava/lang/Runnable;

.field private mCloseTouchEvent:Z

.field private mComponentManager:Lcom/android/camera/component/ComponentManager;

.field private mCurrentDialog:Landroid/app/Dialog;

.field private mEffectManager:Lcom/android/camera/effect/EffectManager;

.field private mEffectReceiver:Landroid/view/View;

.field private mEffect_btn:Landroid/widget/Button;

.field private mEffect_icon:Landroid/widget/ImageView;

.field private mEnableSensorFocus:Z

.field private mFaceDetection:Lcom/android/camera/FaceDetection;

.field private mFaceNumber:I

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mFilmstrip_btn:Landroid/widget/ImageButton;

.field private mFilmstrip_combine:Landroid/view/View;

.field private mFilmstrip_layout:Landroid/view/View;

.field private mFilmstrip_thumbnail:Landroid/widget/ImageView;

.field private mFlashDisableCounter:I

.field private mFlashRestriction:Lcom/android/camera/FlashRestriction;

.field private mFlash_btn:Landroid/widget/Button;

.field private mFlash_icon:Lcom/android/camera/widget/ImageTextView;

.field private mFlash_layout_ds:Landroid/widget/LinearLayout;

.field private mFlash_text_ds:Landroid/widget/TextView;

.field private mFocusAnimation:Landroid/view/View;

.field private mFocusPos_X:I

.field private mFocusPos_Y:I

.field public mFocusingState:I

.field private mForce2DMode:Z

.field private mFpsText:Landroid/widget/TextView;

.field private mFreezeOrientation:I

.field private mFreezeUI:Z

.field private mFront_land:Landroid/widget/RelativeLayout;

.field private mFront_port:Landroid/widget/RelativeLayout;

.field private mGpsIndicator:Landroid/widget/ImageView;

.field private mGridLayout:Landroid/view/View;

.field private mIS_LEVEL:Z

.field private mIS_LEVEL_PORT:Z

.field private mIdle:Z

.field private mIndicatorLayout:Landroid/view/View;

.field private mInstanceOrientation:I

.field private mIntentManager:Lcom/android/camera/IntentManager;

.field private mIsBackQuit:Z

.field private mIsCameraThreadRunning:Z

.field private mIsCaptureTriggered:Z

.field private mIsCaptureUIOpen:Z

.field private mIsFlashlightOffByScene:Z

.field private mIsFullDataPartition:Z

.field private mIsPowerWarning:Z

.field private mIsPreviewStarted:Z

.field private mIsSelfTimerStarted:Z

.field private mIsSipExist:Z

.field private mIsTouchScreen:Z

.field private mIsUIReady:Z

.field private mIsZoomLocked:Z

.field mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private final mKeyguardReceiver:Landroid/content/BroadcastReceiver;

.field private mLastOrientation:I

.field private mLastSavedMediaPath:Ljava/lang/String;

.field private mLocationHandler:Lcom/android/camera/LocationHandler;

.field private mMainBar:Landroid/view/View;

.field private mMainBar_item:Landroid/view/View;

.field private mMainBar_receiver:Landroid/view/View;

.field private mMainLayout:Landroid/view/View;

.field mMainThread:Ljava/lang/Thread;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field mMenuIsOpening:Z

.field private mMode_btn:Landroid/widget/Button;

.field private mMode_icon:Landroid/widget/ImageView;

.field private mMode_layout_ds:Landroid/widget/LinearLayout;

.field private mMode_text_ds:Landroid/widget/TextView;

.field private mNeed_doOnCreate:Z

.field private mNeed_doOnResume:Z

.field private mNeed_initOnCreate:Z

.field private mNeed_unregisterReceiver:Z

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOriginalVolume_Alarm:I

.field private mOriginalVolume_Ring:I

.field public mPanel:Lcom/android/camera/widget/SlidingDrawer;

.field private final mPartitonReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoto_btn:Landroid/widget/Button;

.field private mPhoto_icon:Landroid/widget/ImageView;

.field private mPlayBeepTime:J

.field private final mPrepareActionScreenRunnable:Ljava/lang/Runnable;

.field private mPreparedActionScreenSessionID:J

.field private mPreviewDuplicate:Landroid/widget/ImageView;

.field private mPreviewFilterLayout:Landroid/view/View;

.field private mPreviewVisibleArea:Landroid/view/View;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mQualityMenu:Lcom/android/camera/widget/PopupMenu;

.field private mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

.field private mRecord_sec:J

.field private mRecording_Shining:Z

.field private mReviewDuration:I

.field private mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mRunnable_Swing:Ljava/lang/Runnable;

.field private final mSIPReceiver:Landroid/content/BroadcastReceiver;

.field private mSceneGuideLayout:Landroid/view/View;

.field private mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneLandscapeTipText:Landroid/widget/TextView;

.field private mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

.field mSceneMenu:Lcom/android/camera/widget/PopupMenu;

.field private mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneQuality_btn:Landroid/widget/Button;

.field private mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

.field private mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mScene_Idx:I

.field private mScene_btn_ds:Landroid/widget/Button;

.field private mScene_icon_ds:Landroid/widget/ImageView;

.field private mScene_layout_ds:Landroid/widget/LinearLayout;

.field private mScene_text_ds:Landroid/widget/TextView;

.field private mScreensave:Landroid/view/View;

.field private mScreensaveText:Landroid/widget/TextView;

.field private mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSecondLayout:Landroid/view/View;

.field private mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

.field private mSelfPortraitHint_text:Landroid/widget/TextView;

.field private mSelfTimerDisableCounter:I

.field private mSensorFocusDisabledCounter:I

.field private mSensorHandler:Lcom/android/camera/SensorHandler;

.field private mSessionID:J

.field mSettingMenu:Lcom/android/camera/widget/PopupMenu;

.field private mSettings_btn:Landroid/widget/Button;

.field private mSettings_icon:Lcom/android/camera/widget/ImageTextView;

.field private final mShowActionScreenRunnable:Ljava/lang/Runnable;

.field private mSoundID_beep:I

.field private mSoundID_beep2:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolVolume:I

.field private mStartCountTime:J

.field private mStartTapCapture:Z

.field private mStartTime:J

.field private mStreamID_beep:I

.field private mStreamID_beep2:I

.field private mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

.field private mSurfaceCreated:Z

.field private mSurfaceHeight:I

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceWidth:I

.field private mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

.field mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

.field private mSwitch_btn:Landroid/widget/Button;

.field private mSwitch_layout_ds:Landroid/widget/LinearLayout;

.field private mSwitch_text_ds:Landroid/widget/TextView;

.field private mThumbController:Lcom/android/camera/ThumbnailController;

.field private mToast:Lcom/android/camera/rotate/RotateToast;

.field private mTouchDown_X:I

.field private mTouchDown_Y:I

.field private mTouchFocusDisabledCounter:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateCountDuration:J

.field private mVideoThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mVideoThumbnailView:Landroid/widget/ImageView;

.field private mWaitResetSettings:Z

.field private mWillCloseCamera:Z

.field private mZoomTouch:Lcom/android/camera/ZoomTouch;

.field m_CancelFocusFromTouch:Z

.field private m_EventManager:Lcom/android/camera/EventManager;

.field m_NeedTriggerRecord:Z

.field private m_SceneListView:Lcom/android/camera/widget/SceneListView;

.field private m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;

.field private mbackIcon_land:Landroid/widget/ImageView;

.field private mbackIcon_port:Landroid/widget/ImageView;

.field private mfrontIcon_land:Landroid/widget/ImageView;

.field private mfrontIcon_port:Landroid/widget/ImageView;

.field private mivFocusedView:Landroid/widget/ImageView;

.field private mivFocusingView:Landroid/widget/ImageView;

.field private mivGrid:Landroid/widget/ImageView;

.field private rightBound_ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 831
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 833
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    .line 846
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    .line 849
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    .line 852
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    .line 858
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsSelfTimerTask:Z

    .line 860
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    .line 924
    sput v1, Lcom/android/camera/HTCCamera;->mFocusMode:I

    .line 926
    sput-boolean v1, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 927
    sput v1, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    .line 928
    sput v1, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    .line 929
    sput-boolean v1, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    .line 997
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    .line 999
    sput v1, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 173
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    .line 346
    iput v5, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    .line 348
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    .line 350
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    .line 352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    .line 394
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFullDataPartition:Z

    .line 398
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 405
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 407
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 409
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    .line 411
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    .line 413
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    .line 415
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    .line 417
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    .line 419
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    .line 516
    new-instance v0, Lcom/android/camera/HTCCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$1;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

    .line 538
    new-instance v0, Lcom/android/camera/HTCCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$2;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    .line 545
    new-instance v0, Lcom/android/camera/HTCCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$3;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mShowActionScreenRunnable:Ljava/lang/Runnable;

    .line 552
    new-instance v0, Lcom/android/camera/HTCCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$4;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    .line 568
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    .line 569
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 571
    new-instance v0, Lcom/android/camera/HTCCamera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$5;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 593
    new-instance v0, Lcom/android/camera/HTCCamera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$6;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 610
    new-instance v0, Lcom/android/camera/HTCCamera$7;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$7;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 640
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    .line 641
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    .line 644
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    .line 645
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    .line 648
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    .line 649
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    .line 652
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    .line 653
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    .line 654
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    .line 655
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    .line 656
    iput v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    .line 659
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    .line 660
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 661
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 662
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 663
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 666
    const v0, 0x7f020075

    iput v0, p0, Lcom/android/camera/HTCCamera;->mCapture_rest_ds:I

    .line 667
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press_ds:Landroid/graphics/drawable/Drawable;

    .line 668
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    .line 669
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    .line 672
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    .line 673
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 674
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 675
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 676
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 677
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 678
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

    .line 679
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;

    .line 681
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    .line 682
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/HTCCamera;->CHECK_SWING_DURATION:I

    .line 683
    iput v3, p0, Lcom/android/camera/HTCCamera;->animation_DURATION:I

    .line 690
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL:Z

    .line 691
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL_PORT:Z

    .line 694
    const/high16 v0, 0x4334

    iput v0, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    .line 695
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_ANGLE:I

    .line 696
    iget v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_ANGLE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    .line 697
    iput v6, p0, Lcom/android/camera/HTCCamera;->SWING_STABLE_THRESHOLD:I

    .line 699
    iput v4, p0, Lcom/android/camera/HTCCamera;->From_ratio_land:F

    .line 700
    iput v4, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    .line 701
    iput v4, p0, Lcom/android/camera/HTCCamera;->From_ratio_port:F

    .line 702
    iput v4, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    .line 704
    iget v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    sub-float v0, v4, v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->leftBound_ratio:F

    .line 705
    iget v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/HTCCamera;->rightBound_ratio:F

    .line 712
    iput v6, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    .line 713
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    .line 716
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    .line 718
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    .line 721
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    .line 723
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    .line 726
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    .line 728
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    .line 730
    const v0, 0x7f020192

    iput v0, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    .line 733
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    .line 735
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    .line 738
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    .line 740
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    .line 742
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    .line 744
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    .line 747
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    .line 749
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    .line 751
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    .line 753
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    .line 755
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    .line 757
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    .line 759
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    .line 761
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    .line 763
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 765
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    .line 767
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    .line 771
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    .line 773
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mVideoThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 775
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mVideoThumbnailView:Landroid/widget/ImageView;

    .line 777
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    .line 780
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 782
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    .line 787
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    .line 789
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_text:Landroid/widget/TextView;

    .line 791
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    .line 794
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;

    .line 800
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mRecording_Shining:Z

    .line 803
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    .line 805
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    .line 808
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    .line 810
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    .line 812
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    .line 814
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    .line 816
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    .line 819
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    .line 821
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    .line 823
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    .line 827
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    .line 835
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    .line 837
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    .line 839
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    .line 841
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 862
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 863
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    .line 867
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    .line 870
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    .line 874
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    .line 878
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    .line 881
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    .line 882
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    .line 883
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 885
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    .line 888
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    .line 891
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    .line 894
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWillCloseCamera:Z

    .line 897
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    .line 900
    iput v3, p0, Lcom/android/camera/HTCCamera;->mTouchDown_X:I

    .line 901
    iput v3, p0, Lcom/android/camera/HTCCamera;->mTouchDown_Y:I

    .line 909
    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 914
    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    .line 915
    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    .line 916
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    .line 917
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    .line 918
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    .line 931
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    .line 934
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    .line 937
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    .line 940
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomTouch:Lcom/android/camera/ZoomTouch;

    .line 942
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    .line 944
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    .line 946
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    .line 950
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    .line 952
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    .line 954
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    .line 956
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    .line 958
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    .line 965
    iput v5, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    .line 967
    iput v5, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    .line 969
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    .line 978
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    .line 980
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    .line 989
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    .line 993
    iput v3, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    .line 994
    iput v3, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    .line 1000
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mPlayBeepTime:J

    .line 1009
    iput v5, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    .line 1011
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    .line 1012
    iput v5, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    .line 1015
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 1016
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 1017
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 1018
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 1025
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 1039
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    .line 1040
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    .line 1043
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 1046
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 1049
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    .line 1057
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    .line 6205
    new-instance v0, Lcom/android/camera/HTCCamera$27;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$27;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    .line 6241
    new-instance v0, Lcom/android/camera/HTCCamera$28;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$28;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    .line 6256
    new-instance v0, Lcom/android/camera/HTCCamera$29;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$29;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    .line 6278
    new-instance v0, Lcom/android/camera/HTCCamera$30;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$30;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 10234
    new-instance v0, Lcom/android/camera/HTCCamera$38;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$38;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method private QueryToggleStorage()V
    .locals 4

    .prologue
    .line 10188
    const-string v0, ""

    .line 10189
    .local v0, szOut:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v1

    if-nez v1, :cond_0

    .line 10190
    const v1, 0x7f0a0151

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10194
    :goto_0
    new-instance v1, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-direct {v1, p0}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a014f

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    const v2, 0x20c013c

    new-instance v3, Lcom/android/camera/HTCCamera$37;

    invoke-direct {v3, p0}, Lcom/android/camera/HTCCamera$37;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    new-instance v3, Lcom/android/camera/HTCCamera$36;

    invoke-direct {v3, p0}, Lcom/android/camera/HTCCamera$36;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    .line 10229
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    check-cast v1, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 10230
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 10231
    return-void

    .line 10192
    :cond_0
    const v1, 0x7f0a0150

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private WriteModePreference()V
    .locals 2

    .prologue
    .line 5588
    const-string v0, "camera_capture_mode_photo"

    .line 5589
    .local v0, mode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_0

    .line 5590
    const-string v0, "camera_capture_mode_photo"

    .line 5594
    :goto_0
    const-string v1, "camera_capture_mode"

    invoke-static {p0, v1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5595
    return-void

    .line 5592
    :cond_0
    const-string v0, "camera_capture_mode_movie"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/HTCCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide v0
.end method

.method static synthetic access$10000(Lcom/android/camera/HTCCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->hideSunNightSceneGuide(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/HTCCamera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide p1
.end method

.method static synthetic access$10100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mbackIcon_land:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_land:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1022(Lcom/android/camera/HTCCamera;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide v0
.end method

.method static synthetic access$10300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mbackIcon_port:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_port:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/android/camera/HTCCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    return p1
.end method

.method static synthetic access$11200(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    return v0
.end method

.method static synthetic access$11202(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    return p1
.end method

.method static synthetic access$11300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SwitchItemListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;

    return-object p1
.end method

.method static synthetic access$11400(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->togglePanelState()V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SceneListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_SceneListView:Lcom/android/camera/widget/SceneListView;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/widget/SceneListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->m_SceneListView:Lcom/android/camera/widget/SceneListView;

    return-object p1
.end method

.method static synthetic access$11600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchDown_X:I

    return v0
.end method

.method static synthetic access$11902(Lcom/android/camera/HTCCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/camera/HTCCamera;->mTouchDown_X:I

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return v0
.end method

.method static synthetic access$12000(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchDown_Y:I

    return v0
.end method

.method static synthetic access$12002(Lcom/android/camera/HTCCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/camera/HTCCamera;->mTouchDown_Y:I

    return p1
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return p0
.end method

.method static synthetic access$12100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    return-void
.end method

.method static synthetic access$12600()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    return v0
.end method

.method static synthetic access$12602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    return p0
.end method

.method static synthetic access$12700()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    return v0
.end method

.method static synthetic access$12800()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    return v0
.end method

.method static synthetic access$12900(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    return v0
.end method

.method static synthetic access$13100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/HTCCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/HTCCamera;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/HTCCamera;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/HTCCamera;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/HTCCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    return p1
.end method

.method static synthetic access$3802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerTask:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/HTCCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/HTCCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/camera/HTCCamera;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/camera/HTCCamera;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->reset_surface_view(II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetGridView()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/HTCCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mRecording_Shining:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/HTCCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mRecording_Shining:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/camera/HTCCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/HTCCamera;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/HTCCamera;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/camera/HTCCamera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5800()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    return v0
.end method

.method static synthetic access$5900()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFaceDetection()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    return-void
.end method

.method static synthetic access$6502(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->handleSensorFocus()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V

    return-void
.end method

.method static synthetic access$6802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return p0
.end method

.method static synthetic access$6900(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopSoundPool()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    return v0
.end method

.method static synthetic access$7100(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/RotateToast;)Lcom/android/camera/rotate/RotateToast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/android/camera/HTCCamera;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    return v0
.end method

.method static synthetic access$7800(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/HTCCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    return-wide v0
.end method

.method static synthetic access$8000(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initOnCreate_after_preview()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/HTCCamera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    return-wide p1
.end method

.method static synthetic access$808(Lcom/android/camera/HTCCamera;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    return-wide v0
.end method

.method static synthetic access$8100(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnResume_after_preview()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/camera/HTCCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/camera/HTCCamera;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->updateThumbnailButton(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    return v0
.end method

.method static synthetic access$8802(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/android/camera/HTCCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$8902(Lcom/android/camera/HTCCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/HTCCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    return-wide v0
.end method

.method static synthetic access$9000(Lcom/android/camera/HTCCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRotateChanged(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/HTCCamera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    return-wide p1
.end method

.method static synthetic access$9100(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    return v0
.end method

.method static synthetic access$9202(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onTouchCapture_Camcorder()V

    return-void
.end method

.method static synthetic access$9400()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    return v0
.end method

.method static synthetic access$9402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput p0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    return p0
.end method

.method static synthetic access$9502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput p0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return p0
.end method

.method static synthetic access$9508()I
    .locals 2

    .prologue
    .line 165
    sget v0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return v0
.end method

.method static synthetic access$9602(Lcom/android/camera/HTCCamera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mPlayBeepTime:J

    return-wide p1
.end method

.method static synthetic access$9700(Lcom/android/camera/HTCCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->playSoundPool(I)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->switch3DMode()V

    return-void
.end method

.method private broadcastStopFM()V
    .locals 0

    .prologue
    .line 10140
    return-void
.end method

.method private broadcastStopMusic()V
    .locals 0

    .prologue
    .line 10148
    return-void
.end method

.method private broadcastStopVoiceRecording()V
    .locals 3

    .prologue
    .line 10125
    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 10126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10127
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10128
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 10129
    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 10131
    return-void
.end method

.method private checkFaceDetection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x23

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 9673
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v6, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9675
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-ne v6, v4, :cond_1

    .line 9739
    :cond_0
    :goto_0
    return-void

    .line 9678
    :cond_1
    sget-boolean v6, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v6, v4, :cond_2

    .line 9679
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-static {v4, v7, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0

    .line 9683
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9686
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_8

    move v1, v4

    .line 9687
    .local v1, bCamera:Z
    :goto_1
    const-string v6, "pref_camera_switch"

    invoke-static {p0, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 9690
    .local v3, bSwitch:Z
    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v6, v7, :cond_3

    const-string v6, "pref_camera_auto_focus"

    invoke-static {p0, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    move v0, v4

    .line 9693
    .local v0, bAuto:Z
    :goto_2
    const-string v6, "pref_face_detection"

    invoke-static {p0, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 9696
    .local v2, bDetect:Z
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v6

    if-gtz v6, :cond_5

    if-ne v1, v4, :cond_a

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_4
    if-ne v0, v4, :cond_a

    if-ne v2, v4, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v6

    if-nez v6, :cond_a

    .line 9699
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-lez v5, :cond_6

    .line 9706
    :cond_6
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-nez v5, :cond_7

    .line 9707
    new-instance v5, Lcom/android/camera/FaceDetection;

    invoke-direct {v5}, Lcom/android/camera/FaceDetection;-><init>()V

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    .line 9708
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5, p0, v6}, Lcom/android/camera/FaceDetection;->initFaceDetection(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    .line 9711
    :cond_7
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    .line 9712
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->startFaceDetection()V

    .line 9715
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v4}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    .line 9716
    sget v4, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-nez v4, :cond_0

    .line 9717
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    .end local v0           #bAuto:Z
    .end local v1           #bCamera:Z
    .end local v2           #bDetect:Z
    .end local v3           #bSwitch:Z
    :cond_8
    move v1, v5

    .line 9686
    goto :goto_1

    .restart local v1       #bCamera:Z
    .restart local v3       #bSwitch:Z
    :cond_9
    move v0, v5

    .line 9690
    goto :goto_2

    .line 9721
    .restart local v0       #bAuto:Z
    .restart local v2       #bDetect:Z
    :cond_a
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v4, :cond_0

    .line 9723
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 9724
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    .line 9725
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    .line 9727
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v4

    if-gtz v4, :cond_0

    .line 9734
    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->updateFaceIcon(I)V

    goto/16 :goto_0
.end method

.method private checkTapCapture(II)V
    .locals 8
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/16 v4, 0xf

    const/4 v7, 0x1

    .line 9235
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v3, v7, :cond_1

    .line 9268
    :cond_0
    :goto_0
    return-void

    .line 9238
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    if-eq v3, v7, :cond_0

    .line 9241
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 9242
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    .line 9243
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    goto :goto_0

    .line 9248
    :cond_2
    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v4, :cond_4

    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v4, :cond_4

    .line 9251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    sub-long v0, v3, v5

    .line 9252
    .local v0, period:J
    const-wide/16 v3, 0x190

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 9253
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9254
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    goto :goto_0

    .line 9256
    :cond_3
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    .line 9257
    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    .line 9258
    iput p2, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    .line 9259
    const-string v3, "HTCCamera"

    const-string v4, "Tap & Capture - mFocusingState = FOCUSING_TAP_CAPTURE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9260
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 9261
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    goto :goto_0

    .line 9266
    .end local v0           #period:J
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    goto :goto_0
.end method

.method private closeCaptureUI()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 6600
    const-string v0, "HTCCamera"

    const-string v1, "closeCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6601
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6603
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6604
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6607
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 6608
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6610
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    .line 6612
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6613
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6615
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 6616
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6618
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    .line 6621
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUIOpen:Z

    .line 6624
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CaptureUI.Closed"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 6626
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    .line 6629
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6630
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideAllScene()V

    .line 6631
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 6632
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6639
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    .line 6641
    :cond_5
    return-void
.end method

.method private closeSecondLayout(Z)V
    .locals 5
    .parameter "hasAnim"

    .prologue
    .line 6657
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6666
    :cond_0
    :goto_0
    return-void

    .line 6660
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6661
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 6662
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x12c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    .line 6663
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6665
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SecondLayout.Closed"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeSelfTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7765
    const-string v1, "HTCCamera"

    const-string v2, "closeSelfTimer() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7766
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 7768
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-nez v1, :cond_0

    .line 7770
    const-string v1, "HTCCamera"

    const-string v2, "Self timer is not started"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7800
    :goto_0
    return-void

    .line 7773
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    .line 7775
    const/4 v0, 0x0

    .line 7776
    .local v0, bGrid:Z
    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 7778
    :cond_1
    const/4 v0, 0x0

    .line 7782
    :goto_1
    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 7783
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7785
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 7787
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    .line 7788
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    .line 7790
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 7792
    const-string v1, "HTCCamera"

    const-string v2, "UnBlock Capture UI - close self timer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7793
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 7794
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 7797
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "SelfTimer.Stopped"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 7799
    const-string v1, "HTCCamera"

    const-string v2, "closeSelfTimer() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7780
    :cond_3
    const-string v1, "pref_grid"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method private doAfterSceneSelect(I)V
    .locals 8
    .parameter "scene_num"

    .prologue
    const/4 v7, 0x0

    .line 7412
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7413
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f07000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 7414
    .local v0, icons:Landroid/content/res/TypedArray;
    const v3, 0x7f07000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 7417
    .local v2, values_text:[Ljava/lang/String;
    iget v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    packed-switch v3, :pswitch_data_0

    .line 7430
    :goto_0
    iput p1, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    .line 7433
    iget v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    if-nez v3, :cond_3

    .line 7434
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v4, Lcom/android/camera/BooleanEvent;

    const-string v5, "AutoScene.Enabled"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 7437
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSceneGuide(I)V

    .line 7440
    iget v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 7467
    :cond_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v3, :cond_2

    .line 7469
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7471
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    .line 7472
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    .line 7475
    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->updateDisableItems()V

    .line 7479
    :cond_2
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7480
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    aget-object v4, v2, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7481
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v3, v4, v5}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 7482
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7483
    return-void

    .line 7420
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitPanoramaMode()V

    goto :goto_0

    .line 7423
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitHdrMode()V

    goto :goto_0

    .line 7426
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitBurstMode()V

    goto :goto_0

    .line 7436
    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v4, Lcom/android/camera/BooleanEvent;

    const-string v5, "AutoScene.Enabled"

    invoke-direct {v4, v5, v7}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_1

    .line 7417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doOnCreate_after_preview()V
    .locals 14

    .prologue
    .line 3260
    const-string v0, "HTCCamera"

    const-string v1, "doOnCreate_after_preview() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    if-nez v0, :cond_0

    .line 3263
    const-string v0, "HTCCamera"

    const-string v1, "doOnCreate_after_preview() - not need to do"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4288
    :goto_0
    return-void

    .line 3266
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    .line 3268
    new-instance v0, Lcom/android/camera/RecordLimitCheck;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v0, v1}, Lcom/android/camera/RecordLimitCheck;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    .line 3269
    new-instance v0, Lcom/android/camera/LocationHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/LocationHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    .line 3271
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 3272
    new-instance v0, Lcom/android/camera/SensorHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    .line 3276
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 3277
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/HTCCamera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$9;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3352
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3354
    new-instance v0, Lcom/android/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    .line 3357
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3358
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDelayCreateImageThumb()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3359
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_15

    const/16 v0, 0x1d

    :goto_2
    const-wide/16 v2, 0x1388

    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 3442
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$10;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3461
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 3463
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$11;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$11;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3486
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 3488
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$12;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$12;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3588
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 3589
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$13;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$13;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3617
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 3618
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$14;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$14;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3647
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 3648
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$15;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$15;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3699
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 3700
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$16;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$16;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3753
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 3754
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3755
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 3759
    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 3760
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 3761
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 3765
    :cond_a
    const/4 v11, 0x0

    .line 3775
    .local v11, stub:Landroid/view/ViewStub;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    .line 3777
    const-string v0, ""

    const v1, 0x186a0

    invoke-static {p0, v0, v1}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    .line 3780
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_18

    .line 3782
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3783
    .local v7, item:Landroid/view/View;
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3785
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 3787
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3788
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3791
    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_c

    .line 3793
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3794
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3803
    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3804
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3806
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3807
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3810
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 3811
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3812
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3815
    :cond_d
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3835
    :goto_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v0, :cond_11

    .line 3836
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3837
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #stub:Landroid/view/ViewStub;
    check-cast v11, Landroid/view/ViewStub;

    .line 3842
    .restart local v11       #stub:Landroid/view/ViewStub;
    :goto_5
    invoke-virtual {v11}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v9

    .line 3843
    .local v9, settings_layout:Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3846
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3847
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 3848
    .local v10, shutter_bar:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3852
    .end local v10           #shutter_bar:Landroid/view/View;
    :cond_e
    const v0, 0x7f080132

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 3854
    const v0, 0x7f080134

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    .line 3855
    const v0, 0x7f080136

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 3859
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3860
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02019d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02019c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0a000d

    const v5, 0x7f02019e

    invoke-static {p0, v4, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0a000c

    const v13, 0x7f02019f

    invoke-static {p0, v5, v13}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/widget/SlidingDrawer;->setHandleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3867
    :cond_f
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$17;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$17;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerOpenListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 3875
    new-instance v0, Lcom/android/camera/MenuHandler;

    invoke-direct {v0}, Lcom/android/camera/MenuHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    .line 3876
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p0, v1, v9}, Lcom/android/camera/MenuHandler;->initMenuHandler(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Landroid/view/View;)V

    .line 3878
    const v0, 0x7f080130

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    .line 3880
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3881
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020146

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0a000f

    const v5, 0x7f020148

    invoke-static {p0, v4, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0a000e

    const v13, 0x7f020149

    invoke-static {p0, v5, v13}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/widget/SlidingDrawer;->setHandleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3888
    :cond_10
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$18;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$18;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerOpenListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 3918
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$19;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$19;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerCloseListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 3960
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$20;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$20;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerScrollListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 4014
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4015
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v12, v0, 0x8

    .line 4016
    .local v12, threshold:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 4017
    .local v8, rect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 4019
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$21;

    invoke-direct {v1, p0, v8}, Lcom/android/camera/HTCCamera$21;-><init>(Lcom/android/camera/HTCCamera;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnCaptureListener(Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;)V

    .line 4117
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$22;

    invoke-direct {v1, p0, v12}, Lcom/android/camera/HTCCamera$22;-><init>(Lcom/android/camera/HTCCamera;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnCaptureListener(Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;)V

    .line 4223
    .end local v8           #rect:Landroid/graphics/Rect;
    .end local v9           #settings_layout:Landroid/view/View;
    .end local v12           #threshold:I
    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_12

    .line 4224
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 4225
    .local v6, button:Landroid/widget/Button;
    const v0, 0x7f0a0010

    const v1, 0x7f020106

    invoke-static {p0, v0, v1}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4226
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v0, v6}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 4227
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 4228
    new-instance v0, Lcom/android/camera/HTCCamera$24;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$24;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4274
    .end local v6           #button:Landroid/widget/Button;
    :cond_12
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4275
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V

    .line 4281
    :cond_13
    new-instance v0, Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/widget/PopupMenu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    .line 4282
    new-instance v0, Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/camera/widget/PopupMenu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    .line 4283
    new-instance v0, Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/camera/widget/PopupMenu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    .line 4284
    new-instance v0, Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/widget/PopupMenu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    .line 4287
    const-string v0, "HTCCamera"

    const-string v1, "doOnCreate_after_preview() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3274
    .end local v7           #item:Landroid/view/View;
    .end local v11           #stub:Landroid/view/ViewStub;
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    goto/16 :goto_1

    .line 3359
    :cond_15
    const/16 v0, 0x1e

    goto/16 :goto_2

    .line 3364
    :cond_16
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_17

    const/16 v0, 0x1d

    :goto_7
    invoke-static {v1, v0}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_3

    :cond_17
    const/16 v0, 0x1e

    goto :goto_7

    .line 3818
    .restart local v11       #stub:Landroid/view/ViewStub;
    :cond_18
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3819
    .restart local v7       #item:Landroid/view/View;
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3820
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3821
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_19

    .line 3822
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3823
    :cond_19
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3824
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_1a

    .line 3825
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    .line 3826
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3827
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_4

    .line 3840
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #stub:Landroid/view/ViewStub;
    check-cast v11, Landroid/view/ViewStub;

    .restart local v11       #stub:Landroid/view/ViewStub;
    goto/16 :goto_5

    .line 4167
    .restart local v9       #settings_layout:Landroid/view/View;
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$23;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$23;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_6
.end method

.method private doOnDestory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5372
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5375
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentManager;->removeComponents()V

    .line 5378
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5383
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v0}, Lcom/android/camera/EventManager;->close()V

    .line 5391
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_0

    .line 5392
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->releaseMenuHandler()V

    .line 5393
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    .line 5396
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_1

    .line 5397
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->releaseLocationHandler()V

    .line 5398
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    .line 5401
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v0, :cond_2

    .line 5402
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->releaseSensorHandler()V

    .line 5403
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    .line 5406
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v0, :cond_3

    .line 5407
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0}, Lcom/android/camera/IntentManager;->releaseIntentManager()V

    .line 5408
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    .line 5411
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 5412
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    .line 5415
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    if-eqz v0, :cond_4

    .line 5416
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController;->close()V

    .line 5417
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    .line 5420
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_5

    .line 5421
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->releaseCameraThread()V

    .line 5422
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    .line 5423
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 5427
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 5429
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_6

    .line 5431
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "CAMCORDER_MODE=OFF"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 5434
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5436
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_7

    .line 5438
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->releaseResource()V

    .line 5439
    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    .line 5442
    :cond_7
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5443
    return-void

    .line 5434
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5379
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doOnResume_after_preview()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4873
    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4875
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-nez v4, :cond_0

    .line 4876
    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - not need to do"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4991
    :goto_0
    return-void

    .line 4879
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 4883
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v4}, Lcom/android/camera/IntentManager;->resetLaunchedby()V

    .line 4885
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4886
    .local v1, partitionFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4887
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "HTC_IME_CURRENT_STATE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4891
    .local v2, sipFilter:Landroid/content/IntentFilter;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4892
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4900
    :goto_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_a

    .line 4902
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v4}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    .line 4907
    :goto_2
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    .line 4912
    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    .line 4931
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x34

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4934
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x35

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4937
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 4939
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4941
    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    .line 4944
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 4947
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 4948
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4949
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4950
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4952
    :cond_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 4953
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 4954
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v8, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    .line 4957
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 4958
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-nez v4, :cond_4

    .line 4959
    new-instance v4, Lcom/android/camera/FlashRestriction;

    invoke-direct {v4}, Lcom/android/camera/FlashRestriction;-><init>()V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    .line 4960
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v4, p0}, Lcom/android/camera/FlashRestriction;->initFlashRestriction(Lcom/android/camera/HTCCamera;)V

    .line 4964
    :cond_4
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 4965
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4966
    :cond_5
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v4, :cond_6

    .line 4967
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 4969
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4970
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->loadSoundPool()V

    .line 4973
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->IsFirstTimeLaunch()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4975
    const-string v4, "pref_first_time_launch"

    invoke-static {p0, v4, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 4979
    :cond_8
    sget-boolean v4, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v4

    if-nez v4, :cond_9

    .line 4982
    const-string v4, "pref_sdcard_state"

    invoke-static {p0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4984
    .local v3, state:Ljava/lang/String;
    if-eqz v3, :cond_9

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getSDCardState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4986
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    .line 4988
    .end local v3           #state:Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 4990
    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4893
    :catch_0
    move-exception v0

    .line 4894
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "HTCCamera"

    const-string v5, "registerReceiver failed!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4904
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    goto/16 :goto_2
.end method

.method private enableMainBarItems(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7804
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-nez v0, :cond_1

    .line 7851
    :cond_0
    :goto_0
    return-void

    .line 7807
    :cond_1
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-ne v0, v1, :cond_4

    .line 7809
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 7810
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7811
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 7812
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7815
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7818
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 7819
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7823
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 7824
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7828
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 7829
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7832
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 7833
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7834
    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 7835
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 7836
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_b

    .line 7838
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v0, :cond_0

    .line 7839
    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 7841
    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    if-nez v0, :cond_c

    .line 7843
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 7847
    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private enableSceneIcon(IZ)V
    .locals 5
    .parameter "mode"
    .parameter "is2nd"

    .prologue
    const/4 v3, 0x0

    .line 7042
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 7068
    :goto_0
    return-void

    .line 7046
    :cond_0
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 7049
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7050
    const-string v2, "pref_camera_scene_ds"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7054
    .local v1, mScene_str:Ljava/lang/String;
    :goto_1
    iput v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    .line 7056
    :try_start_0
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7057
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7061
    :goto_2
    iget v2, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    .line 7062
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0

    .line 7052
    .end local v1           #mScene_str:Ljava/lang/String;
    :cond_1
    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #mScene_str:Ljava/lang/String;
    goto :goto_1

    .line 7059
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 7060
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 7065
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v1           #mScene_str:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    .line 7066
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "layout"
    .parameter "view"

    .prologue
    .line 9927
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 9937
    :cond_0
    :goto_0
    return-void

    .line 9930
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9931
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 9933
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0
.end method

.method private getAdjustedVolume(I)I
    .locals 4
    .parameter "max"

    .prologue
    .line 8173
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8175
    int-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 8182
    :goto_0
    return v0

    .line 8177
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-ne v0, v1, :cond_2

    .line 8179
    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 8182
    :cond_2
    int-to-double v0, p1

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private getMainbarSceneIcon(Lcom/android/camera/effect/EffectBase;)Ljava/lang/Integer;
    .locals 2
    .parameter "scene"

    .prologue
    .line 11068
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    .line 11069
    .local v0, name:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11070
    const v1, 0x7f020048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11089
    :goto_0
    return-object v1

    .line 11071
    :cond_0
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11072
    const v1, 0x7f020071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 11073
    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11074
    const v1, 0x7f020061

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 11075
    :cond_2
    const-string v1, "burst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11076
    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 11077
    :cond_3
    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11078
    const v1, 0x7f02006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 11079
    :cond_4
    const-string v1, "hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11080
    const v1, 0x7f02005e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 11081
    :cond_5
    const-string v1, "B_whiteboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11082
    const v1, 0x7f020086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 11083
    :cond_6
    const-string v1, "flowers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 11084
    const v1, 0x7f020067

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 11085
    :cond_7
    const-string v1, "backlight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 11086
    const v1, 0x7f02004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 11087
    :cond_8
    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 11088
    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 11089
    :cond_9
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 13
    .parameter "time"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 8276
    rem-long v4, p1, v8

    .line 8277
    .local v4, sec:J
    div-long v6, p1, v8

    rem-long v2, v6, v8

    .line 8278
    .local v2, min:J
    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    .line 8279
    .local v0, hour:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    .line 8280
    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 8282
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getTimeString(JLandroid/widget/TextView;)Ljava/lang/String;
    .locals 10
    .parameter "time"
    .parameter "text_hour"

    .prologue
    .line 8286
    const-wide/16 v6, 0x3c

    rem-long v4, p1, v6

    .line 8287
    .local v4, sec:J
    const-wide/16 v6, 0x3c

    div-long v6, p1, v6

    const-wide/16 v8, 0x3c

    rem-long v2, v6, v8

    .line 8288
    .local v2, min:J
    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    .line 8289
    .local v0, hour:J
    if-eqz p3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 8290
    const-string v6, "%d hr"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8291
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8294
    :cond_0
    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getTimeString_ds(J)Ljava/lang/String;
    .locals 13
    .parameter "time"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 8299
    rem-long v4, p1, v8

    .line 8300
    .local v4, sec:J
    div-long v6, p1, v8

    rem-long v2, v6, v8

    .line 8301
    .local v2, min:J
    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    .line 8303
    .local v0, hour:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 8304
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 8306
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private handleSensorFocus()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 9378
    const-string v7, "HTCCamera"

    const-string v8, "handleSensorFocus() - start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9380
    const-string v7, "HTCCamera"

    const-string v8, "Block Capture UI - take focus start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9381
    sput-boolean v9, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 9383
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v8, 0x23

    invoke-static {v7, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9384
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v7, :cond_0

    .line 9385
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v7}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 9386
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v7}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    .line 9387
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    .line 9390
    :cond_0
    iget v7, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v7, :cond_1

    .line 9391
    const-string v7, "HTCCamera"

    const-string v8, "take focus - mFocusingState = FOCUSING_NO_ACTION"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9392
    iput v9, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 9395
    :cond_1
    const/4 v7, 0x0

    sput v7, Lcom/android/camera/HTCCamera;->mFocusMode:I

    .line 9397
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 9398
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7, v2}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    .line 9400
    const/4 v4, 0x0

    .line 9401
    .local v4, screen_width:I
    const/4 v3, 0x0

    .line 9402
    .local v3, screen_height:I
    iget v7, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-ne v7, v9, :cond_2

    .line 9403
    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 9404
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 9411
    :goto_0
    new-instance v1, Lcom/android/camera/QueryEvent;

    const-string v7, "Query.EffectCenter"

    invoke-direct {v1, v7}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    .line 9412
    .local v1, queryEvent:Lcom/android/camera/QueryEvent;,"Lcom/android/camera/QueryEvent<Landroid/graphics/Point;>;"
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v7, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 9413
    invoke-virtual {v1}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v7

    if-nez v7, :cond_3

    .line 9415
    div-int/lit8 v5, v4, 0x2

    .line 9416
    .local v5, x:I
    div-int/lit8 v6, v3, 0x2

    .line 9425
    .local v6, y:I
    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/android/camera/HTCCamera;->updateFocusView(II)V

    .line 9427
    invoke-direct {p0, v5, v6, v2}, Lcom/android/camera/HTCCamera;->mapFocusPoint_Screen2Preview(IILandroid/graphics/Rect;)V

    .line 9429
    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSensorFocus("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") - end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9430
    return-void

    .line 9406
    .end local v1           #queryEvent:Lcom/android/camera/QueryEvent;,"Lcom/android/camera/QueryEvent<Landroid/graphics/Point;>;"
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 9407
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    goto :goto_0

    .line 9420
    .restart local v1       #queryEvent:Lcom/android/camera/QueryEvent;,"Lcom/android/camera/QueryEvent<Landroid/graphics/Point;>;"
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 9421
    .local v0, effectCenter:Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 9422
    .restart local v5       #x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    .restart local v6       #y:I
    goto :goto_1
.end method

.method private hideAllScene()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7752
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->hideSunNightSceneGuide(Z)V

    .line 7754
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 7755
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7756
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL:Z

    .line 7757
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL_PORT:Z

    .line 7758
    return-void
.end method

.method private hideSelfPortraitHint()V
    .locals 2

    .prologue
    .line 6825
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 6826
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 6828
    :cond_0
    return-void
.end method

.method private hideSunNightSceneGuide(Z)V
    .locals 3
    .parameter "isAni"

    .prologue
    .line 7656
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    .line 7677
    :goto_0
    return-void

    .line 7659
    :cond_0
    if-eqz p1, :cond_1

    .line 7660
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7661
    .local v0, fadeoutAni:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 7662
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7663
    new-instance v1, Lcom/android/camera/HTCCamera$32;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$32;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7670
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7675
    .end local v0           #fadeoutAni:Landroid/view/animation/Animation;
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x4b

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0

    .line 7673
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private initOnCreate_after_preview()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f020119

    const v6, 0x7f020118

    const/4 v5, 0x0

    const v4, 0x7f0a0002

    .line 2847
    const-string v2, "HTCCamera"

    const-string v3, "initOnCreate_after_preview() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    if-nez v2, :cond_0

    .line 2849
    const-string v2, "HTCCamera"

    const-string v3, "initOnCreate_after_preview() - not need to do"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    :goto_0
    return-void

    .line 2852
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    .line 2854
    const/4 v1, 0x0

    .line 2855
    .local v1, stub:Landroid/view/ViewStub;
    const/4 v0, 0x0

    .line 2856
    .local v0, layout:Landroid/view/View;
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-nez v2, :cond_1

    .line 2857
    const-string v2, "HTCCamera"

    const-string v3, "mMainLayout == null - initiate mMainLayout"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2859
    const v2, 0x7f080057

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .line 2862
    .restart local v1       #stub:Landroid/view/ViewStub;
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    .line 2864
    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "initOnCreate_after_preview() - set mMainLayout visible"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2867
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-nez v2, :cond_2

    .line 2868
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .line 2869
    .restart local v1       #stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    .line 2873
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v2, v8}, Lcom/android/camera/component/ComponentManager;->enableAutoInitialization(Z)V

    .line 2876
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2877
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v2, :cond_3

    .line 2878
    const v2, 0x7f080054

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .line 2879
    .restart local v1       #stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    .line 2911
    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-nez v2, :cond_b

    .line 2912
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2913
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f08011c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .line 2914
    .restart local v1       #stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    .line 2915
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    .line 2916
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    .line 2919
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    .line 2920
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    .line 2923
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2925
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    .line 2926
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    .line 2930
    :cond_4
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    .line 2933
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2935
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    .line 2936
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    .line 2940
    :cond_5
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    .line 2941
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    .line 2944
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    .line 2945
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    .line 2947
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    .line 2948
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    .line 2951
    invoke-static {p0}, Lcom/android/camera/component/ThumbnailController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2952
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    .line 2953
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    .line 2956
    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2957
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v2, :cond_7

    .line 2958
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2959
    :cond_7
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v2, :cond_8

    .line 2960
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2961
    :cond_8
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2963
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v2, :cond_9

    .line 2964
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2965
    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    if-eqz v2, :cond_a

    .line 2966
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2968
    :cond_a
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v2, :cond_b

    .line 2969
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3025
    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3026
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    if-nez v2, :cond_c

    .line 3027
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080126

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .line 3028
    .restart local v1       #stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    .line 3029
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 3030
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 3031
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 3032
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 3038
    :cond_c
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    if-nez v2, :cond_d

    .line 3039
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3040
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_d

    .line 3041
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f08011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .line 3042
    .restart local v1       #stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    .line 3043
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    .line 3044
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    .line 3045
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    .line 3053
    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSwitchButton()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_e

    .line 3054
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const v3, 0x7f08018c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .line 3055
    .restart local v1       #stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 3056
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getCachePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3058
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    .line 3061
    :cond_e
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_14

    .line 3062
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    .line 3063
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    .line 3064
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v3

    iget v4, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    .line 3067
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3068
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V

    .line 3073
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 3075
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    .line 3077
    const-string v2, "HTCCamera"

    const-string v3, "initOnCreate_after_preview() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2861
    :cond_10
    const v2, 0x7f08005a

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .restart local v1       #stub:Landroid/view/ViewStub;
    goto/16 :goto_1

    .line 2972
    :cond_11
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080122

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #stub:Landroid/view/ViewStub;
    check-cast v1, Landroid/view/ViewStub;

    .line 2973
    .restart local v1       #stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    .line 2974
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080115

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    .line 2975
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080104

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    .line 2978
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080107

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    .line 2979
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080105

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    .line 2980
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2981
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080108

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    .line 2982
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080106

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    .line 2986
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    .line 2987
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080109

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    .line 2988
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2989
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    .line 2990
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    .line 2993
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    .line 2994
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    .line 2995
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2996
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080110

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    .line 2997
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    .line 3001
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080128

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    .line 3002
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    .line 3003
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 3006
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080113

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    .line 3007
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    .line 3008
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 3009
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    .line 3010
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    .line 3012
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3013
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v2, :cond_12

    .line 3014
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3015
    :cond_12
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v2, :cond_13

    .line 3016
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3017
    :cond_13
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3070
    :cond_14
    const-string v2, "HTCCamera"

    const-string v3, "mCameraThread == null, can\'t update layout based on capture mode !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static isKeyguardShow()Z
    .locals 1

    .prologue
    .line 6198
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    return v0
.end method

.method private loadSoundPool()V
    .locals 6

    .prologue
    .line 8209
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_0

    .line 8221
    :goto_0
    return-void

    .line 8213
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 8214
    .local v1, max:I
    iput v1, p0, Lcom/android/camera/HTCCamera;->mSoundPoolVolume:I

    .line 8215
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    .line 8216
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f06

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep:I

    .line 8217
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060002

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8218
    .end local v1           #max:I
    :catch_0
    move-exception v0

    .line 8219
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HTCCamera"

    const-string v3, "loadSoundPool() failed!!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private mapFocusPoint_Screen2Preview(IILandroid/graphics/Rect;)V
    .locals 5
    .parameter "posX"
    .parameter "posY"
    .parameter "rect"

    .prologue
    .line 9546
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v2, :cond_0

    .line 9574
    :goto_0
    return-void

    .line 9549
    :cond_0
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapFocusPoint Screen - size: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") point: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9567
    move v0, p1

    .line 9568
    .local v0, new_posX:I
    move v1, p2

    .line 9569
    .local v1, new_posY:I
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapFocusPoint_Screen2Preview by pass: x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9572
    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->sendFocusMessage(II)V

    goto :goto_0
.end method

.method private on3DModeSwitched(Lcom/android/camera/OneValueEvent;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/OneValueEvent",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11001
    .local p1, e:Lcom/android/camera/OneValueEvent;,"Lcom/android/camera/OneValueEvent<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/camera/OneValueEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 11002
    .local v0, status:I
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    .line 11003
    return-void
.end method

.method private onActionScreenClosed(Lcom/android/camera/actionscreen/ActionScreenEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 10606
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 10633
    :cond_0
    :goto_0
    return-void

    .line 10610
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10611
    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto :goto_0

    .line 10616
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    .line 10620
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/actionscreen/ActionScreenEvent;->getCloseReason()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 10622
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->startScaladoPostProcessing(Ljava/lang/String;)V

    .line 10625
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_4

    .line 10627
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 10628
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 10632
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0
.end method

.method private onCameraThreadRunning()V
    .locals 3

    .prologue
    .line 11257
    const-string v1, "HTCCamera"

    const-string v2, "onCameraThreadRunning() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 11260
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    .line 11262
    const-string v1, "HTCCamera"

    const-string v2, "There is no camera thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 11280
    :goto_0
    return-void

    .line 11267
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 11268
    .local v0, eventManager:Lcom/android/camera/EventManager;
    if-eqz v0, :cond_1

    .line 11270
    const-string v1, "Media.Saved"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 11271
    const-string v1, "Zoom.Changed"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 11277
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "CameraActivity.CameraThreadRunning"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 11279
    const-string v1, "HTCCamera"

    const-string v2, "onCameraThreadRunning() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11274
    :cond_1
    const-string v1, "HTCCamera"

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onEffectApplied(Lcom/android/camera/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 11044
    check-cast p1, Lcom/android/camera/effect/EffectEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectEvent;->getEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .line 11045
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    .line 11046
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 11047
    instance-of v1, v0, Lcom/android/camera/effect/IScene;

    if-eqz v1, :cond_1

    .line 11049
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->getMainbarSceneIcon(Lcom/android/camera/effect/EffectBase;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 11050
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 11051
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 11062
    :cond_0
    :goto_0
    return-void

    .line 11052
    :cond_1
    instance-of v1, v0, Lcom/android/camera/effect/IEffect;

    if-eqz v1, :cond_0

    .line 11054
    instance-of v1, v0, Lcom/android/camera/effect/NoneEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11055
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_0

    .line 11057
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_0
.end method

.method private onEffectPanelClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 11141
    const-string v0, "HTCCamera"

    const-string v1, "Effect Panel is closed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 11144
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_0

    .line 11146
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    .line 11147
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    .line 11148
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateDisableItems()V

    .line 11153
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    const v1, 0x7f0a0002

    const v2, 0x7f020118

    invoke-static {p0, v1, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11155
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFaceDetection()V

    .line 11156
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11157
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_1

    .line 11158
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    .line 11165
    :cond_1
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v0, :cond_2

    .line 11166
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V

    .line 11170
    :cond_2
    return-void
.end method

.method private onEffectPanelOpen()V
    .locals 1

    .prologue
    .line 11097
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFaceDetection()V

    .line 11098
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_0

    .line 11099
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 11100
    :cond_0
    return-void
.end method

.method private onEffectPanelOpening()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11107
    const-string v0, "HTCCamera"

    const-string v1, "Effect Panel is opening"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 11109
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v3, :cond_0

    .line 11110
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 11111
    const-string v0, "HTCCamera"

    const-string v1, "onEffectPanelOpening when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11112
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 11113
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - onEffectPanelOpening and cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11114
    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 11123
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 11125
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 11126
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_1

    .line 11127
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 11128
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    .line 11129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    .line 11133
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    .line 11134
    :goto_0
    return-void

    .line 11116
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "onPanelMove when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onMenuClosed()V
    .locals 2

    .prologue
    .line 11023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    .line 11024
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 11025
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetMainBarBtn()V

    .line 11026
    return-void
.end method

.method private onMenuOpening()V
    .locals 4

    .prologue
    .line 11010
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 11013
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v0, :cond_0

    .line 11014
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    .line 11016
    :cond_0
    return-void
.end method

.method private onModeSwitching(Lcom/android/camera/TwoValuesEvent;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/TwoValuesEvent",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10991
    .local p1, e:Lcom/android/camera/TwoValuesEvent;,"Lcom/android/camera/TwoValuesEvent<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/camera/TwoValuesEvent;->getValue1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10992
    .local v1, newCameraType:I
    invoke-virtual {p1}, Lcom/android/camera/TwoValuesEvent;->getValue2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10993
    .local v0, mode:I
    iget v2, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    .line 10994
    return-void
.end method

.method private onRemovableStorageEjected()V
    .locals 2

    .prologue
    .line 11178
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    .line 11180
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 11183
    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v0, :cond_0

    .line 11186
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11188
    const-string v0, "HTCCamera"

    const-string v1, "storage eject, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11189
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 11196
    :cond_0
    :goto_0
    return-void

    .line 11194
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private onRemovableStorageMounted()V
    .locals 2

    .prologue
    .line 11204
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    .line 11206
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 11209
    sget-boolean v0, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v0, :cond_0

    .line 11211
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11213
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    .line 11220
    :goto_0
    return-void

    .line 11219
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private onRemovableStorageUnmounted()V
    .locals 2

    .prologue
    .line 11228
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    .line 11230
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    .line 11233
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11235
    const-string v0, "HTCCamera"

    const-string v1, "storage unmounted, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11236
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 11242
    :goto_0
    return-void

    .line 11241
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private onResetToDefault()V
    .locals 0

    .prologue
    .line 11037
    return-void
.end method

.method private onRotateChanged(I)V
    .locals 14
    .parameter "orientation"

    .prologue
    const v13, 0x7f0b00e4

    const/16 v12, 0x2b

    const/4 v10, 0x2

    const/16 v11, 0x16

    const/4 v9, 0x1

    .line 4300
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v9, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    if-eqz v0, :cond_2

    .line 4415
    :cond_1
    :goto_0
    return-void

    .line 4302
    :cond_2
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_UIOrientation(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4304
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRotateChanged old ui orientation = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", set orientation = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4305
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->animation_fromDegrees(I)F

    move-result v4

    .line 4306
    .local v4, from_degree:F
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->animation_toDegrees(I)F

    move-result v5

    .line 4308
    .local v5, to_degree:F
    invoke-direct {p0, v4, v5}, Lcom/android/camera/HTCCamera;->startRotateAnimation(FF)V

    .line 4310
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4311
    invoke-direct {p0, p1, v9}, Lcom/android/camera/HTCCamera;->updateVirtualHwKeysOrientation(IZ)V

    .line 4314
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_8

    .line 4316
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_4

    .line 4317
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/MenuHandler;->updateOrientation(I)V

    .line 4319
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 4320
    .local v8, res:Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 4321
    .local v7, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 4322
    .local v6, panel_height:I
    if-eqz p1, :cond_5

    if-ne p1, v10, :cond_f

    .line 4323
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v0, :cond_6

    .line 4324
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 4325
    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4326
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, v7}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4327
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 4330
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v0, :cond_7

    .line 4331
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 4332
    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4333
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, v7}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4334
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 4337
    :cond_7
    const v0, 0x7f0b00df

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 4361
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 4362
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4363
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0, v7}, Lcom/android/camera/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4365
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 4366
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4367
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0, v7}, Lcom/android/camera/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4370
    .end local v6           #panel_height:I
    .end local v7           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 4371
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientationDelay(I)V

    .line 4375
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4376
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSceneGuideOrientation(I)V

    .line 4385
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V

    .line 4387
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v0, :cond_b

    .line 4388
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/widget/PopupMenu;->setOrientation(II)V

    .line 4389
    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v0, :cond_c

    .line 4390
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/widget/PopupMenu;->setOrientation(II)V

    .line 4391
    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v0, :cond_d

    .line 4392
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v0, p1, v9}, Lcom/android/camera/widget/PopupMenu;->setOrientation(II)V

    .line 4393
    :cond_d
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v0, :cond_e

    .line 4394
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v0, p1, v10}, Lcom/android/camera/widget/PopupMenu;->setOrientation(II)V

    .line 4396
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateRotateViews(I)V

    .line 4398
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    .line 4399
    .local v2, oldOrientation:I
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    .line 4402
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v0, Lcom/android/camera/OrientationEvent;

    const-string v1, "CameraActivity.RotateChanged"

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/OrientationEvent;-><init>(Ljava/lang/String;IIFF)V

    invoke-virtual {v9, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 4405
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v12}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4406
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v12}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4408
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4409
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4410
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v11}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4411
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x1f40

    invoke-static {v0, v11, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 4340
    .end local v2           #oldOrientation:I
    .restart local v6       #panel_height:I
    .restart local v7       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v8       #res:Landroid/content/res/Resources;
    :cond_f
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v0, :cond_10

    .line 4341
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 4342
    const v0, 0x7f0b00e5

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4343
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, v7}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4344
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 4347
    :cond_10
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v0, :cond_11

    .line 4348
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 4349
    const v0, 0x7f0b00e5

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4350
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, v7}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4351
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 4355
    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4356
    const v0, 0x7f0b00e0

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    goto/16 :goto_1

    .line 4358
    :cond_12
    const v0, 0x7f0b00e1

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    goto/16 :goto_1
.end method

.method private onTouchCapture_Camcorder()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6493
    const-string v1, "HTCCamera"

    const-string v2, "Touch button to start video recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6495
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 6496
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v3, :cond_1

    .line 6499
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v1, v3, :cond_0

    .line 6501
    const-string v1, "HTCCamera"

    const-string v2, "onTouchCapture_Camcorder, 3D portrait capture !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6502
    iget v1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    .line 6503
    .local v0, orentation_mode:I
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    const v3, 0x7f0a0048

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 6534
    .end local v0           #orentation_mode:I
    :goto_0
    return-void

    .line 6508
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 6510
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6512
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 6513
    const-string v1, "HTCCamera"

    const-string v2, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6514
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 6531
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6533
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_0

    .line 6516
    :cond_2
    const-string v1, "HTCCamera"

    const-string v2, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6517
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 6519
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 6521
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 6522
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6523
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    .line 6525
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    goto :goto_0
.end method

.method private onTouchCapture_Camera()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x25

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6428
    const-string v2, "HTCCamera"

    const-string v3, "Touch button to take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6429
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 6431
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-lez v2, :cond_0

    sget-boolean v2, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v2, :cond_0

    .line 6434
    const v1, 0x7f0a014b

    .line 6435
    .local v1, str:I
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6436
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6, v1, v4, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 6437
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 6489
    .end local v1           #str:I
    :goto_0
    return-void

    .line 6442
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v2, v5, :cond_1

    .line 6444
    const-string v2, "HTCCamera"

    const-string v3, "onTouchCapture_Camera, 3D portrait capture !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6445
    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    .line 6446
    .local v0, orentation_mode:I
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    const v4, 0x7f0a0048

    invoke-static {v2, v3, v4, v0, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 6451
    .end local v0           #orentation_mode:I
    :cond_1
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 6453
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v5, :cond_4

    .line 6454
    const-string v2, "HTCCamera"

    const-string v3, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6455
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 6457
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 6458
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6460
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 6463
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6464
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 6467
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6468
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    .line 6470
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    .line 6471
    invoke-virtual {p0, v4, v5}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    .line 6474
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    goto :goto_0

    .line 6479
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v2, :cond_5

    .line 6480
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    .line 6481
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    goto :goto_0

    .line 6486
    :cond_5
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6488
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    goto :goto_0
.end method

.method private openSecondLayout(Z)V
    .locals 5
    .parameter "hasAnim"

    .prologue
    const/4 v4, 0x0

    .line 6644
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6654
    :cond_0
    :goto_0
    return-void

    .line 6647
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6648
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 6649
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x12c

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    .line 6650
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6653
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SecondLayout.Opened"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playSoundPool(I)V
    .locals 8
    .parameter "resID"

    .prologue
    .line 8224
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 8225
    const-string v0, "HTCCamera"

    const-string v1, "playSoundPool() - mSoundPool = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8246
    :goto_0
    return-void

    .line 8230
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    .line 8231
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 8233
    :pswitch_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    if-eqz v0, :cond_1

    .line 8234
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 8235
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8243
    :catch_0
    move-exception v7

    .line 8244
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "HTCCamera"

    const-string v1, "playSoundPool() failed!!"

    invoke-static {v0, v1, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8238
    .end local v7           #ex:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    if-eqz v0, :cond_2

    .line 8239
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 8240
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep2:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8231
    :pswitch_data_0
    .packed-switch 0x7f060000
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private releaseSoundPool()V
    .locals 1

    .prologue
    .line 8266
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 8267
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 8268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    .line 8270
    :cond_0
    return-void
.end method

.method private resetFocusView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 9641
    const-string v0, "HTCCamera"

    const-string v1, "resetFocusView() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    .line 9643
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9644
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9645
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9646
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9647
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9650
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9651
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 9652
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9653
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9663
    :cond_0
    :goto_0
    const-string v0, "HTCCamera"

    const-string v1, "resetFocusView() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9664
    return-void

    .line 9658
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 9659
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    if-nez v0, :cond_0

    .line 9660
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    check-cast v0, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_0
.end method

.method private resetGridView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 6873
    const/4 v0, 0x0

    .line 6874
    .local v0, bGrid:Z
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 6876
    :cond_0
    const/4 v0, 0x0

    .line 6880
    :goto_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 6882
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    if-nez v3, :cond_1

    .line 6883
    const v3, 0x7f080042

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 6884
    .local v2, stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    .line 6887
    .end local v2           #stub:Landroid/view/ViewStub;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 6888
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6890
    :cond_2
    const-string v3, "pref_camera_image_ratio"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 6898
    .local v1, bWideScreen:Z
    if-eqz v1, :cond_4

    .line 6899
    const-string v3, "HTCCamera"

    const-string v4, "Reset View: gridview_wide_landscape"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6900
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    const v4, 0x7f0800b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    .line 6908
    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6909
    const-string v3, "HTCCamera"

    const-string v4, "Reset View: Grid Visible"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6915
    .end local v1           #bWideScreen:Z
    :goto_2
    return-void

    .line 6878
    :cond_3
    const-string v3, "pref_grid"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 6903
    .restart local v1       #bWideScreen:Z
    :cond_4
    const-string v3, "HTCCamera"

    const-string v4, "Reset View: gridview_4by3_landscape"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6904
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    const v4, 0x7f0800b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    goto :goto_1

    .line 6911
    .end local v1           #bWideScreen:Z
    :cond_5
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    .line 6912
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6913
    :cond_6
    const-string v3, "HTCCamera"

    const-string v4, "Reset View: Grid InVisible"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private resetMainBarBtn()V
    .locals 4

    .prologue
    const v3, 0x7f0a0002

    const v2, 0x7f020118

    .line 11617
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 11618
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-static {p0, v3, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11620
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 11621
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-static {p0, v3, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11623
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 11624
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {p0, v3, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11625
    :cond_2
    return-void
.end method

.method private resetTapCapture(II)V
    .locals 2
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 9271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    .line 9272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    .line 9273
    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    .line 9274
    iput p2, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    .line 9275
    return-void
.end method

.method private reset_surface_view(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, -0x1

    .line 6314
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6316
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset_surface_view before reset, lp.width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lp.height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6317
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6318
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6319
    iget v1, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6320
    const-string v1, "HTCCamera"

    const-string v2, "reset_surface_view - landscape"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6323
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6325
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceWidth:I

    .line 6326
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    .line 6360
    :cond_0
    :goto_0
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset_surface_view lp width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lp Height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6362
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->requestLayout()V

    .line 6363
    return-void

    .line 6339
    :cond_1
    iget v1, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 6342
    :cond_2
    const-string v1, "HTCCamera"

    const-string v2, "reset_surface_view - portrait"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6344
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6346
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceWidth:I

    .line 6347
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    goto :goto_0
.end method

.method private restoreVolume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 8189
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 8191
    .local v0, audioManager:Landroid/media/AudioManager;
    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    if-eq v1, v4, :cond_0

    .line 8192
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore AudioManager.STREAM_ALARM, mOriginalVolume_Alarm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8195
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 8196
    iput v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    .line 8199
    :cond_0
    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    if-eq v1, v4, :cond_1

    .line 8200
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore AudioManager.STREAM_RING, mOriginalVolume_Ring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8203
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 8204
    iput v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    .line 8206
    :cond_1
    return-void
.end method

.method private saveAndFinish(Landroid/net/Uri;[B)V
    .locals 5
    .parameter "contentUri"
    .parameter "data"

    .prologue
    .line 5826
    if-eqz p1, :cond_1

    .line 5828
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - contentUri = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5829
    if-eqz p2, :cond_0

    .line 5831
    const/4 v1, 0x0

    .line 5834
    .local v1, stream:Ljava/io/OutputStream;
    :try_start_0
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Opening file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5835
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 5836
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing data"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5837
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 5838
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing completed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5846
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5847
    invoke-static {v1}, Lcom/android/camera/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 5848
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5861
    .end local v1           #stream:Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 5862
    return-void

    .line 5840
    .restart local v1       #stream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 5842
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - Cannot save data to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5846
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5847
    invoke-static {v1}, Lcom/android/camera/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 5848
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5846
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - Closing file"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5847
    invoke-static {v1}, Lcom/android/camera/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 5848
    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - File closed"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 5852
    .end local v1           #stream:Ljava/io/OutputStream;
    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - data = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5855
    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - contentUri = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final saveSDCardState()V
    .locals 2

    .prologue
    .line 10919
    const-string v0, "pref_sdcard_state"

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getSDCardState()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 10920
    return-void
.end method

.method private sendFocusMessage(II)V
    .locals 3
    .parameter "focus_X"
    .parameter "focus_Y"

    .prologue
    .line 9578
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v0, :cond_0

    .line 9579
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorHandler;->setifWaitFocus(Z)V

    .line 9581
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 9582
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 9583
    return-void
.end method

.method private setMaxBrightness()V
    .locals 0

    .prologue
    .line 5873
    return-void
.end method

.method private setOldBrightness()V
    .locals 0

    .prologue
    .line 5884
    return-void
.end method

.method private setPanelVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 10038
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v0, :cond_0

    .line 10050
    :goto_0
    return-void

    .line 10041
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 10042
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 10044
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10045
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->close()V

    .line 10046
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    .line 10048
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V
    .locals 6
    .parameter "orientation"
    .parameter "layout"

    .prologue
    const/16 v5, 0x82

    const/16 v4, 0xc

    const/16 v2, 0xb

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 7681
    if-eqz p2, :cond_0

    .line 7682
    invoke-virtual {p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7683
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 7705
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7706
    invoke-virtual {p2, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 7708
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 7685
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7686
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7687
    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 7690
    :pswitch_1
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7691
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7692
    const/16 v1, -0xa

    invoke-virtual {v0, v3, v5, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 7695
    :pswitch_2
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7696
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7697
    const/16 v1, 0x28

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 7700
    :pswitch_3
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7701
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7702
    const/16 v1, 0x18b

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 7683
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setTipTextPosition(ILandroid/widget/RelativeLayout;)V
    .locals 2
    .parameter "orientation"
    .parameter "layout"

    .prologue
    .line 7711
    if-eqz p2, :cond_1

    .line 7712
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 7713
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 7714
    :cond_0
    const/16 v1, 0x46

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 7718
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7720
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void

    .line 7716
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public static declared-synchronized setWaitKeyguardBeforePreview(Z)V
    .locals 2
    .parameter "isWait"

    .prologue
    .line 6202
    const-class v0, Lcom/android/camera/HTCCamera;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6203
    monitor-exit v0

    return-void

    .line 6202
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private showArrowLayout(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x0

    .line 4420
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    .line 4455
    :goto_0
    return-void

    .line 4423
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4424
    .local v0, fadeoutAni:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 4425
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 4426
    new-instance v1, Lcom/android/camera/HTCCamera$25;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$25;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4437
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 4439
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 4440
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4441
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 4442
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 4447
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 4448
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4449
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 4450
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 4451
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showSelfPortraitHint()V
    .locals 4

    .prologue
    .line 6807
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-nez v2, :cond_1

    .line 6822
    :cond_0
    :goto_0
    return-void

    .line 6810
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_2

    .line 6811
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const v3, 0x7f08018e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 6812
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 6813
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f080191

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 6814
    const v2, 0x7f080192

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    .line 6817
    .end local v0           #layout:Landroid/view/View;
    .end local v1           #stub:Landroid/view/ViewStub;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 6820
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 6821
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V

    goto :goto_0
.end method

.method private showSunNightSceneGuide()V
    .locals 6

    .prologue
    const/16 v5, 0x4b

    .line 7640
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v2, :cond_0

    .line 7653
    :goto_0
    return-void

    .line 7643
    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_1

    .line 7644
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    const v3, 0x7f08016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 7645
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 7646
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f080189

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 7649
    .end local v0           #layout:Landroid/view/View;
    .end local v1           #stub:Landroid/view/ViewStub;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 7651
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 7652
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method private startFocusFromLongPressKey()V
    .locals 4

    .prologue
    const/16 v3, 0x1f

    const/4 v2, 0x1

    .line 9280
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v2, :cond_1

    .line 9302
    :cond_0
    :goto_0
    return-void

    .line 9283
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9284
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9285
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9287
    sput-boolean v2, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 9289
    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-ne v0, v2, :cond_2

    .line 9290
    sget v0, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    sget v1, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    goto :goto_0

    .line 9294
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->isStartDetection()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 9295
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->quickFocus()Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 9299
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9300
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 9301
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->handleSensorFocus()V

    goto :goto_0
.end method

.method private startRotateAnimation(FF)V
    .locals 7
    .parameter "from_degree"
    .parameter "to_degree"

    .prologue
    const/4 v6, 0x1

    const/16 v4, 0x190

    const/4 v3, 0x0

    .line 4468
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRotateAnimation from_degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to_degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4470
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4472
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4473
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    const/4 v1, 0x0

    sub-float v2, p2, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4479
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_1

    .line 4480
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4483
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 4484
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4487
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_3

    .line 4488
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4491
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 4492
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4495
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_5

    .line 4496
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4498
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_6

    .line 4499
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4502
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 4503
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4529
    :cond_7
    :goto_0
    return-void

    .line 4508
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 4509
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4512
    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    .line 4513
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4516
    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    .line 4517
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4520
    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 4521
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 4524
    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 4525
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    goto :goto_0
.end method

.method private stopNotesRecording()V
    .locals 3

    .prologue
    .line 10909
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.notes.notesrecordingstopped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10910
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10911
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 10912
    return-void
.end method

.method private stopRecordingIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8315
    const-string v0, "HTCCamera"

    const-string v1, "stopRecordingIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8317
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8318
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8320
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    .line 8322
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 8323
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 8324
    :cond_0
    return-void
.end method

.method private stopSoundPool()V
    .locals 3

    .prologue
    .line 8249
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 8250
    const-string v1, "HTCCamera"

    const-string v2, "stopSoundPool() - mSoundPool = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8263
    :cond_0
    :goto_0
    return-void

    .line 8255
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    if-eqz v1, :cond_2

    .line 8256
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 8258
    :cond_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    if-eqz v1, :cond_0

    .line 8259
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8260
    :catch_0
    move-exception v0

    .line 8261
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HTCCamera"

    const-string v2, "stopSoundPool() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private switch3DMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3214
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v0, :cond_1

    .line 3257
    :cond_0
    :goto_0
    return-void

    .line 3216
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 3219
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 3222
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "3DMode.Switched"

    iget v3, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 3225
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 3226
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    .line 3228
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    .line 3229
    const-string v0, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    .line 3232
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3234
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    .line 3241
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-ne v0, v4, :cond_3

    .line 3243
    const-string v0, "pref_camera_3D_status"

    invoke-static {p0, v0, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 3247
    :goto_2
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    .line 3248
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_4

    .line 3250
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 3251
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "true"

    invoke-static {v0, v5, v4, v5, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 3256
    :goto_3
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    goto :goto_0

    .line 3238
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->unlockOrientation()V

    goto :goto_1

    .line 3245
    :cond_3
    const-string v0, "pref_camera_3D_status"

    invoke-static {p0, v0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto :goto_2

    .line 3254
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_3
.end method

.method private threadAccessCheck()V
    .locals 2

    .prologue
    .line 10830
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 10831
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10832
    :cond_0
    return-void
.end method

.method private togglePanelState()V
    .locals 4

    .prologue
    .line 9982
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    if-nez v1, :cond_1

    .line 9983
    const-string v1, "HTCCamera"

    const-string v2, "togglePanelState() - failed, mSettingMenu is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 10023
    :cond_0
    :goto_0
    return-void

    .line 9987
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9989
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v1, :cond_2

    .line 9990
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v1}, Lcom/android/camera/MenuHandler;->updateDisableItems()V

    .line 9993
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    if-eqz v1, :cond_3

    .line 9994
    const-string v1, "HTCCamera"

    const-string v2, "togglePanelState() - failed, mMenuIsOpening is true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9997
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    .line 10000
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v2, 0x7f0800fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10001
    .local v0, item:Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->getSettingsView()Lcom/android/camera/widget/SettingsView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/widget/PopupMenu;->toggle(Landroid/view/View;Landroid/view/View;)V

    .line 10004
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 10005
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    const v2, 0x7f0a0003

    const v3, 0x7f02015c

    invoke-static {p0, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private triggerRecord()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/16 v3, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 8458
    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8460
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v1, v4, :cond_1

    .line 8461
    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end, UI Block !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8590
    :cond_0
    :goto_0
    return-void

    .line 8464
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8466
    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end, action screen open !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8471
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v1, v4, :cond_3

    .line 8473
    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end, 3D portrait capture !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8474
    iget v1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    .line 8475
    .local v0, orentation_mode:I
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    const v3, 0x7f0a0048

    invoke-static {v1, v2, v3, v0, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 8479
    .end local v0           #orentation_mode:I
    :cond_3
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 8481
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v1

    if-nez v1, :cond_c

    .line 8485
    const-string v1, "[ANALYTIC_com.android.camera]"

    const-string v2, "[press_jogball]recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 8487
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 8488
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v1

    if-eq v1, v4, :cond_0

    .line 8492
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v1

    if-nez v1, :cond_5

    .line 8493
    const-string v1, "HTCCamera"

    const-string v2, "low internal storage ..."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8494
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8495
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    const v3, 0x104039d

    invoke-static {v1, v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 8499
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-static {v1, v7, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 8503
    :cond_5
    sget v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v1, :cond_7

    .line 8504
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_6

    .line 8505
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, v5}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    .line 8507
    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-static {v1, v7, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 8512
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8513
    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end, PowerWarning !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8516
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    .line 8518
    const-string v1, "HTCCamera"

    const-string v2, "Block Capture UI - Start Recorder"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8519
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 8520
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    .line 8521
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 8522
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    .line 8523
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    .line 8531
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "Recording.Starting"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 8533
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3, v5, v5, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 8535
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 8538
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 8539
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    .line 8540
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    .line 8542
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    .line 8543
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    .line 8546
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v1, :cond_9

    .line 8547
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 8549
    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 8550
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 8551
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    .line 8555
    :cond_a
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8556
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v1, :cond_b

    .line 8557
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 8558
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    .line 8559
    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    .line 8563
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    .line 8565
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x3f

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8566
    const-string v1, "HTCCamera"

    const-string v2, "Freeze UI - Recorder"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8567
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    .line 8568
    iget v1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    .line 8589
    :goto_1
    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8574
    :cond_c
    const-string v1, "[ANALYTIC_com.android.camera]"

    const-string v2, "[press_jogball]stop_record"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 8577
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "Recording.Stopping"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 8579
    const-string v1, "HTCCamera"

    const-string v2, "Block Capture UI - Stop Recorder"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8580
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 8581
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3, v5, v5, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 8583
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    .line 8586
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto :goto_1
.end method

.method private triggerTakePicture()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 8330
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[press_jogball]take_picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 8332
    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8334
    sget-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v2, v4, :cond_1

    .line 8335
    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - end, UI Block !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8455
    :cond_0
    :goto_0
    return-void

    .line 8339
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 8340
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v2

    if-eq v2, v4, :cond_0

    .line 8349
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v2, v4, :cond_3

    .line 8351
    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - end, 3D portrait capture !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8352
    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    .line 8353
    .local v0, orentation_mode:I
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    const v4, 0x7f0a0048

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 8357
    .end local v0           #orentation_mode:I
    :cond_3
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 8359
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v2

    if-nez v2, :cond_4

    .line 8360
    const-string v2, "HTCCamera"

    const-string v3, "low internal storage ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8361
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8362
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v4, 0x104039d

    invoke-static {v2, v3, v4, v6, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 8366
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    const-wide/16 v4, 0xc8

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 8368
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 8371
    const-string v2, "HTCCamera"

    const-string v3, "low internal storage - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8372
    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    goto :goto_0

    .line 8377
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 8379
    :cond_5
    sget v2, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v2, :cond_7

    .line 8380
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_6

    .line 8381
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    .line 8383
    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    const-wide/16 v4, 0xc8

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 8385
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 8388
    const-string v2, "HTCCamera"

    const-string v3, "Storage_Status != STORAGE_OK - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8389
    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    goto/16 :goto_0

    .line 8395
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8396
    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - end, PowerWarning !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8399
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    .line 8401
    const-string v2, "HTCCamera"

    const-string v3, "Block Capture UI - Take Picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8402
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 8403
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    .line 8404
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 8405
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    .line 8408
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v1

    .line 8409
    .local v1, timer:I
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v8, :cond_9

    if-gtz v1, :cond_a

    .line 8410
    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8411
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v2, :cond_a

    .line 8412
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v2}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 8413
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v2}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    .line 8414
    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    .line 8418
    :cond_a
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v7, :cond_c

    .line 8419
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    .line 8420
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8422
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 8425
    :cond_c
    if-lez v1, :cond_f

    .line 8426
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v8, :cond_e

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v7, :cond_e

    .line 8427
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 8428
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8429
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    .line 8431
    invoke-direct {p0, v6}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    .line 8432
    invoke-virtual {p0, v6, v4}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    .line 8452
    :cond_e
    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v7, v6, v6, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 8454
    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8435
    :cond_f
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v8, :cond_e

    .line 8437
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v7, :cond_10

    .line 8438
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 8439
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8443
    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 8444
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8446
    :cond_11
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8447
    const-string v2, "HTCCamera"

    const-string v3, "Freeze UI - Take Picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8448
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->lockOrientation()V

    goto :goto_1
.end method

.method private updateCaptureIcon(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 7122
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7123
    if-nez p1, :cond_1

    .line 7124
    const/high16 v2, 0x7f0a

    const v3, 0x7f020191

    invoke-static {p0, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    .line 7125
    const v2, 0x7f020192

    iput v2, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    .line 7131
    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 7132
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7157
    :cond_0
    :goto_1
    return-void

    .line 7127
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    .line 7128
    const v2, 0x7f020174

    iput v2, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    goto :goto_0

    .line 7136
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 7137
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7138
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7139
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0, v4, p1}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    .line 7140
    if-nez p1, :cond_3

    .line 7141
    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b010b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 7146
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 7148
    :cond_3
    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b010d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 7153
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private updateFocusView(II)V
    .locals 11
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 9587
    const-string v9, "HTCCamera"

    const-string v10, "updateFocusView - start"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9590
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->initFocusView()V

    .line 9592
    sput p1, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    .line 9593
    sput p2, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    .line 9595
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    .line 9596
    const/4 v8, 0x0

    .line 9597
    .local v8, screen_width:I
    const/4 v7, 0x0

    .line 9598
    .local v7, screen_height:I
    const/4 v1, 0x0

    .line 9599
    .local v1, focus_width:I
    const/4 v0, 0x0

    .line 9600
    .local v0, focus_height:I
    iget v9, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 9601
    sget v8, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 9602
    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 9603
    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusWidth(Landroid/content/Context;)I

    move-result v1

    .line 9604
    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusHeight(Landroid/content/Context;)I

    move-result v0

    .line 9613
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-nez v9, :cond_0

    .line 9614
    div-int/lit8 v9, v1, 0x2

    sub-int v3, p1, v9

    .line 9615
    .local v3, margin_left:I
    div-int/lit8 v9, v0, 0x2

    sub-int v5, p2, v9

    .line 9616
    .local v5, margin_top:I
    sub-int v9, v8, p1

    div-int/lit8 v10, v1, 0x2

    sub-int v4, v9, v10

    .line 9617
    .local v4, margin_right:I
    sub-int v9, v7, p2

    div-int/lit8 v10, v0, 0x2

    sub-int v2, v9, v10

    .line 9618
    .local v2, margin_bottom:I
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9619
    .local v6, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0x9

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9620
    const/16 v9, 0xa

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9621
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9622
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9623
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9624
    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 9625
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9627
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9628
    .restart local v6       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0x9

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9629
    const/16 v9, 0xa

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9630
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9631
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9632
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9633
    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 9634
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9635
    const-string v9, "HTCCamera"

    const-string v10, "updateFocusView - end"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9637
    .end local v2           #margin_bottom:I
    .end local v3           #margin_left:I
    .end local v4           #margin_right:I
    .end local v5           #margin_top:I
    .end local v6           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 9606
    :cond_1
    sget v8, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 9607
    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 9608
    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusHeight(Landroid/content/Context;)I

    move-result v1

    .line 9609
    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusWidth(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_0
.end method

.method private updateModeIcon(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const v4, 0x7f0a016f

    const v3, 0x7f0a016e

    const v2, 0x7f020083

    const v1, 0x7f020050

    .line 6974
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 7037
    :goto_0
    return-void

    .line 6977
    :cond_0
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 6980
    if-nez p1, :cond_6

    .line 6981
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6982
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6983
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6997
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 7008
    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    goto :goto_0

    .line 6984
    :cond_1
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6985
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 6986
    :cond_2
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Mail:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6988
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 6990
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 6993
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6994
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 6999
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7000
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f020120

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7005
    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_2

    .line 7002
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7003
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 7012
    :cond_8
    if-nez p1, :cond_a

    .line 7013
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7014
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7019
    :goto_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 7035
    :goto_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 7016
    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7017
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 7021
    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_b

    .line 7022
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7027
    :goto_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_5

    .line 7024
    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7025
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6
.end method

.method private updateRotateViews(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 4458
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4460
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 4461
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    .line 4462
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->show()V

    .line 4464
    :cond_0
    return-void
.end method

.method private updateSceneGuide(I)V
    .locals 5
    .parameter "scene_idx"

    .prologue
    const/16 v4, 0x3a

    const/4 v3, 0x0

    .line 7552
    const/4 v0, 0x0

    .line 7553
    .local v0, scene_mode:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideAllScene()V

    .line 7555
    packed-switch p1, :pswitch_data_0

    .line 7601
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 7604
    packed-switch p1, :pswitch_data_1

    .line 7636
    :cond_0
    :goto_0
    return-void

    .line 7557
    :pswitch_1
    const-string v0, "auto"

    .line 7558
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 7633
    :goto_1
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->updateSceneGuideOrientation(I)V

    .line 7634
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 7635
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4, v3, v3, v0}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 7561
    :pswitch_2
    const-string v0, "night"

    .line 7562
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    .line 7563
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showSunNightSceneGuide()V

    goto :goto_1

    .line 7570
    :pswitch_3
    const-string v0, "action"

    .line 7571
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    .line 7581
    :pswitch_4
    const-string v0, "flowers"

    .line 7582
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    .line 7585
    :pswitch_5
    const-string v0, "portrait"

    .line 7586
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    .line 7594
    :pswitch_6
    const-string v0, "auto"

    .line 7595
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    .line 7606
    :pswitch_7
    const-string v1, "Panorama UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaUI;->isPanoramaModeEntered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7608
    const-string v0, "auto"

    .line 7609
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "auto"

    invoke-static {v1, v4, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 7610
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterPanoramaMode()V

    goto :goto_0

    .line 7614
    :pswitch_8
    const-string v1, "HDR UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/HdrUI;

    invoke-virtual {v1}, Lcom/android/camera/component/HdrUI;->isHdrModeEntered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7616
    const-string v0, "auto"

    .line 7617
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "auto"

    invoke-static {v1, v4, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 7618
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterHdrMode()V

    goto :goto_0

    .line 7622
    :pswitch_9
    const-string v1, "Burst UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/BurstUI;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstUI;->isBurstModeEntered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7624
    const-string v0, "action"

    .line 7625
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "action"

    invoke-static {v1, v4, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 7626
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterBurstMode()V

    goto/16 :goto_0

    .line 7555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 7604
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateSceneGuideOrientation(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 7723
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSceneGuideOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7725
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    .line 7726
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    .line 7727
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    .line 7728
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setTipTextPosition(ILandroid/widget/RelativeLayout;)V

    .line 7730
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    .line 7732
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 7733
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v4, :cond_3

    .line 7734
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 7735
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 7736
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 7748
    :cond_2
    :goto_0
    return-void

    .line 7739
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 7740
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 7741
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 7744
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 7743
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private updateSceneQualityIcon(III)V
    .locals 9
    .parameter "mode"
    .parameter "type"
    .parameter "status3D"

    .prologue
    const v6, 0x7f020048

    const/4 v5, 0x2

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 6920
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    if-nez v1, :cond_1

    .line 6970
    :cond_0
    :goto_0
    return-void

    .line 6924
    :cond_1
    if-nez p1, :cond_6

    .line 6925
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f0a01b7

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    .line 6926
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    if-eqz v1, :cond_4

    .line 6927
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v8

    .line 6928
    .local v8, scene:Lcom/android/camera/effect/EffectBase;
    if-eqz v8, :cond_3

    .line 6929
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-direct {p0, v8}, Lcom/android/camera/HTCCamera;->getMainbarSceneIcon(Lcom/android/camera/effect/EffectBase;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 6937
    .end local v8           #scene:Lcom/android/camera/effect/EffectBase;
    :goto_1
    if-eq p2, v5, :cond_5

    .line 6938
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    .line 6957
    :goto_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v1, :cond_2

    .line 6959
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v7, v1, 0x5a

    .line 6960
    .local v7, degrees:I
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    int-to-float v2, v7

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 6961
    .local v0, rotateAnimation:Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 6962
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    .line 6963
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 6964
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/ImageTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6967
    .end local v0           #rotateAnimation:Landroid/view/animation/RotateAnimation;
    .end local v7           #degrees:I
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6968
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 6931
    .restart local v8       #scene:Lcom/android/camera/effect/EffectBase;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v6}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    goto :goto_1

    .line 6934
    .end local v8           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v6}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    goto :goto_1

    .line 6940
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_2

    .line 6943
    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f0a01ba

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    .line 6944
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 6946
    if-eq p3, v3, :cond_7

    if-ne p2, v5, :cond_8

    .line 6948
    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_2

    .line 6952
    :cond_8
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_2
.end method

.method private updateSelfPortraitHint(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 6831
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6869
    :cond_0
    :goto_0
    return-void

    .line 6834
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6835
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 6867
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6868
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_0

    .line 6837
    :pswitch_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6838
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6839
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6840
    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6841
    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 6844
    :pswitch_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6845
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6846
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6847
    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6848
    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_MAIN_BAR:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 6851
    :pswitch_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasPreviewFilterLayout()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6853
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6854
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6855
    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6856
    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 6851
    goto :goto_2

    .line 6859
    :pswitch_3
    iget v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasPreviewFilterLayout()Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

    :goto_3
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6861
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6862
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6863
    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6864
    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 6859
    goto :goto_3

    .line 6835
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private updateSwitchIcon(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 7081
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    if-nez v1, :cond_0

    .line 7116
    :goto_0
    return-void

    .line 7096
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7098
    if-nez p1, :cond_1

    .line 7099
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 7114
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0

    .line 7101
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f0201ad

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    goto :goto_1

    .line 7105
    :cond_2
    const-string v1, "pref_camera_switch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 7106
    .local v0, is2nd:Z
    if-eqz v0, :cond_3

    .line 7107
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 7108
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    const v2, 0x7f0a0171

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 7110
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 7111
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    const v2, 0x7f0a0170

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private updateThumbnailButton(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 1
    .parameter "thumb"
    .parameter "path"
    .parameter "mode"

    .prologue
    .line 4534
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ThumbnailController;->setData(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 4535
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 4536
    return-void
.end method

.method private updateVirtualHwKeysOrientation(IZ)V
    .locals 4
    .parameter "orientation"
    .parameter "enabled"

    .prologue
    .line 10256
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.content.intent.action.ORIENTATION_LIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package_name"

    const-string v3, "com.android.camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "manual"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 10260
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 10261
    return-void
.end method


# virtual methods
.method public IsFirstTimeLaunch()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5919
    const-string v1, "pref_first_time_launch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->ContainsKey(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5926
    :cond_0
    :goto_0
    return v0

    .line 5921
    :cond_1
    const-string v1, "pref_first_time_launch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 5926
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PlaySound(I)V
    .locals 13
    .parameter "id"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x2

    .line 8054
    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8055
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_0

    .line 8056
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 8060
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v1, :cond_1

    .line 8061
    const-string v1, "HTCCamera"

    const-string v2, "mIsUIReady = false - PlaySound return"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8168
    :goto_0
    return-void

    .line 8066
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v2

    .line 8068
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 8070
    .local v0, mediaPlayer:Landroid/media/MediaPlayer;
    if-nez v0, :cond_2

    .line 8071
    const-string v1, "HTCCamera"

    const-string v3, "PlaySound() - mAudioPlayer == null"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8072
    monitor-exit v2

    goto :goto_0

    .line 8076
    .end local v0           #mediaPlayer:Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8075
    .restart local v0       #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 8076
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8086
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 8087
    .local v7, afd:Landroid/content/res/AssetFileDescriptor;
    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - set data source"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8088
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 8090
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8093
    :cond_3
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    .line 8094
    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - StreamType : STREAM_ALARM"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8100
    :goto_1
    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 8101
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 8102
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 8103
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8116
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v8

    .line 8141
    .local v8, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v10, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8144
    :cond_4
    const-string v1, "HTCCamera"

    const-string v2, "Set stream volume"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8146
    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v8, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    .line 8149
    .local v6, MaxVolume:I
    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    if-ne v1, v12, :cond_9

    .line 8150
    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    if-ne v1, v11, :cond_5

    .line 8151
    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v8, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    .line 8152
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOriginalVolume_Alarm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8161
    :cond_5
    :goto_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-direct {p0, v6}, Lcom/android/camera/HTCCamera;->getAdjustedVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 8165
    .end local v6           #MaxVolume:I
    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 8167
    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8096
    .end local v8           #audioManager:Landroid/media/AudioManager;
    :cond_7
    const/4 v1, 0x2

    :try_start_3
    iput v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    .line 8097
    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - StreamType : STREAM_RING"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 8105
    .end local v7           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v9

    .line 8106
    .local v9, ex:Ljava/lang/Exception;
    const-string v1, "HTCCamera"

    const-string v2, "PlaySound failed"

    invoke-static {v1, v2, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8107
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 8108
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v2

    .line 8110
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_8

    .line 8111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 8112
    :cond_8
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 8155
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v6       #MaxVolume:I
    .restart local v7       #afd:Landroid/content/res/AssetFileDescriptor;
    .restart local v8       #audioManager:Landroid/media/AudioManager;
    :cond_9
    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    if-ne v1, v11, :cond_5

    .line 8156
    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v8, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    .line 8157
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOriginalVolume_Ring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public RequestVideoQualityLevel()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 6136
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    .line 6137
    const-string v1, "HTCCamera"

    const-string v2, "isRequestHighQualityVideo() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6149
    :cond_0
    :goto_0
    return v0

    .line 6141
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6144
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-static {}, Lcom/android/camera/IntentManager;->IsHighVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6145
    const/4 v0, 0x1

    goto :goto_0

    .line 6147
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final abandonAudioFocus()V
    .locals 2

    .prologue
    .line 7892
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 7893
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 7894
    :cond_0
    return-void
.end method

.method public activate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9762
    const-string v0, "HTCCamera"

    const-string v1, "activate!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9763
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 9764
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "activate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 9803
    :goto_0
    return-void

    .line 9768
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 9769
    const-string v0, "HTCCamera"

    const-string v1, "activate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9773
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_3

    .line 9774
    const-string v0, "HTCCamera"

    const-string v1, "activate in mIdle == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9778
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 9779
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 9780
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9782
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 9783
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9784
    const-string v0, "HTCCamera"

    const-string v1, "addFlags FLAG_SHOW_WHEN_LOCKED activate"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9785
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 9790
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - activate!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9791
    sput-boolean v3, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 9793
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 9795
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 9796
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    .line 9799
    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    .line 9802
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CameraActivity.Activate"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canSensorFocus()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9198
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v3, :cond_1

    .line 9222
    :cond_0
    :goto_0
    return v1

    .line 9201
    :cond_1
    iget v3, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    if-gtz v3, :cond_0

    .line 9205
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-gtz v3, :cond_2

    .line 9206
    const-string v3, "pref_camera_auto_focus"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 9208
    .local v0, openAutoFocus:Z
    if-eqz v0, :cond_0

    .line 9215
    .end local v0           #openAutoFocus:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9218
    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    if-ne v3, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 9222
    goto :goto_0
.end method

.method public canTriggerFocus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9154
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 9193
    :goto_0
    return v1

    .line 9157
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_1

    move v1, v2

    .line 9158
    goto :goto_0

    .line 9166
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 9167
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v2

    .line 9168
    goto :goto_0

    .line 9171
    :cond_2
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isCameraTakingPicture()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-eq v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v1, :cond_4

    :cond_3
    move v1, v2

    .line 9177
    goto :goto_0

    .line 9180
    :cond_4
    new-instance v0, Lcom/android/camera/ConditionalQueryEvent;

    const-string v1, "Query.CanTriggerFocus"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/ConditionalQueryEvent;-><init>(Ljava/lang/String;IZ)V

    .line 9184
    .local v0, queryEvent:Lcom/android/camera/ConditionalQueryEvent;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 9185
    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 9186
    goto :goto_0

    .line 9188
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-ne v1, v3, :cond_7

    :cond_6
    move v1, v2

    .line 9190
    goto :goto_0

    :cond_7
    move v1, v3

    .line 9193
    goto :goto_0
.end method

.method public cancelAutoFocus()Z
    .locals 7

    .prologue
    const/16 v6, 0x23

    const/4 v5, 0x6

    const/16 v4, 0x1f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9305
    const-string v2, "HTCCamera"

    const-string v3, "cancelAutoFocus() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9307
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9308
    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - DisplayDevice.canCancelFocus() = false"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9345
    :goto_0
    return v0

    .line 9312
    :cond_0
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v1, :cond_1

    .line 9313
    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - mFocusingState != FOCUSING_NO_ACTION"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9318
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    .line 9320
    sput-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 9322
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetFocusView()V

    .line 9323
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9324
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9325
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9326
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9327
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9328
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 9330
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v2, :cond_2

    .line 9331
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v2, v0}, Lcom/android/camera/SensorHandler;->setifWaitFocus(Z)V

    .line 9332
    :cond_2
    iput v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 9334
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_3

    .line 9335
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->setStateWithFocus()V

    .line 9336
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9337
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 9338
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9339
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v6, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 9340
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9341
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9342
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v4, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 9343
    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() - end"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 9345
    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 10723
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 10724
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-eqz v0, :cond_0

    .line 10726
    const-string v0, "HTCCamera"

    const-string v1, "Zoom is locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 10737
    :goto_0
    return-void

    .line 10729
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    .line 10731
    const-string v0, "HTCCamera"

    const-string v1, "There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10736
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto :goto_0
.end method

.method public changetoCameraMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5599
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Camera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5600
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    .line 5601
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Camera - but current mode is Camera !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5626
    :goto_0
    return-void

    .line 5605
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 5608
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_1

    .line 5609
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    .line 5611
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    .line 5613
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    .line 5615
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    .line 5616
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    .line 5617
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    .line 5618
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    .line 5622
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_2

    .line 5623
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    .line 5625
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method public changetoVideoMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5630
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Video"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5631
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v3, :cond_1

    .line 5632
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Video - but current mode is Video !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5678
    :cond_0
    :goto_0
    return-void

    .line 5640
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    .line 5643
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    .line 5646
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    .line 5648
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 5651
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 5652
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5654
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v4, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 5657
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_3

    .line 5658
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    .line 5660
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5661
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    .line 5662
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    .line 5664
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    .line 5665
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    .line 5666
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    .line 5667
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    .line 5671
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_4

    .line 5672
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    .line 5673
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    .line 5676
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5677
    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    goto :goto_0
.end method

.method public checkCamcorderButtonRecord()V
    .locals 1

    .prologue
    .line 11629
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    if-eqz v0, :cond_0

    .line 11630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 11631
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    .line 11633
    :cond_0
    return-void
.end method

.method public checkInternalStorage()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 10151
    const-string v9, "HTCCamera"

    const-string v10, "Check Internal Storage"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10153
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    const-string v9, "/data"

    invoke-direct {v5, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 10154
    .local v5, fileStats:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 10155
    .local v0, availableBlocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 10156
    .local v2, blockSize:J
    mul-long v6, v0, v2

    .line 10157
    .local v6, size:J
    const-string v9, "HTCCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "internal memory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10161
    const-wide/32 v9, 0x100000

    cmp-long v9, v6, v9

    if-lez v9, :cond_0

    const/4 v8, 0x1

    .line 10164
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #fileStats:Landroid/os/StatFs;
    .end local v6           #size:J
    :cond_0
    :goto_0
    return v8

    .line 10162
    :catch_0
    move-exception v4

    .line 10163
    .local v4, ex:Ljava/lang/Exception;
    const-string v9, "HTCCamera"

    const-string v10, "catch - checkInternalStorage with exception: "

    invoke-static {v9, v10, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final closeActionScreen()V
    .locals 2

    .prologue
    .line 10534
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 10537
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_0

    .line 10539
    const-string v0, "HTCCamera"

    const-string v1, "No action screen to close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10550
    :goto_0
    return-void

    .line 10544
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->close(Z)V

    goto :goto_0

    .line 10546
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 10547
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10549
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "Cannot close action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeSettingsPanel()V
    .locals 1

    .prologue
    .line 10027
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 10028
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10029
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->close()V

    .line 10034
    :cond_0
    :goto_0
    return-void

    .line 10030
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10031
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public final createMediaPlayer(I)Landroid/media/MediaPlayer;
    .locals 9
    .parameter "audioResId"

    .prologue
    .line 7855
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 7856
    .local v0, mediaPlayer:Landroid/media/MediaPlayer;
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 7859
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 7862
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7865
    :cond_0
    const/4 v7, 0x4

    .line 7866
    .local v7, audioStreamType:I
    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - StreamType : STREAM_ALARM"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7872
    :goto_0
    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 7878
    .end local v0           #mediaPlayer:Landroid/media/MediaPlayer;
    .end local v7           #audioStreamType:I
    :goto_1
    return-object v0

    .line 7868
    .restart local v0       #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_1
    const/4 v7, 0x2

    .line 7869
    .restart local v7       #audioStreamType:I
    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - StreamType : STREAM_RING"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7874
    .end local v7           #audioStreamType:I
    :catch_0
    move-exception v8

    .line 7876
    .local v8, ex:Ljava/lang/Throwable;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9806
    const-string v1, "HTCCamera"

    const-string v2, "deactivate!!!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9807
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 9808
    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 9877
    :goto_0
    return-void

    .line 9812
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 9813
    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mUIHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9817
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v4, :cond_3

    .line 9818
    const-string v1, "HTCCamera"

    const-string v2, "deactivate in mIdle = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9823
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 9826
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "CameraActivity.Deactivate"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 9829
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 9831
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-nez v1, :cond_4

    .line 9832
    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 9833
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    .line 9834
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    new-instance v2, Lcom/android/camera/HTCCamera$35;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$35;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9841
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const v2, 0x7f08018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 9842
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f08018b

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    .line 9845
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v1, v4, :cond_6

    .line 9846
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_5

    .line 9847
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 9858
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 9859
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9861
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 9864
    sput v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    .line 9865
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    .line 9867
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9868
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 9870
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    .line 9873
    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    .line 9876
    iget-wide v1, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    goto/16 :goto_0

    .line 9849
    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a013b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 9851
    :cond_6
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_7

    .line 9852
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a013c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 9854
    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a013a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final disableFlash()V
    .locals 1

    .prologue
    .line 7165
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7168
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-eqz v0, :cond_0

    .line 7176
    :goto_0
    return-void

    .line 7172
    :cond_0
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    .line 7175
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    goto :goto_0
.end method

.method public final disableSelfTimer()V
    .locals 5

    .prologue
    .line 11587
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 11590
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-eqz v1, :cond_1

    .line 11602
    :cond_0
    :goto_0
    return-void

    .line 11594
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    .line 11597
    .local v0, interval:I
    iget v1, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    .line 11600
    iget v1, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 11601
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v2, Lcom/android/camera/OneValueEvent;

    const-string v3, "SelfTimer.Changed"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0
.end method

.method public final disableSensorFocus()V
    .locals 1

    .prologue
    .line 9437
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    .line 9438
    return-void
.end method

.method public disableTouchAEC()V
    .locals 2

    .prologue
    const/16 v1, 0x1f

    .line 9755
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    .line 9756
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9757
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 9759
    :cond_0
    return-void
.end method

.method public final disableTouchFocus()V
    .locals 1

    .prologue
    .line 9453
    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    .line 9454
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x16

    const/4 v3, 0x1

    .line 9881
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 9885
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 9886
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9887
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v4, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 9890
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    .line 9891
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    .line 9893
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x16

    const/4 v3, 0x1

    .line 9898
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 9901
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 9902
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9903
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v4, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 9909
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9910
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    .line 9916
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 9917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    .line 9922
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 9912
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto :goto_0

    .line 9919
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    goto :goto_1
.end method

.method public doOnPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 5234
    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5236
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 5237
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 5238
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    .line 5248
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    .line 5250
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v1, :cond_1

    .line 5251
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 5253
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v1, :cond_2

    .line 5254
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    .line 5256
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 5257
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5259
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetFocusView()V

    .line 5261
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 5262
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 5263
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5264
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5266
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 5267
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 5268
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v4, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    .line 5271
    :cond_5
    const-string v1, "HTCCamera"

    const-string v2, "OnPause - hide UI, set mMainLayout invisible"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5272
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 5273
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5275
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 5277
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 5278
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 5280
    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 5281
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 5282
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5285
    :cond_8
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_9

    .line 5286
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->clearAnimation()V

    .line 5287
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 5291
    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v1, :cond_a

    .line 5292
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v1}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    .line 5294
    :cond_a
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 5297
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-nez v1, :cond_b

    .line 5298
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5299
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5302
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5303
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5308
    :cond_c
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v1, :cond_d

    .line 5309
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v1}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    .line 5315
    :cond_d
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-eqz v1, :cond_e

    .line 5316
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v1}, Lcom/android/camera/FlashRestriction;->releaseFlashRestriction()V

    .line 5317
    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    .line 5320
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->releaseSoundPool()V

    .line 5322
    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5323
    return-void

    .line 5305
    :catch_0
    move-exception v0

    .line 5306
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HTCCamera"

    const-string v2, "unregisterReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final enableFlash()V
    .locals 1

    .prologue
    .line 7184
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 7187
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-gtz v0, :cond_1

    .line 7195
    :cond_0
    :goto_0
    return-void

    .line 7191
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    .line 7194
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    goto :goto_0
.end method

.method public enableGeoTagging(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 9941
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-nez v0, :cond_0

    .line 9952
    :goto_0
    return-void

    .line 9944
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_1

    .line 9947
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    goto :goto_0

    .line 9949
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    .line 9950
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    goto :goto_0
.end method

.method public final enableSelfTimer()V
    .locals 4

    .prologue
    .line 11567
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 11570
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_1

    .line 11579
    :cond_0
    :goto_0
    return-void

    .line 11574
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    .line 11577
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_0

    .line 11578
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "SelfTimer.Changed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0
.end method

.method public final enableSensorFocus()V
    .locals 1

    .prologue
    .line 9445
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    .line 9446
    return-void
.end method

.method public final enableTouchFocus(Z)V
    .locals 3
    .parameter "takeFocus"

    .prologue
    .line 9461
    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    .line 9462
    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v2, :cond_0

    if-eqz p1, :cond_0

    .line 9467
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v2, 0x2

    .line 9468
    .local v0, x:I
    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v2, 0x2

    .line 9475
    .local v1, y:I
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    .line 9477
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    return-void
.end method

.method public final enterBurstMode()V
    .locals 1

    .prologue
    .line 10409
    const-string v0, "Burst UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->enterBurstMode()V

    .line 10410
    return-void
.end method

.method public final enterHdrMode()V
    .locals 1

    .prologue
    .line 10393
    const-string v0, "HDR UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/HdrUI;

    invoke-virtual {v0}, Lcom/android/camera/component/HdrUI;->enterHdrMode()V

    .line 10394
    return-void
.end method

.method public final enterPanoramaMode()V
    .locals 1

    .prologue
    .line 10377
    const-string v0, "Panorama UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->enterPanoramaMode()V

    .line 10378
    return-void
.end method

.method public final exitBurstMode()V
    .locals 1

    .prologue
    .line 10417
    const-string v0, "Burst UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->exitBurstMode()V

    .line 10418
    return-void
.end method

.method public final exitHdrMode()V
    .locals 1

    .prologue
    .line 10401
    const-string v0, "HDR UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/HdrUI;

    invoke-virtual {v0}, Lcom/android/camera/component/HdrUI;->exitHdrMode()V

    .line 10402
    return-void
.end method

.method public final exitPanoramaMode()V
    .locals 1

    .prologue
    .line 10385
    const-string v0, "Panorama UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->exitPanoramaMode()V

    .line 10386
    return-void
.end method

.method public final getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;
    .locals 1

    .prologue
    .line 6051
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    return-object v0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 11395
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 11397
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 11398
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 11399
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11400
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    .line 11399
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1

    .prologue
    .line 10169
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    return v0
.end method

.method public getCameraLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 10072
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 10073
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    .line 10075
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    .prologue
    .line 10839
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "name"

    .prologue
    .line 10855
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    .prologue
    .line 10847
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    return-object v0
.end method

.method public final getEffectManager()Lcom/android/camera/effect/EffectManager;
    .locals 1

    .prologue
    .line 10935
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    return-object v0
.end method

.method public final getEventManager()Lcom/android/camera/EventManager;
    .locals 1

    .prologue
    .line 10943
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method public getFaceNumber()I
    .locals 2

    .prologue
    .line 6796
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6797
    :cond_0
    const/4 v0, 0x0

    .line 6799
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    goto :goto_0
.end method

.method public getFlashRestriction()Lcom/android/camera/FlashRestriction;
    .locals 1

    .prologue
    .line 6040
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    return-object v0
.end method

.method public getFocusingState()I
    .locals 1

    .prologue
    .line 9226
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    return v0
.end method

.method public getFreezeOrientation()I
    .locals 1

    .prologue
    .line 5975
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    return v0
.end method

.method public getICSFace([Lcom/android/camera/FaceDetection$Face;)I
    .locals 7
    .parameter "faces"

    .prologue
    .line 11647
    const/4 v2, 0x0

    .line 11648
    .local v2, iFaceNum:I
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v5, :cond_0

    .line 11649
    const/4 v5, 0x0

    .line 11669
    :goto_0
    return v5

    .line 11651
    :cond_0
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v3

    .line 11652
    .local v3, iPreviewH:I
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v4

    .line 11653
    .local v4, iPreviewW:I
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v5, :cond_2

    .line 11655
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 11657
    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v6, v6, 0x3e8

    mul-int/2addr v6, v3

    div-int/lit16 v6, v6, 0x7d0

    sub-int v6, v3, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 11658
    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x3e8

    mul-int/2addr v6, v3

    div-int/lit16 v6, v6, 0x7d0

    sub-int v6, v3, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 11659
    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x3e8

    mul-int/2addr v6, v4

    div-int/lit16 v6, v6, 0x7d0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 11660
    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/lit16 v6, v6, 0x3e8

    mul-int/2addr v6, v4

    div-int/lit16 v6, v6, 0x7d0

    iput v6, v5, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11655
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11663
    :catch_0
    move-exception v0

    .line 11664
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "HTCCamera"

    const-string v6, "getFace failed: "

    invoke-static {v5, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11665
    const/4 v2, 0x0

    .line 11667
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v2, v5

    .end local v1           #i:I
    :cond_2
    move v5, v2

    .line 11669
    goto :goto_0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 5967
    iget v0, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    return v0
.end method

.method public getMainBarLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 10086
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 6020
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMainLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 6032
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getMenuHandler()Lcom/android/camera/MenuHandler;
    .locals 1

    .prologue
    .line 10927
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    return-object v0
.end method

.method public getPrefSceneType(I)Ljava/lang/String;
    .locals 2
    .parameter "mode"

    .prologue
    .line 11370
    const/4 v0, 0x0

    .line 11371
    .local v0, prev_scene:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 11373
    const-string v1, "pref_camera_scene"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11380
    :goto_0
    return-object v0

    .line 11377
    :cond_0
    const-string v1, "pref_video_scene"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewSurfaceHeight()I
    .locals 1

    .prologue
    .line 11525
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 11527
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 11529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewSurfaceWidth()I
    .locals 1

    .prologue
    .line 11516
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 11518
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    .line 11520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;
    .locals 1

    .prologue
    .line 6045
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    return-object v0
.end method

.method public getRecordMS()J
    .locals 4

    .prologue
    .line 8311
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getRequestMode()Lcom/android/camera/IntentManager$RequestMode;
    .locals 2

    .prologue
    .line 6092
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    .line 6093
    const-string v0, "HTCCamera"

    const-string v1, "getRequestMode() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6094
    const/4 v0, 0x0

    .line 6096
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    goto :goto_0
.end method

.method public getRequestName()Lcom/android/camera/IntentManager$RequestName;
    .locals 2

    .prologue
    .line 6100
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    .line 6101
    const-string v0, "HTCCamera"

    const-string v1, "getRequestName() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6102
    const/4 v0, 0x0

    .line 6104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    goto :goto_0
.end method

.method public getReviewDuration()I
    .locals 1

    .prologue
    .line 6194
    iget v0, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    return v0
.end method

.method public getSecondLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 6036
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getSelfTimerInterval()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6687
    iget v2, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-lez v2, :cond_1

    .line 6698
    :cond_0
    :goto_0
    return v1

    .line 6690
    :cond_1
    const-string v2, "pref_camera_self_timer"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6691
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 6693
    const-string v2, "2s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6694
    const/4 v1, 0x2

    goto :goto_0

    .line 6695
    :cond_2
    const-string v2, "10s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6696
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public final getSessionID()J
    .locals 2

    .prologue
    .line 10487
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    return-wide v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 6028
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 6024
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getUpperLayout()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 10080
    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 10082
    .local v0, upper:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method public handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V
    .locals 3
    .parameter "face"

    .prologue
    const/4 v2, 0x1

    .line 9349
    const-string v0, "HTCCamera"

    const-string v1, "handleFaceFocus() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9351
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - take focus start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9352
    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 9354
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v0, :cond_0

    .line 9355
    const-string v0, "HTCCamera"

    const-string v1, "take focus - mFocusingState = FOCUSING_NO_ACTION"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9356
    iput v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 9362
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    .line 9363
    iget-short v0, p1, Lcom/android/camera/FaceDetection$Face;->focus_X:S

    iget-short v1, p1, Lcom/android/camera/FaceDetection$Face;->focus_Y:S

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->updateFocusView(II)V

    .line 9365
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICS handleFaceFocus left,right,top,bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9372
    iget-object v0, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->sendFocusMessage(II)V

    .line 9374
    const-string v0, "HTCCamera"

    const-string v1, "handleFaceFocus() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9375
    return-void
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 9075
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    .line 9077
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-nez v2, :cond_0

    .line 9081
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 9082
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 9083
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 9084
    const-string v2, "HTCCamera"

    const-string v3, "UnBlock Capture UI - touch down and cancel focus"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9085
    sput-boolean v5, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 9088
    :cond_0
    sget-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v2, v1, :cond_1

    .line 9089
    const-string v2, "HTCCamera"

    const-string v3, "onTouchEvent - UI Block !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9149
    :goto_0
    return v1

    .line 9093
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v2, v1, :cond_2

    .line 9094
    const-string v2, "HTCCamera"

    const-string v3, "onTouchEvent - SIP is shown, UI Block !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9099
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/UIRequestEvent;

    const-string v4, "Request.CloseEffectPanel"

    invoke-direct {v3, v4, v1}, Lcom/android/camera/UIRequestEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 9104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 9149
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 9107
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    .line 9109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    .line 9111
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 9112
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_3

    .line 9113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9114
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 9115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9116
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    goto :goto_1

    .line 9127
    .end local v0           #rect:Landroid/graphics/Rect;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v2, v1, :cond_3

    .line 9130
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportTapScreenCapture()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9139
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v2, v1, :cond_3

    .line 9143
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v1, :cond_3

    .line 9144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    goto :goto_1

    .line 9104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchFocus(II)Z
    .locals 6
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 9498
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchFocus - X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9499
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v3, :cond_0

    .line 9500
    const-string v2, "HTCCamera"

    const-string v3, "handleTouchFocus - mSurfaceView = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 9542
    :goto_0
    return v1

    .line 9504
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9505
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    .line 9507
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchFocus - mSurfaceView left: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", right: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9508
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchFocus - mSurfaceView top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9509
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9510
    const-string v2, "HTCCamera"

    const-string v3, "handleTouchFocus - touch point not in mSurfaceView"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9514
    :cond_1
    const-string v1, "HTCCamera"

    const-string v3, "Block Capture UI - take focus start"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9515
    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 9517
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9518
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v1, :cond_2

    .line 9519
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 9520
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    .line 9521
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    .line 9524
    :cond_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v1, :cond_3

    .line 9525
    const-string v1, "HTCCamera"

    const-string v3, "take focus - mFocusingState = FOCUSING_NO_ACTION"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9526
    iput v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 9529
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9530
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v1, :cond_4

    .line 9531
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 9533
    :cond_4
    sput v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    .line 9534
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->updateFocusView(II)V

    .line 9536
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/HTCCamera;->mapFocusPoint_Screen2Preview(IILandroid/graphics/Rect;)V

    .line 9539
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v1, :cond_5

    .line 9540
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/SensorHandler;->setTouchThreshold(Z)V

    :cond_5
    move v1, v2

    .line 9542
    goto/16 :goto_0
.end method

.method public final hasFlash()Z
    .locals 1

    .prologue
    .line 7202
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviewFilterLayout()Z
    .locals 1

    .prologue
    .line 6803
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpecificEffect()Z
    .locals 1

    .prologue
    .line 5989
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isEffectControlVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSwitchButton()Z
    .locals 1

    .prologue
    .line 4292
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 4293
    const/4 v0, 0x1

    .line 4295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide_gps_indicator()V
    .locals 0

    .prologue
    .line 9973
    return-void
.end method

.method public initFocusView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 10091
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10092
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 10093
    const-string v2, "HTCCamera"

    const-string v3, "mFocusAnimation != null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 10109
    :cond_0
    :goto_0
    return-void

    .line 10096
    :cond_1
    const v2, 0x7f080048

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 10097
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/camera/widget/CameraFocusWidget;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/CameraFocusWidget;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    .line 10098
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10101
    .end local v0           #layout:Landroid/widget/LinearLayout;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 10104
    :cond_3
    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 10105
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 10106
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f0800ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    .line 10107
    const v2, 0x7f0800ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public final is3DCameraActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11330
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11332
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isActionScreenOpen()Z
    .locals 1

    .prologue
    .line 6059
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCaptureTask()Z
    .locals 1

    .prologue
    .line 5931
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public final isAutoFocusing()Z
    .locals 1

    .prologue
    .line 9493
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlockCaptureUI()Z
    .locals 1

    .prologue
    .line 5896
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return v0
.end method

.method public isBlockPowerWarning()Z
    .locals 1

    .prologue
    .line 11451
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    return v0
.end method

.method public final isCameraThreadRunning()Z
    .locals 1

    .prologue
    .line 11249
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsCameraThreadRunning:Z

    return v0
.end method

.method public isCancelFocus()Z
    .locals 1

    .prologue
    .line 5943
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    return v0
.end method

.method public isCaptureTriggered()Z
    .locals 1

    .prologue
    .line 11387
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    return v0
.end method

.method public final isCaptureUIOpen()Z
    .locals 1

    .prologue
    .line 10682
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUIOpen:Z

    return v0
.end method

.method public final isEffectControlVisible()Z
    .locals 2

    .prologue
    .line 5983
    new-instance v0, Lcom/android/camera/QueryEvent;

    const-string v1, "Query.IsEffectControlVisible"

    invoke-direct {v0, v1}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    .line 5984
    .local v0, event:Lcom/android/camera/QueryEvent;,"Lcom/android/camera/QueryEvent<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 5985
    invoke-virtual {v0}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isEffectPanelOpen()Z
    .locals 2

    .prologue
    .line 10268
    new-instance v0, Lcom/android/camera/QueryEvent;

    const-string v1, "Query.IsEffectPanelOpen"

    invoke-direct {v0, v1}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    .line 10269
    .local v0, event:Lcom/android/camera/QueryEvent;,"Lcom/android/camera/QueryEvent<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 10270
    invoke-virtual {v0}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isFlashEnabled()Z
    .locals 1

    .prologue
    .line 7210
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v0}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isIdle()Z
    .locals 1

    .prologue
    .line 10471
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method public final isIdleOrPaused()Z
    .locals 1

    .prologue
    .line 10479
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMenuClosed()Z
    .locals 1

    .prologue
    .line 10714
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isMenuMoving()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMenuMoving()Z
    .locals 1

    .prologue
    .line 10706
    const/4 v0, 0x0

    return v0
.end method

.method public final isMenuOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10690
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10698
    :cond_0
    :goto_0
    return v0

    .line 10692
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10694
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10696
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10698
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOrientationLockNeeded()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 10278
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10285
    :cond_0
    :goto_0
    return v1

    .line 10281
    :cond_1
    const-string v2, "Panorama UI"

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaUI;

    .line 10282
    .local v0, panoramaUI:Lcom/android/camera/component/PanoramaUI;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->isPanoramaModeEntered()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10285
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPanelReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10064
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v1, :cond_1

    .line 10067
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanelVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10054
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v1, :cond_1

    .line 10060
    :cond_0
    :goto_0
    return v0

    .line 10057
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 10058
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isPaused()Z
    .locals 1

    .prologue
    .line 10674
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    return v0
.end method

.method public isPowerWarning()Z
    .locals 1

    .prologue
    .line 11460
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    return v0
.end method

.method public final isPreviewStarted()Z
    .locals 1

    .prologue
    .line 10640
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    return v0
.end method

.method public isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 6109
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    .line 6110
    const-string v1, "HTCCamera"

    const-string v2, "isRequestMode() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6117
    :cond_0
    :goto_0
    return v0

    .line 6114
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v1, p1, :cond_0

    .line 6115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 6121
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    .line 6122
    const-string v1, "HTCCamera"

    const-string v2, "isRequestName() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6129
    :cond_0
    :goto_0
    return v0

    .line 6126
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    if-ne v1, p1, :cond_0

    .line 6127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isRequestSquare()Z
    .locals 1

    .prologue
    .line 10665
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

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

.method public final isSelfTimerDisabled()Z
    .locals 1

    .prologue
    .line 11609
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSelfTimerOn()Z
    .locals 1

    .prologue
    .line 6679
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isServiceMode()Z
    .locals 1

    .prologue
    .line 10648
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTurnOnTorch()Z
    .locals 1

    .prologue
    .line 5948
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-eqz v0, :cond_0

    .line 5949
    const/4 v0, 0x0

    .line 5951
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    goto :goto_0
.end method

.method public isUIFreeze()Z
    .locals 1

    .prologue
    .line 5971
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    return v0
.end method

.method public isUIReady()Z
    .locals 1

    .prologue
    .line 5935
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return v0
.end method

.method public final isUnknownServiceMode()Z
    .locals 1

    .prologue
    .line 10657
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    return v0
.end method

.method public final isZoomLockNeeded()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10810
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    move v1, v2

    .line 10822
    :goto_0
    return v1

    .line 10812
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 10813
    goto :goto_0

    .line 10816
    :cond_1
    new-instance v0, Lcom/android/camera/ConditionalQueryEvent;

    const-string v1, "Query.IsZoomLockNeeded"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/ConditionalQueryEvent;-><init>(Ljava/lang/String;IZ)V

    .line 10817
    .local v0, event:Lcom/android/camera/ConditionalQueryEvent;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 10818
    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 10819
    goto :goto_0

    .line 10822
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomLocked()Z
    .locals 1

    .prologue
    .line 10744
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    return v0
.end method

.method public final lockOrientation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10315
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10316
    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    .line 10322
    :goto_0
    return-void

    .line 10319
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    .line 10320
    iget v0, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    goto :goto_0
.end method

.method public final lockOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, -0x1

    .line 10293
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10294
    :cond_0
    const/4 p1, 0x1

    .line 10295
    :cond_1
    if-ne p1, v3, :cond_2

    .line 10297
    const-string v0, "HTCCamera"

    const-string v1, "unlock UI orientation"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 10298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    .line 10308
    :goto_0
    return-void

    .line 10302
    :cond_2
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock UI orientation in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 10303
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRotateChanged(I)V

    .line 10304
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 10305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    .line 10306
    iput v3, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    goto :goto_0
.end method

.method public final lockZoom()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 10752
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10755
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 10756
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-eqz v0, :cond_0

    .line 10758
    const-string v0, "HTCCamera"

    const-string v1, "Zoom is already be locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 10778
    :goto_0
    return-void

    .line 10763
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    .line 10766
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 10768
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isZoomRangeRetrieved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10769
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMinimumZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    .line 10775
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "Zoom.LockedStateChanged"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 10777
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10772
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public mapSceneNumFromSelector(I)I
    .locals 1
    .parameter "scene_idx"

    .prologue
    .line 7486
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7487
    packed-switch p1, :pswitch_data_0

    .line 7515
    :cond_0
    :goto_0
    return p1

    .line 7489
    :pswitch_0
    const/4 p1, 0x0

    .line 7490
    goto :goto_0

    .line 7492
    :pswitch_1
    const/4 p1, 0x2

    .line 7493
    goto :goto_0

    .line 7495
    :pswitch_2
    const/4 p1, 0x4

    .line 7496
    goto :goto_0

    .line 7498
    :pswitch_3
    const/4 p1, 0x5

    .line 7499
    goto :goto_0

    .line 7501
    :pswitch_4
    const/4 p1, 0x6

    .line 7502
    goto :goto_0

    .line 7504
    :pswitch_5
    const/4 p1, 0x7

    .line 7505
    goto :goto_0

    .line 7510
    :pswitch_6
    const/16 p1, 0x8

    goto :goto_0

    .line 7487
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public mapSceneNumToSelector(I)I
    .locals 1
    .parameter "scene_idx"

    .prologue
    .line 7518
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7519
    packed-switch p1, :pswitch_data_0

    .line 7546
    :cond_0
    :goto_0
    :pswitch_0
    return p1

    .line 7521
    :pswitch_1
    const/4 p1, 0x0

    .line 7522
    goto :goto_0

    .line 7524
    :pswitch_2
    const/4 p1, 0x1

    .line 7525
    goto :goto_0

    .line 7527
    :pswitch_3
    const/4 p1, 0x2

    .line 7528
    goto :goto_0

    .line 7530
    :pswitch_4
    const/4 p1, 0x3

    .line 7531
    goto :goto_0

    .line 7533
    :pswitch_5
    const/4 p1, 0x4

    .line 7534
    goto :goto_0

    .line 7536
    :pswitch_6
    const/4 p1, 0x5

    .line 7537
    goto :goto_0

    .line 7542
    :pswitch_7
    const/4 p1, 0x6

    goto :goto_0

    .line 7519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final needsActionScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10428
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    .line 10431
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10462
    :goto_0
    return v1

    .line 10434
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 10435
    goto :goto_0

    .line 10437
    :cond_1
    sget-boolean v3, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 10438
    goto :goto_0

    .line 10440
    :cond_2
    const-string v3, "pref_camera_review_duration"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10441
    .local v0, review:Ljava/lang/String;
    const-string v3, "2s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10442
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 2 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10443
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    .line 10444
    goto :goto_0

    .line 10445
    :cond_3
    const-string v3, "3s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10446
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 3 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10447
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    .line 10448
    goto :goto_0

    .line 10449
    :cond_4
    const-string v3, "5s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10450
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 5 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10451
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    .line 10452
    goto :goto_0

    .line 10453
    :cond_5
    const-string v3, "10s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10454
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 10 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10455
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    .line 10456
    goto :goto_0

    .line 10457
    :cond_6
    const-string v3, "no_limit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 10458
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is no limit"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 10459
    goto :goto_0

    .line 10461
    :cond_7
    const-string v2, "HTCCamera"

    const-string v3, "advanced settings - Review is no review"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public needsReview()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6154
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    .line 6157
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6158
    const-string v2, "HTCCamera"

    const-string v3, "not requested from album - Review is off"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6189
    :goto_0
    return v1

    .line 6162
    :cond_0
    sget-boolean v3, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v3, :cond_1

    .line 6163
    const-string v1, "HTCCamera"

    const-string v3, "self portrait - Review is no limit"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 6164
    goto :goto_0

    .line 6167
    :cond_1
    const-string v3, "pref_camera_review_duration"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6168
    .local v0, review:Ljava/lang/String;
    const-string v3, "2s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6169
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 2 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6170
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    .line 6171
    goto :goto_0

    .line 6172
    :cond_2
    const-string v3, "3s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6173
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 3 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6174
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    .line 6175
    goto :goto_0

    .line 6176
    :cond_3
    const-string v3, "5s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6177
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 5 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6178
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    .line 6179
    goto :goto_0

    .line 6180
    :cond_4
    const-string v3, "10s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6181
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 10 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6182
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    .line 6183
    goto :goto_0

    .line 6184
    :cond_5
    const-string v3, "no_limit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6185
    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is no limit"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 6186
    goto :goto_0

    .line 6188
    :cond_6
    const-string v2, "HTCCamera"

    const-string v3, "advanced settings - Review is no review"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 5516
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5517
    if-eq p2, v3, :cond_0

    .line 5556
    :goto_0
    return-void

    .line 5520
    :cond_0
    sget-object v0, Lcom/android/camera/HTCCamera$39;->$SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5553
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult Unsupported REQUEST_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5522
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    .line 5527
    :pswitch_1
    invoke-virtual {p0, v3, p3}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 5528
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 5549
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0, p3}, Lcom/android/camera/AutoUploader;->handleAutoUploadSettingResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 5520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 5570
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5571
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged LANDSCAPE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5573
    iput v2, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    .line 5583
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5584
    return-void

    .line 5575
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 5576
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged PORTRAIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5578
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    goto :goto_0

    .line 5581
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged Other"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2623
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    .line 2627
    const-string v4, "[ANALYTIC_com.android.camera]"

    const-string v5, "[press_widget]launch"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    const-string v4, "HTCCamera"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2632
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const-wide/32 v5, 0x800000

    invoke-virtual {v4, v5, v6}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 2637
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->requestWindowFeature(I)Z

    .line 2638
    const v4, 0x7f030009

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setContentView(I)V

    .line 2640
    const v4, 0x7f08003c

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2641
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 2642
    .local v1, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2643
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 2645
    new-instance v4, Lcom/android/camera/HTCCamera$MainHandler;

    invoke-direct {v4, p0, v9}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    .line 2646
    new-instance v4, Lcom/android/camera/CameraThread;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/CameraThread;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 2647
    new-instance v4, Lcom/android/camera/AutoUploader;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/AutoUploader;-><init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    .line 2650
    new-instance v4, Lcom/android/camera/IntentManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/IntentManager;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    .line 2653
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    .line 2655
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->start()V

    .line 2658
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2660
    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 2664
    :cond_0
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    .line 2665
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2667
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v4, :cond_8

    .line 2668
    iput v7, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    .line 2671
    :goto_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput v5, v4, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 2673
    iget v4, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    if-ne v4, v7, :cond_9

    .line 2674
    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 2677
    :goto_1
    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial m3DButtonStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2680
    .local v2, interruptingEventsFilter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2681
    const/16 v4, 0x3e9

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2684
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2694
    .end local v2           #interruptingEventsFilter:Landroid/content/IntentFilter;
    :goto_2
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    .line 2700
    :cond_2
    const-string v4, "pref_camera_switch"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 2703
    const-string v4, "pref_front_camera_mode"

    invoke-static {p0, v4, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 2706
    const-string v4, "pref_camera_effect"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2707
    const-string v4, "pref_video_effect"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2708
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-ne v4, v7, :cond_3

    .line 2709
    const-string v4, "pref_camera_effect_manual"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2713
    :cond_3
    const-string v4, "pref_camera_self_portrait"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 2714
    const-string v4, "pref_camera_self_timer"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2716
    const-string v4, "pref_camera_face_number"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2719
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2721
    const-string v4, "pref_camera_scene"

    const-string v5, "auto"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2723
    const-string v4, "pref_video_scene"

    const-string v5, "auto"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2726
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    .line 2732
    invoke-static {v8}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    .line 2735
    iput v8, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    .line 2737
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v4

    if-ne v4, v7, :cond_5

    .line 2738
    new-instance v4, Lcom/android/camera/HTCCamera$8;

    invoke-direct {v4, p0, p0}, Lcom/android/camera/HTCCamera$8;-><init>(Lcom/android/camera/HTCCamera;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2785
    :cond_5
    sput-boolean v7, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 2788
    sput-boolean v8, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    .line 2790
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    .line 2791
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    .line 2793
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2794
    .local v3, theWindow:Landroid/view/Window;
    invoke-virtual {v3, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2797
    new-instance v4, Lcom/android/camera/EventManager;

    invoke-direct {v4, p0}, Lcom/android/camera/EventManager;-><init>(Lcom/android/camera/IEventManagerOwner;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    .line 2800
    new-instance v4, Lcom/android/camera/effect/EffectManager;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectManager;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    .line 2803
    new-instance v4, Lcom/android/camera/component/ComponentManager;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ComponentManager;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    .line 2804
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    .line 2805
    new-instance v4, Lcom/android/camera/component/UIComponentFactory;

    invoke-direct {v4, p0}, Lcom/android/camera/component/UIComponentFactory;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4}, Lcom/android/camera/component/UIComponentFactory;->createAllSupportedComponents()V

    .line 2808
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "ActionScreen.Closing"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2809
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "ActionScreen.Closed"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2810
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "EffectPanel.Closed"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2811
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "EffectPanel.Open"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2812
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "EffectPanel.Opening"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2813
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "RemovableStorage.Ejected"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2814
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "RemovableStorage.Mounted"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2815
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "RemovableStorage.Unmounted"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2816
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Effect.Applied"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2817
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Request.ResetToDefault"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2818
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Menu.Opening"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2819
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Menu.Closed"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2820
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "3DMode.Switched"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2821
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Mode.Switching"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 2824
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v4, :cond_6

    .line 2826
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2827
    new-instance v4, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct {v4, p0}, Lcom/android/camera/actionscreen/CommonActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    .line 2832
    :goto_3
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    .line 2836
    :cond_6
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x38

    const-wide/16 v6, 0x1388

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 2839
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2840
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->IsFirstTimeLaunch()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2841
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->startCameraTutorial()V

    .line 2844
    :cond_7
    return-void

    .line 2670
    .end local v3           #theWindow:Landroid/view/Window;
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Camera3DSettings;->get3DInitialStatus(Landroid/content/ContentResolver;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    goto/16 :goto_0

    .line 2676
    :cond_9
    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v4, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 2685
    .restart local v2       #interruptingEventsFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 2686
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "HTCCamera"

    const-string v5, "registerReceiver failed!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2691
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #interruptingEventsFilter:Landroid/content/IntentFilter;
    :cond_a
    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 2828
    .restart local v3       #theWindow:Landroid/view/Window;
    :cond_b
    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2829
    new-instance v4, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;

    invoke-direct {v4, p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_3

    .line 2831
    :cond_c
    new-instance v4, Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct {v4, p0}, Lcom/android/camera/actionscreen/RequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 5995
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5338
    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5342
    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[press_back]close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 5344
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 5346
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5347
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/HTCCamera$26;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$26;-><init>(Lcom/android/camera/HTCCamera;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5359
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5363
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 5364
    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5368
    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[close_camera]complete"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 5369
    return-void

    .line 5355
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    goto :goto_0
.end method

.method public final onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 10951
    invoke-virtual {p1}, Lcom/android/camera/Event;->getName()Ljava/lang/String;

    move-result-object v0

    .line 10952
    .local v0, name:Ljava/lang/String;
    const-string v1, "ActionScreen.Closing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10953
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 10984
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 10954
    .restart local p1
    :cond_1
    const-string v1, "ActionScreen.Closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10955
    check-cast p1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/actionscreen/ActionScreenEvent;)V

    goto :goto_0

    .line 10956
    .restart local p1
    :cond_2
    const-string v1, "EffectPanel.Closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10957
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onEffectPanelClosed()V

    goto :goto_0

    .line 10958
    :cond_3
    const-string v1, "EffectPanel.Open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10959
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onEffectPanelOpen()V

    goto :goto_0

    .line 10960
    :cond_4
    const-string v1, "EffectPanel.Opening"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10961
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onEffectPanelOpening()V

    goto :goto_0

    .line 10962
    :cond_5
    const-string v1, "Media.Saved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10963
    check-cast p1, Lcom/android/camera/MediaEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->onMediaSaved(Lcom/android/camera/MediaEvent;)V

    goto :goto_0

    .line 10964
    .restart local p1
    :cond_6
    const-string v1, "RemovableStorage.Ejected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10965
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRemovableStorageEjected()V

    goto :goto_0

    .line 10966
    :cond_7
    const-string v1, "RemovableStorage.Mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 10967
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRemovableStorageMounted()V

    goto :goto_0

    .line 10968
    :cond_8
    const-string v1, "RemovableStorage.Unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 10969
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRemovableStorageUnmounted()V

    goto :goto_0

    .line 10970
    :cond_9
    const-string v1, "Request.ResetToDefault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 10971
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onResetToDefault()V

    goto :goto_0

    .line 10972
    :cond_a
    const-string v1, "Effect.Applied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 10973
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onEffectApplied(Lcom/android/camera/Event;)V

    goto :goto_0

    .line 10974
    :cond_b
    const-string v1, "Menu.Opening"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 10975
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onMenuOpening()V

    goto/16 :goto_0

    .line 10976
    :cond_c
    const-string v1, "Menu.Closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 10977
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onMenuClosed()V

    goto/16 :goto_0

    .line 10978
    :cond_d
    const-string v1, "3DMode.Switched"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 10979
    check-cast p1, Lcom/android/camera/OneValueEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->on3DModeSwitched(Lcom/android/camera/OneValueEvent;)V

    goto/16 :goto_0

    .line 10980
    .restart local p1
    :cond_e
    const-string v1, "Mode.Switching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 10981
    check-cast p1, Lcom/android/camera/TwoValuesEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onModeSwitching(Lcom/android/camera/TwoValuesEvent;)V

    goto/16 :goto_0

    .line 10982
    .restart local p1
    :cond_f
    const-string v1, "Zoom.Changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 3
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 11638
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    .line 11639
    array-length v0, p1

    if-lez v0, :cond_0

    .line 11641
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceDetection num of faces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 11643
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/16 v10, 0x25

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 8598
    new-instance v1, Lcom/android/camera/KeyEvent;

    const-string v6, "Key.Down"

    invoke-direct {v1, v6, p2}, Lcom/android/camera/KeyEvent;-><init>(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 8599
    .local v1, kv:Lcom/android/camera/KeyEvent;
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v6, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 8600
    invoke-virtual {v1}, Lcom/android/camera/KeyEvent;->isHandled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8602
    const-string v6, "HTCCamera"

    const-string v7, "KeyDown event is interrupted by event listener"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9012
    :cond_0
    :goto_0
    :sswitch_0
    return v5

    .line 8607
    :cond_1
    iget v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v6, v5, :cond_2

    .line 8608
    sparse-switch p1, :sswitch_data_0

    .line 8772
    :cond_2
    :goto_1
    sget-boolean v6, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v6, v5, :cond_b

    .line 8773
    const-string v6, "HTCCamera"

    const-string v7, "onKeyDown - UI Block !!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8610
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ne v6, v12, :cond_2

    .line 8611
    sput-boolean v5, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    goto :goto_1

    .line 8615
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    .line 8618
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v6

    if-lez v6, :cond_3

    sget-boolean v6, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v6, :cond_2

    .line 8622
    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8624
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 8625
    const-string v6, "HTCCamera"

    const-string v7, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8626
    sput-boolean v9, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto :goto_1

    .line 8631
    :cond_4
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_5

    .line 8632
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 8635
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 8636
    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    goto :goto_0

    .line 8640
    :cond_5
    const-string v6, "HTCCamera"

    const-string v7, "Press Record when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8641
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 8643
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 8645
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v6

    if-nez v6, :cond_0

    .line 8646
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 8647
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 8648
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    goto/16 :goto_0

    .line 8655
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    .line 8661
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v6

    if-lez v6, :cond_6

    sget-boolean v6, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v6, :cond_6

    .line 8664
    const v3, 0x7f0a014b

    .line 8665
    .local v3, str:I
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v6, v10}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8666
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v6, v10, v3, v9, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 8670
    .end local v3           #str:I
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 8672
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 8673
    const-string v6, "HTCCamera"

    const-string v7, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8674
    sput-boolean v9, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto/16 :goto_1

    .line 8680
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v6, v5, :cond_8

    .line 8682
    const-string v6, "HTCCamera"

    const-string v7, "onKeyDown, 3D portrait capture !!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8683
    iget v6, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v6}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v2

    .line 8684
    .local v2, orentation_mode:I
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0x50

    const v8, 0x7f0a0048

    invoke-static {v6, v7, v8, v2, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 8689
    .end local v2           #orentation_mode:I
    :cond_8
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 8691
    const-string v6, "HTCCamera"

    const-string v7, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8692
    iput v12, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 8694
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v6, :cond_9

    .line 8695
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8697
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    .line 8700
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v6

    if-nez v6, :cond_0

    .line 8701
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_a

    .line 8702
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 8703
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v4

    .line 8704
    .local v4, timer:I
    if-lez v4, :cond_0

    .line 8705
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 8706
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    .line 8708
    invoke-direct {p0, v9}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    .line 8709
    invoke-virtual {p0, v9, v5}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    goto/16 :goto_0

    .line 8713
    .end local v4           #timer:I
    :cond_a
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 8714
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 8715
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    goto/16 :goto_0

    .line 8725
    :sswitch_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v6, v5, :cond_2

    .line 8726
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-nez v6, :cond_2

    .line 8727
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->togglePanelState()V

    goto/16 :goto_0

    .line 8757
    :sswitch_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v6, v5, :cond_2

    .line 8758
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 8759
    const-string v6, "HTCCamera"

    const-string v7, "UnBlock Capture UI - press back key and cancel focus"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8760
    sput-boolean v9, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto/16 :goto_1

    .line 8767
    :sswitch_7
    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v6, v7, :cond_2

    goto/16 :goto_0

    .line 8777
    :cond_b
    sparse-switch p1, :sswitch_data_1

    .line 9002
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 9003
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 9004
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    .line 8781
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ne v6, v12, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v6

    if-ne v6, v5, :cond_c

    .line 8782
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    .line 8783
    sput-boolean v5, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    .line 9012
    :cond_c
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 8790
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    .line 8793
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v6, v5, :cond_f

    .line 8794
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_e

    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v6, v7, :cond_d

    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v6, v7, :cond_e

    .line 8797
    :cond_d
    const-string v6, "HTCCamera"

    const-string v7, "screen save mode -- action key pressed so activate camera"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8798
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    .line 8800
    :cond_e
    const-string v6, "HTCCamera"

    const-string v7, "save screen - block camcorder key"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8805
    :cond_f
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-nez v6, :cond_0

    .line 8810
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v6, v5, :cond_10

    .line 8811
    const-string v6, "HTCCamera"

    const-string v7, "SIP is shown, not handle center button"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8815
    :cond_10
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_11

    .line 8816
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 8818
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 8819
    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    goto/16 :goto_0

    .line 8824
    :cond_11
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8826
    const-string v6, "HTCCamera"

    const-string v7, "Press camcorder button to start video recording"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8827
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto/16 :goto_0

    .line 8834
    :sswitch_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    .line 8840
    :sswitch_b
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v6, v5, :cond_14

    .line 8841
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_13

    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v6, v7, :cond_12

    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v6, v7, :cond_13

    .line 8844
    :cond_12
    const-string v6, "HTCCamera"

    const-string v7, "screen save mode -- action key pressed so activate camera"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8845
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    .line 8847
    :cond_13
    const-string v6, "HTCCamera"

    const-string v7, "save screen - block capture key"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8852
    :cond_14
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v6, :cond_15

    .line 8853
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    goto/16 :goto_0

    .line 8857
    :cond_15
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v6, v5, :cond_16

    .line 8858
    const-string v6, "HTCCamera"

    const-string v7, "SIP is shown, not handle center button"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8862
    :cond_16
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_18

    .line 8864
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v6

    if-lez v6, :cond_17

    sget-boolean v6, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v6, :cond_17

    .line 8867
    const v3, 0x7f0a014b

    .line 8868
    .restart local v3       #str:I
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v10}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8869
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v10, v3, v9, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 8874
    .end local v3           #str:I
    :cond_17
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8876
    const-string v6, "HTCCamera"

    const-string v7, "Press center button to take picture"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8877
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    goto/16 :goto_0

    .line 8882
    :cond_18
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8884
    const-string v6, "HTCCamera"

    const-string v7, "Press center button to start video recording"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8885
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto/16 :goto_0

    .line 8893
    :sswitch_c
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 8894
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 8895
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    .line 8897
    :cond_19
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    .line 8901
    :cond_1a
    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v6, v7, :cond_0

    .line 8907
    :sswitch_d
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 8908
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 8909
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    .line 8911
    :cond_1b
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    .line 8915
    :cond_1c
    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v6, v7, :cond_0

    .line 8922
    :sswitch_e
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-ne v6, v5, :cond_1d

    .line 8923
    const-string v6, "HTCCamera"

    const-string v7, "Press back key to stop video recording"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8924
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto/16 :goto_0

    .line 8929
    :cond_1d
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v6, :cond_1e

    .line 8930
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    goto/16 :goto_0

    .line 8934
    :cond_1e
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v6

    if-nez v6, :cond_20

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v6

    if-nez v6, :cond_20

    .line 8935
    const/4 v0, 0x0

    .line 8936
    .local v0, closeSubMenu:Z
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v6, :cond_1f

    .line 8937
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v6, v5}, Lcom/android/camera/MenuHandler;->closeSubMenu(Z)Z

    move-result v0

    .line 8940
    :cond_1f
    if-nez v0, :cond_0

    .line 8941
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->animateClose()V

    goto/16 :goto_0

    .line 8946
    .end local v0           #closeSubMenu:Z
    :cond_20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v6, v5, :cond_c

    .line 8950
    sget-object v6, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v6}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v6

    if-ne v6, v5, :cond_c

    .line 8951
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v6}, Lcom/android/camera/IntentManager;->isFromCamcorder()Z

    move-result v6

    if-ne v6, v5, :cond_21

    .line 8953
    const-string v6, "HTCCamera"

    const-string v7, "go Back - to finish CamcoderEntry"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8960
    :goto_3
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    goto/16 :goto_2

    .line 8956
    :cond_21
    const-string v6, "HTCCamera"

    const-string v7, "go Back - to finish CameraEntry"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 8967
    :sswitch_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    .line 8970
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v6, :cond_22

    .line 8971
    const-string v6, "HTCCamera"

    const-string v7, "!! Menu Key block !! - mCameraThread = null"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8975
    :cond_22
    sget-boolean v6, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v6, :cond_23

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-nez v6, :cond_23

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->isCameraTakingPicture()Z

    move-result v6

    if-nez v6, :cond_23

    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v6, :cond_23

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 8979
    :cond_23
    const-string v6, "HTCCamera"

    const-string v7, "!! Menu Key block !!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8983
    :cond_24
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v6

    if-nez v6, :cond_25

    .line 8984
    const-string v6, "HTCCamera"

    const-string v7, "!! Menu Key block !! - low internal storage ..."

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8985
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v6, v10}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 8986
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const v7, 0x104039d

    invoke-static {v6, v10, v7, v9, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8993
    :cond_25
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->togglePanelState()V

    goto/16 :goto_0

    .line 9006
    :cond_26
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    .line 8608
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_7
        0x17 -> :sswitch_4
        0x1b -> :sswitch_3
        0x42 -> :sswitch_4
        0x50 -> :sswitch_1
        0x52 -> :sswitch_5
        0xe4 -> :sswitch_2
    .end sparse-switch

    .line 8777
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_e
        0x13 -> :sswitch_d
        0x14 -> :sswitch_c
        0x17 -> :sswitch_b
        0x1b -> :sswitch_a
        0x42 -> :sswitch_b
        0x50 -> :sswitch_8
        0x52 -> :sswitch_f
        0x54 -> :sswitch_0
        0xe4 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 9021
    new-instance v0, Lcom/android/camera/KeyEvent;

    const-string v2, "Key.Up"

    invoke-direct {v0, v2, p2}, Lcom/android/camera/KeyEvent;-><init>(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 9022
    .local v0, kv:Lcom/android/camera/KeyEvent;
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 9023
    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9025
    const-string v2, "HTCCamera"

    const-string v3, "KeyUp event is interrupted by event listener"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9060
    :goto_0
    :sswitch_0
    return v1

    .line 9029
    :cond_0
    if-ne p1, v4, :cond_2

    .line 9030
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 9032
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9033
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 9034
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 9037
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 9038
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 9043
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 9045
    sget-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v2, v1, :cond_3

    .line 9046
    const-string v2, "HTCCamera"

    const-string v3, "onKeyUp - UI Block !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9050
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 9060
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 9050
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMediaSaved(Lcom/android/camera/MediaEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 6067
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6070
    invoke-virtual {p1}, Lcom/android/camera/MediaEvent;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    .line 6073
    instance-of v0, p1, Lcom/android/camera/PictureSavedEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6075
    check-cast p1, Lcom/android/camera/PictureSavedEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/PictureSavedEvent;->isLastPicture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6077
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    .line 6078
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->startScaladoPostProcessing(Ljava/lang/String;)V

    .line 6085
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_2

    .line 6086
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->setSaveDone()V

    .line 6088
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6089
    return-void

    .line 6080
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "Cannot start Scalado post-processing because there is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5450
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5452
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 5454
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    if-ne v0, v3, :cond_0

    .line 5455
    const-string v0, "HTCCamera"

    const-string v1, "need to do create, not to initate mode onNewIntent!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5511
    :goto_0
    return-void

    .line 5459
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    .line 5462
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    .line 5464
    sput-boolean v3, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 5467
    const-string v0, "pref_camera_switch"

    invoke-static {p0, v0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 5470
    const-string v0, "pref_camera_effect"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5471
    const-string v0, "pref_video_effect"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5472
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 5473
    const-string v0, "pref_camera_effect_manual"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5477
    :cond_1
    const-string v0, "pref_front_camera_mode"

    invoke-static {p0, v0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 5480
    const-string v0, "pref_camera_self_portrait"

    invoke-static {p0, v0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 5481
    const-string v0, "pref_camera_self_timer"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5483
    const-string v0, "pref_camera_face_number"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5486
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5488
    const-string v0, "pref_camera_scene"

    const-string v1, "auto"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5491
    const-string v0, "pref_video_scene"

    const-string v1, "auto"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5494
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    .line 5496
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessage(Landroid/os/Handler;I)V

    .line 5503
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CameraActivity.NewIntent"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 5505
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5506
    const-string v0, "HTCCamera"

    const-string v1, "addFlags FLAG_SHOW_WHEN_LOCKED onNewIntent"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5507
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5510
    :cond_3
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 6008
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 6015
    return-void
.end method

.method protected onPause()V
    .locals 9

    .prologue
    const/16 v8, 0x40

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4995
    const-string v2, "HTCCamera"

    const-string v3, "onPause() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4997
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    .line 4998
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    .line 4999
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    .line 5000
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    .line 5001
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    .line 5002
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 5003
    iput v4, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    .line 5004
    iput v4, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    .line 5005
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    .line 5006
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 5007
    const-string v2, "HTCCamera"

    const-string v3, "onPause() - mIsUIReady = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5010
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v3, "CameraActivity.Pausing"

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 5013
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    .line 5014
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v7}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 5016
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 5017
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5018
    const-string v2, "HTCCamera"

    const-string v3, "clearFlags FLAG_SHOW_WHEN_LOCKED onPause"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5019
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 5043
    :cond_1
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    .line 5045
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5046
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5047
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5048
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 5049
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5059
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    .line 5061
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->restoreVolume()V

    .line 5063
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5064
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5065
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5066
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x41

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5073
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5075
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5080
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5083
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5085
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v2, :cond_3

    .line 5086
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 5087
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    .line 5089
    sput-boolean v4, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 5091
    const-string v2, "HTCCamera"

    const-string v3, "onPause() - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5092
    iput v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 5093
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5094
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x22

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5095
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5097
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5099
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetMainBarBtn()V

    .line 5100
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    .line 5102
    const-string v2, "HTCCamera"

    const-string v3, "OnPause - set mWaitResetSettings to false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5103
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    .line 5105
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    .line 5106
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    .line 5108
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    .line 5110
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5112
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 5113
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5114
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 5117
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v2, :cond_f

    .line 5122
    const-string v2, "HTCCamera"

    const-string v3, "onPause mIdle is false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5129
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5130
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 5132
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    .line 5134
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 5146
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5149
    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-eq v2, v5, :cond_6

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v5, :cond_7

    .line 5151
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->WriteModePreference()V

    .line 5154
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5159
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5160
    :cond_8
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    .line 5170
    :goto_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5171
    const-string v2, "HTCCamera"

    const-string v3, "OnPause - Freeze UI !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5172
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    .line 5173
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    .line 5174
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v2

    if-ne v2, v5, :cond_9

    .line 5175
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 5178
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5179
    invoke-direct {p0, v4, v4}, Lcom/android/camera/HTCCamera;->updateVirtualHwKeysOrientation(IZ)V

    .line 5181
    :cond_a
    const/4 v1, 0x0

    .line 5182
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.htc.eas.intent.resumeSync"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5183
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.htc.eas.extra.tag"

    const-string v3, "com.android.camera.HTCCamera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5184
    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 5200
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    if-eqz v2, :cond_b

    .line 5201
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5204
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5205
    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5207
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5209
    const-string v2, "pref_fast_fps"

    invoke-static {p0, v2, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 5210
    const-string v2, "pref_fast_frame_resolution_temp"

    const-string v3, "null"

    invoke-static {p0, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 5214
    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5216
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x48

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5219
    :cond_e
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x44

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5220
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x45

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5222
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->doOnPause()V

    .line 5224
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 5228
    iget-wide v2, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    .line 5230
    const-string v2, "HTCCamera"

    const-string v3, "onPause() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5231
    return-void

    .line 5141
    .end local v1           #intent:Landroid/content/Intent;
    :cond_f
    const-string v2, "HTCCamera"

    const-string v3, "onPause mIdle is true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5142
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 5143
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 5155
    :catch_0
    move-exception v0

    .line 5156
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HTCCamera"

    const-string v3, "unregisterReceiver failed - mKeyguardReceiver"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 5162
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_10
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 6001
    const/4 v0, 0x1

    return v0
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 4597
    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4599
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 4601
    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4602
    return-void
.end method

.method public onResume()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 4606
    const-string v8, "HTCCamera"

    const-string v9, "onResume() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4607
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 4610
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4612
    .local v6, userPresentFilter:Landroid/content/IntentFilter;
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v6}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4617
    :goto_0
    const/4 v2, 0x0

    .line 4618
    .local v2, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v8, "com.htc.eas.intent.pauseSync"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4619
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v8, "com.htc.eas.extra.tag"

    const-string v9, "com.android.camera.HTCCamera"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4620
    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 4623
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopVoiceRecording()V

    .line 4626
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    .line 4627
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_4

    .line 4628
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    .line 4634
    :goto_1
    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " keep backgroundDataSetting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4636
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v8, v8, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v8, v11, :cond_5

    .line 4638
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    .line 4641
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    .line 4644
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    .line 4653
    :cond_0
    :goto_2
    iget v8, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    invoke-static {v8}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    .line 4655
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4656
    iget v8, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    invoke-direct {p0, v8, v11}, Lcom/android/camera/HTCCamera;->updateVirtualHwKeysOrientation(IZ)V

    .line 4659
    :cond_1
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 4660
    .local v5, mgr:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4661
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v8

    iput v8, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    .line 4662
    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initial Display Orientation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4664
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v8

    if-ne v8, v11, :cond_2

    .line 4665
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v8}, Landroid/view/OrientationEventListener;->enable()V

    .line 4667
    :cond_2
    invoke-static {}, Lcom/android/camera/SensorHandler;->createFocusFile()V

    .line 4669
    const-string v8, "HTCCamera"

    const-string v9, "OnResume - reset UI, immediately set mMainLayout invisible"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4670
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 4671
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4673
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v8, :cond_6

    .line 4674
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    goto :goto_3

    .line 4613
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #mgr:Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 4614
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "HTCCamera"

    const-string v9, "registerReceiver failed - mKeyguardReceiver"

    invoke-static {v8, v9, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 4631
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_4
    const-string v8, "HTCCamera"

    const-string v9, "connManager is null"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4646
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isHalfPCB()Z

    move-result v8

    if-ne v8, v11, :cond_0

    .line 4648
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    goto/16 :goto_2

    .line 4682
    .restart local v0       #display:Landroid/view/Display;
    .restart local v5       #mgr:Landroid/view/WindowManager;
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    .line 4685
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    if-nez v8, :cond_a

    .line 4687
    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-ne v8, v11, :cond_8

    .line 4691
    :cond_7
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    .line 4692
    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 4694
    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v8, :cond_12

    .line 4695
    iput v11, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    .line 4698
    :goto_4
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v8, :cond_9

    .line 4699
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v9, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput v9, v8, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 4701
    :cond_9
    iget v8, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    if-ne v8, v11, :cond_13

    .line 4702
    const-string v8, "pref_camera_3D_status"

    invoke-static {p0, v8, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 4705
    :goto_5
    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initial m3DButtonStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4707
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 4708
    .local v3, interruptingEventsFilter:Landroid/content/IntentFilter;
    const-string v8, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4709
    const/16 v8, 0x3e9

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 4712
    :try_start_1
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4722
    .end local v3           #interruptingEventsFilter:Landroid/content/IntentFilter;
    :goto_6
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    .line 4726
    :cond_a
    invoke-static {p0}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 4727
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-nez v8, :cond_b

    .line 4728
    new-instance v8, Lcom/android/camera/FlashRestriction;

    invoke-direct {v8}, Lcom/android/camera/FlashRestriction;-><init>()V

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    .line 4729
    const-string v8, "HTCCamera"

    const-string v9, "initFlashRestriction - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4730
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v8, p0}, Lcom/android/camera/FlashRestriction;->initFlashRestriction(Lcom/android/camera/HTCCamera;)V

    .line 4731
    const-string v8, "HTCCamera"

    const-string v9, "initFlashRestriction - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4733
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    const-string v9, "PowerWarning UI"

    invoke-virtual {v8, v9}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/component/Component;->initialize()V

    .line 4743
    :cond_b
    const-string v8, "HTCCamera"

    const-string v9, "Block Capture UI - onResume(), and unblock after start preview"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4744
    sput-boolean v11, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 4747
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    .line 4749
    const-string v8, "HTCCamera"

    const-string v9, "onResume() - mFocusingState = NO_FOCUSING"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4750
    iput v12, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 4756
    const-string v8, "keyguard"

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 4757
    .local v4, mKeyguardManager:Landroid/app/KeyguardManager;
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 4758
    const-string v8, "HTCCamera"

    const-string v9, "keyguard is shown !!!!!"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4759
    sput-boolean v11, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    .line 4760
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-eq v11, v8, :cond_c

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-ne v13, v8, :cond_d

    .line 4764
    :cond_c
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 4773
    :cond_d
    :goto_7
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    .line 4774
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 4775
    iput-object v14, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    .line 4777
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 4779
    const-string v8, "HTCCamera"

    const-string v9, "OnResume - set mWaitResetSettings to true"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4780
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    .line 4783
    monitor-enter p0

    .line 4785
    :try_start_2
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 4786
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4788
    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v8, :cond_16

    .line 4790
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 4791
    .local v7, win:Landroid/view/Window;
    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 4792
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-eq v11, v8, :cond_e

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-ne v13, v8, :cond_f

    .line 4796
    :cond_e
    const-string v8, "HTCCamera"

    const-string v9, "onResume: addFlags FLAG_SHOW_WHEN_LOCKED. mIdle == false)"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4797
    const/high16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 4799
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 4857
    .end local v7           #win:Landroid/view/Window;
    :goto_8
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v8, :cond_10

    .line 4858
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v12}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 4861
    :cond_10
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v9, "CameraActivity.Resuming"

    invoke-virtual {v8, v9}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 4863
    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v8

    if-ne v8, v11, :cond_11

    .line 4864
    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    .line 4867
    :cond_11
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    .line 4869
    const-string v8, "HTCCamera"

    const-string v9, "onResume() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4870
    return-void

    .line 4697
    .end local v4           #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/Camera3DSettings;->get3DInitialStatus(Landroid/content/ContentResolver;)I

    move-result v8

    iput v8, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    goto/16 :goto_4

    .line 4704
    :cond_13
    const-string v8, "pref_camera_3D_status"

    invoke-static {p0, v8, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_5

    .line 4713
    .restart local v3       #interruptingEventsFilter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v1

    .line 4714
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v8, "HTCCamera"

    const-string v9, "registerReceiver failed!!"

    invoke-static {v8, v9, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 4719
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #interruptingEventsFilter:Landroid/content/IntentFilter;
    :cond_14
    const-string v8, "pref_camera_3D_status"

    invoke-static {p0, v8, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_6

    .line 4768
    .restart local v4       #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_15
    const-string v8, "HTCCamera"

    const-string v9, "keyguard is not shown !!!!!"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4769
    sput-boolean v12, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    .line 4770
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    goto/16 :goto_7

    .line 4786
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 4807
    :cond_16
    sget-boolean v8, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-eqz v8, :cond_17

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-eq v11, v8, :cond_17

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-ne v13, v8, :cond_19

    .line 4812
    :cond_17
    sget-boolean v8, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-nez v8, :cond_18

    .line 4813
    const-string v8, "HTCCamera"

    const-string v9, "mIsKeyguardShow is false, activate"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4816
    :goto_9
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_8

    .line 4815
    :cond_18
    const-string v8, "HTCCamera"

    const-string v9, "DisplayDevice.supportShowWhenLock() && by SHORTCUT or HOTKEY"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 4819
    :cond_19
    const-string v8, "HTCCamera"

    const-string v9, "mIsKeyguardShow is true, setWaitKeyguardBeforePreview(true)"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4820
    invoke-static {v11}, Lcom/android/camera/HTCCamera;->setWaitKeyguardBeforePreview(Z)V

    goto/16 :goto_8
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4582
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 4583
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4588
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v3, :cond_0

    .line 4589
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 4592
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4593
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 5327
    const-string v0, "HTCCamera"

    const-string v1, "onStop() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5329
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 5330
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5331
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 5333
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "onStop() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5334
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 9067
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openCaptureUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6538
    const-string v0, "HTCCamera"

    const-string v1, "openCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6539
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6541
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_7

    .line 6542
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    .line 6547
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6548
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 6550
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6557
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 6558
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6560
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 6561
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6563
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 6564
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6566
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    .line 6567
    invoke-virtual {p0, v2, v3}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    .line 6570
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 6571
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6573
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    .line 6575
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V

    .line 6578
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUIOpen:Z

    .line 6581
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CaptureUI.Open"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 6583
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_5

    .line 6584
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->hasGeoTagging()Z

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDisplayGPSindicator()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6586
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->show_gps_indicator()V

    .line 6590
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6591
    iget v0, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->updateSceneGuide(I)V

    .line 6593
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 6594
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6596
    :cond_6
    return-void

    .line 6544
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    goto/16 :goto_0

    .line 6552
    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final playSound(Landroid/media/MediaPlayer;ZZZ)V
    .locals 7
    .parameter "mediaPlayer"
    .parameter "requestAudioFocus"
    .parameter "isFirstPlay"
    .parameter "isLastPlay"

    .prologue
    const/4 v6, -0x1

    .line 7898
    const-string v4, "HTCCamera"

    const-string v5, "playSound() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7900
    if-eqz p2, :cond_0

    .line 7901
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->requestAudioFocus()V

    .line 7903
    :cond_0
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v4, :cond_2

    .line 7905
    const-string v4, "HTCCamera"

    const-string v5, "mIsUIReady = false - PlaySound return"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7907
    if-eqz p4, :cond_1

    .line 7909
    const-string v4, "HTCCamera"

    const-string v5, "Release media player"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7910
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 7911
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->abandonAudioFocus()V

    .line 8051
    :cond_1
    :goto_0
    return-void

    .line 7917
    :cond_2
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v5

    .line 7919
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 7920
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7932
    :try_start_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 7935
    :cond_3
    const/4 v2, 0x4

    .line 7936
    .local v2, audioStreamType:I
    const-string v4, "HTCCamera"

    const-string v5, "PlaySound() - StreamType : STREAM_ALARM"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7942
    :goto_1
    if-nez p3, :cond_4

    .line 7943
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 7945
    :cond_4
    new-instance v4, Lcom/android/camera/HTCCamera$33;

    invoke-direct {v4, p0, p4}, Lcom/android/camera/HTCCamera$33;-><init>(Lcom/android/camera/HTCCamera;Z)V

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 7968
    new-instance v4, Lcom/android/camera/HTCCamera$34;

    invoke-direct {v4, p0, p4}, Lcom/android/camera/HTCCamera$34;-><init>(Lcom/android/camera/HTCCamera;Z)V

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 7986
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7999
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    .line 8024
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 8027
    :cond_5
    const-string v4, "HTCCamera"

    const-string v5, "Set stream volume"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8029
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 8032
    .local v0, MaxVolume:I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_a

    .line 8033
    iget v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    if-ne v4, v6, :cond_6

    .line 8034
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    .line 8035
    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOriginalVolume_Alarm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8044
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->getAdjustedVolume(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 8048
    .end local v0           #MaxVolume:I
    :cond_7
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 8050
    const-string v4, "HTCCamera"

    const-string v5, "playSound() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7920
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #audioStreamType:I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 7938
    :cond_8
    const/4 v2, 0x2

    .line 7939
    .restart local v2       #audioStreamType:I
    :try_start_3
    const-string v4, "HTCCamera"

    const-string v5, "PlaySound() - StreamType : STREAM_RING"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 7988
    .end local v2           #audioStreamType:I
    :catch_0
    move-exception v3

    .line 7989
    .local v3, ex:Ljava/lang/Exception;
    const-string v4, "HTCCamera"

    const-string v5, "PlaySound failed"

    invoke-static {v4, v5, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7990
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 7991
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v5

    .line 7993
    :try_start_4
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v4, :cond_9

    .line 7994
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 7995
    :cond_9
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 8038
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v0       #MaxVolume:I
    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #audioStreamType:I
    :cond_a
    iget v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    if-ne v4, v6, :cond_6

    .line 8039
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    .line 8040
    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOriginalVolume_Ring = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public powerWarningOn(Z)V
    .locals 3
    .parameter "isRec"

    .prologue
    const/4 v2, 0x0

    .line 11421
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 11422
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 11448
    :goto_0
    return-void

    .line 11426
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 11427
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11431
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    .line 11433
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 11436
    sput v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    .line 11437
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    .line 11439
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 11440
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 11441
    if-nez p1, :cond_3

    .line 11442
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 11444
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    .line 11447
    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto :goto_0
.end method

.method public final prepareActionScreen()V
    .locals 2

    .prologue
    .line 10557
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_7

    .line 10560
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_0

    .line 10562
    const-string v0, "HTCCamera"

    const-string v1, "mIsUIReady = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10598
    :goto_0
    return-void

    .line 10567
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_2

    .line 10569
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "Action screen is not needed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10574
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_3

    .line 10576
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10577
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    .line 10582
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    .line 10586
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_6

    .line 10588
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->prepare()V

    .line 10589
    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionID:J

    goto :goto_0

    .line 10578
    :cond_4
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10579
    new-instance v0, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_1

    .line 10581
    :cond_5
    new-instance v0, Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/RequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_1

    .line 10592
    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "No available action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10594
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 10595
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10597
    :cond_8
    const-string v0, "HTCCamera"

    const-string v1, "Cannot prepare action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reachBeepCount()Z
    .locals 2

    .prologue
    .line 6791
    sget v0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFocusSensor(Z)V
    .locals 1
    .parameter "register"

    .prologue
    .line 10113
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-nez v0, :cond_0

    .line 10120
    :goto_0
    return-void

    .line 10116
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 10117
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->registerSensor()V

    goto :goto_0

    .line 10119
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->unregisterSensor()V

    goto :goto_0
.end method

.method public releaseFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9742
    const-string v0, "HTCCamera"

    const-string v1, "releaseFaceDetection()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9743
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 9745
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_0

    .line 9746
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 9747
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    .line 9748
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    .line 9749
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->releaseFaceDetection()V

    .line 9750
    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    .line 9752
    :cond_0
    return-void
.end method

.method public final reloadSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 11317
    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 11318
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - reloadSettings()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11319
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    .line 11320
    const-string v0, "HTCCamera"

    const-string v1, "reloadSettings() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11321
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    .line 11322
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    .line 11323
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 11324
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 11326
    return-void
.end method

.method public final requestAudioFocus()V
    .locals 4

    .prologue
    .line 7883
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    .line 7885
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 7888
    :cond_0
    return-void
.end method

.method public resetAutoCaptureTask()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5913
    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfTimerTask:Z

    .line 5914
    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    .line 5915
    return-void
.end method

.method public resetBeepCount()V
    .locals 1

    .prologue
    .line 6786
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    .line 6787
    return-void
.end method

.method public resetFocusMode()V
    .locals 1

    .prologue
    .line 9667
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    .line 9668
    return-void
.end method

.method public resetForDOT()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11471
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 11472
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    const v1, 0x7f0a0170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11475
    const-string v0, "pref_camera_scene_ds"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 11476
    const-string v0, "pref_camera_scene_service_ds"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 11479
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    .line 11481
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    .line 11482
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 11488
    :goto_0
    return-void

    .line 11485
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public resetIndicatorLayout()V
    .locals 1

    .prologue
    .line 6670
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    .line 6671
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideSelfPortraitHint()V

    .line 6672
    return-void
.end method

.method public final resetScreenSaveTimer()V
    .locals 4

    .prologue
    .line 11287
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_0

    .line 11288
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    iget v2, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 11289
    :cond_0
    return-void
.end method

.method public reset_layout_from_surface(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    .line 6368
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset_layout_from_surface - width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6370
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-nez v3, :cond_0

    .line 6371
    const-string v3, "HTCCamera"

    const-string v4, "mMainLayout == null - initiate mMainLayout"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6374
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_6

    .line 6375
    const v3, 0x7f080057

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 6378
    .local v2, stub:Landroid/view/ViewStub;
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    .line 6387
    .end local v2           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6388
    const-string v3, "HTCCamera"

    const-string v4, "Reset layout end, set mMainLayout visible"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6390
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-nez v3, :cond_1

    .line 6391
    const v3, 0x7f08004b

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 6392
    .restart local v2       #stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    .line 6396
    .end local v2           #stub:Landroid/view/ViewStub;
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6397
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v3, :cond_2

    .line 6398
    const v3, 0x7f080054

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 6399
    .restart local v2       #stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    .line 6410
    .end local v2           #stub:Landroid/view/ViewStub;
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eq v3, v6, :cond_3

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 6413
    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    if-nez v3, :cond_4

    .line 6414
    const v3, 0x7f08003d

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 6415
    .restart local v2       #stub:Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    .line 6416
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    const v4, 0x7f08015b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    .line 6418
    .end local v2           #stub:Landroid/view/ViewStub;
    :cond_4
    if-ge p1, p2, :cond_7

    move v1, p1

    .line 6419
    .local v1, size:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6420
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6421
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6422
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6424
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #size:I
    :cond_5
    return-void

    .line 6377
    :cond_6
    const v3, 0x7f08005a

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .restart local v2       #stub:Landroid/view/ViewStub;
    goto/16 :goto_0

    .end local v2           #stub:Landroid/view/ViewStub;
    :cond_7
    move v1, p2

    .line 6418
    goto :goto_1
.end method

.method public final restartCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11297
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Camera.Restart"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 11299
    sput-boolean v3, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 11300
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - restartCamera()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11301
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    .line 11302
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 11303
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    .line 11304
    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->setWaitResetSettings(Z)V

    .line 11305
    const-string v0, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11306
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    .line 11307
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 11308
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "true"

    invoke-static {v0, v2, v3, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 11310
    return-void
.end method

.method public restoreBackgrounddataSetting()V
    .locals 3

    .prologue
    .line 10180
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 10181
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 10182
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreBackgrounddataSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10184
    :cond_0
    return-void
.end method

.method public final returnRequestedMedia()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 5686
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 5688
    const-string v7, "HTCCamera"

    const-string v8, "Returning media from non-service mode"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5818
    :cond_0
    :goto_0
    return-void

    .line 5691
    :cond_1
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_0

    .line 5695
    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v6

    .line 5696
    .local v6, saveUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/IntentManager;->getCropValue()Ljava/lang/String;

    move-result-object v2

    .line 5699
    .local v2, cropValue:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 5701
    const-string v7, "HTCCamera"

    const-string v8, "Has Crop Extras , pass to CropImage Activity"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5703
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 5704
    .local v5, myExtras:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 5706
    if-eqz v6, :cond_4

    .line 5707
    const-string v7, "output"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5712
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.camera.action.CROP"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5713
    .local v1, cropIntent:Landroid/content/Intent;
    const-string v7, "image/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5714
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5715
    if-eqz v5, :cond_3

    .line 5716
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5718
    :cond_3
    sget-object v7, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v7}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v7

    invoke-virtual {p0, v1, v7}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5709
    .end local v1           #cropIntent:Landroid/content/Intent;
    :cond_4
    const-string v7, "return-data"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 5723
    .end local v5           #myExtras:Landroid/os/Bundle;
    :cond_5
    const/4 v4, 0x0

    .line 5724
    .local v4, jpegData:[B
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_6

    .line 5725
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getJpegData()[B

    move-result-object v4

    .line 5728
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5729
    .local v3, intent:Landroid/content/Intent;
    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 5731
    if-nez v4, :cond_9

    .line 5732
    const-string v7, "HTCCamera"

    const-string v8, "contacts - jpeg data is null !!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5814
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_8

    .line 5815
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->resetJpegData()V

    .line 5816
    :cond_8
    invoke-virtual {p0, v10, v3}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 5817
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 5735
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 5737
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCaptureWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCaptureHeight()I

    move-result v8

    sget-object v9, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5742
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a

    .line 5743
    const-string v7, "inline-data"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 5745
    :cond_a
    const-string v7, "HTCCamera"

    const-string v8, "return jpeg decode error!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5748
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_b
    const-string v7, "jpeg_data"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_2

    .line 5751
    :cond_c
    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 5753
    if-nez v4, :cond_d

    .line 5754
    const-string v7, "HTCCamera"

    const-string v8, "square - jpeg data is null !!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5757
    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 5759
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCaptureWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCaptureHeight()I

    move-result v8

    sget v9, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v4, v7, v8, v9}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5764
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_e

    .line 5765
    const-string v7, "inline-data"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 5767
    :cond_e
    const-string v7, "HTCCamera"

    const-string v8, "return jpeg decode error!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5771
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_f
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5772
    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "return request:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5779
    :cond_10
    if-eqz v6, :cond_11

    .line 5781
    invoke-virtual {p0, v10}, Lcom/android/camera/HTCCamera;->setResult(I)V

    .line 5782
    invoke-direct {p0, v6, v4}, Lcom/android/camera/HTCCamera;->saveAndFinish(Landroid/net/Uri;[B)V

    goto/16 :goto_0

    .line 5787
    :cond_11
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5788
    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "return request:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5792
    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5794
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v7

    if-nez v7, :cond_7

    .line 5796
    if-eqz v4, :cond_13

    .line 5798
    const v7, 0x19000

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v10, v7, v8}, Lcom/android/camera/Util;->makeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5802
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_12

    .line 5803
    const-string v7, "inline-data"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 5805
    :cond_12
    const-string v7, "HTCCamera"

    const-string v8, "return jpeg decode error!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5808
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_13
    const-string v7, "HTCCamera"

    const-string v8, "inline-data - jpeg data is null !!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 3
    .parameter "newvalue"

    .prologue
    .line 10173
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 10174
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 10175
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set BackgroundDataSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10177
    :cond_0
    return-void
.end method

.method public setBlock3DSwitch(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 5892
    sput-boolean p1, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    .line 5893
    return-void
.end method

.method public setBlockCaptureUI(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 5887
    sput-boolean p1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 5888
    return-void
.end method

.method public setBlockPowerWarning(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 11455
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11456
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    .line 11457
    return-void
.end method

.method public setFocusingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 9230
    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 9231
    return-void
.end method

.method public setIconPosition(ILandroid/view/View;)V
    .locals 6
    .parameter "orientation"
    .parameter "layout"

    .prologue
    const/16 v5, 0x78

    const/16 v4, 0x6f

    const/4 v3, 0x4

    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 11491
    if-nez p2, :cond_0

    .line 11513
    :goto_0
    return-void

    .line 11494
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11497
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 11512
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 11499
    :pswitch_0
    const/16 v1, 0x16f

    invoke-virtual {v0, v2, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 11502
    :pswitch_1
    const/16 v1, 0x16f

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 11505
    :pswitch_2
    invoke-virtual {v0, v5, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 11508
    :pswitch_3
    invoke-virtual {v0, v2, v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 11497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPowerWarning(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 11464
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 11465
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    .line 11466
    return-void
.end method

.method public setTurnOnTorch(Z)V
    .locals 0
    .parameter "turnOn"

    .prologue
    .line 5955
    sput-boolean p1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    .line 5956
    return-void
.end method

.method public setWaitResetSettings(Z)V
    .locals 0
    .parameter "wait"

    .prologue
    .line 5939
    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    .line 5940
    return-void
.end method

.method public set_mBlockCaptureUI(Z)V
    .locals 0
    .parameter "bVal"

    .prologue
    .line 5963
    sput-boolean p1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 5964
    return-void
.end method

.method public final showActionScreen()V
    .locals 1

    .prologue
    .line 10495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->showActionScreen(I)V

    .line 10496
    return-void
.end method

.method public final showActionScreen(I)V
    .locals 5
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    .line 10499
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_3

    .line 10501
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    .line 10503
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionID:J

    iget-wide v2, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 10505
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/actionscreen/ActionScreenEvent;)V

    .line 10527
    :goto_0
    return-void

    .line 10510
    :cond_1
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 10513
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_2

    .line 10514
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->open()V

    goto :goto_0

    .line 10516
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "No action screen to open"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10518
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 10520
    if-gtz p1, :cond_4

    .line 10521
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mShowActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10523
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mShowActionScreenRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10526
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "Cannot show action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final showMainBarItems(ZZ)V
    .locals 8
    .parameter "visible"
    .parameter "animation"

    .prologue
    const/4 v1, 0x3

    const/4 v7, 0x2

    const-wide/16 v4, 0xc8

    const-wide/16 v2, 0x0

    .line 10337
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-nez v0, :cond_1

    .line 10370
    :cond_0
    :goto_0
    return-void

    .line 10340
    :cond_1
    if-eqz p1, :cond_4

    .line 10342
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 10344
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 10345
    if-eqz p2, :cond_3

    .line 10346
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10347
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    .line 10349
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    move v1, v7

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    .line 10352
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 10357
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 10359
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 10360
    if-eqz p2, :cond_6

    .line 10361
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10362
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    .line 10364
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    move v1, v7

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    .line 10367
    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public final showToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 11408
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->showToast(Ljava/lang/String;)V

    .line 11409
    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 11412
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 11413
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 11414
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    .line 11415
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 11416
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->show()V

    .line 11417
    return-void
.end method

.method public show_gps_indicator()V
    .locals 0

    .prologue
    .line 9956
    return-void
.end method

.method public final startAlbum()V
    .locals 3

    .prologue
    .line 10864
    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10865
    const-string v0, "FROM_CAMERA"

    .line 10868
    .local v0, action:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 10869
    return-void

    .line 10867
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    const-string v0, "android.intent.action.VIEW"

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_0
.end method

.method public final startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .parameter "action"
    .parameter "contentUri"
    .parameter "mimeType"

    .prologue
    .line 10872
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10874
    const-string v2, "HTCCamera"

    const-string v3, "Returning to album"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10876
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10877
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "preview_mode"

    const-string v3, "filmstrip"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10878
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 10879
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    .line 10902
    :goto_0
    return-void

    .line 10883
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "Going to album"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10885
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10886
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_1

    .line 10887
    const-string v2, "capture_mode"

    const-string v3, "camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10890
    :goto_1
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 10891
    const-string v2, "preview_mode"

    const-string v3, "filmstrip"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10895
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10897
    :catch_0
    move-exception v0

    .line 10899
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start album : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10889
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v2, "capture_mode"

    const-string v3, "comcorder"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public startCameraTutorial()V
    .locals 2

    .prologue
    .line 11556
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11557
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.camera.tutorial.CAMERA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11558
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    .line 11559
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 4543
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceChanged $$$$$$$$$$$$$$$$$$$$$$$$$$$ w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4559
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceCreated $$$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4560
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4561
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    .line 4562
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_1

    .line 4563
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceCreated $$$$$$$$$$$$$$$$$$$$$$$$$$$  start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4564
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4566
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    .line 4571
    :goto_0
    return-void

    .line 4568
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "surfaceCreated before onResume - set mIdle = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4569
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 4575
    const-string v0, "HTCCamera"

    const-string v1, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceDestroyed $$$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    .line 4577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4578
    return-void
.end method

.method public final switchFlashMode()V
    .locals 2

    .prologue
    .line 7362
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFlashEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7364
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 7366
    const-string v1, "pref_camera_flash_mode"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7367
    .local v0, flashMode:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7368
    const-string v0, "on"

    .line 7373
    :goto_0
    const-string v1, "pref_camera_flash_mode"

    invoke-static {p0, v1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 7380
    .end local v0           #flashMode:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    .line 7381
    return-void

    .line 7369
    .restart local v0       #flashMode:Ljava/lang/String;
    :cond_1
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7370
    const-string v0, "off"

    goto :goto_0

    .line 7372
    :cond_2
    const-string v0, "auto"

    goto :goto_0

    .line 7376
    .end local v0           #flashMode:Ljava/lang/String;
    :cond_3
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public switchMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 3086
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/HTCCamera;->switchMode(ZI)Z

    move-result v0

    .line 3087
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchMode(ZI)Z
    .locals 9
    .parameter "useSecondCamera"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3092
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Mode.Switched"

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 3095
    iget v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v4, v3, :cond_0

    .line 3097
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3099
    const-string v4, "HTCCamera"

    const-string v5, "change camera mode when focusing, cancel focus"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3101
    const-string v4, "HTCCamera"

    const-string v5, "UnBlock Capture UI - change camera mode and cancel focus"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 3110
    :cond_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3207
    :cond_1
    :goto_0
    return v2

    .line 3104
    :cond_2
    const-string v3, "HTCCamera"

    const-string v4, "change camera mode when focusing, but device can\'t cancel focus"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3114
    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    if-nez v4, :cond_1

    .line 3118
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v4

    if-eq p1, v4, :cond_4

    move v0, v3

    .line 3119
    .local v0, isCameraChanged:Z
    :goto_1
    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    if-ne p2, v4, :cond_5

    move v2, v3

    .line 3120
    goto :goto_0

    .end local v0           #isCameraChanged:Z
    :cond_4
    move v0, v2

    .line 3118
    goto :goto_1

    .line 3123
    .restart local v0       #isCameraChanged:Z
    :cond_5
    sget-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v4, :cond_1

    .line 3125
    sput-boolean v3, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 3128
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 3129
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    .line 3133
    if-nez p1, :cond_a

    .line 3135
    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v4, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3136
    const/4 v1, 0x1

    .line 3144
    .local v1, newCameraType:I
    :goto_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v5, Lcom/android/camera/TwoValuesEvent;

    const-string v6, "Mode.Switching"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/android/camera/TwoValuesEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 3147
    if-eqz v0, :cond_7

    .line 3149
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    .line 3150
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    .line 3151
    const-string v4, "HTCCamera"

    const-string v5, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    .line 3155
    const-string v4, "pref_camera_switch"

    invoke-static {p0, v4, p1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 3156
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3158
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-nez v4, :cond_b

    .line 3159
    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    .line 3166
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 3170
    :cond_7
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    if-eq p2, v4, :cond_c

    .line 3172
    packed-switch p2, :pswitch_data_0

    .line 3188
    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try switching to unknown mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    if-eqz v0, :cond_8

    .line 3190
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "true"

    invoke-static {v4, v2, v3, v2, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_8
    :goto_4
    move v2, v3

    .line 3207
    goto/16 :goto_0

    .line 3138
    .end local v1           #newCameraType:I
    :cond_9
    const/4 v1, 0x3

    .restart local v1       #newCameraType:I
    goto :goto_2

    .line 3141
    .end local v1           #newCameraType:I
    :cond_a
    const/4 v1, 0x2

    .restart local v1       #newCameraType:I
    goto :goto_2

    .line 3161
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->unlockOrientation()V

    goto :goto_3

    .line 3176
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    .line 3177
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->changetoCameraMode()V

    goto :goto_4

    .line 3182
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    .line 3183
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->changetoVideoMode()V

    goto :goto_4

    .line 3196
    :cond_c
    if-eqz v0, :cond_d

    .line 3197
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "true"

    invoke-static {v4, v2, v3, v2, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_4

    .line 3199
    :cond_d
    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto :goto_4

    .line 3172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final takeFocus(II)V
    .locals 1
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 9484
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9485
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    .line 9486
    :cond_0
    return-void
.end method

.method public final unblockCaptureUI()V
    .locals 2

    .prologue
    .line 5904
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-eqz v0, :cond_0

    .line 5906
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 5907
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    .line 5908
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CaptureUI.Unblock"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 5910
    :cond_0
    return-void
.end method

.method public final unlockOrientation()V
    .locals 1

    .prologue
    .line 10329
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    .line 10330
    return-void
.end method

.method public final unlockZoom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10785
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 10788
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    .line 10789
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-nez v0, :cond_0

    .line 10791
    const-string v0, "HTCCamera"

    const-string v1, "Zoom is already be unlocked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 10802
    :goto_0
    return-void

    .line 10796
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    .line 10799
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "Zoom.LockedStateChanged"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 10801
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAutoScene_ds(I)V
    .locals 3
    .parameter "sceneType"

    .prologue
    const v2, 0x7f020046

    .line 11338
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 11366
    :cond_0
    :goto_0
    return-void

    .line 11340
    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    if-nez v0, :cond_0

    .line 11344
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    .line 11345
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11346
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11364
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    .line 11348
    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 11350
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11353
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11356
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11359
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateBeepLevel(I)V
    .locals 12
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x7f06

    const/16 v5, 0xc8

    const/4 v3, 0x0

    const/16 v1, 0x45

    .line 6754
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6755
    const/4 v9, -0x1

    .line 6756
    .local v9, level:I
    packed-switch p1, :pswitch_data_0

    .line 6765
    :goto_0
    if-eq v9, v5, :cond_0

    .line 6766
    sput v3, Lcom/android/camera/HTCCamera;->mBeepCount:I

    .line 6768
    :cond_0
    sget v0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    if-ne v0, v9, :cond_2

    .line 6783
    .end local v9           #level:I
    :cond_1
    :goto_1
    return-void

    .line 6758
    .restart local v9       #level:I
    :pswitch_0
    const/16 v9, 0xc8

    .line 6759
    goto :goto_0

    .line 6761
    :pswitch_1
    const/4 v9, -0x1

    goto :goto_0

    .line 6771
    :cond_2
    sput v9, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    .line 6772
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6773
    if-ne v9, v5, :cond_1

    .line 6774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v10, p0, Lcom/android/camera/HTCCamera;->mPlayBeepTime:J

    sub-long v7, v5, v10

    .line 6775
    .local v7, delay:J
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 6776
    const-wide/16 v5, 0xc8

    cmp-long v0, v7, v5

    if-lez v0, :cond_3

    .line 6777
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_1

    .line 6779
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    sub-long/2addr v5, v7

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto :goto_1

    .line 6756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateDOTCaptureIcon(ZI)V
    .locals 3
    .parameter "isPressed"
    .parameter "mode"

    .prologue
    .line 11534
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-nez v1, :cond_1

    .line 11551
    :cond_0
    :goto_0
    return-void

    .line 11537
    :cond_1
    if-eqz p1, :cond_3

    .line 11538
    if-nez p2, :cond_2

    .line 11539
    const/high16 v1, 0x7f0a

    const v2, 0x7f020073

    invoke-static {p0, v1, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11540
    .local v0, press:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 11543
    .end local v0           #press:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    const v2, 0x7f0201aa

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 11546
    :cond_3
    if-nez p2, :cond_4

    .line 11547
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    const v2, 0x7f020075

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 11549
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    const v2, 0x7f0201ab

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateFaceIcon(I)V
    .locals 5
    .parameter "detectedNo"

    .prologue
    const/16 v4, 0x45

    const/4 v1, 0x1

    .line 6703
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-ne v0, v1, :cond_1

    .line 6751
    :cond_0
    :goto_0
    return-void

    .line 6707
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6708
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 6711
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 6713
    :cond_2
    if-lez p1, :cond_4

    .line 6714
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6745
    :cond_3
    :goto_1
    if-lez p1, :cond_5

    .line 6746
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6747
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/high16 v1, 0x7f06

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 6716
    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 6749
    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public final updateFlashMode()V
    .locals 18

    .prologue
    .line 7219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_2

    .line 7221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 7223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/HTCCamera$31;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/HTCCamera$31;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7354
    :cond_0
    :goto_0
    return-void

    .line 7232
    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "Cannot update flash mode, because there is no handler for UI"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7237
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 7240
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->isFlashEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 7243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "off"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 7246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v2, :cond_3

    .line 7247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_6

    const v2, 0x7f020115

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 7248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_7

    const v2, 0x7f0a01c1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    .line 7250
    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 7251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    const v3, 0x7f0a0174

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 7252
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->hasFlash()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 7256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 7257
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    .line 7264
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v2, :cond_0

    .line 7266
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v8, v2, 0x5a

    .line 7267
    .local v8, degrees:I
    new-instance v1, Landroid/view/animation/RotateAnimation;

    int-to-float v2, v8

    int-to-float v3, v8

    const/4 v4, 0x1

    const/high16 v5, 0x3f00

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 7268
    .local v1, rotateAnimation:Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 7269
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    .line 7270
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 7271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ImageTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 7247
    .end local v1           #rotateAnimation:Landroid/view/animation/RotateAnimation;
    .end local v8           #degrees:I
    :cond_6
    const v2, 0x7f020057

    goto/16 :goto_1

    .line 7248
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 7261
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_3

    .line 7278
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v2

    if-nez v2, :cond_d

    .line 7279
    const-string v2, "pref_camera_flash_mode"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 7284
    .local v12, flashMode:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v2, :cond_c

    .line 7286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v2

    if-nez v2, :cond_13

    .line 7289
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 7290
    .local v17, res:Landroid/content/res/Resources;
    const v2, 0x7f07000a

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 7291
    .local v13, flashModes:[Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_f

    const v2, 0x7f070009

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 7292
    .local v11, flashIcons:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_10

    const v2, 0x7f07000c

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 7295
    .local v15, flashTexts:Landroid/content/res/TypedArray;
    const/4 v10, -0x1

    .line 7296
    .local v10, flashIconIndex:I
    array-length v2, v13

    add-int/lit8 v16, v2, -0x1

    .local v16, i:I
    :goto_7
    if-ltz v16, :cond_a

    .line 7298
    aget-object v2, v13, v16

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 7300
    move/from16 v10, v16

    .line 7304
    :cond_a
    if-gez v10, :cond_b

    .line 7306
    const/4 v10, 0x0

    .line 7307
    const-string v12, "auto"

    .line 7311
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    const/4 v3, 0x0

    invoke-virtual {v11, v10, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 7312
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 7313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7316
    :goto_8
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 7341
    .end local v10           #flashIconIndex:I
    .end local v11           #flashIcons:Landroid/content/res/TypedArray;
    .end local v13           #flashModes:[Ljava/lang/String;
    .end local v15           #flashTexts:Landroid/content/res/TypedArray;
    .end local v16           #i:I
    .end local v17           #res:Landroid/content/res/Resources;
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 7344
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v8, v2, 0x5a

    .line 7345
    .restart local v8       #degrees:I
    new-instance v1, Landroid/view/animation/RotateAnimation;

    int-to-float v2, v8

    int-to-float v3, v8

    const/4 v4, 0x1

    const/high16 v5, 0x3f00

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 7346
    .restart local v1       #rotateAnimation:Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 7347
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    .line 7348
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 7349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ImageTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7353
    .end local v1           #rotateAnimation:Landroid/view/animation/RotateAnimation;
    .end local v8           #degrees:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7281
    .end local v12           #flashMode:Ljava/lang/String;
    :cond_d
    sget-boolean v2, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    if-eqz v2, :cond_e

    const-string v12, "torch"

    .restart local v12       #flashMode:Ljava/lang/String;
    :goto_a
    goto/16 :goto_4

    .end local v12           #flashMode:Ljava/lang/String;
    :cond_e
    const-string v12, "off"

    goto :goto_a

    .line 7291
    .restart local v12       #flashMode:Ljava/lang/String;
    .restart local v13       #flashModes:[Ljava/lang/String;
    .restart local v17       #res:Landroid/content/res/Resources;
    :cond_f
    const v2, 0x7f07000d

    goto/16 :goto_5

    .line 7292
    .restart local v11       #flashIcons:Landroid/content/res/TypedArray;
    :cond_10
    const v2, 0x7f07000b

    goto/16 :goto_6

    .line 7296
    .restart local v10       #flashIconIndex:I
    .restart local v15       #flashTexts:Landroid/content/res/TypedArray;
    .restart local v16       #i:I
    :cond_11
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_7

    .line 7315
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v15, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 7323
    .end local v10           #flashIconIndex:I
    .end local v11           #flashIcons:Landroid/content/res/TypedArray;
    .end local v13           #flashModes:[Ljava/lang/String;
    .end local v15           #flashTexts:Landroid/content/res/TypedArray;
    .end local v16           #i:I
    .end local v17           #res:Landroid/content/res/Resources;
    :cond_13
    sget-boolean v2, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    if-nez v2, :cond_16

    .line 7325
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_14

    const v9, 0x7f020115

    .line 7326
    .local v9, flashIconID:I
    :goto_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_15

    const v14, 0x7f0a01c1

    .line 7335
    .local v14, flashTextID:I
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v9}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 7336
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 7337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    .line 7325
    .end local v9           #flashIconID:I
    .end local v14           #flashTextID:I
    :cond_14
    const v9, 0x7f020057

    goto :goto_b

    .line 7326
    .restart local v9       #flashIconID:I
    :cond_15
    const v14, 0x7f0a0174

    goto :goto_c

    .line 7330
    .end local v9           #flashIconID:I
    :cond_16
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_17

    const v9, 0x7f020116

    .line 7331
    .restart local v9       #flashIconID:I
    :goto_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_18

    const v14, 0x7f0a01c0

    .restart local v14       #flashTextID:I
    :goto_e
    goto :goto_c

    .line 7330
    .end local v9           #flashIconID:I
    .end local v14           #flashTextID:I
    :cond_17
    const v9, 0x7f020058

    goto :goto_d

    .line 7331
    .restart local v9       #flashIconID:I
    :cond_18
    const v14, 0x7f0a0173

    goto :goto_e

    .line 7339
    .restart local v14       #flashTextID:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v14}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    goto/16 :goto_9
.end method
