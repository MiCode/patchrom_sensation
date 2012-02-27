.class public final Lcom/htc/launcher/Launcher;
.super Lcom/htc/widget/CarouselInternalActivity;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/launcher/LeapController$LeapListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/Launcher$Padding;,
        Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;,
        Lcom/htc/launcher/Launcher$WallpaperIntentReceiver;,
        Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;,
        Lcom/htc/launcher/Launcher$CellInfoHandler;,
        Lcom/htc/launcher/Launcher$RootAsyncTask;,
        Lcom/htc/launcher/Launcher$RosieEditModeListener;,
        Lcom/htc/launcher/Launcher$WidgetTilter;,
        Lcom/htc/launcher/Launcher$ExSensorEventListener;,
        Lcom/htc/launcher/Launcher$TiltObserver;,
        Lcom/htc/launcher/Launcher$TiltSettingsObserver;,
        Lcom/htc/launcher/Launcher$RosiePhoneStateListener;,
        Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;,
        Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;,
        Lcom/htc/launcher/Launcher$OrientationIdleHandler;,
        Lcom/htc/launcher/Launcher$LauncherHandler;,
        Lcom/htc/launcher/Launcher$DesktopBinder;,
        Lcom/htc/launcher/Launcher$DrawerManager;,
        Lcom/htc/launcher/Launcher$ScreenReceiver;,
        Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;,
        Lcom/htc/launcher/Launcher$AppWidgetResetObserver;,
        Lcom/htc/launcher/Launcher$FavoritesChangeObserver;,
        Lcom/htc/launcher/Launcher$SummaryReceiver;,
        Lcom/htc/launcher/Launcher$SilderReceiver;,
        Lcom/htc/launcher/Launcher$ThemeChangeReceiver;,
        Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;,
        Lcom/htc/launcher/Launcher$PackageUpdatedTask;,
        Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;,
        Lcom/htc/launcher/Launcher$CreateShortcut;,
        Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;,
        Lcom/htc/launcher/Launcher$NoSearchProgressDialog;,
        Lcom/htc/launcher/Launcher$CustomShortcutUpdateRunnable;,
        Lcom/htc/launcher/Launcher$ShortcutTip;,
        Lcom/htc/launcher/Launcher$AddShortcutRunnable;,
        Lcom/htc/launcher/Launcher$SearchListener;,
        Lcom/htc/launcher/Launcher$WorkspaceScrollListener;,
        Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;,
        Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;,
        Lcom/htc/launcher/Launcher$DofreezeScreen;,
        Lcom/htc/launcher/Launcher$AppTabType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final ACTION_HIDE_WEATHER_WALLPAPER:Ljava/lang/String; = "com.htc.weatherwallpaper.service.intent.action.HIDE_WEATHER_WALLPAPER"

.field public static final ACTION_PERSONALIZE_ADD_APP_TO_HOME:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME"

.field public static final ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

.field public static final ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME"

.field public static final ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME_CHANGED:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME_CHANGED"

.field public static final ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME"

.field public static final ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

.field public static final ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME"

.field public static final ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME_CHANGED:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME_CHANGED"

.field public static final ACTION_SILDER_STATE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.silder_change"

.field public static final ACTION_SUMMARY_CHANGES:[Ljava/lang/String; = null

.field static final ACTION_WEATHER_ANIMATION_DONE:Ljava/lang/String; = "com.htc.weatherwallpaper.service.intent.action.WEATHER_WALLPAPER_DISMISS"

.field private static final ANIMATION_DURATION:I = 0x64

.field static final APPWIDGET_HOST_ID:I = 0x270f

.field static final AUTHORITY:Ljava/lang/String; = "com.htc.launcher.AllAppsCarouselProvider"

.field private static final BACKGROUND_GO_DELAY:J = 0x2710L

.field public static final CATEGORY_SEARCH:Ljava/lang/String; = "com.htc.launcher.intent.category.SEARCH"

.field private static final CLASSNAME_OF_PHONE:Ljava/lang/String; = "com.android.htccontacts.DialerTabActivity"

.field private static final CREATE_SCENE_PREVIEW:I = 0x18

.field public static final DEBUG_DB_OBSERVER:Z = true

.field public static final DEBUG_DB_TAG:Ljava/lang/String; = "RosieDbDebug"

.field private static final DEBUG_USER_INTERFACE:Z = false

.field private static final DIALOG_CREATE_SHORTCUT:I = 0x1

.field private static final DIALOG_CREATE_WALLPAPER:I = 0x66

.field public static final DIALOG_PROGRESS:I = 0x64

.field static final DIALOG_RENAME_FOLDER:I = 0x2

.field private static final DIALOG_SORT_OPTION:I = 0x67

.field private static final DISMISS_LOADING:I = 0x3f0

.field private static final ERROR_MESSAGE_DURATION:I = 0x3e8

.field public static final EXTRA_AUTO_SAVE:Ljava/lang/String; = "extra_auto_save"

.field public static final EXTRA_OPEN_PERSONALIZE:Ljava/lang/String; = "open_personalize"

.field public static final EXTRA_SILDER_STATE:Ljava/lang/String; = "silder_state"

.field private static final FINISHED_LOADING_TASK:I = 0x2

.field public static final FLAG_WEATHER_WALLPAPER_PAUSE_WAIDGET:Z = true

.field static final GREEN_LIGHT:Z = true

.field public static final INTENT_LOADING_COMPLETE:Ljava/lang/String; = "com.htc.launcher.intent.LOADING_COMPLETE"

.field public static final INTENT_RESUMED:Ljava/lang/String; = "com.htc.launcher.intent.RESUMED"

.field private static final KEY_CURRENT_SKIN_NAME:Ljava/lang/String; = "current_skin_name"

.field public static final KEY_HAS_TRANSFER_SCENE_DATA:Ljava/lang/String; = "has_transfer_scene_data"

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_MCC:Ljava/lang/String; = "mcc"

.field private static final KEY_MNC:Ljava/lang/String; = "mnc"

.field public static final KEY_NEWSTYLE_TIP:Ljava/lang/String; = "newstyle_tip"

.field public static final KEY_SCENE_PREVIEW_LAND_INVALIDATE:Ljava/lang/String; = "scene_preview_land_invalidate"

.field public static final KEY_SCENE_PREVIEW_PORT_INVALIDATE:Ljava/lang/String; = "scene_preview_port_invalidate"

.field public static final KEY_TIP_SHOW:Ljava/lang/String; = "SHOWED"

.field public static final KEY_TUTORIAL_NOTICE:Ljava/lang/String; = "tutorial_notice"

.field static final LAUNCH_FLAG:Ljava/lang/String; = "launch_flag"

.field static final LAUNCH_FROM_ALL_APPS:I = 0x3

.field public static final LAUNCH_FROM_DESKTOP:I = 0x1

.field private static final LAUNCH_FROM_HARD_KEY:I = 0x2

.field private static final LOG_BACKGROUND_TRAFFIC:Z = false

.field private static final LOG_BACKGROUND_TRAFFIC_TAG:Ljava/lang/String; = "Background traffic light"

.field private static final LOG_MEM:Ljava/lang/String; = "RosieMEM"

.field static final LOG_TAG:Ljava/lang/String; = "Rosie"

.field private static final MENU_ADD:I = 0x2

.field private static final MENU_ALL_APPS_FIND:I = 0x9

.field private static final MENU_ALL_APPS_LAYOUT_GRID:I = 0x8

.field private static final MENU_ALL_APPS_LAYOUT_LIST:I = 0x7

.field private static final MENU_ALL_APPS_REMOVE:I = 0xa

.field private static final MENU_ALL_APPS_SEARCH:I = 0xe

.field private static final MENU_ALL_APPS_SHARING:I = 0xd

.field private static final MENU_ALL_APPS_SORT:I = 0xb

.field private static final MENU_ALL_PROGRAM:I = 0xc

.field private static final MENU_EDIT_HOME:I = 0x10

.field private static final MENU_GROUP_ADD:I = 0x1

.field private static final MENU_GROUP_ALL_APPS:I = 0x2

.field private static final MENU_HELP:I = 0x12

.field private static final MENU_NEW_FOLDER:I = 0x11

.field private static final MENU_NOTIFICATIONS:I = 0x5

.field private static final MENU_PERSONALIZE:I = 0xf

.field private static final MENU_SEARCH:I = 0x4

.field private static final MENU_SETTINGS:I = 0x6

.field private static final MENU_WALLPAPER_SETTINGS:I = 0x3

.field private static final MSG_ALLOW_MOVE_TO_DEFAULT_SCREEN:I = 0x3ea

.field private static final MSG_CLOSE_ADD_TO_HOME:I = 0x3e8

.field private static final MSG_FINISH_BIND_FXWIDGET:I = 0x3ee

.field private static final MSG_FORCE_CREATE_SCENE_PREVIEW:I = 0x3f2

.field private static final MSG_HIDE_SCROLLER:I = 0x3ed

.field private static final MSG_KEY_LONG_PRESS_TIMEOUT:I = 0x3ec

.field private static final MSG_REFRESH_ADD_TO_HOME:I = 0x3e9

.field static final MSG_START_ACITVITY_IN_UI_THREAD:I = 0x3f1

.field private static final MSG_UNLOCK_ENTER_THUMBNAIL_MODE:I = 0x3eb

.field private static final NAVIGATING:I = 0x1

.field private static final NOTIFY_DATA_SET_CHANGED:I = 0x3ef

.field private static final NO_NAVIGATION:I = 0x0

.field static final NUMBER_CELLS_X:I = 0x4

.field static final NUMBER_CELLS_Y:I = 0x4

.field private static final PACKETNAME_OF_PHONE:Ljava/lang/String; = "com.android.htccontacts"

.field public static final PERSONALIZE_PREFERENCES:Ljava/lang/String; = "PersonalizeSummary"

.field public static final PICK_ITEM_ACTION:Ljava/lang/String; = "com.htc.home.personalize.Action.PickItem"

.field public static final PICK_ITEM_EXTRA_ITEM_DATA:Ljava/lang/String; = "pick_item_data"

.field public static final PICK_ITEM_EXTRA_ITEM_TYPE:Ljava/lang/String; = "pick_item_type"

.field public static final PREFERENCES:Ljava/lang/String; = "launcher"

.field public static final PREF_ALLAPPS_IS_GRIDVIEW:Ljava/lang/String; = "PREF_ALLAPPS_IS_GRIDVIEW"

.field private static final PROFILE_DRAWER:Z = false

.field private static final PROFILE_ORIENTATION:Z = false

.field private static final PROFILE_ROTATE:Z = false

.field private static final PROFILE_STARTUP:Z = false

.field private static final PROP_NAVI_MODE:Ljava/lang/String; = "com.htc.laputa.NaviMode"

.field static final RED_LIGHT:Z = false

.field private static final REQUEST_CHOOSE_STYLE:I = 0x64

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_LIVE_FOLDER:I = 0x4

.field static final REQUEST_CREATE_NEW_FOLDER:I = 0x3

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field static final REQUEST_PICK_APPLICATION:I = 0x6

.field public static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_BOOKMARK_SHORTCUT:I = 0xb

.field public static final REQUEST_PICK_FXWIDGET:I = 0xc

.field private static final REQUEST_PICK_LIVE_FOLDER:I = 0x8

.field private static final REQUEST_PICK_NOTIFICATION_SOUND:I = 0xe

.field private static final REQUEST_PICK_RINGTONE:I = 0xd

.field private static final REQUEST_PICK_SETTINGWIDGET:I = 0xa

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field public static final REQUEST_SETTING_OPTION:I = 0x1f5

.field public static final REQUEST_VARIATION_OPTION:I = 0x1f4

.field private static final RUNTIME_STATE_ALL_APPS_FOLDER:Ljava/lang/String; = "launcher.all_apps_folder"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cellX"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cellY"

.field private static final RUNTIME_STATE_PENDING_ADD_COUNT_X:Ljava/lang/String; = "launcher.add_countX"

.field private static final RUNTIME_STATE_PENDING_ADD_COUNT_Y:Ljava/lang/String; = "launcher.add_countY"

.field private static final RUNTIME_STATE_PENDING_ADD_OCCUPIED_CELLS:Ljava/lang/String; = "launcher.add_occupied_cells"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_spanX"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_spanY"

.field private static final RUNTIME_STATE_SLIDING_ALL_PROGRAM:Ljava/lang/String; = "launcher.sliding_all_apps"

.field private static final RUNTIME_STATE_USER_FOLDERS:Ljava/lang/String; = "launcher.user_folder"

.field private static final SCREEN_CACHE_SRC:Ljava/lang/String; = "/data/data/com.htc.launcher/files/screen_cache.png"

.field private static final SCREEN_CACHE_SRC_LAND:Ljava/lang/String; = "/data/data/com.htc.launcher/files/screen_cache_land.png"

.field static final SEARCHANYWHERE_ACTIVITY:Ljava/lang/String; = "com.htc.searchanywhere/.SearchActivity"

.field public static final STATUS_BAR_TAP_EVENT:Ljava/lang/String; = "com.android.server.status.StatusBarView.STATUS_BAR_TAP_EVENT"

.field private static final USE_BACKGROUND_TRAFFIC_LIGHT:Z = false

.field private static final WAIT_LAUNCH_TIMEOUT:I = 0x3e8

.field private static final WALLPAPER_SELECTED_HOME:I = 0x0

.field private static final WALLPAPER_SELECTED_LOCK_SCREEN:I = 0x1

.field public static final WIDGET_ID_OFFSET:I = 0x2710

.field public static dataBackup:Landroid/content/Intent;

.field public static ifAddButtonbar:Z

.field protected static isPreStickyMode:Z

.field public static isTipShowed:Z

.field public static localLOGD:Z

.field private static mIsAbortDrag:Z

.field private static mLiveWallpaperName:Ljava/lang/CharSequence;

.field private static mMiddleClickButton:I

.field private static mProgramListId:I

.field public static mSettingWidgetCellInfo:Lcom/htc/launcher/CellInfo;

.field private static mUiMode:I

.field public static needActivityResult:Z

.field public static newStyleTip:Z

.field public static requestCodeBackup:I

.field public static resultCodeBackup:I

.field private static final sBackgroundGoIntent:Landroid/content/Intent;

.field private static final sBackgroundStopIntent:Landroid/content/Intent;

.field public static sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

.field private static sFxPathFinder:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;

.field private static sFxSceneManager:Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

.field public static sIsBroughtToFront:Z

.field private static sKeyguardManager:Landroid/app/HtcIfKeyguardManager;

.field private static final sLock:Ljava/lang/Object;

.field static final sModel:Lcom/htc/launcher/LauncherModel;

.field static sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

.field public static sRefLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSceneLock:Ljava/lang/Object;

.field private static sScreen:I

.field static sUseWallpaperService:Z

.field private static final sWeatherAnimationDoneIntent:Landroid/content/Intent;

.field protected static sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

.field static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;

.field public static shortcutTipPriority:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/Launcher$ShortcutTip;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final RAISED_PRIORITY:I

.field a:J

.field private allapps_shadowhandle_text:Lcom/htc/widget/HeaderBarText;

.field private ask2NotifyHint:Z

.field private forceBuildCache:Z

.field private isButtonCanPress:Z

.field private isKeyguardOnWhenOnResume:Z

.field public isNeedLaunchAddToHome:Z

.field private isShowAllProgramSearchBar:Z

.field private isSupportLandscape:Z

.field private isUakKeyProcessed:Z

.field private lastDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private lastTabTag:Ljava/lang/String;

.field private lastUakKeyCode:I

.field public launchAppType:Ljava/lang/String;

.field private mActivityLaunched:Z

.field private mAddHtcWidgetByOtherActivity:Z

.field private mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

.field private mAllAppsBar:Landroid/view/View;

.field mAllAppsBarEditText:Landroid/widget/EditText;

.field mAllAppsView:Lcom/htc/launcher/AllAppsView;

.field mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mAppWidgetResetObserver:Landroid/database/ContentObserver;

.field mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

.field private final mApplicationsReceiver:Landroid/content/BroadcastReceiver;

.field private final mBackgroundGo:Ljava/lang/Runnable;

.field private mBackgroundTrafficLight:Z

.field private mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

.field private mBinder:Lcom/htc/launcher/Launcher$DesktopBinder;

.field mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

.field private mButtons:Lcom/htc/launcher/widget/ButtonBar;

.field private mCellInfoHandler:Lcom/htc/launcher/Launcher$CellInfoHandler;

.field private mChangingOrientation:Z

.field private mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mControl:Landroid/view/View;

.field private mControlInAnimation:Landroid/view/animation/Animation;

.field private mControlOutAnimation:Landroid/view/animation/Animation;

.field private mCreateScenePreviewHandler:Landroid/os/Handler;

.field private mCreateScenePreviewThread:Landroid/os/HandlerThread;

.field mCurrentLocale:Ljava/lang/String;

.field mCurrentMcc:I

.field mCurrentMnc:I

.field private mCurrentOrientation:I

.field mCurrentSceneId:I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field public mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

.field private mDesktopLocked:Z

.field private mDestroyed:Z

.field private mDestroying:Z

.field private mDragLayer:Lcom/htc/launcher/DragLayer;

.field public mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

.field private mEmptyRunnable:Ljava/lang/Runnable;

.field private mExitStickyCallback:Ljava/lang/Runnable;

.field private mFinishLoading:I

.field private mFreezeTilt:Z

.field private mFreezeable:Z

.field private mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

.field public mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field private mHandleView:Landroid/view/View;

.field final mHandler:Landroid/os/Handler;

.field private final mHtcWidgetUpdateReceiver:Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

.field private mImageWallpaper:Z

.field private mIntervals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mIsAllProgramSliding:Z

.field private mIsAllowMoveToDefaultScreen:Z

.field private mIsApplicationLoaded:Z

.field private mIsConfigurationChanged:Z

.field mIsEstimateSlidingDrawer:Z

.field private mIsInComingCall:Z

.field private mIsListAdapterReady:Z

.field private mIsLoading:Z

.field private mIsLockEnterThumbnailMode:Z

.field private mIsMenuKeyDown:Z

.field mIsOpenPersonalizeBySetting:Z

.field private mIsOpenSlideWhenLeaveLaunch:Z

.field private mIsPause:Z

.field private mIsPressHomeKey:Z

.field private mIsRessumeNeedCloseSliderAndStartActivity:Z

.field private mIsSearchCategory:Z

.field private mIsShowTutorialNotice:Z

.field private mIsTouchDownNeedCacheBtn:Z

.field private mIsWorkspaceChanging:Z

.field private final mKeyguardIntentReceiver:Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;

.field private mLauncherLeftTime:J

.field private mLeapController:Lcom/htc/launcher/LeapController;

.field private mListAdapter:Lcom/htc/launcher/AddListAdapter;

.field private mLoadingTime:J

.field private mMenuAddInfo:Lcom/htc/launcher/CellInfo;

.field private mNeedLiveWallpaperSpin:Z

.field private mNewConfig:Landroid/content/res/Configuration;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOnConfigChangedReloading:Z

.field private mOnConfigurationChanged:Z

.field private mOnOrientationChange:Z

.field private mOptionsMenuChanged:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationChangedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

.field private mPageSelect:Z

.field private mPauseByLoaders:Z

.field private mPrepareScreensCache:Ljava/lang/Runnable;

.field private mPrepareScreensCacheIndex:I

.field private mPriority:I

.field private mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

.field private mResetLaunchState:Ljava/lang/Runnable;

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

.field private mScenePreviewHeight:F

.field private mScenePreviewWidth:F

.field private mScreenReceiver:Lcom/htc/launcher/Launcher$ScreenReceiver;

.field private mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

.field private mSearchText:Landroid/widget/AutoCompleteTextView;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsCursor:Landroid/database/Cursor;

.field private mSilderReceiver:Lcom/htc/launcher/Launcher$SilderReceiver;

.field private mSkipUiModeChange:Z

.field private mSkipUnlockAnimation:Z

.field private mSlideController:Lcom/htc/launcher/SlideController;

.field mStartDrawingThreadTime:J

.field mStartDrawingTime:J

.field mStartOrientation:J

.field private mStickyLeftTime:J

.field private mStickyMode:Z

.field private final mSummaryReceiver:Lcom/htc/launcher/Launcher$SummaryReceiver;

.field private final mThemeChangeReceiver:Lcom/htc/launcher/Launcher$ThemeChangeReceiver;

.field private mThreadIntervals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTiltEnabled:Z

.field private mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;

.field private mTiltObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/Launcher$TiltObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private mTiltSettingEnable:Z

.field private mTiltSettingsObserver:Lcom/htc/launcher/Launcher$TiltSettingsObserver;

.field private mTutorialNoticeViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTwoStartIntervals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mUnlockAnimListener:Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;

.field private mUpdateSceneListReceiver:Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;

.field private mWaitingForResult:Z

.field private mWeatherAnimationNotify:Landroid/content/BroadcastReceiver;

.field private mWeatherAnimationNotifyRegistered:Z

.field private mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

.field protected mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

.field private mWillLeave:Z

.field private mWindowFocus:Z

.field public mWorkspace:Lcom/htc/launcher/Workspace;

.field private m_NavbarStickyModeHandler:Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;

.field private m_bAllAppsViewAspectRestored:Z

.field public m_freezeScreen:Lcom/htc/launcher/Launcher$DofreezeScreen;

.field public m_freezeScreenHandler:Landroid/os/Handler;

.field private m_openFolderAfterUnlockAnimation:Lcom/htc/launcher/FolderInfo;

.field private orientationCount:I

.field private phoneStateListener:Lcom/htc/launcher/Launcher$RosiePhoneStateListener;

.field private final registerTelephonyManager:Ljava/lang/Runnable;

.field private showLoadingCursor:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 176
    const-class v0, Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/launcher/Launcher;->$assertionsDisabled:Z

    .line 188
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    .line 314
    new-instance v0, Lcom/htc/launcher/LauncherModel;

    invoke-direct {v0}, Lcom/htc/launcher/LauncherModel;-><init>()V

    sput-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    .line 316
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/launcher/Launcher;->sLock:Ljava/lang/Object;

    .line 317
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/launcher/Launcher;->sSceneLock:Ljava/lang/Object;

    .line 318
    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    sput v0, Lcom/htc/launcher/Launcher;->sScreen:I

    .line 332
    sput-object v3, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    .line 334
    sput-object v3, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    .line 341
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    .line 441
    const v0, 0x7f070004

    sput v0, Lcom/htc/launcher/Launcher;->mProgramListId:I

    .line 508
    sput-object v3, Lcom/htc/launcher/Launcher;->mSettingWidgetCellInfo:Lcom/htc/launcher/CellInfo;

    .line 509
    sput-boolean v2, Lcom/htc/launcher/Launcher;->needActivityResult:Z

    .line 510
    sput v2, Lcom/htc/launcher/Launcher;->requestCodeBackup:I

    .line 511
    sput v2, Lcom/htc/launcher/Launcher;->resultCodeBackup:I

    .line 512
    sput-object v3, Lcom/htc/launcher/Launcher;->dataBackup:Landroid/content/Intent;

    .line 520
    sput-boolean v1, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    .line 544
    const/4 v0, -0x1

    sput v0, Lcom/htc/launcher/Launcher;->mMiddleClickButton:I

    .line 545
    sput-boolean v2, Lcom/htc/launcher/Launcher;->ifAddButtonbar:Z

    .line 558
    sput v2, Lcom/htc/launcher/Launcher;->mUiMode:I

    .line 560
    sput-boolean v2, Lcom/htc/launcher/Launcher;->mIsAbortDrag:Z

    .line 563
    sput-boolean v2, Lcom/htc/launcher/Launcher;->isTipShowed:Z

    .line 564
    sput-boolean v2, Lcom/htc/launcher/Launcher;->newStyleTip:Z

    .line 565
    sput-boolean v2, Lcom/htc/launcher/Launcher;->isPreStickyMode:Z

    .line 568
    sput-boolean v2, Lcom/htc/launcher/Launcher;->sIsBroughtToFront:Z

    .line 1319
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.content.Intent.ACTION_BACKGROUND_OP_STOP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/launcher/Launcher;->sBackgroundStopIntent:Landroid/content/Intent;

    .line 1321
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.content.Intent.ACTION_BACKGROUND_OP_GO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/launcher/Launcher;->sBackgroundGoIntent:Landroid/content/Intent;

    .line 5935
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "launcher-loader"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/launcher/Launcher;->sWorkerThread:Landroid/os/HandlerThread;

    .line 5938
    sget-object v0, Lcom/htc/launcher/Launcher;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5939
    new-instance v0, Landroid/os/Handler;

    sget-object v3, Lcom/htc/launcher/Launcher;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/htc/launcher/Launcher;->sWorker:Landroid/os/Handler;

    .line 8035
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.weatherwallpaper.service.intent.action.WEATHER_WALLPAPER_DISMISS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/launcher/Launcher;->sWeatherAnimationDoneIntent:Landroid/content/Intent;

    .line 8296
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.htc.intent.ACTION_PERSONALIZE_SCENE_CHANGED"

    aput-object v3, v0, v2

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SKIN_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_WIDGET_TO_HOME_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_APP_TO_HOME_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_SHORTCUT_TO_HOME_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ADD_FOLDER_TO_HOME_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_RINGTONE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_NOTIFICATION_SOUNDS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_ALARM_CHANGED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/launcher/Launcher;->ACTION_SUMMARY_CHANGES:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 176
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 183
    const-string v0, "com.htc.launcher.AllAppsCarouselProvider"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselInternalActivity;-><init>(Ljava/lang/String;)V

    .line 190
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->forceBuildCache:Z

    .line 320
    new-instance v0, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;

    invoke-direct {v0, p0, v3}, Lcom/htc/launcher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v0, Lcom/htc/launcher/Launcher$FavoritesChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$FavoritesChangeObserver;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mObserver:Landroid/database/ContentObserver;

    .line 322
    new-instance v0, Lcom/htc/launcher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$AppWidgetResetObserver;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetResetObserver:Landroid/database/ContentObserver;

    .line 326
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsSearchCategory:Z

    .line 327
    new-instance v0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

    invoke-direct {v0, p0, v3}, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mHtcWidgetUpdateReceiver:Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

    .line 328
    new-instance v0, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;

    invoke-direct {v0, p0, v3}, Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mKeyguardIntentReceiver:Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;

    .line 329
    new-instance v0, Lcom/htc/launcher/Launcher$ThemeChangeReceiver;

    invoke-direct {v0, p0, v3}, Lcom/htc/launcher/Launcher$ThemeChangeReceiver;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mThemeChangeReceiver:Lcom/htc/launcher/Launcher$ThemeChangeReceiver;

    .line 331
    new-instance v0, Lcom/htc/launcher/Launcher$SummaryReceiver;

    invoke-direct {v0, p0, v3}, Lcom/htc/launcher/Launcher$SummaryReceiver;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mSummaryReceiver:Lcom/htc/launcher/Launcher$SummaryReceiver;

    .line 333
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    .line 340
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->showLoadingCursor:Z

    .line 343
    iput-boolean v4, p0, Lcom/htc/launcher/Launcher;->mIsLoading:Z

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/Launcher;->mCurrentOrientation:I

    .line 345
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/launcher/Launcher;->mStartOrientation:J

    .line 347
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mWillLeave:Z

    .line 357
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    .line 367
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mOrientationChangedRunnables:Ljava/util/ArrayList;

    .line 397
    iput-boolean v4, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    .line 400
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 402
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mDestroying:Z

    .line 403
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mDestroyed:Z

    .line 413
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mOptionsMenuChanged:Ljava/util/Set;

    .line 414
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mOnConfigChangedReloading:Z

    .line 421
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsEstimateSlidingDrawer:Z

    .line 422
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsAllProgramSliding:Z

    .line 423
    iput-wide v5, p0, Lcom/htc/launcher/Launcher;->mStartDrawingTime:J

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mIntervals:Ljava/util/ArrayList;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mThreadIntervals:Ljava/util/ArrayList;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mTwoStartIntervals:Ljava/util/ArrayList;

    .line 434
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    .line 435
    new-instance v0, Lcom/htc/launcher/Launcher$SilderReceiver;

    invoke-direct {v0, p0, v3}, Lcom/htc/launcher/Launcher$SilderReceiver;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mSilderReceiver:Lcom/htc/launcher/Launcher$SilderReceiver;

    .line 439
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsListAdapterReady:Z

    .line 443
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsPause:Z

    .line 447
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->isNeedLaunchAddToHome:Z

    .line 449
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    .line 451
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z

    .line 463
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsTouchDownNeedCacheBtn:Z

    .line 466
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsPressHomeKey:Z

    .line 474
    iput-boolean v4, p0, Lcom/htc/launcher/Launcher;->mIsAllowMoveToDefaultScreen:Z

    .line 476
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsRessumeNeedCloseSliderAndStartActivity:Z

    .line 477
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsOpenSlideWhenLeaveLaunch:Z

    .line 478
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsLockEnterThumbnailMode:Z

    .line 491
    new-instance v0, Lcom/htc/launcher/Launcher$LauncherHandler;

    invoke-direct {v0, p0, v3}, Lcom/htc/launcher/Launcher$LauncherHandler;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    .line 496
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->isUakKeyProcessed:Z

    .line 499
    iput-wide v5, p0, Lcom/htc/launcher/Launcher;->mLauncherLeftTime:J

    .line 500
    iput-wide v5, p0, Lcom/htc/launcher/Launcher;->mStickyLeftTime:J

    .line 501
    iput v2, p0, Lcom/htc/launcher/Launcher;->orientationCount:I

    .line 503
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsMenuKeyDown:Z

    .line 506
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/Launcher;->mCurrentSceneId:I

    .line 525
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    .line 527
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mOnConfigurationChanged:Z

    .line 529
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mSkipUiModeChange:Z

    .line 531
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->isSupportLandscape:Z

    .line 535
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsConfigurationChanged:Z

    .line 537
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mChangingOrientation:Z

    .line 546
    iput v2, p0, Lcom/htc/launcher/Launcher;->mFinishLoading:I

    .line 547
    iput-wide v5, p0, Lcom/htc/launcher/Launcher;->mLoadingTime:J

    .line 548
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->lastDialog:Ljava/lang/ref/WeakReference;

    .line 551
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mCurrentLocale:Ljava/lang/String;

    .line 832
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mSettingsCursor:Landroid/database/Cursor;

    .line 1010
    iput-wide v5, p0, Lcom/htc/launcher/Launcher;->a:J

    .line 1323
    iput-boolean v4, p0, Lcom/htc/launcher/Launcher;->mBackgroundTrafficLight:Z

    .line 1360
    new-instance v0, Lcom/htc/launcher/Launcher$4;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$4;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mBackgroundGo:Ljava/lang/Runnable;

    .line 1367
    new-instance v0, Lcom/htc/launcher/Launcher$5;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$5;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->registerTelephonyManager:Ljava/lang/Runnable;

    .line 1673
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->isKeyguardOnWhenOnResume:Z

    .line 1689
    const/4 v0, -0x8

    iput v0, p0, Lcom/htc/launcher/Launcher;->RAISED_PRIORITY:I

    .line 1690
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/Launcher;->mPriority:I

    .line 1716
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mPauseByLoaders:Z

    .line 1717
    iput-boolean v4, p0, Lcom/htc/launcher/Launcher;->mFreezeable:Z

    .line 2662
    iput-boolean v4, p0, Lcom/htc/launcher/Launcher;->isButtonCanPress:Z

    .line 4198
    new-instance v0, Lcom/htc/launcher/Launcher$12;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$12;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mBackgroundTrafficLightReceiver:Landroid/content/BroadcastReceiver;

    .line 4220
    new-instance v0, Lcom/htc/launcher/Launcher$13;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$13;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 4428
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsOpenPersonalizeBySetting:Z

    .line 4524
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsApplicationLoaded:Z

    .line 4608
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mTutorialNoticeViews:Ljava/util/HashMap;

    .line 4922
    iput v2, p0, Lcom/htc/launcher/Launcher;->mPrepareScreensCacheIndex:I

    .line 4923
    new-instance v0, Lcom/htc/launcher/Launcher$15;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$15;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mPrepareScreensCache:Ljava/lang/Runnable;

    .line 5098
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mActivityLaunched:Z

    .line 5100
    new-instance v0, Lcom/htc/launcher/Launcher$16;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$16;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mResetLaunchState:Ljava/lang/Runnable;

    .line 5777
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsWorkspaceChanging:Z

    .line 6463
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->ask2NotifyHint:Z

    .line 7000
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->m_bAllAppsViewAspectRestored:Z

    .line 7595
    new-instance v0, Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    .line 7596
    new-instance v0, Lcom/htc/launcher/Launcher$26;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$26;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mEmptyRunnable:Ljava/lang/Runnable;

    .line 7984
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mPageSelect:Z

    .line 8036
    new-instance v0, Lcom/htc/launcher/Launcher$31;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$31;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mWeatherAnimationNotify:Landroid/content/BroadcastReceiver;

    .line 8046
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mWeatherAnimationNotifyRegistered:Z

    .line 8095
    iput v7, p0, Lcom/htc/launcher/Launcher;->mScenePreviewHeight:F

    .line 8096
    iput v7, p0, Lcom/htc/launcher/Launcher;->mScenePreviewWidth:F

    .line 8437
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsInComingCall:Z

    .line 8438
    new-instance v0, Lcom/htc/launcher/Launcher$RosiePhoneStateListener;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$RosiePhoneStateListener;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->phoneStateListener:Lcom/htc/launcher/Launcher$RosiePhoneStateListener;

    .line 8460
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mTiltSettingsObserver:Lcom/htc/launcher/Launcher$TiltSettingsObserver;

    .line 8496
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mTiltEnabled:Z

    .line 8499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    .line 8501
    new-instance v0, Lcom/htc/launcher/Launcher$ExSensorEventListener;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$ExSensorEventListener;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;

    .line 8681
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mFreezeTilt:Z

    .line 8693
    new-instance v0, Lcom/htc/launcher/Launcher$WidgetTilter;

    invoke-direct {v0, p0, v3}, Lcom/htc/launcher/Launcher$WidgetTilter;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    .line 8934
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mSkipUnlockAnimation:Z

    .line 8955
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mNeedLiveWallpaperSpin:Z

    .line 9052
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    .line 9352
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mStickyMode:Z

    .line 9489
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mCellInfoHandler:Lcom/htc/launcher/Launcher$CellInfoHandler;

    .line 9531
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mExitStickyCallback:Ljava/lang/Runnable;

    .line 9601
    iput-object v3, p0, Lcom/htc/launcher/Launcher;->m_NavbarStickyModeHandler:Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;

    .line 184
    return-void
.end method

.method public static AddFxWidget(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 9314
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 9315
    .local v0, launcher:Lcom/htc/launcher/Launcher;
    :goto_0
    if-nez v0, :cond_1

    .line 9326
    :goto_1
    return-void

    .line 9314
    .end local v0           #launcher:Lcom/htc/launcher/Launcher;
    :cond_0
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    move-object v0, v1

    goto :goto_0

    .line 9319
    .restart local v0       #launcher:Lcom/htc/launcher/Launcher;
    :cond_1
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v1, :cond_3

    .line 9320
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9325
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v3, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v1, v0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, p0, v3, v1}, Lcom/htc/launcher/DesktopItemController;->addFxWidget(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    goto :goto_1

    .line 9321
    :cond_3
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    if-nez v1, :cond_2

    .line 9322
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    goto :goto_2

    .line 9325
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private ButtonBarViews_UpdateOrientation()V
    .locals 1

    .prologue
    .line 2618
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/ButtonBar;->ButtonBarViews_UpdateOrientation()V

    .line 2620
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/ButtonBar;->update2DButtonBarViews()V

    .line 2622
    :cond_0
    return-void
.end method

.method private SearchBar_UpdateOrientation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2563
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 2566
    :cond_0
    return-void
.end method

.method private acceptFilter()Z
    .locals 3

    .prologue
    .line 1862
    const/4 v1, 0x1

    .line 1863
    .local v1, ret:Z
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1864
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1865
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1866
    :cond_0
    :goto_0
    return v1

    .line 1865
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->loadSettings()V

    return-void
.end method

.method static synthetic access$10000(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mTiltSettingEnable:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mTiltSettingEnable:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mTiltEnabled:Z

    return v0
.end method

.method static synthetic access$10200(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mFreezeTilt:Z

    return v0
.end method

.method static synthetic access$10300(Lcom/htc/launcher/Launcher;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mStickyMode:Z

    return v0
.end method

.method static synthetic access$10902(Lcom/htc/launcher/Launcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->mExitStickyCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/launcher/Launcher;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSettingsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->addTiltSettingObserver()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/launcher/Launcher;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/launcher/Launcher;->onWidgetActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/launcher/Launcher;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/launcher/Launcher;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$RosiePhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->phoneStateListener:Lcom/htc/launcher/Launcher$RosiePhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/launcher/Launcher;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->findHighestPriorityTip(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/launcher/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->freezeTilt(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$ExSensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/launcher/Launcher;)Lcom/htc/htcSceneManager/scene/SceneManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/launcher/Launcher;)Lcom/htc/android/rosie/home/HostWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/CellInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/CellInfo;)Lcom/htc/launcher/CellInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsPause:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->isSupportLandscape:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mIsConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/launcher/Launcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/launcher/Launcher;->mPrepareScreensCacheIndex:I

    return v0
.end method

.method static synthetic access$3802(Lcom/htc/launcher/Launcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput p1, p0, Lcom/htc/launcher/Launcher;->mPrepareScreensCacheIndex:I

    return p1
.end method

.method static synthetic access$3808(Lcom/htc/launcher/Launcher;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/launcher/Launcher;->mPrepareScreensCacheIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/launcher/Launcher;->mPrepareScreensCacheIndex:I

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/launcher/Launcher;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->runInNextEvLoop(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/launcher/Launcher;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/htc/launcher/Launcher;->mLoadingTime:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->isKeyguardOnWhenOnResume:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mOnConfigChangedReloading:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mActivityLaunched:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->startWallpaperNoLiveWallpaper()V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->startLockScreenWallpaper()V

    return-void
.end method

.method static synthetic access$4700()I
    .locals 1

    .prologue
    .line 176
    sget v0, Lcom/htc/launcher/Launcher;->mProgramListId:I

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/htc/launcher/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->closeDrawer(Z)V

    return-void
.end method

.method static synthetic access$5002(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$5200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/htc/launcher/Launcher;->sSceneLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/launcher/Launcher;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->removeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->lockOrientation()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->removeShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->updateShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->updateApplicationIconForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mSkipUnlockAnimation:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mSkipUnlockAnimation:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mChangingOrientation:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mChangingOrientation:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->showUnlockAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6102(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mNeedLiveWallpaperSpin:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->onKeyguardOff()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mDestroying:Z

    return v0
.end method

.method static synthetic access$6400(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/LeapController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/launcher/Launcher;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/Launcher;->createScenePreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$6700(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsRessumeNeedCloseSliderAndStartActivity:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mIsRessumeNeedCloseSliderAndStartActivity:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->ask2NotifyHint:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->ask2NotifyHint:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/htc/launcher/Launcher;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsOpenSlideWhenLeaveLaunch:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mIsOpenSlideWhenLeaveLaunch:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/htc/launcher/Launcher;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mControl:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/launcher/Launcher;->bindItems(Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/Launcher;->bindAppWidgets(Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$7400()I
    .locals 1

    .prologue
    .line 176
    sget v0, Lcom/htc/launcher/Launcher;->sScreen:I

    return v0
.end method

.method static synthetic access$7500(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->finishBindDesktopHtcWidgets()V

    return-void
.end method

.method static synthetic access$7802(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mIsAllowMoveToDefaultScreen:Z

    return p1
.end method

.method static synthetic access$7902(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mIsLockEnterThumbnailMode:Z

    return p1
.end method

.method static synthetic access$8002(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->isUakKeyProcessed:Z

    return p1
.end method

.method static synthetic access$8102(Lcom/htc/launcher/Launcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput p1, p0, Lcom/htc/launcher/Launcher;->lastUakKeyCode:I

    return p1
.end method

.method static synthetic access$8200(Lcom/htc/launcher/Launcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/launcher/Launcher;->mFinishLoading:I

    return v0
.end method

.method static synthetic access$8212(Lcom/htc/launcher/Launcher;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/launcher/Launcher;->mFinishLoading:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/launcher/Launcher;->mFinishLoading:I

    return v0
.end method

.method static synthetic access$8300(Lcom/htc/launcher/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->enableTilt(Z)V

    return-void
.end method

.method static synthetic access$8400(Lcom/htc/launcher/Launcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/launcher/Launcher;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$8500(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->onOrientationChangeEnd()V

    return-void
.end method

.method static synthetic access$8602(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mFreezeable:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/htc/launcher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    return v0
.end method

.method static synthetic access$8800(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->showTutorialNotice()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->handleOrientationChangedPendingTask()V

    return-void
.end method

.method static synthetic access$9010(Lcom/htc/launcher/Launcher;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/launcher/Launcher;->orientationCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/launcher/Launcher;->orientationCount:I

    return v0
.end method

.method static synthetic access$9100(Lcom/htc/launcher/Launcher;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mNewConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->removeDropTargetsOfDropBar()V

    return-void
.end method

.method static synthetic access$9300(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->getDropTargetsOfDropBar()V

    return-void
.end method

.method static synthetic access$9400(Lcom/htc/launcher/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mEmptyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/htc/launcher/Launcher;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->updateApplicationListAfterMccMncChanged()V

    return-void
.end method

.method static synthetic access$9700(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->updateShortcutsAfterMccMncChanged()V

    return-void
.end method

.method static synthetic access$9800(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/FolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->m_openFolderAfterUnlockAnimation:Lcom/htc/launcher/FolderInfo;

    return-object v0
.end method

.method static synthetic access$9802(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/FolderInfo;)Lcom/htc/launcher/FolderInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->m_openFolderAfterUnlockAnimation:Lcom/htc/launcher/FolderInfo;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/htc/launcher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mIsInComingCall:Z

    return p1
.end method

.method public static addAppWidget(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 9293
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 9294
    .local v0, launcher:Lcom/htc/launcher/Launcher;
    :goto_0
    if-nez v0, :cond_1

    .line 9311
    :goto_1
    return-void

    .line 9293
    .end local v0           #launcher:Lcom/htc/launcher/Launcher;
    :cond_0
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    move-object v0, v1

    goto :goto_0

    .line 9298
    .restart local v0       #launcher:Lcom/htc/launcher/Launcher;
    :cond_1
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v1, :cond_3

    .line 9299
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9310
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v3, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v1, v0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, p0, v3, v1}, Lcom/htc/launcher/DesktopItemController;->completeAddAppWidget(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    goto :goto_1

    .line 9300
    :cond_3
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    if-nez v1, :cond_2

    .line 9301
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    goto :goto_2

    .line 9310
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static addApplication(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 9278
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 9279
    .local v0, launcher:Lcom/htc/launcher/Launcher;
    :goto_0
    if-nez v0, :cond_1

    .line 9290
    :goto_1
    return-void

    .line 9278
    .end local v0           #launcher:Lcom/htc/launcher/Launcher;
    :cond_0
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    move-object v0, v1

    goto :goto_0

    .line 9283
    .restart local v0       #launcher:Lcom/htc/launcher/Launcher;
    :cond_1
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v1, :cond_3

    .line 9284
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9289
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v3, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v1, v0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v0, p0, v3, v1}, Lcom/htc/launcher/DesktopItemController;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    goto :goto_1

    .line 9285
    :cond_3
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    if-nez v1, :cond_2

    .line 9286
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    goto :goto_2

    .line 9289
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static addHtcWidget(Landroid/content/Intent;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 9329
    sget-object v4, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    move-object v2, v5

    .line 9330
    .local v2, launcher:Lcom/htc/launcher/Launcher;
    :goto_0
    if-nez v2, :cond_2

    .line 9350
    :cond_0
    :goto_1
    return-void

    .line 9329
    .end local v2           #launcher:Lcom/htc/launcher/Launcher;
    :cond_1
    sget-object v4, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/Launcher;

    move-object v2, v4

    goto :goto_0

    .line 9334
    .restart local v2       #launcher:Lcom/htc/launcher/Launcher;
    :cond_2
    const-string v4, "item_type"

    const/4 v6, -0x1

    invoke-virtual {p0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9335
    .local v1, itemType:I
    const-string v4, "waitForActivityResult"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 9337
    .local v3, waitForActivityResult:Z
    if-lez v1, :cond_0

    .line 9338
    const/4 v0, 0x0

    .line 9339
    .local v0, backIntent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 9340
    move-object v0, p0

    .line 9342
    :cond_3
    iget-object v4, v2, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v4, :cond_5

    .line 9343
    iget-object v4, v2, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    iput-object v4, v2, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9347
    :cond_4
    :goto_2
    iget-object v4, v2, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    sget-object v6, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    const-wide/16 v7, -0x1

    invoke-virtual {v6, v1, v5, v7, v8}, Lcom/htc/launcher/WidgetPackageManager;->newWidget(ILandroid/content/Context;J)Lcom/htc/launcher/WidgetProxy;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    invoke-virtual {v4, v5, v0, v6}, Lcom/htc/launcher/DesktopItemController;->addWidget(Lcom/htc/launcher/Widget;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;)V

    goto :goto_1

    .line 9344
    :cond_5
    iget-object v4, v2, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    if-nez v4, :cond_4

    .line 9345
    iget-object v4, v2, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4, v5}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    goto :goto_2
.end method

.method private addInterval(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mIntervals:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    return-void
.end method

.method private addItemIntoDesktop(Landroid/content/Intent;)Z
    .locals 10
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 3324
    const-string v8, "pick_item_type"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3326
    .local v4, itemType:I
    if-eq v4, v9, :cond_2

    .line 3327
    sget-boolean v7, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v7, :cond_0

    const-string v7, "Rosie"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addItemIntoDesktop from personalize, itemType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    :cond_0
    :try_start_0
    const-string v7, "pick_item_data"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 3335
    .local v3, intent:Landroid/content/Intent;
    sparse-switch v4, :sswitch_data_0

    .line 3376
    const-string v7, "Rosie"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: unhandled. act=com.htc.home.personalize.Action.PickItem itemType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3379
    :cond_1
    :goto_0
    sparse-switch v4, :sswitch_data_1

    .line 3387
    :goto_1
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/htc/launcher/Launcher;->closeDrawer(Z)V

    .line 3393
    .end local v3           #intent:Landroid/content/Intent;
    :goto_2
    const/4 v7, 0x1

    .line 3395
    :cond_2
    return v7

    .line 3337
    .restart local v3       #intent:Landroid/content/Intent;
    :sswitch_0
    const-string v7, "Rosie"

    const-string v8, "onReceive: add new folder."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    invoke-static {}, Lcom/htc/launcher/Launcher;->addNewFolder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3389
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 3390
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Rosie"

    const-string v8, "InstallShortcutReceiver.onReceive"

    invoke-static {v7, v8, v2}, Lcom/htc/launcher/TFC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3341
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #intent:Landroid/content/Intent;
    :sswitch_1
    :try_start_1
    invoke-static {v3}, Lcom/htc/launcher/AddAdapter;->getExtItemIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 3342
    .local v1, bookmarkShortcutIntent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 3343
    invoke-static {v3}, Lcom/htc/launcher/AddAdapter;->getExtItemIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/launcher/Launcher;->addShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 3347
    .end local v1           #bookmarkShortcutIntent:Landroid/content/Intent;
    :cond_3
    :sswitch_2
    const-string v7, "Rosie"

    const-string v8, "onReceive: add shortcut."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->addShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 3351
    :sswitch_3
    const-string v7, "Rosie"

    const-string v8, "onReceive: add application."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->addApplication(Landroid/content/Intent;)V

    goto :goto_0

    .line 3355
    :sswitch_4
    const-string v7, "Rosie"

    const-string v8, "onReceive: add app-widget (1/2)."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3356
    sget-object v7, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_4

    const/4 v5, 0x0

    .line 3357
    .local v5, launcher:Lcom/htc/launcher/Launcher;
    :goto_3
    if-eqz v5, :cond_1

    .line 3358
    iget-object v7, v5, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v7}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 3359
    .local v0, appWidgetId:I
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.home.personalize.Action.PickAppWidget"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3360
    .local v6, reply:Landroid/content/Intent;
    const-string v7, "appWidgetId"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3361
    invoke-virtual {p0, v6}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3356
    .end local v0           #appWidgetId:I
    .end local v5           #launcher:Lcom/htc/launcher/Launcher;
    .end local v6           #reply:Landroid/content/Intent;
    :cond_4
    sget-object v7, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/Launcher;

    move-object v5, v7

    goto :goto_3

    .line 3365
    :sswitch_5
    const-string v7, "Rosie"

    const-string v8, "onReceive: add app-widget (2/2)."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 3369
    :sswitch_6
    const-string v7, "Rosie"

    const-string v8, "onReceive: add fx-widget."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3370
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->AddFxWidget(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3373
    :sswitch_7
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->addHtcWidget(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3383
    :sswitch_8
    const-string v7, "topic_tag-home_screen-widgets"

    invoke-static {p0, v7}, Lcom/htc/launcher/Logger;->showMeWidget(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3335
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_0
        0x5 -> :sswitch_5
        0x6 -> :sswitch_3
        0x9 -> :sswitch_4
        0xb -> :sswitch_1
        0xc -> :sswitch_6
        0x1f4 -> :sswitch_7
    .end sparse-switch

    .line 3379
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_8
        0xc -> :sswitch_8
        0x1f4 -> :sswitch_8
    .end sparse-switch
.end method

.method private addItems()V
    .locals 2

    .prologue
    .line 8983
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    .line 8984
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->onClickAddtoHome(Lcom/htc/launcher/CellInfo;)V

    .line 8985
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->invalidateVacant()V

    .line 8986
    return-void
.end method

.method public static addNewFolder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9243
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 9244
    .local v0, launcher:Lcom/htc/launcher/Launcher;
    :goto_0
    if-nez v0, :cond_1

    .line 9261
    :goto_1
    return-void

    .line 9243
    .end local v0           #launcher:Lcom/htc/launcher/Launcher;
    :cond_0
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    move-object v0, v1

    goto :goto_0

    .line 9248
    .restart local v0       #launcher:Lcom/htc/launcher/Launcher;
    :cond_1
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v1, :cond_3

    .line 9249
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9253
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-boolean v1, v0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/htc/launcher/DesktopItemController;->addFolder(Z)Lcom/htc/launcher/FolderInfo;

    goto :goto_1

    .line 9250
    :cond_3
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    if-nez v1, :cond_2

    .line 9251
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    goto :goto_2

    .line 9253
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method static addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)Lcom/htc/launcher/ApplicationInfo;
    .locals 18
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 2824
    const-string v15, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 2826
    .local v11, intent:Landroid/content/Intent;
    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v11, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 2831
    :goto_0
    const-string v15, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2832
    .local v12, name:Ljava/lang/String;
    const-string v15, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2834
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 2835
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 2836
    .local v6, filtered:Z
    const/4 v2, 0x0

    .line 2837
    .local v2, customIcon:Z
    const/4 v8, 0x0

    .line 2839
    .local v8, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_3

    .line 2840
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2841
    new-instance v7, Lcom/htc/launcher/FastBitmapDrawable;

    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/htc/launcher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v7, v15, v0}, Lcom/htc/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 2843
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 2849
    :goto_1
    const/4 v2, 0x1

    .line 2869
    :cond_0
    :goto_2
    if-nez v7, :cond_1

    .line 2870
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2873
    :cond_1
    new-instance v10, Lcom/htc/launcher/ApplicationInfo;

    invoke-direct {v10}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 2874
    .local v10, info:Lcom/htc/launcher/ApplicationInfo;
    iput-object v7, v10, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2875
    iput-boolean v6, v10, Lcom/htc/launcher/ApplicationInfo;->filtered:Z

    .line 2876
    iput-object v12, v10, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 2877
    iput-object v11, v10, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 2878
    iput-boolean v2, v10, Lcom/htc/launcher/ApplicationInfo;->customIcon:Z

    .line 2879
    iput-object v8, v10, Lcom/htc/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2884
    return-object v10

    .line 2827
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #customIcon:Z
    .end local v6           #filtered:Z
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v10           #info:Lcom/htc/launcher/ApplicationInfo;
    .end local v12           #name:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2829
    .local v4, e1:Ljava/net/URISyntaxException;
    invoke-virtual {v4}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 2845
    .end local v4           #e1:Ljava/net/URISyntaxException;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #customIcon:Z
    .restart local v6       #filtered:Z
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v12       #name:Ljava/lang/String;
    :cond_2
    new-instance v7, Lcom/htc/launcher/FastBitmapDrawable;

    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/htc/launcher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v7, v15}, Lcom/htc/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2847
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x1

    goto :goto_1

    .line 2851
    :cond_3
    const-string v15, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 2853
    .local v5, extra:Landroid/os/Parcelable;
    if-eqz v5, :cond_0

    instance-of v15, v5, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v15, :cond_0

    .line 2855
    :try_start_1
    move-object v0, v5

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v8, v0

    .line 2856
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2858
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    iget-object v15, v8, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 2860
    .local v14, resources:Landroid/content/res/Resources;
    iget-object v15, v8, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2862
    .local v9, id:I
    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_2

    .line 2863
    .end local v9           #id:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #resources:Landroid/content/res/Resources;
    :catch_1
    move-exception v3

    .line 2864
    .local v3, e:Ljava/lang/Exception;
    const-string v15, "Rosie"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not load shortcut icon: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static addShortcut(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 9264
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 9265
    .local v0, launcher:Lcom/htc/launcher/Launcher;
    :goto_0
    if-nez v0, :cond_1

    .line 9275
    :goto_1
    return-void

    .line 9264
    .end local v0           #launcher:Lcom/htc/launcher/Launcher;
    :cond_0
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    move-object v0, v1

    goto :goto_0

    .line 9269
    .restart local v0       #launcher:Lcom/htc/launcher/Launcher;
    :cond_1
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v1, :cond_3

    .line 9270
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 9274
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v3, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v1, v0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, p0, v3, v1}, Lcom/htc/launcher/DesktopItemController;->completeAddShortcut(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    goto :goto_1

    .line 9271
    :cond_3
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    if-nez v1, :cond_2

    .line 9272
    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    goto :goto_2

    .line 9274
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private addThreadInterval(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mThreadIntervals:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    return-void
.end method

.method private addTiltSettingObserver()V
    .locals 5

    .prologue
    .line 842
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.addSettingObserver() - enter"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mSettingsCursor:Landroid/database/Cursor;

    const-string v2, "name"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 844
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mTiltSettingsObserver:Lcom/htc/launcher/Launcher$TiltSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 847
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_3d_home_screen"

    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mTiltSettingEnable:Z

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mTiltSettingEnable:Z

    .line 849
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 850
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V

    .line 851
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.addSettingObserver() - exit"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method private addTwoStartInterval(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTwoStartIntervals:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    return-void
.end method

.method private allProgramUpdateOrientation(Z)V
    .locals 4
    .parameter "portrait"

    .prologue
    .line 7360
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/AllAppsGridView;

    .line 7362
    .local v0, gridView:Lcom/htc/launcher/AllAppsGridView;
    invoke-virtual {v0, p1}, Lcom/htc/launcher/AllAppsGridView;->updateOrientation(Z)V

    .line 7365
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/AllAppsListView;

    .line 7367
    .local v1, listView:Lcom/htc/launcher/AllAppsListView;
    invoke-virtual {v1, p1}, Lcom/htc/launcher/AllAppsListView;->updateOrientation(Z)V

    .line 7368
    return-void
.end method

.method private bindAppWidgets(Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 14
    .parameter "binder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/launcher/Launcher$DesktopBinder;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4861
    .local p2, appWidgets:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/launcher/LauncherAppWidgetInfo;>;"
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "[APTR_TEST, rider_s_351] bindAppWidgets()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4863
    :cond_0
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 4864
    .local v13, workspace:Lcom/htc/launcher/Workspace;
    iget-boolean v12, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    .line 4866
    .local v12, desktopLocked:Z
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4867
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Rosie"

    const-string v1, "[APTR_TEST, rider_s_351] bindAppWidgets() test01"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 4870
    .local v2, item:Lcom/htc/launcher/LauncherAppWidgetInfo;
    iget v10, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4871
    .local v10, appWidgetId:I
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 4874
    .local v11, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v11, :cond_7

    .line 4876
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v10, v11}, Lcom/htc/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 4879
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_2

    .line 4880
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "Rosie"

    const-string v1, "about to setAppWidget for id=%d, info=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4885
    :cond_2
    iget-object v0, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v10, v11}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 4886
    iget-object v0, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 4890
    iget-object v0, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/launcher/LegacyLayout;->isIncludeStackView(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4891
    iget-object v0, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/appwidget/AppWidgetHostView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4893
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v3, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->screen:I

    iget v4, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v5, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v6, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v7, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanY:I

    if-nez v12, :cond_6

    const/4 v8, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v8}, Lcom/htc/launcher/DesktopItemController;->addLegacyItemToDesktop(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    .line 4909
    .end local v2           #item:Lcom/htc/launcher/LauncherAppWidgetInfo;
    .end local v10           #appWidgetId:I
    .end local v11           #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4910
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_5

    const-string v0, "Rosie"

    const-string v1, "[APTR_TEST, rider_s_351] bindAppWidgets empty appWidget list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    :cond_5
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->finishBindDesktopAppWidgets()V

    .line 4920
    :goto_2
    return-void

    .line 4893
    .restart local v2       #item:Lcom/htc/launcher/LauncherAppWidgetInfo;
    .restart local v10       #appWidgetId:I
    .restart local v11       #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_6
    const/4 v8, 0x0

    goto :goto_0

    .line 4897
    :cond_7
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/launcher/LauncherModel;->removeDesktopAppWidget(Lcom/htc/launcher/LauncherAppWidgetInfo;)V

    .line 4899
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getAppWidgetHost()Lcom/htc/launcher/LauncherAppWidgetHost;

    move-result-object v9

    .line 4900
    .local v9, appWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;
    if-eqz v9, :cond_8

    .line 4901
    iget v0, v2, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v9, v0}, Lcom/htc/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 4904
    :cond_8
    invoke-static {p0, v2}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 4905
    invoke-static {p0}, Lcom/htc/launcher/Launcher;->onSceneModified(Landroid/content/Context;)V

    goto :goto_1

    .line 4916
    .end local v2           #item:Lcom/htc/launcher/LauncherAppWidgetInfo;
    .end local v9           #appWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;
    .end local v10           #appWidgetId:I
    .end local v11           #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_9
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_a

    const-string v0, "Rosie"

    const-string v1, "[APTR_TEST, rider_s_351] bindAppWidgets() test02"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4917
    :cond_a
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/htc/launcher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method private bindDesktopItems()V
    .locals 8

    .prologue
    .line 4571
    sget-object v6, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v6}, Lcom/htc/launcher/LauncherModel;->getDesktopItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 4572
    .local v4, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    sget-object v6, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v6}, Lcom/htc/launcher/LauncherModel;->getDesktopAppWidgets()Ljava/util/ArrayList;

    move-result-object v0

    .line 4574
    .local v0, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/LauncherAppWidgetInfo;>;"
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 4606
    :cond_0
    :goto_0
    return-void

    .line 4578
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 4579
    .local v5, workspace:Lcom/htc/launcher/Workspace;
    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v2

    .line 4580
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 4581
    invoke-virtual {v5, v3}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4582
    .local v1, childView:Landroid/view/View;
    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 4583
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #childView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 4580
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4600
    :cond_3
    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mBinder:Lcom/htc/launcher/Launcher$DesktopBinder;

    if-eqz v6, :cond_4

    .line 4601
    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mBinder:Lcom/htc/launcher/Launcher$DesktopBinder;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/htc/launcher/Launcher$DesktopBinder;->mTerminate:Z

    .line 4604
    :cond_4
    new-instance v6, Lcom/htc/launcher/Launcher$DesktopBinder;

    invoke-direct {v6, p0, v4, v0}, Lcom/htc/launcher/Launcher$DesktopBinder;-><init>(Lcom/htc/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/htc/launcher/Launcher;->mBinder:Lcom/htc/launcher/Launcher$DesktopBinder;

    .line 4605
    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mBinder:Lcom/htc/launcher/Launcher$DesktopBinder;

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher$DesktopBinder;->startBindingItems()V

    goto :goto_0
.end method

.method private bindItems(Lcom/htc/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .locals 8
    .parameter "binder"
    .parameter
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/launcher/Launcher$DesktopBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 4733
    .local p2, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 4734
    .local v4, workspace:Lcom/htc/launcher/Workspace;
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    .line 4736
    .local v0, desktopLocked:Z
    add-int/lit16 v5, p3, 0xc8

    invoke-static {v5, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4737
    .local v1, end:I
    move v2, p3

    .line 4739
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4740
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/ItemInfo;

    .line 4741
    .local v3, item:Lcom/htc/launcher/ItemInfo;
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "Rosie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[APTR_TEST, rider_s_351] bindItems(), item.itemType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    :cond_0
    iget v5, v3, Lcom/htc/launcher/ItemInfo;->itemType:I

    packed-switch v5, :pswitch_data_0

    .line 4755
    :pswitch_0
    instance-of v5, v3, Lcom/htc/launcher/WidgetProxy;

    if-eqz v5, :cond_1

    .line 4756
    check-cast v3, Lcom/htc/launcher/WidgetProxy;

    .end local v3           #item:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {p1, v3}, Lcom/htc/launcher/Launcher$DesktopBinder;->addHtcWidget(Lcom/htc/launcher/WidgetProxy;)V

    .line 4739
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4747
    .restart local v3       #item:Lcom/htc/launcher/ItemInfo;
    :pswitch_1
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    check-cast v3, Lcom/htc/launcher/FxShortcutInfo;

    .end local v3           #item:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v5, v3}, Lcom/htc/launcher/DesktopItemController;->addFxShortcutAsync(Lcom/htc/launcher/FxShortcutInfo;)V

    goto :goto_1

    .line 4752
    .restart local v3       #item:Lcom/htc/launcher/ItemInfo;
    :pswitch_2
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    check-cast v3, Lcom/htc/launcher/FxItemInfo;

    .end local v3           #item:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v5, v3}, Lcom/htc/launcher/DesktopItemController;->addFxWidgetAsync(Lcom/htc/launcher/FxItemInfo;)V

    goto :goto_1

    .line 4774
    :cond_2
    if-lt v1, p4, :cond_4

    .line 4775
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_3

    const-string v5, "Rosie"

    const-string v6, "[APTR_TEST, rider_s_351] bindItems(), if(end >= count)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    :cond_3
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->finishBindDesktopItems()V

    .line 4779
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher$DesktopBinder;->startBindingHtcWidgets()V

    .line 4781
    invoke-virtual {p1}, Lcom/htc/launcher/Launcher$DesktopBinder;->startBindingAppWidgetsWhenIdle()V

    .line 4786
    :goto_2
    return-void

    .line 4783
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v2, p4}, Lcom/htc/launcher/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 4742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private cancelDelayed(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1397
    return-void

    .line 1395
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private changeOrientation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7542
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "changeOrientation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7543
    :cond_0
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mIsConfigurationChanged:Z

    .line 7544
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    .line 7546
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    .line 7547
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    .line 7548
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->leaveEditMode()V

    .line 7549
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7550
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0}, Lcom/htc/launcher/LeapController;->endLeapMode()V

    .line 7551
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    if-eqz v0, :cond_2

    .line 7552
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController;->stopSlide()V

    .line 7553
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mNewConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_9

    .line 7554
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mNewConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/launcher/Launcher;->mCurrentOrientation:I

    .line 7557
    :goto_0
    sget-object v0, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v0}, Lcom/htc/launcher/OrientationMonitor;->addOnConfigurationChanged()V

    .line 7558
    sget-object v0, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherAppWidgetHost;->startListening()V

    .line 7562
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    if-eqz v0, :cond_3

    .line 7564
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->hideTutorialNotice()V

    .line 7567
    :cond_3
    iget v0, p0, Lcom/htc/launcher/Launcher;->orientationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/launcher/Launcher;->orientationCount:I

    .line 7568
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_5

    .line 7569
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    if-eqz v0, :cond_4

    .line 7570
    const-string v0, "Rosie"

    const-string v1, "too soon to enter orientation change again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7571
    :cond_4
    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientationCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/Launcher;->orientationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7573
    :cond_5
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    if-nez v0, :cond_6

    .line 7574
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/htc/launcher/Workspace;->restoreRemovedChildren(IZ)V

    .line 7575
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->restoreRemovedChildren()V

    .line 7577
    :cond_6
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->isAllApps()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7578
    :cond_7
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->reset(II)V

    .line 7585
    :goto_1
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    if-nez v0, :cond_8

    .line 7586
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->tempRemoveChildren()V

    .line 7589
    :cond_8
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setVisibility(I)V

    .line 7590
    iput-boolean v4, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    .line 7591
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 7592
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iput-boolean v4, v0, Lcom/htc/launcher/Workspace;->mFirstLayout:Z

    .line 7593
    return-void

    .line 7556
    :cond_9
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/launcher/Launcher;->mCurrentOrientation:I

    goto/16 :goto_0

    .line 7581
    :cond_a
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->reset(II)V

    goto :goto_1
.end method

.method private checkLocale(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 8069
    const-string v3, "launcher"

    invoke-virtual {p0, v3, v2}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "locale"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8070
    .local v1, oldLocale:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 8072
    :cond_0
    :goto_0
    return v2

    .line 8071
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8072
    .local v0, curLocale:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private clearLaputaNavigateFlag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8085
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.laputa.NaviMode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 8086
    .local v0, mode:I
    if-eqz v0, :cond_1

    .line 8087
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Rosie"

    const-string v2, "reset Laputa Navigation mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8088
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.laputa.NaviMode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8090
    :cond_1
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 7979
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 7980
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 7981
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7982
    return-void
.end method

.method private closeDrawer()V
    .locals 1

    .prologue
    .line 4452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->closeDrawer(Z)V

    .line 4453
    return-void
.end method

.method private closeDrawer(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/4 v2, 0x1

    .line 4463
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4464
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-eqz v0, :cond_0

    .line 4465
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    .line 4467
    :cond_0
    if-eqz p1, :cond_3

    .line 4468
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->animateClose()V

    .line 4472
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4473
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4475
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->updateWallpaperVisibility(Z)V

    .line 4476
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->updateFusionVisibility(Z)V

    .line 4479
    :cond_2
    return-void

    .line 4470
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->close()V

    goto :goto_0
.end method

.method private declared-synchronized createListAdapter()V
    .locals 2

    .prologue
    .line 4527
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mOnConfigChangedReloading:Z

    if-eqz v0, :cond_1

    .line 4528
    :cond_0
    new-instance v0, Lcom/htc/launcher/AddListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/htc/launcher/AddListAdapter;-><init>(Lcom/htc/launcher/Launcher;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4531
    :cond_1
    monitor-exit p0

    return-void

    .line 4527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createScenePreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 41
    .parameter "screenCache"
    .parameter "buttonBarCache"

    .prologue
    .line 8099
    sget-boolean v37, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v37, :cond_0

    const-string v37, "Rosie"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "createScenePreview: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8102
    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v37

    if-nez v37, :cond_5

    .line 8103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_4

    const/4 v10, 0x1

    .line 8109
    .local v10, isPortrait:Z
    :goto_0
    if-eqz v10, :cond_6

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenShortAxisLength()I

    move-result v30

    .line 8111
    .local v30, screenWidth:I
    :goto_1
    if-eqz v10, :cond_7

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenLongAxisLength()I

    move-result v29

    .line 8115
    .local v29, screenHeight:I
    :goto_2
    if-eqz v10, :cond_8

    .line 8116
    const-string v28, "/data/data/com.htc.launcher/files/screen_cache.png"

    .line 8117
    .local v28, screenCacheFileName:Ljava/lang/String;
    const-string v31, "scene_preview_port_invalidate"

    .line 8124
    .local v31, sharedPreferencesKeyPreviewInvalidate:Ljava/lang/String;
    :goto_3
    invoke-static {v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScenePreviewPath(Z)Ljava/lang/String;

    move-result-object v27

    .line 8125
    .local v27, sceneFileName:Ljava/lang/String;
    const/4 v11, 0x1

    .line 8126
    .local v11, isPreviewInvalidate:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 8129
    .local v32, startTime:J
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v37

    if-eqz v37, :cond_9

    .line 8130
    :cond_1
    sget-boolean v37, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v37, :cond_2

    const-string v37, "Rosie"

    const-string v38, "null screen cache!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8132
    :cond_2
    :try_start_0
    invoke-static/range {v28 .. v28}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 8137
    :goto_4
    if-nez p1, :cond_9

    .line 8138
    sget-boolean v37, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v37, :cond_3

    const-string v37, "Rosie"

    const-string v38, "no screen cache file found"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8269
    .end local v10           #isPortrait:Z
    .end local v11           #isPreviewInvalidate:Z
    .end local v27           #sceneFileName:Ljava/lang/String;
    .end local v28           #screenCacheFileName:Ljava/lang/String;
    .end local v29           #screenHeight:I
    .end local v30           #screenWidth:I
    .end local v31           #sharedPreferencesKeyPreviewInvalidate:Ljava/lang/String;
    .end local v32           #startTime:J
    :cond_3
    :goto_5
    return-void

    .line 8103
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 8105
    :cond_5
    const-string v37, "Rosie"

    const-string v38, "screenCache is null or is recycled, we cannot createScenePreview"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8109
    .restart local v10       #isPortrait:Z
    :cond_6
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenLongAxisLength()I

    move-result v30

    goto :goto_1

    .line 8111
    .restart local v30       #screenWidth:I
    :cond_7
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenShortAxisLength()I

    move-result v29

    goto :goto_2

    .line 8119
    .restart local v29       #screenHeight:I
    :cond_8
    const-string v28, "/data/data/com.htc.launcher/files/screen_cache_land.png"

    .line 8120
    .restart local v28       #screenCacheFileName:Ljava/lang/String;
    const-string v31, "scene_preview_land_invalidate"

    .restart local v31       #sharedPreferencesKeyPreviewInvalidate:Ljava/lang/String;
    goto :goto_3

    .line 8133
    .restart local v11       #isPreviewInvalidate:Z
    .restart local v27       #sceneFileName:Ljava/lang/String;
    .restart local v32       #startTime:J
    :catch_0
    move-exception v6

    .line 8134
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 8144
    .end local v6           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 8145
    .local v22, res:Landroid/content/res/Resources;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 8146
    .local v13, paint:Landroid/graphics/Paint;
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 8148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/Launcher;->mScenePreviewHeight:F

    move/from16 v37, v0

    const/16 v38, 0x0

    cmpl-float v37, v37, v38

    if-eqz v37, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/Launcher;->mScenePreviewWidth:F

    move/from16 v37, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v38, 0x0

    cmpl-float v37, v37, v38

    if-nez v37, :cond_b

    .line 8151
    :cond_a
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    const-string v38, "com.htc.home.personalize"

    invoke-virtual/range {v37 .. v38}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v23

    .line 8152
    .local v23, resources:Landroid/content/res/Resources;
    const-string v37, "picker_item_height"

    const-string v38, "dimen"

    const-string v39, "com.htc.home.personalize"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 8153
    .local v9, heightId:I
    const-string v37, "picker_item_width"

    const-string v38, "dimen"

    const-string v39, "com.htc.home.personalize"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v36

    .line 8154
    .local v36, widthId:I
    if-eqz v10, :cond_c

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v37

    :goto_6
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/Launcher;->mScenePreviewHeight:F

    .line 8155
    if-eqz v10, :cond_d

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v37

    :goto_7
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/Launcher;->mScenePreviewWidth:F

    .line 8156
    sget-boolean v37, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v37, :cond_b

    const-string v37, "Rosie"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "FROM HOME_PERSONALIZE(ScenePreviewWidth, ScenePreviewHeight) = ("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/Launcher;->mScenePreviewWidth:F

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/Launcher;->mScenePreviewHeight:F

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 8171
    .end local v9           #heightId:I
    .end local v23           #resources:Landroid/content/res/Resources;
    .end local v36           #widthId:I
    :cond_b
    :goto_8
    :try_start_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/launcher/Launcher;->mScenePreviewWidth:F

    .line 8172
    .local v15, panelWidth:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/launcher/Launcher;->mScenePreviewHeight:F

    .line 8174
    .local v14, panelHeight:F
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v25, v15, v37

    .line 8175
    .local v25, scaleX:F
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v26, v14, v37

    .line 8178
    .local v26, scaleY:F
    float-to-int v0, v15

    move/from16 v37, v0

    float-to-int v0, v14

    move/from16 v38, v0

    sget-object v39, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v37 .. v39}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 8180
    .local v17, previewBitmap:Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8183
    .local v18, previewCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8190
    const v37, 0x7f0200a4

    move-object/from16 v0, v22

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    check-cast v37, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v37

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v34, v0

    .line 8193
    .local v34, statusBar:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v34 .. v34}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v35

    .line 8194
    .local v35, statusBarBitmap:Landroid/graphics/Bitmap;
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v19, v37, v38

    .line 8195
    .local v19, ratio:F
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 8196
    .local v24, saveState:I
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8197
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 8198
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 8201
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 8202
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v20, v37, v38

    .line 8203
    .local v20, rationX:F
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v21, v37, v38

    .line 8204
    .local v21, rationY:F
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8205
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 8206
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 8210
    const/16 v37, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    sub-int v38, v29, v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 8223
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v37

    invoke-static/range {v37 .. v37}, Landroid/os/Process;->getThreadPriority(I)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    .line 8225
    .local v5, currentPriority:I
    const/16 v37, -0x4

    :try_start_4
    invoke-static/range {v37 .. v37}, Landroid/os/Process;->setThreadPriority(I)V

    .line 8227
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 8228
    .local v12, out:Ljava/io/FileOutputStream;
    sget-object v37, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v38, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 8229
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 8230
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 8231
    const/16 v37, 0x1a4

    const/16 v38, -0x1

    const/16 v39, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8234
    const-string v37, "Rosie"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "createScenePreview: update scene preview path.  isPortrait="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " path="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8235
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 8236
    .local v4, cellLayoutCache:Ljava/io/FileOutputStream;
    sget-object v37, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v38, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 8237
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 8238
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 8240
    const/16 v37, 0x1a4

    const/16 v38, -0x1

    const/16 v39, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 8247
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 8248
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 8251
    .end local v4           #cellLayoutCache:Ljava/io/FileOutputStream;
    .end local v12           #out:Ljava/io/FileOutputStream;
    :goto_9
    const/4 v11, 0x0

    .line 8257
    .end local v5           #currentPriority:I
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #panelHeight:F
    .end local v15           #panelWidth:F
    .end local v17           #previewBitmap:Landroid/graphics/Bitmap;
    .end local v18           #previewCanvas:Landroid/graphics/Canvas;
    .end local v19           #ratio:F
    .end local v20           #rationX:F
    .end local v21           #rationY:F
    .end local v22           #res:Landroid/content/res/Resources;
    .end local v24           #saveState:I
    .end local v25           #scaleX:F
    .end local v26           #scaleY:F
    .end local v34           #statusBar:Landroid/graphics/drawable/BitmapDrawable;
    .end local v35           #statusBarBitmap:Landroid/graphics/Bitmap;
    :goto_a
    const-string v37, "launcher"

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 8259
    .local v16, preferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 8260
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, v31

    invoke-interface {v7, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8262
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8264
    if-nez v11, :cond_3

    .line 8265
    sget-boolean v37, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v37, :cond_3

    .line 8266
    const-string v37, "Rosie"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "create scene preview takes "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    sub-long v39, v39, v32

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ms"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 8154
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #preferences:Landroid/content/SharedPreferences;
    .restart local v9       #heightId:I
    .restart local v13       #paint:Landroid/graphics/Paint;
    .restart local v22       #res:Landroid/content/res/Resources;
    .restart local v23       #resources:Landroid/content/res/Resources;
    .restart local v36       #widthId:I
    :cond_c
    :try_start_6
    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v37

    goto/16 :goto_6

    .line 8155
    :cond_d
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v37

    goto/16 :goto_7

    .line 8157
    .end local v9           #heightId:I
    .end local v23           #resources:Landroid/content/res/Resources;
    .end local v36           #widthId:I
    :catch_1
    move-exception v6

    .line 8158
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 8159
    const v37, 0x7f0a00a5

    move-object/from16 v0, v22

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/Launcher;->mScenePreviewHeight:F

    .line 8160
    const v37, 0x7f0a00a4

    move-object/from16 v0, v22

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/Launcher;->mScenePreviewWidth:F

    .line 8161
    sget-boolean v37, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v37, :cond_b

    const-string v37, "Rosie"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "FROM RESOURCE(ScenePreviewWidth, ScenePreviewHeight) = ("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/Launcher;->mScenePreviewWidth:F

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/Launcher;->mScenePreviewHeight:F

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_8

    .line 8252
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v22           #res:Landroid/content/res/Resources;
    :catch_2
    move-exception v8

    .line 8253
    .local v8, ex:Ljava/lang/RuntimeException;
    const-string v37, "Rosie"

    const-string v38, "draw failed"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8254
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_a

    .line 8162
    .end local v8           #ex:Ljava/lang/RuntimeException;
    .restart local v13       #paint:Landroid/graphics/Paint;
    .restart local v22       #res:Landroid/content/res/Resources;
    :catch_3
    move-exception v6

    .line 8163
    .local v6, e:Ljava/lang/RuntimeException;
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 8164
    const v37, 0x7f0a00a5

    move-object/from16 v0, v22

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/Launcher;->mScenePreviewHeight:F

    .line 8165
    const v37, 0x7f0a00a4

    move-object/from16 v0, v22

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/Launcher;->mScenePreviewWidth:F

    .line 8166
    sget-boolean v37, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v37, :cond_b

    const-string v37, "Rosie"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "FROM RESOURCE(ScenePreviewWidth, ScenePreviewHeight) = ("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/Launcher;->mScenePreviewWidth:F

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/Launcher;->mScenePreviewHeight:F

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_8

    .line 8243
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v5       #currentPriority:I
    .restart local v14       #panelHeight:F
    .restart local v15       #panelWidth:F
    .restart local v17       #previewBitmap:Landroid/graphics/Bitmap;
    .restart local v18       #previewCanvas:Landroid/graphics/Canvas;
    .restart local v19       #ratio:F
    .restart local v20       #rationX:F
    .restart local v21       #rationY:F
    .restart local v24       #saveState:I
    .restart local v25       #scaleX:F
    .restart local v26       #scaleY:F
    .restart local v34       #statusBar:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v35       #statusBarBitmap:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v6

    .line 8244
    .local v6, e:Ljava/lang/Exception;
    :try_start_9
    const-string v37, "Rosie"

    const-string v38, "write failed"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8245
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 8247
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 8248
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_9

    .line 8247
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v37

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 8248
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    throw v37
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "pathName"

    .prologue
    const/4 v2, 0x0

    .line 6352
    const/4 v1, 0x0

    .line 6354
    .local v1, image:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 6365
    :goto_1
    return-object v2

    .line 6355
    :catch_0
    move-exception v0

    .line 6356
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 6357
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 6358
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 6360
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 6361
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1
.end method

.method private dumpMemory()V
    .locals 5

    .prologue
    .line 1838
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_2

    .line 1839
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 1840
    .local v0, runtime:Ljava/lang/Runtime;
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "RosieMEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VM free memory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_0
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "RosieMEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VM max memory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_1
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_2

    const-string v1, "RosieMEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VM total memory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    .end local v0           #runtime:Ljava/lang/Runtime;
    :cond_2
    return-void
.end method

.method private enableAppsSearch(ZLjava/lang/String;)V
    .locals 9
    .parameter "enable"
    .parameter "input"

    .prologue
    const v8, 0x7f070003

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3932
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mAllAppsBar:Landroid/view/View;

    if-nez v4, :cond_0

    .line 3986
    :goto_0
    return-void

    .line 3937
    :cond_0
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 3938
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_3

    .line 3940
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v4, v8}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3941
    .local v0, allappsView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3942
    .local v3, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3943
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3945
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3946
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->SearchBar_UpdateOrientation()V

    .line 3947
    :cond_1
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mAllAppsBar:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3949
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mSearchText:Landroid/widget/AutoCompleteTextView;

    .line 3950
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3951
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3952
    iput-object v1, p0, Lcom/htc/launcher/Launcher;->mAllAppsBarEditText:Landroid/widget/EditText;

    .line 3953
    if-eqz p2, :cond_2

    .line 3954
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3955
    invoke-virtual {v1, v7, v7}, Landroid/widget/EditText;->setSelection(II)V

    .line 3957
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->search(Ljava/lang/String;)V

    .line 3958
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/htc/launcher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 3962
    :cond_2
    new-instance v4, Lcom/htc/launcher/Launcher$11;

    invoke-direct {v4, p0, v2, v1}, Lcom/htc/launcher/Launcher$11;-><init>(Lcom/htc/launcher/Launcher;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    const-wide/16 v5, 0x190

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3985
    .end local v1           #edit:Landroid/widget/EditText;
    :goto_1
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    goto :goto_0

    .line 3971
    .end local v0           #allappsView:Landroid/view/View;
    .end local v3           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mSearchText:Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_4

    .line 3972
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mSearchText:Landroid/widget/AutoCompleteTextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3973
    if-eqz v2, :cond_4

    .line 3974
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mSearchText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3977
    :cond_4
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mAllAppsBar:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3979
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v4, v8}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3980
    .restart local v0       #allappsView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3981
    .restart local v3       #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3982
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private enableTilt(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 8653
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mTiltEnabled:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mTiltSettingEnable:Z

    if-eq v0, p1, :cond_1

    .line 8679
    :cond_0
    :goto_0
    return-void

    .line 8655
    :cond_1
    if-eqz p1, :cond_5

    .line 8656
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_3

    .line 8657
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    .line 8658
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "Rosie"

    const-string v1, "new a SensorManager for enableTilt"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8659
    :cond_2
    const/16 v0, 0xa

    const-string v1, "Rosie"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->showStack(ILjava/lang/String;)Ljava/lang/String;

    .line 8660
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 8663
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    .line 8664
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltSensor:Landroid/hardware/Sensor;

    .line 8665
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 8669
    :cond_4
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mTiltSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    .line 8678
    :goto_1
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mTiltEnabled:Z

    goto :goto_0

    .line 8672
    :cond_5
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 8674
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mTiltSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 8675
    iput-object v4, p0, Lcom/htc/launcher/Launcher;->mTiltSensor:Landroid/hardware/Sensor;

    .line 8676
    iput-object v4, p0, Lcom/htc/launcher/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    goto :goto_1
.end method

.method private findCellInfo(Landroid/view/View;)Lcom/htc/launcher/CellInfo;
    .locals 6
    .parameter "v"

    .prologue
    .line 5173
    :goto_0
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p1, Lcom/htc/launcher/CellLayout;

    if-nez v1, :cond_0

    .line 5174
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local p1
    goto :goto_0

    .line 5183
    .end local p1
    :catch_0
    move-exception v0

    .line 5184
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Rosie"

    const-string v2, "findCellInfo exception:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5185
    const/4 v1, 0x0

    .line 5188
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-object v1

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellInfo;

    goto :goto_1
.end method

.method private findEmptyScreen(II)I
    .locals 4
    .parameter "from"
    .parameter "inc"

    .prologue
    .line 4718
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4719
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3, v1}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4720
    .local v2, temp:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/launcher/CellLayout;

    if-nez v3, :cond_1

    .line 4718
    :cond_0
    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 4722
    check-cast v0, Lcom/htc/launcher/CellLayout;

    .line 4723
    .local v0, cell:Lcom/htc/launcher/CellLayout;
    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 4727
    .end local v0           #cell:Lcom/htc/launcher/CellLayout;
    .end local v1           #i:I
    .end local v2           #temp:Landroid/view/View;
    :goto_1
    return v1

    .restart local v1       #i:I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findHighestPriorityTip(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/Launcher$ShortcutTip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tips:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/Launcher$ShortcutTip;>;"
    const/4 v11, 0x0

    .line 2993
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2995
    .local v5, sameHighestPriTips:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/Launcher$ShortcutTip;>;"
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Launcher$ShortcutTip;

    .line 2997
    .local v0, highestItem:Lcom/htc/launcher/Launcher$ShortcutTip;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/Launcher$ShortcutTip;

    .line 2998
    .local v6, tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    invoke-virtual {v6}, Lcom/htc/launcher/Launcher$ShortcutTip;->getPriority()I

    move-result v7

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$ShortcutTip;->getPriority()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 2999
    move-object v0, v6

    .line 3000
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3001
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3003
    :cond_1
    invoke-virtual {v6}, Lcom/htc/launcher/Launcher$ShortcutTip;->getPriority()I

    move-result v7

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$ShortcutTip;->getPriority()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 3004
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3008
    .end local v6           #tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    :cond_2
    sget-boolean v7, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v7, :cond_3

    .line 3009
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/Launcher$ShortcutTip;

    .line 3010
    .restart local v6       #tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    const-string v7, "Rosie"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "same high prirority & on screen tip: id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher$ShortcutTip;->getItemId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/htc/launcher/Launcher$ShortcutTip;->getPriority()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3012
    .end local v6           #tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 3013
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/Launcher$ShortcutTip;

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher$ShortcutTip;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/launcher/Launcher;->startAppTip(Lcom/htc/launcher/ItemInfo;)V

    .line 3031
    :goto_2
    return-void

    .line 3016
    :cond_4
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/Launcher$ShortcutTip;

    .line 3017
    .local v4, lastShow:Lcom/htc/launcher/Launcher$ShortcutTip;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/Launcher$ShortcutTip;

    .line 3018
    .restart local v6       #tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    invoke-virtual {v6}, Lcom/htc/launcher/Launcher$ShortcutTip;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 3019
    .local v2, info:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v4}, Lcom/htc/launcher/Launcher$ShortcutTip;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    .line 3020
    .local v3, last:Lcom/htc/launcher/ItemInfo;
    iget v7, v2, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v8, v3, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-ge v7, v8, :cond_6

    .line 3021
    move-object v4, v6

    goto :goto_3

    .line 3022
    :cond_6
    iget v7, v2, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v8, v3, Lcom/htc/launcher/ItemInfo;->cellY:I

    if-ne v7, v8, :cond_5

    iget v7, v2, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ItemInfo;->cellX:I

    if-ge v7, v8, :cond_5

    .line 3024
    move-object v4, v6

    goto :goto_3

    .line 3027
    .end local v2           #info:Lcom/htc/launcher/ItemInfo;
    .end local v3           #last:Lcom/htc/launcher/ItemInfo;
    .end local v6           #tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    :cond_7
    sget-boolean v7, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v7, :cond_8

    const-string v7, "Rosie"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last show tip: id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher$ShortcutTip;->getItemId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cellX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher$ShortcutTip;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    iget v9, v9, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cellY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/htc/launcher/Launcher$ShortcutTip;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v9

    iget v9, v9, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    :cond_8
    invoke-virtual {v4}, Lcom/htc/launcher/Launcher$ShortcutTip;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/launcher/Launcher;->startAppTip(Lcom/htc/launcher/ItemInfo;)V

    goto :goto_2
.end method

.method private finishBindDesktopAppWidgets()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4989
    sget-boolean v7, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v7, :cond_0

    const-string v7, "Rosie"

    const-string v8, "finishBindDesktopAppWidgets"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4995
    :cond_0
    const-string v7, "launcher"

    invoke-virtual {p0, v7, v10}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4996
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/htc/launcher/custom/CustomResourceUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/htc/launcher/custom/CustomResourceUtil;->getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4997
    .local v1, currentSkin:Ljava/lang/String;
    if-eqz v1, :cond_9

    const-string v7, "current_skin_name"

    invoke-interface {v4, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 4998
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v6

    .line 4999
    .local v6, wm:Lcom/htc/launcher/WallpaperManager;
    invoke-virtual {v6}, Lcom/htc/launcher/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v5

    .line 5001
    .local v5, wallpaperInfo:Landroid/app/WallpaperInfo;
    if-nez v5, :cond_7

    .line 5002
    sget-boolean v7, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v7, :cond_1

    .line 5003
    const-string v7, "Rosie"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "skin changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and apply static wallpaper"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    :cond_1
    invoke-static {p0}, Lcom/htc/launcher/Launcher;->saveHomeWallpaper(Landroid/content/Context;)V

    .line 5024
    :cond_2
    :goto_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 5025
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "current_skin_name"

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5026
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5033
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #wallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v6           #wm:Lcom/htc/launcher/WallpaperManager;
    :cond_3
    :goto_1
    iget-boolean v7, p0, Lcom/htc/launcher/Launcher;->mIsWorkspaceChanging:Z

    if-eqz v7, :cond_4

    .line 5034
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->loadHomeWallpaper()V

    .line 5043
    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsWorkspaceChanging:Z

    .line 5045
    iget-object v7, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v7}, Lcom/htc/launcher/Workspace;->unlock()V

    .line 5047
    :cond_4
    iget v7, p0, Lcom/htc/launcher/Launcher;->mFinishLoading:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/launcher/Launcher;->mFinishLoading:I

    .line 5048
    iget v7, p0, Lcom/htc/launcher/Launcher;->mFinishLoading:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_6

    .line 5049
    sget-boolean v7, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v7, :cond_5

    const-string v7, "Rosie"

    const-string v8, "[APTR_TEST, rider_s_351] finishBindDesktopAppWidgets finishLoading()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    :cond_5
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->finishLoading()V

    .line 5066
    :cond_6
    return-void

    .line 5007
    .restart local v5       #wallpaperInfo:Landroid/app/WallpaperInfo;
    .restart local v6       #wm:Lcom/htc/launcher/WallpaperManager;
    :cond_7
    sget-boolean v7, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v7, :cond_8

    const-string v7, "Rosie"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "skin changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and apply live wallpaper "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    :cond_8
    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 5010
    .local v0, componentName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 5011
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v3

    .line 5014
    .local v3, manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 5015
    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v0, v9}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateSceneWallpaper(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5018
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 5027
    .end local v0           #componentName:Ljava/lang/String;
    .end local v3           #manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    .end local v5           #wallpaperInfo:Landroid/app/WallpaperInfo;
    .end local v6           #wm:Lcom/htc/launcher/WallpaperManager;
    :cond_9
    const-string v7, "current_skin_name"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 5028
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 5029
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "current_skin_name"

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5030
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1
.end method

.method private finishBindDesktopHtcWidgets()V
    .locals 1

    .prologue
    .line 6858
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->flushPendingAddInScreens()V

    .line 6860
    new-instance v0, Lcom/htc/launcher/Launcher$23;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$23;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->runInNextEvLoop(Ljava/lang/Runnable;)V

    .line 6865
    return-void
.end method

.method private finishBindDesktopItems()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4789
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Rosie"

    const-string v4, "[APTR_TEST, rider_s_351] finishBindDesktopItems()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 4793
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->restoreFocus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4795
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 4813
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v4, "launcher.all_apps_folder"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4815
    .local v0, allApps:Z
    if-eqz v0, :cond_2

    .line 4816
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v4, "launcher.sliding_all_apps"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4817
    .local v1, drawerMode:I
    packed-switch v1, :pswitch_data_0

    .line 4826
    :goto_0
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3, v6}, Lcom/htc/launcher/widget/SlidingDrawer;->setVisibility(I)V

    .line 4827
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/SlidingDrawer;->open()V

    .line 4828
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/SlidingDrawer;->requestFocus()Z

    .line 4831
    .end local v1           #drawerMode:I
    :cond_2
    iput-object v7, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 4834
    .end local v0           #allApps:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 4839
    :try_start_0
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v3}, Lcom/htc/widget/CarouselInternalActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4846
    :goto_1
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->restoreFocus()Z

    .line 4847
    iput-object v7, p0, Lcom/htc/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 4850
    :cond_4
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/SlidingDrawer;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4851
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/SlidingDrawer;->requestFocus()Z

    .line 4854
    :cond_5
    iput-boolean v6, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    .line 4857
    return-void

    .line 4819
    .restart local v0       #allApps:Z
    .restart local v1       #drawerMode:I
    :pswitch_0
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    sget v4, Lcom/htc/launcher/Launcher;->mProgramListId:I

    invoke-virtual {v3, v4}, Lcom/htc/launcher/AllAppsView;->changeDrawerContentById(I)V

    goto :goto_0

    .line 4822
    :pswitch_1
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const v4, 0x7f070005

    invoke-virtual {v3, v4}, Lcom/htc/launcher/AllAppsView;->changeDrawerContentById(I)V

    goto :goto_0

    .line 4840
    .end local v0           #allApps:Z
    .end local v1           #drawerMode:I
    :catch_0
    move-exception v2

    .line 4841
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher.finishBindDesktopItems: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/htc/launcher/TFC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4817
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private freezeTilt(Z)V
    .locals 0
    .parameter "freeze"

    .prologue
    .line 8685
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mFreezeTilt:Z

    .line 8686
    return-void
.end method

.method public static getCurrentLiveWallpaperFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "serviceName"

    .prologue
    .line 8281
    const-string v2, "%s.png"

    invoke-static {v2}, Lcom/htc/launcher/WidgetPackageManager;->manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8283
    .local v0, liveWallpaperFormat:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8285
    .local v1, staticWallpaperFileName:Ljava/lang/String;
    return-object v1
.end method

.method public static declared-synchronized getDefaultAppWidgetHostInstance(Landroid/content/Context;)Lcom/htc/launcher/LauncherAppWidgetHost;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 855
    const-class v1, Lcom/htc/launcher/Launcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x270f

    invoke-direct {v0, v2, v3}, Lcom/htc/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    .line 858
    :cond_0
    sget-object v0, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getDropTargetsOfDropBar()V
    .locals 4

    .prologue
    .line 8942
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getDropTargets()Ljava/util/List;

    move-result-object v0

    .line 8943
    .local v0, fxDropTargets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/DropTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/DropTarget;

    .line 8944
    .local v2, t:Lcom/htc/launcher/DropTarget;
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v3, v2}, Lcom/htc/launcher/DragLayer;->addDropTarget(Lcom/htc/launcher/DropTarget;)V

    goto :goto_0

    .line 8946
    .end local v2           #t:Lcom/htc/launcher/DropTarget;
    :cond_0
    return-void
.end method

.method public static getFxPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8923
    sget-object v0, Lcom/htc/launcher/Launcher;->sFxPathFinder:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;->getPath()Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFxSceneManager()Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;
    .locals 1

    .prologue
    .line 8927
    sget-object v0, Lcom/htc/launcher/Launcher;->sFxSceneManager:Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    return-object v0
.end method

.method private getHardwareKeySmartSearchIntent(I)Landroid/content/Intent;
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 6926
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6927
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.HtcDialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6929
    const-string v1, "HardwareKeySmartSearch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6930
    const-string v1, "HardwareKeySmartSearchKeyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6931
    return-object v0
.end method

.method public static getModel()Lcom/htc/launcher/LauncherModel;
    .locals 1

    .prologue
    .line 5271
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    return-object v0
.end method

.method private getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;
    .locals 1

    .prologue
    .line 8272
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    if-nez v0, :cond_0

    .line 8273
    invoke-static {p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    .line 8274
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/Launcher;->mCurrentSceneId:I

    .line 8276
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;

    return-object v0
.end method

.method public static getScreen()I
    .locals 2

    .prologue
    .line 957
    sget-object v1, Lcom/htc/launcher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 958
    :try_start_0
    sget v0, Lcom/htc/launcher/Launcher;->sScreen:I

    monitor-exit v1

    return v0

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSearchEngine()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3683
    const-string v3, "launcher"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3684
    .local v1, preferences:Landroid/content/SharedPreferences;
    sget-object v3, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCH_ENGINE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3685
    .local v2, ret:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 3686
    :cond_0
    const-string v3, "Rosie"

    const-string v4, "getSearchEngine: no data in local preferences, sync with system settings"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCH_ENGINE:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3690
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 3693
    :cond_1
    const-string v3, "Rosie"

    const-string v4, "getSearchEngine: no data in settings! fall back to default"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    sget-object v2, Lcom/htc/launcher/search/SearchPickerActivity;->default_Search_Engine:Ljava/lang/String;

    .line 3695
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCH_ENGINE:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3699
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3700
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCH_ENGINE:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3701
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3704
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    return-object v2
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7975
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDirectionalKey(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 4245
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4248
    .local v0, keyCode:I
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 4249
    .local v2, view:Landroid/view/View;
    instance-of v5, v2, Lcom/htc/launcher/CellLayout;

    if-eqz v5, :cond_0

    .line 4250
    check-cast v2, Lcom/htc/launcher/CellLayout;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2}, Lcom/htc/launcher/CellLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 4251
    .local v3, widgetView:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 4252
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/launcher/WidgetProxy;

    if-eqz v5, :cond_0

    .line 4254
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/WidgetProxy;

    .line 4255
    .local v1, proxy:Lcom/htc/launcher/WidgetProxy;
    invoke-virtual {v1}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/home/WidgetViewInterface;->isHandleDirectionalKey()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4256
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 4275
    .end local v1           #proxy:Lcom/htc/launcher/WidgetProxy;
    .end local v3           #widgetView:Landroid/view/View;
    :goto_0
    return v4

    .line 4264
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 4275
    const/4 v4, 0x0

    goto :goto_0

    .line 4266
    :pswitch_0
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_1

    const-string v5, "Steven"

    const-string v6, "(3425) LeftKey received"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->scrollLeft()V

    goto :goto_0

    .line 4270
    :pswitch_1
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_2

    const-string v5, "Steven"

    const-string v6, "(3429) LeftKey received"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4271
    :cond_2
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->scrollRight()V

    goto :goto_0

    .line 4264
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleOrientationChangedPendingTask()V
    .locals 7

    .prologue
    .line 2774
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "Rosie"

    const-string v3, "handleOrientationChangedPendingTask %d pending tasks"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mOrientationChangedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mOrientationChangedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 2777
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2779
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mOrientationChangedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2780
    return-void
.end method

.method private hardwareKeySmartGoogleSearch(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 6906
    const/4 v0, 0x0

    .line 6907
    .local v0, bHandled:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x78

    if-ne v1, v2, :cond_3

    .line 6910
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1d

    if-gt v1, p1, :cond_0

    const/16 v1, 0x36

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x37

    if-ne v1, p1, :cond_4

    .line 6913
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->onKeyDownToRequestSearch(Ljava/lang/String;)V

    .line 6920
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 6922
    :cond_3
    return v0

    .line 6914
    :cond_4
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x38

    if-ne v1, p1, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->onKeyDownToRequestSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hardwareKeySmartSearchintDialer(I)Z
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 6872
    const/4 v0, 0x0

    .line 6873
    .local v0, bHandled:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x60

    if-ne v2, v3, :cond_3

    .line 6876
    const/4 v1, 0x0

    .line 6877
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x1d

    if-gt v2, p1, :cond_0

    const/16 v2, 0x36

    if-le p1, v2, :cond_1

    :cond_0
    const/16 v2, 0x37

    if-ne v2, p1, :cond_4

    .line 6880
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->getHardwareKeySmartSearchIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 6887
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 6888
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6890
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6894
    :goto_1
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6895
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 6896
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6897
    const/4 v0, 0x1

    .line 6900
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    return v0

    .line 6881
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_4
    const/16 v2, 0x38

    if-ne v2, p1, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 6885
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->getHardwareKeySmartSearchIntent(I)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 6891
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private hideHandle(Z)V
    .locals 9
    .parameter "hide"

    .prologue
    const v8, 0x7f070006

    const v7, 0x7f070004

    const v6, 0x7f070003

    const v4, 0x7f0a0013

    const/4 v5, 0x0

    .line 9072
    if-eqz p1, :cond_0

    .line 9074
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mHandleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 9075
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9076
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mHandleView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9079
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3, v7}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9080
    .local v0, allappsView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9083
    .local v2, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9084
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9087
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3, v6}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9091
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9092
    .restart local v2       #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9093
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9096
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->allapps_shadowhandle_text:Lcom/htc/widget/HeaderBarText;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v4}, Lcom/htc/launcher/AllAppsView;->getTitleText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 9097
    invoke-virtual {p0, v8}, Lcom/htc/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 9125
    :goto_0
    return-void

    .line 9103
    .end local v0           #allappsView:Landroid/view/View;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mHandleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 9104
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9105
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mHandleView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9108
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3, v7}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9109
    .restart local v0       #allappsView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9110
    .restart local v2       #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9111
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9114
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3, v6}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9116
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9117
    .restart local v2       #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9118
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9122
    invoke-virtual {p0, v8}, Lcom/htc/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideTutorialNotice()V
    .locals 1

    .prologue
    .line 4668
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v0, :cond_0

    .line 4669
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->hideTipBubble()V

    .line 4692
    :cond_0
    return-void
.end method

.method private initShortcutTip()V
    .locals 2

    .prologue
    .line 916
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/launcher/Launcher;->shortcutTipPriority:Ljava/util/ArrayList;

    .line 918
    new-instance v0, Lcom/htc/launcher/Launcher$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$1;-><init>(Lcom/htc/launcher/Launcher;)V

    .line 953
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 954
    return-void
.end method

.method private initTutorialNotice()V
    .locals 6

    .prologue
    .line 891
    const-string v3, "launcher"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 892
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 894
    .local v0, configuration:Landroid/content/res/Configuration;
    const-string v3, "tutorial_notice"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    .line 896
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTutorialNotice() , mIsShowTutorialNotice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    if-eqz v3, :cond_1

    .line 900
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->showTutorialNotice()V

    .line 904
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 905
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "locale"

    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 906
    const-string v3, "mcc"

    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 907
    const-string v3, "mnc"

    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 909
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_1
    return-void

    .line 902
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->hideTutorialNotice()V

    goto :goto_0

    .line 910
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static installShortcut(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 2805
    sget-object v3, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2819
    :goto_0
    return-void

    .line 2808
    :cond_0
    sget-object v3, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Launcher;

    .line 2811
    .local v0, launcher:Lcom/htc/launcher/Launcher;
    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_1

    :goto_1
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2812
    iget-object v2, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/htc/launcher/Launcher$AddShortcutRunnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0, p0}, Lcom/htc/launcher/Launcher$AddShortcutRunnable;-><init>(Lcom/htc/launcher/Launcher;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2811
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 2814
    :cond_2
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "Rosie"

    const-string v3, "installShortcut when orientation changed"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    :cond_3
    new-instance v1, Lcom/htc/launcher/Launcher$AddShortcutRunnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p0}, Lcom/htc/launcher/Launcher$AddShortcutRunnable;-><init>(Lcom/htc/launcher/Launcher;Landroid/content/Intent;)V

    .line 2817
    .local v1, runnable:Lcom/htc/launcher/Launcher$AddShortcutRunnable;
    iget-object v2, v0, Lcom/htc/launcher/Launcher;->mOrientationChangedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isEmptyCell(Lcom/htc/launcher/CellInfo;)Z
    .locals 4
    .parameter "cellInfo"

    .prologue
    .line 5197
    const/4 v0, 0x1

    .line 5198
    .local v0, onEmptySpace:Z
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v1

    .line 5199
    .local v1, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-virtual {v1, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->findItemInCell(Lcom/htc/launcher/CellInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 5200
    :goto_0
    return v0

    .line 5199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTutorialView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 5157
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5159
    .local v0, checkStr:Ljava/lang/String;
    const-string v1, "tutorial_notice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5160
    const/4 v1, 0x1

    .line 5163
    .end local v0           #checkStr:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidCellInfo(Lcom/htc/launcher/CellInfo;)Z
    .locals 1
    .parameter "cellInfo"

    .prologue
    .line 5192
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Workspace;->isValidCellInfo(Lcom/htc/launcher/CellInfo;)Z

    move-result v0

    return v0
.end method

.method private loadLocaleAndSimConfigs()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 9015
    const-string v1, "launcher"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 9017
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "locale"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/Launcher;->mCurrentLocale:Ljava/lang/String;

    .line 9018
    const-string v1, "mcc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/Launcher;->mCurrentMcc:I

    .line 9019
    const-string v1, "mnc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/Launcher;->mCurrentMnc:I

    .line 9021
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Rosie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load Locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mCurrentLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/Launcher;->mCurrentMcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/Launcher;->mCurrentMnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9022
    :cond_0
    return-void
.end method

.method private loadSettings()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 834
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.loadSettings() - enter"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "htc_3d_home_screen"

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mSettingsCursor:Landroid/database/Cursor;

    .line 838
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.loadSettings() - exit"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method private lockOrientation()V
    .locals 0

    .prologue
    .line 7116
    return-void
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 4507
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherAppWidgetHost;->startListening()V

    .line 4509
    :cond_0
    return-void
.end method

.method private onClickTmoPersonalize(Lcom/htc/launcher/CellInfo;)V
    .locals 4
    .parameter "cellInfo"

    .prologue
    .line 7072
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7073
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.framework.activity.personalize.HtcPersonalizeSettingsProxy"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7074
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 7075
    return-void
.end method

.method private onKeyguardOff()V
    .locals 2

    .prologue
    .line 6118
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->isKeyguardOnWhenOnResume:Z

    if-eqz v0, :cond_0

    .line 6124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->isKeyguardOnWhenOnResume:Z

    .line 6126
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/16 v1, 0x32

    invoke-virtual {v0, p0, v1}, Lcom/htc/launcher/WidgetsManager;->onActivityPause(Lcom/htc/launcher/Launcher;I)V

    .line 6128
    invoke-virtual {p0, p0}, Lcom/htc/launcher/Launcher;->onResumeWhenKeyguardOff(Lcom/htc/launcher/Launcher;)V

    .line 6130
    :cond_0
    return-void
.end method

.method private onOpenDrawer()V
    .locals 3

    .prologue
    .line 7080
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isSceneDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7081
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 7082
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController;->stopSlide()V

    .line 7083
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->resetSink()V

    .line 7084
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 7096
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->freezeTilt(Z)V

    .line 7097
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/16 v1, 0x28

    invoke-virtual {v0, p0, v1}, Lcom/htc/launcher/WidgetsManager;->onActivityPause(Lcom/htc/launcher/Launcher;I)V

    .line 7100
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->closeOptionsMenu()V

    .line 7101
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->setVisibility(I)V

    .line 7102
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->requestFocus()Z

    .line 7103
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->animateOpen()V

    .line 7106
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/FunctionBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7107
    return-void

    .line 7087
    :cond_0
    new-instance v0, Lcom/htc/launcher/Launcher$24;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$24;-><init>(Lcom/htc/launcher/Launcher;)V

    const-wide/16 v1, 0x32

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/launcher/Launcher;->runDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private onOrientationChangeEnd()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 8351
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "onOrientationChanged End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8353
    :cond_0
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->isSupportLandscape:Z

    if-eqz v0, :cond_1

    .line 8368
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.htc.android.wallpaper.resume"

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 8370
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/htc/launcher/WallpaperManager;->pauseWallpaper(Landroid/os/IBinder;Z)V

    .line 8380
    :goto_0
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    .line 8382
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v3}, Lcom/htc/launcher/Workspace;->setVisibility(I)V

    .line 8383
    return-void

    .line 8375
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/launcher/Launcher;->mStartOrientation:J

    .line 8376
    sget-object v0, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v0, v3}, Lcom/htc/launcher/OrientationMonitor;->onOrientationChanged(Z)V

    goto :goto_0
.end method

.method private onPickItem(ILandroid/content/Intent;)V
    .locals 8
    .parameter "request"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1184
    sparse-switch p1, :sswitch_data_0

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1186
    :sswitch_0
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v7, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-nez v7, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v5, p0, p2, v6, v3}, Lcom/htc/launcher/DesktopItemController;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    goto :goto_0

    .line 1190
    :sswitch_1
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v7, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-nez v7, :cond_2

    :goto_1
    invoke-virtual {v5, p2, v6, v4}, Lcom/htc/launcher/DesktopItemController;->completeAddShortcut(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    .line 1193
    :sswitch_2
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v3, p2}, Lcom/htc/launcher/DesktopItemController;->addShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 1196
    :sswitch_3
    if-eqz p2, :cond_0

    .line 1197
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v7, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v5, p2, v6, v4}, Lcom/htc/launcher/DesktopItemController;->completeAddShortcut(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_2

    .line 1201
    :sswitch_4
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v3, p2}, Lcom/htc/launcher/DesktopItemController;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1204
    :sswitch_5
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v7, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-nez v7, :cond_4

    :goto_3
    invoke-virtual {v5, p2, v6, v4}, Lcom/htc/launcher/DesktopItemController;->completeAddAppWidget(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_3

    .line 1209
    :sswitch_6
    const-string v4, "item_type"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1210
    .local v1, itemType:I
    const-string v4, "waitForActivityResult"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1212
    .local v2, waitForActivityResult:Z
    if-lez v1, :cond_0

    .line 1213
    const/4 v0, 0x0

    .line 1214
    .local v0, backIntent:Landroid/content/Intent;
    if-eqz v2, :cond_5

    .line 1215
    move-object v0, p2

    .line 1217
    :cond_5
    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->isSupportLandscape:Z

    if-eqz v3, :cond_6

    .line 1218
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->flush()V

    .line 1220
    :cond_6
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    sget-object v4, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/htc/launcher/WidgetPackageManager;->newWidget(ILandroid/content/Context;J)Lcom/htc/launcher/WidgetProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    invoke-virtual {v3, v4, v0, v5}, Lcom/htc/launcher/DesktopItemController;->addWidget(Lcom/htc/launcher/Widget;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;)V

    goto :goto_0

    .line 1228
    .end local v0           #backIntent:Landroid/content/Intent;
    .end local v1           #itemType:I
    .end local v2           #waitForActivityResult:Z
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_7

    :goto_4
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v5

    if-ne v4, v5, :cond_8

    .line 1229
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    invoke-virtual {v4, p2, v5, v3}, Lcom/htc/launcher/DesktopItemController;->addFxWidget(Landroid/content/Intent;Lcom/htc/launcher/CellInfo;Z)V

    goto/16 :goto_0

    :cond_7
    move v4, v3

    .line 1228
    goto :goto_4

    .line 1235
    :cond_8
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_9

    const-string v3, "Rosie"

    const-string v4, "REQUEST_PICK_FXWIDGET when orientation changed"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_9
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mOrientationChangedRunnables:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    invoke-direct {v4, p0, p2, v5}, Lcom/htc/launcher/Launcher$AddFxWidgetRunnable;-><init>(Lcom/htc/launcher/Launcher;Landroid/content/Intent;Lcom/htc/launcher/CellInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1243
    :sswitch_8
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {p0, v4, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 1246
    :sswitch_9
    const/4 v4, 0x2

    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {p0, v4, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 1184
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_0
        0x7 -> :sswitch_2
        0x9 -> :sswitch_4
        0xb -> :sswitch_1
        0xc -> :sswitch_7
        0xd -> :sswitch_8
        0xe -> :sswitch_9
        0x1f4 -> :sswitch_6
    .end sparse-switch
.end method

.method public static declared-synchronized onSceneModified(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 9235
    const-class v3, Lcom/htc/launcher/Launcher;

    monitor-enter v3

    :try_start_0
    const-string v2, "launcher"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 9236
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9237
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "scene_preview_port_invalidate"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 9238
    const-string v2, "scene_preview_land_invalidate"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 9239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9240
    monitor-exit v3

    return-void

    .line 9235
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private onSimChanged(II)V
    .locals 2
    .parameter "newMcc"
    .parameter "newMnc"

    .prologue
    .line 7817
    iput p1, p0, Lcom/htc/launcher/Launcher;->mCurrentMcc:I

    .line 7818
    iput p2, p0, Lcom/htc/launcher/Launcher;->mCurrentMnc:I

    .line 7819
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->saveLocaleAndSimConfigs()V

    .line 7822
    new-instance v0, Lcom/htc/launcher/Launcher$27;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$27;-><init>(Lcom/htc/launcher/Launcher;)V

    .line 7828
    .local v0, thread1:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7831
    new-instance v1, Lcom/htc/launcher/Launcher$28;

    invoke-direct {v1, p0}, Lcom/htc/launcher/Launcher$28;-><init>(Lcom/htc/launcher/Launcher;)V

    .line 7841
    .local v1, thread2:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7842
    return-void
.end method

.method private onWidgetActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1264
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCode(widgetId + OFFSET) - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_0
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v3}, Lcom/htc/launcher/LauncherModel;->getDesktopItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 1267
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-eqz v2, :cond_2

    .line 1268
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ItemInfo;

    .line 1269
    .local v1, item:Lcom/htc/launcher/ItemInfo;
    iget-wide v3, v1, Lcom/htc/launcher/ItemInfo;->id:J

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/htc/launcher/WidgetProxy;

    if-eqz v3, :cond_1

    .line 1271
    check-cast v1, Lcom/htc/launcher/WidgetProxy;

    .end local v1           #item:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/launcher/WidgetProxy;->onActivityResult(IILandroid/content/Intent;)V

    .line 1277
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private prepareAddToButtonbarContent()V
    .locals 2

    .prologue
    .line 8978
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AddListAdapter;->reset(Z)V

    .line 8979
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/AddWidgetLayout;->doCheckTitle()V

    .line 8980
    return-void
.end method

.method private prepareAddToHomeContent()V
    .locals 2

    .prologue
    .line 7237
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AddListAdapter;->reset(Z)V

    .line 7238
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/AddWidgetLayout;->doCheckTitle()V

    .line 7239
    return-void
.end method

.method private prepareCurrentScreenCache()V
    .locals 1

    .prologue
    .line 7246
    new-instance v0, Lcom/htc/launcher/Launcher$25;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$25;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->runInNextEvLoop(Ljava/lang/Runnable;)V

    .line 7260
    return-void
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4236
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4237
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4239
    sget-object v1, Lcom/htc/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAppWidgetResetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4242
    return-void
.end method

.method private registerIntentReceivers()V
    .locals 15

    .prologue
    .line 4126
    new-instance v2, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4127
    .local v2, configurationChangedFilter:Landroid/content/IntentFilter;
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v13, v2}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4129
    new-instance v3, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4130
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4131
    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4132
    const-string v13, "package"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4133
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v13, v3}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4134
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 4135
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4136
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4137
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v13, v3}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4139
    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.USER_PRESENT"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4141
    .local v12, userPresentFilter:Landroid/content/IntentFilter;
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4142
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mKeyguardIntentReceiver:Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;

    invoke-virtual {p0, v13, v12}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4144
    new-instance v9, Landroid/content/IntentFilter;

    const-string v13, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-direct {v9, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4146
    .local v9, themeChangeFilter:Landroid/content/IntentFilter;
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mThemeChangeReceiver:Lcom/htc/launcher/Launcher$ThemeChangeReceiver;

    invoke-virtual {p0, v13, v9}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4148
    new-instance v10, Landroid/content/IntentFilter;

    const-string v13, "com.htc.launcher.action.scene_clean"

    invoke-direct {v10, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4154
    .local v10, themeCleanFilter:Landroid/content/IntentFilter;
    new-instance v8, Landroid/content/IntentFilter;

    const-string v13, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v8, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4155
    .local v8, sliderFilter:Landroid/content/IntentFilter;
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mSilderReceiver:Lcom/htc/launcher/Launcher$SilderReceiver;

    invoke-virtual {p0, v13, v8}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4157
    new-instance v4, Landroid/content/IntentFilter;

    const-string v13, "com.htc.launcher.action.htcWidgetUpdate"

    invoke-direct {v4, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4159
    .local v4, htcWidgetUpdateFilter:Landroid/content/IntentFilter;
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mHtcWidgetUpdateReceiver:Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

    invoke-virtual {p0, v13, v4}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4165
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 4166
    .local v7, personalizeChangeFilter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/htc/launcher/Launcher;->ACTION_SUMMARY_CHANGES:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 4167
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4166
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4169
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mSummaryReceiver:Lcom/htc/launcher/Launcher$SummaryReceiver;

    invoke-virtual {p0, v13, v7}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4188
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->registerWeatherAnimationNotify()V

    .line 4190
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mUpdateSceneListReceiver:Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;

    if-nez v13, :cond_1

    .line 4191
    new-instance v13, Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;

    const/4 v14, 0x0

    invoke-direct {v13, p0, v14}, Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v13, p0, Lcom/htc/launcher/Launcher;->mUpdateSceneListReceiver:Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;

    .line 4192
    :cond_1
    new-instance v11, Landroid/content/IntentFilter;

    const-string v13, "com.htc.home.personalize.SceneProvider.ACTION_SCENE_CHANGED"

    invoke-direct {v11, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4193
    .local v11, updateListFilter:Landroid/content/IntentFilter;
    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mUpdateSceneListReceiver:Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;

    invoke-virtual {p0, v13, v11}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4194
    return-void
.end method

.method private registerWeatherAnimationNotify()V
    .locals 2

    .prologue
    .line 8049
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mWeatherAnimationNotifyRegistered:Z

    if-nez v1, :cond_0

    .line 8050
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.weatherwallpaper.service.intent.action.WEATHER_WALLPAPER_DISMISS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8051
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWeatherAnimationNotify:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8052
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/Launcher;->mWeatherAnimationNotifyRegistered:Z

    .line 8054
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private removeDropTargetsOfDropBar()V
    .locals 4

    .prologue
    .line 8949
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getDropTargets()Ljava/util/List;

    move-result-object v0

    .line 8950
    .local v0, fxDropTargets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/DropTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/DropTarget;

    .line 8951
    .local v2, t:Lcom/htc/launcher/DropTarget;
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v3, v2}, Lcom/htc/launcher/DragLayer;->removeDropTarget(Lcom/htc/launcher/DropTarget;)V

    goto :goto_0

    .line 8953
    .end local v2           #t:Lcom/htc/launcher/DropTarget;
    :cond_0
    return-void
.end method

.method private removeFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 5863
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5864
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5865
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 5867
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeShortcutsForPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 4072
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 4073
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Workspace;->removeShortcutsForPackage(Ljava/lang/String;)V

    .line 4075
    :cond_0
    return-void
.end method

.method private declared-synchronized restoreLastViewAspect()V
    .locals 4

    .prologue
    .line 7003
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->m_bAllAppsViewAspectRestored:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 7011
    :goto_0
    monitor-exit p0

    return-void

    .line 7007
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->m_bAllAppsViewAspectRestored:Z

    .line 7008
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7009
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "PREF_ALLAPPS_IS_GRIDVIEW"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 7010
    .local v0, bIsGridView:Z
    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->setAllAppsLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7003
    .end local v0           #bIsGridView:Z
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 2081
    if-nez p1, :cond_1

    .line 2118
    :cond_0
    :goto_0
    return-void

    .line 2086
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    if-eqz v3, :cond_0

    .line 2089
    const-string v3, "launcher.current_screen"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2091
    .local v2, currentScreen:I
    if-le v2, v4, :cond_2

    .line 2092
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 2095
    :cond_2
    const-string v3, "launcher.add_screen"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2097
    .local v1, addScreen:I
    if-le v1, v4, :cond_0

    .line 2098
    const-string v3, "RosieDbDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreState(), addScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    new-instance v3, Lcom/htc/launcher/CellInfo;

    invoke-direct {v3}, Lcom/htc/launcher/CellInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 2100
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 2101
    .local v0, addItemCellInfo:Lcom/htc/launcher/CellInfo;
    iput-boolean v6, v0, Lcom/htc/launcher/CellInfo;->valid:Z

    .line 2102
    iput v1, v0, Lcom/htc/launcher/CellInfo;->screen:I

    .line 2103
    const-string v3, "launcher.add_cellX"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    .line 2105
    const-string v3, "launcher.add_cellY"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    .line 2107
    const-string v3, "launcher.add_spanX"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    .line 2109
    const-string v3, "launcher.add_spanY"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    .line 2111
    const-string v3, "launcher.add_occupied_cells"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    const-string v4, "launcher.add_countX"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "launcher.add_countY"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/launcher/CellInfo;->findVacantCellsFromOccupied([ZII)V

    .line 2115
    iput-boolean v6, p0, Lcom/htc/launcher/Launcher;->mRestoring:Z

    goto :goto_0
.end method

.method private runDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1385
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1389
    return-void

    .line 1387
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private runInNextEvLoop(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1256
    return-void
.end method

.method public static saveHomeWallpaper(Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2540
    return-void
.end method

.method private saveLocaleAndSimConfigs()V
    .locals 5

    .prologue
    .line 9004
    const-string v2, "launcher"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 9005
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9006
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "locale"

    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mCurrentLocale:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9007
    const-string v2, "mcc"

    iget v3, p0, Lcom/htc/launcher/Launcher;->mCurrentMcc:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9008
    const-string v2, "mnc"

    iget v3, p0, Lcom/htc/launcher/Launcher;->mCurrentMnc:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9009
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9011
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save Locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mCurrentLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mcc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/launcher/Launcher;->mCurrentMcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/launcher/Launcher;->mCurrentMnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9012
    :cond_0
    return-void
.end method

.method private selectWallpaperConfig()V
    .locals 3

    .prologue
    .line 863
    sget-boolean v0, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-eqz v0, :cond_0

    .line 864
    const-string v0, "persist.debug.rosie.wall"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    .line 866
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use wallpaper service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    sget-boolean v0, Lcom/htc/launcher/Launcher;->sUseWallpaperService:Z

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 871
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 873
    :cond_1
    return-void
.end method

.method private setAllAppsAdapter(Lcom/htc/launcher/ApplicationsAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 4514
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v2}, Lcom/htc/launcher/AllAppsView;->getAllContents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4515
    .local v0, c:Landroid/view/ViewGroup;
    instance-of v2, v0, Lcom/htc/launcher/AllAppsListView;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 4516
    check-cast v2, Lcom/htc/launcher/AllAppsListView;

    invoke-virtual {v2, p1}, Lcom/htc/launcher/AllAppsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4518
    :cond_1
    instance-of v2, v0, Lcom/htc/launcher/AllAppsGridView;

    if-eqz v2, :cond_0

    .line 4519
    check-cast v0, Lcom/htc/launcher/AllAppsGridView;

    .end local v0           #c:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Lcom/htc/launcher/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 4522
    :cond_2
    return-void
.end method

.method private setAllAppsLayout(Z)V
    .locals 6
    .parameter "gridView"

    .prologue
    const v5, 0x7f070003

    const/4 v4, 0x0

    .line 3989
    if-eqz p1, :cond_1

    .line 3990
    const v2, 0x7f070004

    sput v2, Lcom/htc/launcher/Launcher;->mProgramListId:I

    .line 3994
    :goto_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3995
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v2, v4}, Lcom/htc/launcher/AllAppsView;->setTabsVisible(Z)V

    .line 3999
    :goto_1
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    sget v3, Lcom/htc/launcher/Launcher;->mProgramListId:I

    invoke-virtual {v2, v3}, Lcom/htc/launcher/AllAppsView;->setContentView(I)V

    .line 4001
    if-nez p1, :cond_0

    .line 4002
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v2, v5}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/AllAppsListView;

    .line 4003
    .local v0, listView:Lcom/htc/launcher/AllAppsListView;
    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsListView;->isFastScrollAllowed()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/launcher/AllAppsListView;->setFastScrollEnabled(Z)V

    .line 4013
    .end local v0           #listView:Lcom/htc/launcher/AllAppsListView;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4014
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PREF_ALLAPPS_IS_GRIDVIEW"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4015
    return-void

    .line 3992
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_1
    sput v5, Lcom/htc/launcher/Launcher;->mProgramListId:I

    goto :goto_0

    .line 3997
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/launcher/AllAppsView;->setTabsVisible(Z)V

    goto :goto_1
.end method

.method static setScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 963
    sget-object v1, Lcom/htc/launcher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_0
    sput p0, Lcom/htc/launcher/Launcher;->sScreen:I

    .line 965
    monitor-exit v1

    .line 966
    return-void

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWallpaperDimension(Landroid/view/Display;)V
    .locals 8
    .parameter "display"

    .prologue
    .line 979
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 981
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 982
    .local v4, maxDimension:I
    move v1, v4

    .local v1, hintHeight:I
    move v2, v4

    .line 993
    .end local v4           #maxDimension:I
    .local v2, hintWidth:I
    :goto_0
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/htc/launcher/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 994
    return-void

    .line 984
    .end local v1           #hintHeight:I
    .end local v2           #hintWidth:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_1

    const/4 v3, 0x1

    .line 986
    .local v3, isPortrait:Z
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 987
    .local v5, width:I
    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 989
    .local v0, height:I
    :goto_3
    sget v6, Lcom/htc/launcher/settings/SettingUtil;->sWallpaperScreensSpan:I

    mul-int v2, v5, v6

    .line 990
    .restart local v2       #hintWidth:I
    move v1, v0

    .restart local v1       #hintHeight:I
    goto :goto_0

    .line 984
    .end local v0           #height:I
    .end local v1           #hintHeight:I
    .end local v2           #hintWidth:I
    .end local v3           #isPortrait:Z
    .end local v5           #width:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 986
    .restart local v3       #isPortrait:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v5

    goto :goto_2

    .line 987
    .restart local v5       #width:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_3
.end method

.method private setupDrawer(Lcom/htc/launcher/DragLayer;)V
    .locals 21
    .parameter "dragLayer"

    .prologue
    .line 2274
    const v18, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    .line 2277
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/launcher/widget/SlidingDrawer;->layout_update_for_allapps()V

    .line 2281
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    const v19, 0x7f070029

    invoke-virtual/range {v18 .. v19}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/launcher/AllAppsView;

    check-cast v18, Lcom/htc/launcher/AllAppsView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    .line 2283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    const v19, 0x7f07002c

    invoke-virtual/range {v18 .. v19}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/Launcher;->mHandleView:Landroid/view/View;

    .line 2294
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 2295
    .local v12, res:Landroid/content/res/Resources;
    const v18, 0x20806b7

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2296
    .local v4, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 2297
    .local v5, bkg_h:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 2298
    .local v6, bkg_w:I
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2299
    .local v13, scr_h:I
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v14, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2300
    .local v14, scr_w:I
    if-lt v5, v13, :cond_1

    if-ge v6, v14, :cond_3

    :cond_1
    const/4 v11, 0x1

    .line 2302
    .local v11, repeat:Z
    :goto_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mHandleView:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/ViewGroup;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const-string v19, "common_titlebar_sublevel"

    const v20, 0x7f020040

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2307
    const v18, 0x7f07002a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const-string v19, "common_titlebar_sublevel_75"

    const v20, 0x7f020041

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2395
    :goto_1
    new-instance v17, Lcom/htc/widget/HeaderBarText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 2396
    .local v17, titleText:Lcom/htc/widget/HeaderBarText;
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mHandleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f070008

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HeaderBar;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AllAppsView;->setTitleBar(Lcom/htc/widget/HeaderBarText;)V

    .line 2401
    new-instance v18, Lcom/htc/widget/HeaderBarText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/Launcher;->allapps_shadowhandle_text:Lcom/htc/widget/HeaderBarText;

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->allapps_shadowhandle_text:Lcom/htc/widget/HeaderBarText;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 2403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    const v19, 0x7f070006

    invoke-virtual/range {v18 .. v19}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f070008

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HeaderBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->allapps_shadowhandle_text:Lcom/htc/widget/HeaderBarText;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 2405
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 2407
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/launcher/Launcher;->setupSearchBar(Z)V

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/launcher/widget/SlidingDrawer;->lock()V

    .line 2410
    new-instance v9, Lcom/htc/launcher/Launcher$DrawerManager;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/htc/launcher/Launcher$DrawerManager;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    .line 2411
    .local v9, drawerManager:Lcom/htc/launcher/Launcher$DrawerManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/launcher/widget/SlidingDrawer;->setOnDrawerOpenListener(Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/launcher/widget/SlidingDrawer;->setOnDrawerCloseListener(Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/launcher/widget/SlidingDrawer;->setOnDrawerScrollListener(Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/htc/launcher/widget/SlidingDrawer;->setVisibility(I)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AllAppsView;->setLauncher(Lcom/htc/launcher/Launcher;)V

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/htc/launcher/AllAppsView;->inited:Z

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AllAppsView;->setDragger(Lcom/htc/launcher/DragController;)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/launcher/AllAppsView;->setTabsVisible(Z)V

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    move-object/from16 v18, v0

    sget v19, Lcom/htc/launcher/Launcher;->mProgramListId:I

    invoke-virtual/range {v18 .. v19}, Lcom/htc/launcher/AllAppsView;->setContentView(I)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/launcher/AllAppsView;->getAllContents()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 2440
    .local v7, c:Landroid/view/ViewGroup;
    instance-of v0, v7, Lcom/htc/launcher/AddWidgetLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 2441
    check-cast v7, Lcom/htc/launcher/AddWidgetLayout;

    .end local v7           #c:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/launcher/Launcher;->mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/launcher/AddWidgetLayout;->updateContentView(Z)V

    goto :goto_2

    .line 2300
    .end local v9           #drawerManager:Lcom/htc/launcher/Launcher$DrawerManager;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #repeat:Z
    .end local v17           #titleText:Lcom/htc/widget/HeaderBarText;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2347
    .restart local v11       #repeat:Z
    :cond_4
    const v18, 0x7f070002

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2348
    .local v8, carousel_tab_background:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mHandleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f070007

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2349
    .local v3, allapps_handle_bkg:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    move-object/from16 v18, v0

    const v19, 0x7f070006

    invoke-virtual/range {v18 .. v19}, Lcom/htc/launcher/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f070007

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 2351
    .local v15, shadow_handle_bkg:Landroid/widget/ImageView;
    if-eqz v11, :cond_5

    .line 2353
    const v18, 0x20806b7

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2356
    const v18, 0x20806b7

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2359
    const v18, 0x20806b7

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2364
    :cond_5
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 2365
    .local v16, shiftMatrix:Landroid/graphics/Matrix;
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0014

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2366
    const v18, 0x20806b7

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2367
    sget-object v18, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2368
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 2374
    sget-object v18, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2375
    const v18, 0x20806b7

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2378
    sget-object v18, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2379
    const v18, 0x20806b7

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 2457
    .end local v3           #allapps_handle_bkg:Landroid/widget/ImageView;
    .end local v8           #carousel_tab_background:Landroid/widget/ImageView;
    .end local v15           #shadow_handle_bkg:Landroid/widget/ImageView;
    .end local v16           #shiftMatrix:Landroid/graphics/Matrix;
    .restart local v9       #drawerManager:Lcom/htc/launcher/Launcher$DrawerManager;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v17       #titleText:Lcom/htc/widget/HeaderBarText;
    :cond_6
    return-void
.end method

.method private setupFxViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2570
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Workspace;->registerScrollStateChangedListener(Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;)V

    .line 2571
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Workspace;->redirectTouchTo(Landroid/view/View$OnTouchListener;)V

    .line 2572
    new-instance v3, Lcom/htc/launcher/Launcher$CellInfoHandler;

    invoke-direct {v3, p0}, Lcom/htc/launcher/Launcher$CellInfoHandler;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mCellInfoHandler:Lcom/htc/launcher/Launcher$CellInfoHandler;

    .line 2574
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v0

    .line 2575
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2576
    sget-boolean v3, Lcom/htc/launcher/Launcher;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/launcher/CellLayout;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2577
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/CellLayout;

    .line 2578
    .local v1, cl:Lcom/htc/launcher/CellLayout;
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mCellInfoHandler:Lcom/htc/launcher/Launcher$CellInfoHandler;

    invoke-virtual {v1, v3}, Lcom/htc/launcher/CellLayout;->setCellInfoHandler(Lcom/htc/launcher/CellLayout$ICellInfoHandler;)V

    .line 2579
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2580
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2581
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lcom/htc/launcher/CellLayout;->setOccupiedDelegation(Lcom/htc/launcher/CellLayout$OccupiedDelegation;Z)V

    .line 2582
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getAnotherWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lcom/htc/launcher/CellLayout;->setOccupiedDelegation(Lcom/htc/launcher/CellLayout$OccupiedDelegation;Z)V

    .line 2575
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2584
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lcom/htc/launcher/CellLayout;->setOccupiedDelegation(Lcom/htc/launcher/CellLayout$OccupiedDelegation;Z)V

    .line 2585
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getAnotherWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lcom/htc/launcher/CellLayout;->setOccupiedDelegation(Lcom/htc/launcher/CellLayout$OccupiedDelegation;Z)V

    goto :goto_1

    .line 2588
    :cond_2
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lcom/htc/launcher/CellLayout;->setOccupiedDelegation(Lcom/htc/launcher/CellLayout$OccupiedDelegation;Z)V

    goto :goto_1

    .line 2592
    .end local v1           #cl:Lcom/htc/launcher/CellLayout;
    :cond_3
    new-instance v3, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;)V

    iput-object v3, p0, Lcom/htc/launcher/Launcher;->mUnlockAnimListener:Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;

    .line 2593
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mUnlockAnimListener:Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setUnlockAnimationListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IUnlockAnimationListener;)V

    .line 2594
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    new-instance v4, Lcom/htc/launcher/Launcher$RosieEditModeListener;

    invoke-direct {v4, p0}, Lcom/htc/launcher/Launcher$RosieEditModeListener;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setEditModeListener(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$IEditModeListener;)V

    .line 2597
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Launcher;->registerTiltObserver(Lcom/htc/launcher/Launcher$TiltObserver;)V

    .line 2598
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/SlideController;->registerSlideListener(Lcom/htc/launcher/Workspace$OnSlideListener;)V

    .line 2599
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Workspace;->registerScrollStateChangedListener(Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;)V

    .line 2601
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/SlideController;->registerSlideListener(Lcom/htc/launcher/Workspace$OnSlideListener;)V

    .line 2602
    return-void
.end method

.method private setupSearchBar(Z)V
    .locals 10
    .parameter "repeat"

    .prologue
    const v9, 0x20806b7

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 2461
    const v6, 0x7f07002d

    invoke-virtual {p0, v6}, Lcom/htc/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2462
    .local v0, allapps_searchbar_container:Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2465
    new-instance v2, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    .line 2466
    .local v2, headerImageLeft:Lcom/htc/widget/HeaderBarImage;
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 2467
    const v6, 0x208034d

    invoke-virtual {v2, v6}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 2470
    new-instance v3, Lcom/htc/widget/HeaderBarInput;

    invoke-direct {v3, p0}, Lcom/htc/widget/HeaderBarInput;-><init>(Landroid/content/Context;)V

    .line 2471
    .local v3, headerInput:Lcom/htc/widget/HeaderBarInput;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 2472
    invoke-virtual {v3, v8}, Lcom/htc/widget/HeaderBarInput;->setProgressVisibility(I)V

    .line 2473
    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 2474
    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding()V

    .line 2477
    const v6, 0x7f07002f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBar;

    .line 2479
    .local v1, allapps_searchbar_headerbar:Lcom/htc/widget/HeaderBar;
    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBar;->addLeftView(Landroid/view/View;)V

    .line 2480
    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 2481
    invoke-virtual {v1, v7}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 2484
    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsBar:Landroid/view/View;

    .line 2485
    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/launcher/Launcher;->mSearchText:Landroid/widget/AutoCompleteTextView;

    .line 2486
    new-instance v4, Lcom/htc/launcher/Launcher$SearchListener;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/htc/launcher/Launcher$SearchListener;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    .line 2487
    .local v4, searchListener:Lcom/htc/launcher/Launcher$SearchListener;
    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mSearchText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2490
    const v6, 0x7f07002e

    invoke-virtual {p0, v6}, Lcom/htc/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2491
    .local v5, searchbar_bkg:Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 2493
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2499
    :goto_0
    return-void

    .line 2496
    :cond_0
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2497
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private setupViews()V
    .locals 14

    .prologue
    .line 2124
    const v11, 0x7f07001b

    invoke-virtual {p0, v11}, Lcom/htc/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/launcher/DragLayer;

    iput-object v11, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    .line 2125
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v11}, Lcom/htc/launcher/DragLayer;->initialDragHint()V

    .line 2126
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    .line 2128
    .local v2, dragLayer:Lcom/htc/launcher/DragLayer;
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v2, v11}, Lcom/htc/launcher/DragLayer;->setScrollMonitor(Lcom/htc/launcher/ScrollMonitor;)V

    .line 2129
    const v11, 0x7f07001d

    invoke-virtual {v2, v11}, Lcom/htc/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/launcher/Workspace;

    iput-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 2130
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    new-instance v12, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;

    invoke-direct {v12, p0}, Lcom/htc/launcher/Launcher$WorkspaceScrollListener;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-virtual {v11, v12}, Lcom/htc/launcher/Workspace;->registerScrollStateChangedListener(Lcom/htc/launcher/Workspace$OnScrollStateChangedListener;)V

    .line 2132
    const v11, 0x7f07001c

    invoke-virtual {v2, v11}, Lcom/htc/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iput-object v11, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 2135
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->usesRingSlide()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2136
    new-instance v11, Lcom/htc/launcher/RingSlideController;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v13, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v13}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getPageSinkControl()Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    move-result-object v13

    invoke-direct {v11, p0, v12, v13}, Lcom/htc/launcher/RingSlideController;-><init>(Landroid/content/Context;Lcom/htc/launcher/Workspace;Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;)V

    iput-object v11, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    .line 2139
    :goto_0
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v11, v12}, Lcom/htc/launcher/Workspace;->setSlideController(Lcom/htc/launcher/SlideController;)V

    .line 2142
    new-instance v11, Lcom/htc/launcher/LeapController;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-direct {v11, p0, v12}, Lcom/htc/launcher/LeapController;-><init>(Landroid/content/Context;Lcom/htc/launcher/LeapController$LeapLayer;)V

    iput-object v11, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    .line 2143
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v12}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getLeapAnimationPlayer()Lcom/htc/launcher/LeapController$LeapAnimationPlayer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/launcher/LeapController;->addLeapAnimationPlayer(Lcom/htc/launcher/LeapController$LeapAnimationPlayer;)V

    .line 2144
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v12}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getLeapListener()Lcom/htc/launcher/LeapController$LeapListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/launcher/LeapController;->addLeapListener(Lcom/htc/launcher/LeapController$LeapListener;)V

    .line 2145
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v11, p0}, Lcom/htc/launcher/LeapController;->addLeapListener(Lcom/htc/launcher/LeapController$LeapListener;)V

    .line 2146
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v11, v12}, Lcom/htc/launcher/LeapController;->addLeapAnimationPlayer(Lcom/htc/launcher/LeapController$LeapAnimationPlayer;)V

    .line 2147
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v11, v12}, Lcom/htc/launcher/Workspace;->setLeapController(Lcom/htc/launcher/LeapController;)V

    .line 2149
    invoke-static {p0}, Lcom/htc/launcher/PagesManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;

    move-result-object v7

    .line 2150
    .local v7, pm:Lcom/htc/launcher/PagesManager;
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v7, v11}, Lcom/htc/launcher/PagesManager;->addPagesChangedListener(Lcom/htc/launcher/PagesManager$OnPagesChangedListener;)V

    .line 2151
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v7, v11}, Lcom/htc/launcher/PagesManager;->addPagesChangedListener(Lcom/htc/launcher/PagesManager$OnPagesChangedListener;)V

    .line 2153
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->setupFxViews()V

    .line 2154
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v11, :cond_0

    .line 2155
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->hide()V

    .line 2158
    :cond_0
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 2160
    .local v10, workspace:Lcom/htc/launcher/Workspace;
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v10, v11}, Lcom/htc/launcher/Workspace;->setScrollMonitor(Lcom/htc/launcher/ScrollMonitor;)V

    .line 2163
    sget-boolean v11, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v11, :cond_1

    const-string v11, "Rosie"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sScreenCount : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v11

    if-lez v11, :cond_4

    .line 2165
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v11}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 2166
    .local v0, currentChildCount:I
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v11

    if-le v0, v11, :cond_3

    .line 2168
    add-int/lit8 v4, v0, -0x1

    .local v4, i:I
    :goto_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v11

    if-lt v4, v11, :cond_4

    .line 2169
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v11, v4}, Lcom/htc/launcher/Workspace;->removeViewAt(I)V

    .line 2168
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2138
    .end local v0           #currentChildCount:I
    .end local v4           #i:I
    .end local v7           #pm:Lcom/htc/launcher/PagesManager;
    .end local v10           #workspace:Lcom/htc/launcher/Workspace;
    :cond_2
    new-instance v11, Lcom/htc/launcher/SlideController;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-direct {v11, p0, v12}, Lcom/htc/launcher/SlideController;-><init>(Landroid/content/Context;Lcom/htc/launcher/Workspace;)V

    iput-object v11, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    goto/16 :goto_0

    .line 2171
    .restart local v0       #currentChildCount:I
    .restart local v7       #pm:Lcom/htc/launcher/PagesManager;
    .restart local v10       #workspace:Lcom/htc/launcher/Workspace;
    :cond_3
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v11

    if-ge v0, v11, :cond_4

    .line 2173
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 2174
    .local v6, inflater:Landroid/view/LayoutInflater;
    move v4, v0

    .restart local v4       #i:I
    :goto_2
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 2175
    const v11, 0x7f030030

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 2177
    .local v9, view:Landroid/view/View;
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v11, v9}, Lcom/htc/launcher/Workspace;->addView(Landroid/view/View;)V

    .line 2174
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2181
    .end local v0           #currentChildCount:I
    .end local v4           #i:I
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #view:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v2}, Lcom/htc/launcher/Launcher;->setupDrawer(Lcom/htc/launcher/DragLayer;)V

    .line 2183
    invoke-virtual {v10, p0}, Lcom/htc/launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2184
    invoke-virtual {v10, v2}, Lcom/htc/launcher/Workspace;->setDragger(Lcom/htc/launcher/DragController;)V

    .line 2185
    invoke-virtual {v10, p0}, Lcom/htc/launcher/Workspace;->setLauncher(Lcom/htc/launcher/Launcher;)V

    .line 2187
    invoke-static {}, Lcom/htc/launcher/custom/CustomResourceUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/htc/launcher/custom/CustomResourceUtil;->getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2188
    .local v1, currentSkin:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/htc/launcher/Launcher;->mOnConfigChangedReloading:Z

    if-nez v11, :cond_5

    if-eqz v1, :cond_5

    const-string v11, "launcher"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "current_skin_name"

    invoke-interface {v11, v12, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2189
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->loadHomeWallpaper()V

    .line 2199
    :cond_5
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v2, v11}, Lcom/htc/launcher/DragLayer;->setIgnoredDropTarget(Landroid/view/View;)V

    .line 2200
    new-instance v11, Lcom/htc/launcher/Launcher$9;

    invoke-direct {v11, p0}, Lcom/htc/launcher/Launcher$9;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-virtual {v2, v11}, Lcom/htc/launcher/DragLayer;->setDragListener(Lcom/htc/launcher/DragController$DragListener;)V

    .line 2246
    invoke-virtual {v2, v10}, Lcom/htc/launcher/DragLayer;->setDragScoller(Lcom/htc/launcher/DragScroller;)V

    .line 2247
    invoke-virtual {v2, v10}, Lcom/htc/launcher/DragLayer;->setDragListener(Lcom/htc/launcher/DragController$DragListener;)V

    .line 2248
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2, v11}, Lcom/htc/launcher/DragLayer;->setDragListener(Lcom/htc/launcher/DragController$DragListener;)V

    .line 2250
    new-instance v11, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;

    invoke-direct {v11, p0}, Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v11, p0, Lcom/htc/launcher/Launcher;->m_NavbarStickyModeHandler:Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;

    .line 2252
    const v11, 0x7f070026

    invoke-virtual {p0, v11}, Lcom/htc/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/launcher/widget/FunctionBar;

    iput-object v11, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    .line 2253
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v11, v12}, Lcom/htc/launcher/widget/FunctionBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2254
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v11, v12}, Lcom/htc/launcher/widget/FunctionBar;->setOnLongClick(Landroid/view/View$OnLongClickListener;)V

    .line 2255
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    iget-object v12, p0, Lcom/htc/launcher/Launcher;->m_NavbarStickyModeHandler:Lcom/htc/launcher/Launcher$NavbarStickyModeHandler;

    invoke-virtual {v11, v12}, Lcom/htc/launcher/widget/FunctionBar;->setNavbarStickyModeHandler(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$INavbarStickyModeHandler;)V

    .line 2256
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v11, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setDragger(Lcom/htc/launcher/DragController;)V

    .line 2263
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v11, v10}, Lcom/htc/launcher/DragLayer;->addDropTarget(Lcom/htc/launcher/DropTarget;)V

    .line 2266
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getDropTargets()Ljava/util/List;

    move-result-object v3

    .line 2267
    .local v3, fxDropTargets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/DropTarget;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/DropTarget;

    .line 2268
    .local v8, t:Lcom/htc/launcher/DropTarget;
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v11, v8}, Lcom/htc/launcher/DragLayer;->addDropTarget(Lcom/htc/launcher/DropTarget;)V

    goto :goto_3

    .line 2270
    .end local v8           #t:Lcom/htc/launcher/DropTarget;
    :cond_6
    return-void
.end method

.method static showAppTip(JI)V
    .locals 9
    .parameter "itemId"
    .parameter "priority"

    .prologue
    .line 2943
    sget-object v5, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v5}, Lcom/htc/launcher/LauncherModel;->getDesktopItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 2944
    .local v1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-nez v1, :cond_1

    .line 2969
    :cond_0
    return-void

    .line 2948
    :cond_1
    sget-object v5, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_3

    const/4 v4, 0x0

    .line 2951
    .local v4, launcher:Lcom/htc/launcher/Launcher;
    :goto_0
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/launcher/ItemInfo;

    .line 2952
    .local v3, items:[Lcom/htc/launcher/ItemInfo;
    if-eqz v4, :cond_0

    .line 2953
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 2954
    aget-object v2, v3, v0

    .line 2955
    .local v2, item:Lcom/htc/launcher/ItemInfo;
    if-eqz v2, :cond_2

    iget-wide v5, v2, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v5, v5, p0

    if-nez v5, :cond_2

    .line 2956
    const-string v5, "Rosie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shortcut with new tip on current scene, itemId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v2, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    instance-of v5, v2, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v5, :cond_2

    .line 2958
    iget-boolean v5, v4, Lcom/htc/launcher/Launcher;->mIsPause:Z

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lcom/htc/launcher/Launcher;->mIsLoading:Z

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v2, Lcom/htc/launcher/ItemInfo;->screen:I

    iget-object v6, v4, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 2962
    const-string v5, "Rosie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start tip activity on screen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2963
    invoke-direct {v4, v2}, Lcom/htc/launcher/Launcher;->startAppTip(Lcom/htc/launcher/ItemInfo;)V

    .line 2953
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2948
    .end local v0           #i:I
    .end local v2           #item:Lcom/htc/launcher/ItemInfo;
    .end local v3           #items:[Lcom/htc/launcher/ItemInfo;
    .end local v4           #launcher:Lcom/htc/launcher/Launcher;
    :cond_3
    sget-object v5, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/Launcher;

    move-object v4, v5

    goto/16 :goto_0
.end method

.method private showNotifications()V
    .locals 4

    .prologue
    .line 4091
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 4092
    .local v0, statusBar:Landroid/app/StatusBarManager;
    const-string v2, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher.java->showNotifications(), is statusbar Null? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4093
    if-eqz v0, :cond_0

    .line 4094
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    .line 4096
    :cond_0
    return-void

    .line 4092
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showTrafficLight(Z)V
    .locals 0
    .parameter "light"

    .prologue
    .line 1357
    return-void
.end method

.method private showTutorialNotice()V
    .locals 1

    .prologue
    .line 4641
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v0, :cond_0

    .line 4645
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->showTipBubble()V

    .line 4665
    :cond_0
    return-void
.end method

.method private showTutorialNotice(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 4637
    return-void
.end method

.method private showUnlockAnimation()Z
    .locals 1

    .prologue
    .line 8937
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsPause:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAppTip(Lcom/htc/launcher/ItemInfo;)V
    .locals 9
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 2972
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2973
    .local v8, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 2974
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "SHOWED"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2975
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2977
    sput-boolean v2, Lcom/htc/launcher/Launcher;->isTipShowed:Z

    .line 2979
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 2980
    .local v5, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    iget v1, p1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v3, p1, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v4, p1, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/Workspace$Screen;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 2981
    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAppTip at screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " right="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2984
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "com.htc.android.mail"

    const-string v1, "com.htc.android.mail.activity.TipActivity"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2985
    const-string v0, "Widget_Top"

    iget v1, v5, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2986
    const-string v0, "Widget_Left"

    iget v1, v5, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2987
    const-string v0, "Widget_Right"

    iget v1, v5, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2988
    const-string v0, "Widget_Bottom"

    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2989
    invoke-virtual {p0, v7}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2990
    return-void
.end method

.method private startLoaders(Z)V
    .locals 5
    .parameter "configChanged"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 969
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v3, v1, p0, p1}, Lcom/htc/launcher/LauncherModel;->loadApplications(ZLcom/htc/launcher/Launcher;Z)Z

    move-result v0

    .line 971
    .local v0, loadApplications:Z
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v3, v1, p0, p1, v0}, Lcom/htc/launcher/LauncherModel;->loadUserItems(ZLcom/htc/launcher/Launcher;ZZ)V

    .line 973
    const-string v1, "RosieDbDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLoaders("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mRestoring:Z

    .line 975
    return-void

    :cond_0
    move v1, v2

    .line 971
    goto :goto_0
.end method

.method private startLockScreenWallpaper()V
    .locals 3

    .prologue
    .line 4114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4116
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "IS_SELECT_LOCKSCREEN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4117
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4118
    return-void
.end method

.method private startWallpaper()V
    .locals 3

    .prologue
    .line 4099
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4100
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "IS_LIVE_WALLPAPER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4101
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4105
    return-void
.end method

.method private startWallpaperNoLiveWallpaper()V
    .locals 2

    .prologue
    .line 4109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4110
    .local v0, pickIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4111
    return-void
.end method

.method private unlockOrientation()V
    .locals 0

    .prologue
    .line 7120
    return-void
.end method

.method private unregisterWeatherAnimationNotify()V
    .locals 1

    .prologue
    .line 8057
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mWeatherAnimationNotifyRegistered:Z

    if-eqz v0, :cond_0

    .line 8058
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWeatherAnimationNotify:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mWeatherAnimationNotifyRegistered:Z

    .line 8061
    :cond_0
    return-void
.end method

.method private updateApplicationIconForPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 4085
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 4086
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Workspace;->updateApplicationIconForPackage(Ljava/lang/String;)V

    .line 4088
    :cond_0
    return-void
.end method

.method private updateApplicationListAfterMccMncChanged()V
    .locals 9

    .prologue
    .line 7845
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 7849
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_2

    .line 7850
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/launcher/LauncherModel;->getApplications()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v2

    .line 7851
    .local v2, appList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalSize()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 7852
    invoke-virtual {v2, v4}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->originalGet(I)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v1

    .line 7853
    .local v1, app:Lcom/htc/launcher/ApplicationInfo;
    const/4 v0, 0x0

    .line 7855
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    :try_start_0
    iget-object v7, v1, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_0

    .line 7856
    iget-object v7, v1, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7863
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 7864
    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 7865
    .local v6, title:Ljava/lang/CharSequence;
    if-eqz v6, :cond_1

    iget-object v7, v1, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 7866
    iput-object v6, v1, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 7851
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7858
    :catch_0
    move-exception v3

    .line 7859
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Rosie"

    const-string v8, "Couldn\'t find ActivityInfo for selected application"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 7872
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v2           #appList:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #i:I
    :cond_2
    new-instance v7, Lcom/htc/launcher/Launcher$29;

    invoke-direct {v7, p0}, Lcom/htc/launcher/Launcher$29;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-virtual {p0, v7}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7882
    return-void
.end method

.method private static updateApplicationUI(Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Lcom/htc/launcher/ItemInfo;)V
    .locals 3
    .parameter "icon"
    .parameter "intent"
    .parameter "title"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 3076
    move-object v0, p3

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    .line 3077
    .local v0, appInfo:Lcom/htc/launcher/ApplicationInfo;
    if-eqz p0, :cond_0

    .line 3078
    new-instance v1, Lcom/htc/launcher/FastBitmapDrawable;

    invoke-direct {v1, p0}, Lcom/htc/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 3081
    :cond_0
    iput-boolean v2, v0, Lcom/htc/launcher/ApplicationInfo;->filtered:Z

    .line 3082
    iput-boolean v2, v0, Lcom/htc/launcher/ApplicationInfo;->customIcon:Z

    .line 3083
    if-eqz p2, :cond_1

    .line 3084
    iput-object p2, v0, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 3086
    :cond_1
    if-eqz p1, :cond_2

    .line 3087
    iput-object p1, v0, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 3091
    :cond_2
    invoke-virtual {v0}, Lcom/htc/launcher/ApplicationInfo;->notifyIconUpdate()V

    .line 3092
    return-void
.end method

.method static updateItem(JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .parameter "itemId"
    .parameter "icon"
    .parameter "intent"
    .parameter "title"

    .prologue
    .line 3034
    const-string v0, "Rosie"

    const-string v1, "Launcher.updateItem"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel;->getDesktopItems()Ljava/util/ArrayList;

    move-result-object v5

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/Launcher;->updateItemInList(JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3036
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel;->getButtonBarItems()Ljava/util/ArrayList;

    move-result-object v5

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/Launcher;->updateItemInList(JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3037
    return-void
.end method

.method private static updateItemInList(JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "itemId"
    .parameter "icon"
    .parameter "intent"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/graphics/Bitmap;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3041
    .local p5, infosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-nez p5, :cond_1

    .line 3072
    :cond_0
    return-void

    .line 3044
    :cond_1
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/htc/launcher/ItemInfo;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/launcher/ItemInfo;

    .line 3045
    .local v8, itemInfos:[Lcom/htc/launcher/ItemInfo;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v11, v8

    if-ge v6, v11, :cond_0

    .line 3046
    aget-object v7, v8, v6

    .line 3047
    .local v7, itemInfo:Lcom/htc/launcher/ItemInfo;
    if-nez v7, :cond_3

    .line 3045
    .end local v7           #itemInfo:Lcom/htc/launcher/ItemInfo;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3050
    .restart local v7       #itemInfo:Lcom/htc/launcher/ItemInfo;
    :cond_3
    iget-wide v11, v7, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v11, v11, p0

    if-nez v11, :cond_4

    instance-of v11, v7, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v11, :cond_4

    .line 3051
    const-string v11, "Rosie"

    const-string v12, "Launcher.updateItem, updating item: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-static {v11, v12, v13}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3052
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v7}, Lcom/htc/launcher/Launcher;->updateApplicationUI(Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Lcom/htc/launcher/ItemInfo;)V

    goto :goto_1

    .line 3053
    :cond_4
    instance-of v11, v7, Lcom/htc/launcher/FolderInfo;

    if-eqz v11, :cond_2

    .line 3054
    const/4 v10, 0x0

    .local v10, needUpdateUI:Z
    move-object v11, v7

    .line 3055
    check-cast v11, Lcom/htc/launcher/FolderInfo;

    iget-object v3, v11, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 3056
    .local v3, folderContents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ApplicationInfo;>;"
    if-eqz v3, :cond_2

    .line 3059
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/launcher/ApplicationInfo;

    .line 3060
    .local v5, folderItemInfos:[Lcom/htc/launcher/ApplicationInfo;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    array-length v11, v5

    if-ge v9, v11, :cond_6

    .line 3061
    aget-object v4, v5, v9

    .line 3062
    .local v4, folderItemInfo:Lcom/htc/launcher/ItemInfo;
    if-eqz v4, :cond_5

    iget-wide v11, v4, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v11, v11, p0

    if-nez v11, :cond_5

    .line 3063
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v4}, Lcom/htc/launcher/Launcher;->updateApplicationUI(Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Lcom/htc/launcher/ItemInfo;)V

    .line 3064
    const/4 v10, 0x1

    .line 3060
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3067
    .end local v4           #folderItemInfo:Lcom/htc/launcher/ItemInfo;
    :cond_6
    if-eqz v10, :cond_2

    .line 3068
    check-cast v7, Lcom/htc/launcher/FolderInfo;

    .end local v7           #itemInfo:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v7}, Lcom/htc/launcher/FolderInfo;->notifyItemsChanged()V

    goto :goto_1
.end method

.method private updateShortcutsAfterMccMncChanged()V
    .locals 14

    .prologue
    .line 7885
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 7886
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v11}, Lcom/htc/launcher/Workspace;->getChildCount()I

    move-result v11

    if-ge v5, v11, :cond_5

    .line 7887
    iget-object v11, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v11, v5}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7888
    .local v3, childView:Landroid/view/View;
    instance-of v11, v3, Lcom/htc/launcher/CellLayout;

    if-nez v11, :cond_1

    .line 7886
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 7890
    check-cast v2, Lcom/htc/launcher/CellLayout;

    .line 7891
    .local v2, cell:Lcom/htc/launcher/CellLayout;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-virtual {v2}, Lcom/htc/launcher/CellLayout;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 7892
    invoke-virtual {v2, v6}, Lcom/htc/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7893
    .local v10, view:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 7894
    .local v8, tag:Ljava/lang/Object;
    instance-of v11, v8, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v11, :cond_4

    move-object v1, v8

    .line 7895
    check-cast v1, Lcom/htc/launcher/ApplicationInfo;

    .line 7896
    .local v1, appInfo:Lcom/htc/launcher/ApplicationInfo;
    iget v11, v1, Lcom/htc/launcher/ApplicationInfo;->itemType:I

    if-nez v11, :cond_4

    .line 7897
    sget-boolean v11, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v11, :cond_2

    const-string v11, "Rosie"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "before update - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7898
    :cond_2
    const/4 v0, 0x0

    .line 7900
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v11, v1, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7905
    :goto_2
    if-eqz v0, :cond_4

    .line 7906
    invoke-virtual {v0, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 7908
    .local v9, title:Ljava/lang/CharSequence;
    check-cast v9, Ljava/lang/String;

    .end local v9           #title:Ljava/lang/CharSequence;
    invoke-static {v9, p0}, Lcom/htc/launcher/AllAppsGridView;->translateAppTitle(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 7909
    .restart local v9       #title:Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    iget-object v11, v1, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 7910
    iput-object v9, v1, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 7911
    invoke-static {p0, v1}, Lcom/htc/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 7913
    sget-boolean v11, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v11, :cond_3

    const-string v11, "Rosie"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "after update - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7915
    :cond_3
    instance-of v11, v10, Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 7916
    new-instance v11, Lcom/htc/launcher/Launcher$30;

    invoke-direct {v11, p0, v10, v1}, Lcom/htc/launcher/Launcher$30;-><init>(Lcom/htc/launcher/Launcher;Landroid/view/View;Lcom/htc/launcher/ApplicationInfo;)V

    invoke-virtual {p0, v11}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7891
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v9           #title:Ljava/lang/CharSequence;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 7902
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v1       #appInfo:Lcom/htc/launcher/ApplicationInfo;
    :catch_0
    move-exception v4

    .line 7903
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "Rosie"

    const-string v12, "Couldn\'t find ActivityInfo for selected application"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 7932
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #appInfo:Lcom/htc/launcher/ApplicationInfo;
    .end local v2           #cell:Lcom/htc/launcher/CellLayout;
    .end local v3           #childView:Landroid/view/View;
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #j:I
    .end local v8           #tag:Ljava/lang/Object;
    .end local v10           #view:Landroid/view/View;
    :cond_5
    return-void
.end method

.method private updateShortcutsForPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 4078
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 4079
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Workspace;->updateShortcutsForPackage(Ljava/lang/String;)V

    .line 4081
    :cond_0
    return-void
.end method


# virtual methods
.method public abortStickyDrag()V
    .locals 7

    .prologue
    .line 9492
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mStickyMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mCellInfoHandler:Lcom/htc/launcher/Launcher$CellInfoHandler;

    if-nez v1, :cond_1

    .line 9508
    :cond_0
    :goto_0
    return-void

    .line 9495
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mCellInfoHandler:Lcom/htc/launcher/Launcher$CellInfoHandler;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher$CellInfoHandler;->getCellInfo()Lcom/htc/launcher/CellInfo;

    move-result-object v6

    .line 9496
    .local v6, cellInfo:Lcom/htc/launcher/CellInfo;
    const-string v1, "CellInfoHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[STICKY] abortStickyDrag() cellInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9497
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/htc/launcher/CellInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9498
    :cond_2
    const-string v1, "CellInfoHandler"

    const-string v2, "invalid cellInfo !!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9503
    :cond_3
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-boolean v1, v1, Lcom/htc/launcher/Workspace;->m_IsNeedDropBack:Z

    if-nez v1, :cond_4

    .line 9504
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    .line 9505
    .local v0, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    iget v1, v6, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v2, v6, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v3, v6, Lcom/htc/launcher/CellInfo;->spanX:I

    iget v4, v6, Lcom/htc/launcher/CellInfo;->spanY:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->showDropArea(IIIIZ)V

    .line 9507
    .end local v0           #screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->showFunctionBarHighlight()V

    goto :goto_0
.end method

.method public addButtonbarItems(I)V
    .locals 2
    .parameter "clickButton"

    .prologue
    .line 8965
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/launcher/Launcher;->ifAddButtonbar:Z

    .line 8966
    sput p1, Lcom/htc/launcher/Launcher;->mMiddleClickButton:I

    .line 8967
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    if-eqz v0, :cond_0

    .line 8968
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v0}, Lcom/htc/launcher/AddListAdapter;->setHeightPriority()V

    .line 8969
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8970
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->prepareCurrentScreenCache()V

    .line 8971
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AllAppsView;->changeDrawerContentById(I)V

    .line 8972
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->prepareAddToButtonbarContent()V

    .line 8974
    :cond_1
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->addItems()V

    .line 8975
    return-void
.end method

.method public addDropTarget(Lcom/htc/launcher/DropTarget;)V
    .locals 1
    .parameter "dropTarget"

    .prologue
    .line 9035
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    if-nez v0, :cond_0

    .line 9038
    :goto_0
    return-void

    .line 9037
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/DragLayer;->addDropTarget(Lcom/htc/launcher/DropTarget;)V

    goto :goto_0
.end method

.method public applicationLoaded()V
    .locals 1

    .prologue
    .line 6112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsApplicationLoaded:Z

    .line 6113
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsListAdapterReady:Z

    if-eqz v0, :cond_0

    .line 6114
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->createListAdapter()V

    .line 6115
    :cond_0
    return-void
.end method

.method public beginLeap(I)V
    .locals 4
    .parameter "selectPage"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8866
    invoke-direct {p0, v2}, Lcom/htc/launcher/Launcher;->enableTilt(Z)V

    .line 8867
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 8868
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V

    .line 8869
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/HostWidgetManager;->pauseWidgets(IZ)V

    .line 8870
    invoke-virtual {p0, v3}, Lcom/htc/launcher/Launcher;->enablePageSelect(Z)V

    .line 8871
    invoke-virtual {p0, v3}, Lcom/htc/launcher/Launcher;->raisePriority(Z)V

    .line 8872
    return-void
.end method

.method public canEnableLeapMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 8010
    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mWindowFocus:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isDrawerDown()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v2}, Lcom/htc/launcher/DragLayer;->isDragging()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->canEnableThumbnailMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsLockEnterThumbnailMode:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mUnlockAnimListener:Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;

    iget-boolean v2, v2, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->mAnimating:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 8016
    .local v0, ret:Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mStickyMode:Z

    if-eqz v2, :cond_0

    .line 8017
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    move v0, v1

    .line 8020
    .end local v0           #ret:Z
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 8010
    goto :goto_0
.end method

.method public canFreeze()Z
    .locals 1

    .prologue
    .line 1721
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mFreezeable:Z

    return v0
.end method

.method public cancelTheCallbackForStickyModeExiting()V
    .locals 2

    .prologue
    .line 9550
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mExitStickyCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 9556
    :cond_0
    :goto_0
    return-void

    .line 9553
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mExitStickyCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mExitStickyCallback:Ljava/lang/Runnable;

    .line 9555
    const-string v0, "Rosie"

    const-string v1, "[STICKY] Launcher.cancelTheCallbackForStickyModeExiting() - ok!"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkAndReplaceFolderWithFinalItem(Lcom/htc/launcher/FolderInfo;)V
    .locals 12
    .parameter "folderInfo"

    .prologue
    .line 9739
    iget-object v0, p1, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 9740
    .local v11, nItemCount:I
    const/4 v1, 0x0

    .line 9741
    .local v1, finalItem:Lcom/htc/launcher/ItemInfo;
    const/4 v0, 0x1

    if-ne v11, v0, :cond_0

    .line 9743
    iget-object v0, p1, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #finalItem:Lcom/htc/launcher/ItemInfo;
    check-cast v1, Lcom/htc/launcher/ItemInfo;

    .restart local v1       #finalItem:Lcom/htc/launcher/ItemInfo;
    move-object v0, v1

    .line 9744
    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    invoke-virtual {p1, v0}, Lcom/htc/launcher/FolderInfo;->remove(Lcom/htc/launcher/ApplicationInfo;)V

    .line 9748
    :cond_0
    iget-wide v2, p1, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 9749
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v8

    .line 9750
    .local v8, client:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    invoke-virtual {p1}, Lcom/htc/launcher/FolderInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavBarFxItem(J)Lcom/htc/launcher/FxItem;

    move-result-object v10

    .line 9755
    .end local v8           #client:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    .local v10, item:Lcom/htc/launcher/FxItem;
    :goto_0
    if-eqz v10, :cond_1

    instance-of v0, v10, Lcom/htc/launcher/FolderIcon;

    if-nez v0, :cond_4

    .line 9756
    :cond_1
    const-string v0, "Rosie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndReplaceFolderWithFinalItem id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/launcher/FolderInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not a foldericon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9799
    .end local v1           #finalItem:Lcom/htc/launcher/ItemInfo;
    :cond_2
    :goto_1
    return-void

    .line 9752
    .end local v10           #item:Lcom/htc/launcher/FxItem;
    .restart local v1       #finalItem:Lcom/htc/launcher/ItemInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/launcher/FolderInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/launcher/DesktopItemController;->getFxShortcutItem(J)Lcom/htc/launcher/FxItem;

    move-result-object v10

    .restart local v10       #item:Lcom/htc/launcher/FxItem;
    goto :goto_0

    .line 9761
    :cond_4
    const/4 v0, 0x1

    if-gt v11, v0, :cond_2

    .line 9762
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/htc/launcher/FolderInfo;->m_bIsRemoved:Z

    move-object v9, v10

    .line 9763
    check-cast v9, Lcom/htc/launcher/FolderIcon;

    .line 9765
    .local v9, folderIcon:Lcom/htc/launcher/FolderIcon;
    instance-of v0, v9, Lcom/htc/launcher/DropTarget;

    if-eqz v0, :cond_5

    move-object v0, v9

    .line 9766
    check-cast v0, Lcom/htc/launcher/DropTarget;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->removeDropTarget(Lcom/htc/launcher/DropTarget;)V

    .line 9769
    :cond_5
    iget-wide v2, p1, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    .line 9770
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v8

    .line 9771
    .restart local v8       #client:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    invoke-virtual {v8}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarButtons()Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    move-result-object v0

    iget v2, p1, Lcom/htc/launcher/FolderInfo;->cellX:I

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 9772
    iget v0, p1, Lcom/htc/launcher/FolderInfo;->cellX:I

    invoke-virtual {v8, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getNavbarDropTarget(I)Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/LauncherBar;->setItem(Lcom/htc/launcher/FxItem;)V

    .line 9773
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/LauncherModel;->removeButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    .line 9779
    .end local v8           #client:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    :goto_2
    invoke-static {p0, p1}, Lcom/htc/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 9781
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/launcher/DesktopItemController;->removeFolder(Lcom/htc/launcher/FolderInfo;)V

    .line 9782
    if-eqz v1, :cond_2

    .line 9783
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->addDesktopItem(Lcom/htc/launcher/ItemInfo;)V

    .line 9785
    iget-wide v2, p1, Lcom/htc/launcher/FolderInfo;->container:J

    iget v4, p1, Lcom/htc/launcher/FolderInfo;->screen:I

    iget v5, p1, Lcom/htc/launcher/FolderInfo;->cellX:I

    iget v6, p1, Lcom/htc/launcher/FolderInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    .line 9788
    iget-wide v2, p1, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    .line 9789
    const-wide/16 v2, -0x65

    iput-wide v2, v1, Lcom/htc/launcher/ItemInfo;->container:J

    .line 9790
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavBarButtonHandler()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    move-result-object v0

    iget v2, p1, Lcom/htc/launcher/FolderInfo;->cellX:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->setOpenFolder(ILcom/htc/launcher/Folder;)V

    .line 9791
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavBarButtonHandler()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/htc/launcher/FxShortcutInfo;

    iget v3, p1, Lcom/htc/launcher/FolderInfo;->cellX:I

    invoke-virtual {v2, v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$NavBarButtonHandler;->addNavbarItem(Lcom/htc/launcher/FxShortcutInfo;I)V

    .line 9793
    sget-object v0, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/LauncherModel;->addButtonBarItem(Lcom/htc/launcher/ItemInfo;)V

    goto/16 :goto_1

    .line 9775
    :cond_6
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    iget v2, p1, Lcom/htc/launcher/FolderInfo;->screen:I

    invoke-virtual {v0, v9, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(Lcom/htc/launcher/Draggee;I)Z

    .line 9776
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/htc/launcher/DesktopItemController;->removeItem(Lcom/htc/launcher/DragSource;Lcom/htc/launcher/ItemInfo;)V

    goto :goto_2

    .line 9795
    :cond_7
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    check-cast v1, Lcom/htc/launcher/FxShortcutInfo;

    .end local v1           #finalItem:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->bindFxShortcut(Lcom/htc/launcher/FxShortcutInfo;)V

    goto/16 :goto_1
.end method

.method public checkButtonBar()V
    .locals 1

    .prologue
    .line 2760
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->forceBuildCache:Z

    if-eqz v0, :cond_0

    .line 2761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->forceBuildCache:Z

    .line 2763
    :cond_0
    return-void
.end method

.method public closeAllApplications()V
    .locals 2

    .prologue
    .line 5276
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->close()V

    .line 5278
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/FunctionBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5279
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4297
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_c

    .line 4298
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 4391
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 4392
    .local v1, ret:Z
    const/16 v4, 0x54

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v4, v5, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_d

    .line 4399
    .end local v1           #ret:Z
    :goto_1
    return v1

    .line 4300
    :sswitch_0
    iget-boolean v4, p0, Lcom/htc/launcher/Launcher;->mIsMenuKeyDown:Z

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_1

    .line 4301
    :cond_1
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mIsMenuKeyDown:Z

    goto :goto_0

    .line 4304
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    goto :goto_0

    .line 4309
    :sswitch_2
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v5}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    .line 4310
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->leaveEditMode()V

    .line 4312
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->hasResizeFrame()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4313
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->exitWidgetResizeMode()V

    .line 4314
    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 4318
    :cond_2
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isDrawerDown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4319
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v5}, Lcom/htc/launcher/DesktopItemController;->closeFolder()V

    .line 4320
    :cond_3
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v5}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4321
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v5}, Lcom/htc/launcher/AddListAdapter;->getLevel()I

    move-result v5

    if-lez v5, :cond_5

    .line 4322
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v4}, Lcom/htc/launcher/AddListAdapter;->callback()V

    .line 4323
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

    invoke-virtual {v4}, Lcom/htc/launcher/AddWidgetLayout;->doCheckTitle()V

    .line 4327
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

    invoke-virtual {v4}, Lcom/htc/launcher/AddWidgetLayout;->postInvalidate()V

    .line 4361
    :goto_2
    iget-boolean v4, p0, Lcom/htc/launcher/Launcher;->mPageSelect:Z

    if-eqz v4, :cond_4

    .line 4362
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v4}, Lcom/htc/launcher/LeapController;->leaveLeapMode()V

    :cond_4
    move v1, v3

    .line 4364
    goto :goto_1

    .line 4329
    :cond_5
    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->mIsOpenPersonalizeBySetting:Z

    if-eqz v5, :cond_6

    .line 4330
    iput-boolean v4, p0, Lcom/htc/launcher/Launcher;->mIsOpenPersonalizeBySetting:Z

    .line 4331
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4333
    .local v2, settings:Landroid/content/Intent;
    const/high16 v4, 0x1020

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4335
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 4336
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->onCloseDrawer()V

    goto :goto_2

    .line 4338
    .end local v2           #settings:Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v4}, Lcom/htc/launcher/AllAppsView;->clearFocus()V

    .line 4339
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v4}, Lcom/htc/launcher/widget/SlidingDrawer;->animateClose()V

    .line 4340
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4, v5}, Lcom/htc/launcher/widget/FunctionBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4341
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->resetMiddleButton()V

    .line 4342
    invoke-virtual {p0, v3}, Lcom/htc/launcher/Launcher;->updateWallpaperVisibility(Z)V

    .line 4343
    invoke-virtual {p0, v3}, Lcom/htc/launcher/Launcher;->updateFusionVisibility(Z)V

    goto :goto_2

    .line 4347
    :cond_7
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    if-eqz v5, :cond_8

    move v0, v3

    .line 4348
    .local v0, isInTabEditMode:Z
    :goto_3
    if-eqz v0, :cond_9

    .line 4350
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4351
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->onTabEndSliding(Ljava/lang/String;)V

    goto :goto_2

    .end local v0           #isInTabEditMode:Z
    :cond_8
    move v0, v4

    .line 4347
    goto :goto_3

    .line 4354
    .restart local v0       #isInTabEditMode:Z
    :cond_9
    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-eqz v5, :cond_a

    .line 4355
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    goto :goto_2

    .line 4357
    :cond_a
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->closeDrawer()V

    goto :goto_2

    .line 4368
    .end local v0           #isInTabEditMode:Z
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->closeDrawer()V

    move v1, v3

    .line 4369
    goto/16 :goto_1

    .line 4374
    :sswitch_4
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v4}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->isEditing()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    :cond_b
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 4379
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->handleDirectionalKey(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 4385
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 4386
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_0

    .line 4387
    iput-boolean v4, p0, Lcom/htc/launcher/Launcher;->mIsMenuKeyDown:Z

    goto/16 :goto_0

    .line 4397
    .restart local v1       #ret:Z
    :cond_d
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 4298
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x4f -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 4281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4282
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 4292
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 4284
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    .line 4285
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    const/4 v2, 0x1

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->surpressSensor(Z)V
    invoke-static {v1, v2}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$3700(Lcom/htc/launcher/Launcher$WidgetTilter;Z)V

    goto :goto_0

    .line 4288
    :pswitch_1
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    const/4 v2, 0x0

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->surpressSensor(Z)V
    invoke-static {v1, v2}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$3700(Lcom/htc/launcher/Launcher$WidgetTilter;Z)V

    goto :goto_0

    .line 4282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dragStickyItem(Lcom/htc/launcher/CellInfo;)V
    .locals 2
    .parameter "cellInfo"

    .prologue
    .line 9433
    if-nez p1, :cond_1

    .line 9441
    :cond_0
    :goto_0
    return-void

    .line 9436
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->isEmptyCell(Lcom/htc/launcher/CellInfo;)Z

    move-result v0

    .line 9437
    .local v0, onEmptySpace:Z
    if-nez v0, :cond_0

    .line 9438
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    .line 9439
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, p1}, Lcom/htc/launcher/Workspace;->startDrag(Lcom/htc/launcher/CellInfo;)V

    goto :goto_0
.end method

.method enablePageSelect(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 7997
    if-eqz p1, :cond_0

    const/16 v7, 0x8

    .line 7998
    .local v7, v:I
    :goto_0
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mPageSelect:Z

    .line 7999
    if-eqz p1, :cond_1

    .line 8000
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    .line 8001
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.htc.android.wallpaper.partial_pause"

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 8007
    :goto_1
    return-void

    .end local v7           #v:I
    :cond_0
    move v7, v3

    .line 7997
    goto :goto_0

    .line 8004
    .restart local v7       #v:I
    :cond_1
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.htc.android.wallpaper.partial_resume"

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected endDispatchDraw()V
    .locals 12

    .prologue
    .line 1022
    iget-boolean v8, p0, Lcom/htc/launcher/Launcher;->mIsAllProgramSliding:Z

    if-eqz v8, :cond_0

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1024
    .local v2, currentTime:J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v0, v8, v10

    .line 1025
    .local v0, currentThreadTime:J
    iget-wide v8, p0, Lcom/htc/launcher/Launcher;->mStartDrawingTime:J

    sub-long v4, v2, v8

    .line 1026
    .local v4, dt:J
    iget-wide v8, p0, Lcom/htc/launcher/Launcher;->mStartDrawingThreadTime:J

    sub-long v6, v0, v8

    .line 1027
    .local v6, thread_dt:J
    invoke-direct {p0, v4, v5}, Lcom/htc/launcher/Launcher;->addInterval(J)V

    .line 1028
    invoke-direct {p0, v6, v7}, Lcom/htc/launcher/Launcher;->addThreadInterval(J)V

    .line 1030
    .end local v0           #currentThreadTime:J
    .end local v2           #currentTime:J
    .end local v4           #dt:J
    .end local v6           #thread_dt:J
    :cond_0
    return-void
.end method

.method public endLeap(I)V
    .locals 2
    .parameter "selectPage"

    .prologue
    const/4 v1, 0x0

    .line 8876
    invoke-static {p1}, Lcom/htc/launcher/Launcher;->setScreen(I)V

    .line 8877
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0}, Lcom/htc/launcher/LeapController;->cancelGesture()V

    .line 8878
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->enablePageSelect(Z)V

    .line 8879
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->raisePriority(Z)V

    .line 8880
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 8881
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->enableTilt(Z)V

    .line 8882
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/WidgetsManager;->fireVisible(I)V

    .line 8883
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgets(I)V

    .line 8884
    return-void
.end method

.method public endStickyMode()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 9466
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mStickyMode:Z

    if-nez v0, :cond_1

    .line 9487
    :cond_0
    :goto_0
    return-void

    .line 9469
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->cancelTheCallbackForStickyModeExiting()V

    .line 9470
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->switchToStickyMode(Z)V

    .line 9472
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->hasResizeFrame()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9473
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 9475
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->hideNavEditBar()V

    .line 9476
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    .line 9477
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->hideAllDropArea()V

    .line 9480
    const-wide/16 v0, 0x320

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/launcher/Launcher;->startCreateScenePreviewThread(ZJ)V

    .line 9481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher;->mStickyLeftTime:J

    .line 9483
    sget-boolean v0, Lcom/htc/launcher/Launcher;->isPreStickyMode:Z

    if-eqz v0, :cond_3

    .line 9484
    sput-boolean v2, Lcom/htc/launcher/Launcher;->isPreStickyMode:Z

    .line 9485
    :cond_3
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel;->outputAllDeskItems()V

    .line 9486
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endStickyMode() mStickyLeftTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/launcher/Launcher;->mStickyLeftTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lcom/htc/launcher/Launcher$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 6008
    sget-object v0, Lcom/htc/launcher/Launcher;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6009
    return-void
.end method

.method public enterPreStickyMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 9452
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mStickyMode:Z

    if-eqz v0, :cond_0

    .line 9463
    :goto_0
    return-void

    .line 9455
    :cond_0
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Rosie"

    const-string v1, "enterStickyMode---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9457
    :cond_1
    sput-boolean v2, Lcom/htc/launcher/Launcher;->isPreStickyMode:Z

    .line 9458
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->switchToStickyMode(Z)V

    .line 9459
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 9460
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->showStatusBar(Z)V

    .line 9461
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showNavEditBar()V

    .line 9462
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->postDelayedCallbackToExitStickyMode()V

    goto :goto_0
.end method

.method public findPanelFromFxWorkspace(FF)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8911
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->findNearestLeapPanel(FF)I

    move-result v0

    return v0
.end method

.method public finishLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7125
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Rosie"

    const-string v2, "[APTR_TEST, rider_s_351] finishLoading()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7126
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->requestLayout()V

    .line 7127
    iput v3, p0, Lcom/htc/launcher/Launcher;->mFinishLoading:I

    .line 7128
    iput v3, p0, Lcom/htc/launcher/Launcher;->mPrepareScreensCacheIndex:I

    .line 7129
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mPrepareScreensCache:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 7130
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->invalidateScenePreviews()V

    .line 7136
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->unlockOrientation()V

    .line 7139
    sget-object v1, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Launcher;

    .line 7140
    .local v0, launcher:Lcom/htc/launcher/Launcher;
    if-eqz v0, :cond_1

    .line 7141
    invoke-static {v0}, Lcom/htc/launcher/LauncherModel;->broadcastLauncherBarChanged(Landroid/content/Context;)V

    .line 7143
    :cond_1
    return-void
.end method

.method public flattenWidgets(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 8689
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Launcher$WidgetTilter;->flattenWidgets(I)V

    .line 8690
    return-void
.end method

.method public forceCreateScenePreviewDelay(J)V
    .locals 2
    .parameter "delay"

    .prologue
    const/16 v1, 0x3f2

    .line 4984
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4985
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4986
    return-void
.end method

.method public getAddItemCellInfo()Lcom/htc/launcher/CellInfo;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/htc/launcher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method getApplicationsGrid()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5320
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesktopItemController()Lcom/htc/launcher/DesktopItemController;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    return-object v0
.end method

.method public getDragController()Lcom/htc/launcher/DragController;
    .locals 1

    .prologue
    .line 5069
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    return-object v0
.end method

.method getDrawerHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 5282
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandleView:Landroid/view/View;

    return-object v0
.end method

.method public getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    .locals 1

    .prologue
    .line 8861
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    return-object v0
.end method

.method public getLiveWallpaperName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 8343
    sget-object v0, Lcom/htc/launcher/Launcher;->mLiveWallpaperName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMiddleClickButton()I
    .locals 1

    .prologue
    .line 8996
    sget v0, Lcom/htc/launcher/Launcher;->mMiddleClickButton:I

    return v0
.end method

.method getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 3
    .parameter "info"

    .prologue
    .line 9672
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/launcher/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II)[I

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 9179
    iget v0, p0, Lcom/htc/launcher/Launcher;->mCurrentOrientation:I

    return v0
.end method

.method getPaddingForWidget(Landroid/content/ComponentName;)Lcom/htc/launcher/Launcher$Padding;
    .locals 7
    .parameter "component"

    .prologue
    .line 9692
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 9693
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    new-instance v2, Lcom/htc/launcher/Launcher$Padding;

    invoke-direct {v2, p0}, Lcom/htc/launcher/Launcher$Padding;-><init>(Lcom/htc/launcher/Launcher;)V

    .line 9697
    .local v2, p:Lcom/htc/launcher/Launcher$Padding;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 9703
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_0

    .line 9704
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 9707
    .local v4, r:Landroid/content/res/Resources;
    const v5, 0x7f0a00fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Lcom/htc/launcher/Launcher$Padding;->m_nLeft:I

    .line 9708
    const v5, 0x7f0a00fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Lcom/htc/launcher/Launcher$Padding;->m_nRight:I

    .line 9709
    const v5, 0x7f0a00fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Lcom/htc/launcher/Launcher$Padding;->m_nTop:I

    .line 9710
    const v5, 0x7f0a00fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Lcom/htc/launcher/Launcher$Padding;->m_nBottom:I

    .line 9713
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v2

    .line 9698
    :catch_0
    move-exception v1

    .line 9700
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getSavedState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 8915
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method getSpanForWidget(Landroid/content/ComponentName;II)[I
    .locals 5
    .parameter "component"
    .parameter "nMinWidth"
    .parameter "nMinHeight"

    .prologue
    .line 9676
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Launcher;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/htc/launcher/Launcher$Padding;

    move-result-object v2

    .line 9679
    .local v2, padding:Lcom/htc/launcher/Launcher$Padding;
    iget v3, v2, Lcom/htc/launcher/Launcher$Padding;->m_nLeft:I

    add-int/2addr v3, p2

    iget v4, v2, Lcom/htc/launcher/Launcher$Padding;->m_nRight:I

    add-int v1, v3, v4

    .line 9680
    .local v1, nRequiredWidth:I
    iget v3, v2, Lcom/htc/launcher/Launcher$Padding;->m_nTop:I

    add-int/2addr v3, p3

    iget v4, v2, Lcom/htc/launcher/Launcher$Padding;->m_nBottom:I

    add-int v0, v3, v4

    .line 9681
    .local v0, nRequiredHeight:I
    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/htc/launcher/CellLayout;->rectToCell(II[I)[I

    move-result-object v3

    return-object v3
.end method

.method public getWorkspace()Lcom/htc/launcher/Workspace;
    .locals 1

    .prologue
    .line 5314
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    return-object v0
.end method

.method public hideAllDropArea()V
    .locals 4

    .prologue
    .line 9444
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v2

    .line 9445
    .local v2, screenCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 9446
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v1

    .line 9447
    .local v1, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->hideDropArea()V

    .line 9445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9449
    .end local v1           #screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    :cond_0
    return-void
.end method

.method public hideDropArea(I)V
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 9559
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v1, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    .line 9560
    .local v0, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-nez v0, :cond_0

    .line 9563
    :goto_0
    return-void

    .line 9562
    :cond_0
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->hideDropArea()V

    goto :goto_0
.end method

.method public hideEditBar()V
    .locals 1

    .prologue
    .line 9597
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->hideNavEditBar()V

    .line 9598
    return-void
.end method

.method public hideOtherDropAreas(I)V
    .locals 4
    .parameter "screenIndex"

    .prologue
    .line 9566
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v2

    .line 9567
    .local v2, screenCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 9568
    if-ne v0, p1, :cond_0

    .line 9567
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9570
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v3, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v1

    .line 9571
    .local v1, screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->hideDropArea()V

    goto :goto_1

    .line 9573
    .end local v1           #screen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    :cond_1
    return-void
.end method

.method public invalidateScenePreviews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 8387
    const-string v2, "launcher"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 8388
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8389
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "scene_preview_port_invalidate"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8390
    const-string v2, "scene_preview_land_invalidate"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8391
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8392
    return-void
.end method

.method public isAbortDrag()Z
    .locals 1

    .prologue
    .line 9203
    sget-boolean v0, Lcom/htc/launcher/Launcher;->mIsAbortDrag:Z

    return v0
.end method

.method public isAddAdapterReady()Z
    .locals 1

    .prologue
    .line 9591
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    if-nez v0, :cond_0

    .line 9592
    const/4 v0, 0x0

    .line 9593
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v0}, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady()Z

    move-result v0

    goto :goto_0
.end method

.method public isAddButtonbar()Z
    .locals 2

    .prologue
    .line 8989
    sget v0, Lcom/htc/launcher/Launcher;->mMiddleClickButton:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8990
    const/4 v0, 0x0

    .line 8992
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 9579
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    if-nez v0, :cond_0

    .line 9580
    const/4 v0, 0x0

    .line 9581
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->isDragging()Z

    move-result v0

    goto :goto_0
.end method

.method isDrawerDown()Z
    .locals 1

    .prologue
    .line 5302
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDrawerMoving()Z
    .locals 1

    .prologue
    .line 5310
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    return v0
.end method

.method isDrawerUp()Z
    .locals 1

    .prologue
    .line 5306
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderIconDragged()Z
    .locals 1

    .prologue
    .line 9585
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    if-nez v0, :cond_0

    .line 9586
    const/4 v0, 0x0

    .line 9587
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->isFolderIconDragged()Z

    move-result v0

    goto :goto_0
.end method

.method isLauncherDestroyed()Z
    .locals 1

    .prologue
    .line 6938
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mDestroyed:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 8931
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsLoading:Z

    return v0
.end method

.method public isOnConfigurationChanged()Z
    .locals 1

    .prologue
    .line 5298
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mOnConfigurationChanged:Z

    return v0
.end method

.method public isOnOrientationChange()Z
    .locals 1

    .prologue
    .line 5294
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8919
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestoring()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mRestoring:Z

    return v0
.end method

.method isSceneDirty()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6271
    const-string v3, "launcher"

    invoke-virtual {p0, v3, v2}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6272
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "scene_preview_port_invalidate"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6278
    :cond_0
    :goto_0
    return v1

    .line 6274
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "scene_preview_land_invalidate"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 6278
    goto :goto_0
.end method

.method public isShowTutorialNotice()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    return v0
.end method

.method public isStickyMode()Z
    .locals 1

    .prologue
    .line 9355
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mStickyMode:Z

    return v0
.end method

.method isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 5152
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method public liveWallpaperSpin()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 8958
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mNeedLiveWallpaperSpin:Z

    .line 8959
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.htc.livewallpaper.UNLOCK_SPIN"

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 8962
    return-void
.end method

.method public loadHomeWallpaper()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2503
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v6, 0x1f5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1082
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    if-eqz v1, :cond_2

    if-eq p1, v6, :cond_0

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_0

    if-ne p1, v5, :cond_2

    .line 1086
    :cond_0
    sput-boolean v5, Lcom/htc/launcher/Launcher;->needActivityResult:Z

    .line 1087
    sput p1, Lcom/htc/launcher/Launcher;->requestCodeBackup:I

    .line 1088
    sput p2, Lcom/htc/launcher/Launcher;->resultCodeBackup:I

    .line 1089
    sput-object p3, Lcom/htc/launcher/Launcher;->dataBackup:Landroid/content/Intent;

    .line 1160
    :cond_1
    :goto_0
    return-void

    .line 1092
    :cond_2
    sput-boolean v3, Lcom/htc/launcher/Launcher;->needActivityResult:Z

    .line 1093
    sput v3, Lcom/htc/launcher/Launcher;->requestCodeBackup:I

    .line 1094
    sput v3, Lcom/htc/launcher/Launcher;->resultCodeBackup:I

    .line 1095
    sput-object v4, Lcom/htc/launcher/Launcher;->dataBackup:Landroid/content/Intent;

    .line 1098
    const/16 v1, 0xd

    if-eq p1, v1, :cond_3

    const/16 v1, 0xe

    if-ne p1, v1, :cond_4

    .line 1099
    :cond_3
    if-ne p2, v2, :cond_1

    .line 1100
    invoke-direct {p0, p1, p3}, Lcom/htc/launcher/Launcher;->onPickItem(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1105
    :cond_4
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z

    if-nez v1, :cond_5

    .line 1106
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->closeAllApplications()V

    .line 1107
    :cond_5
    const/4 v1, 0x7

    if-eq p1, v1, :cond_6

    if-eqz p3, :cond_6

    .line 1108
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->closeAllApplications()V

    .line 1111
    :cond_6
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/android/rosie/home/HostWidgetManager;->dispatchActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1114
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_b

    .line 1119
    new-instance v1, Lcom/htc/launcher/Launcher$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/launcher/Launcher$3;-><init>(Lcom/htc/launcher/Launcher;IILandroid/content/Intent;)V

    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher;->runInNextEvLoop(Ljava/lang/Runnable;)V

    .line 1138
    :cond_7
    if-nez p3, :cond_8

    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z

    if-eqz v1, :cond_1

    .line 1142
    :cond_8
    if-ne p2, v2, :cond_c

    .line 1143
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    if-nez v1, :cond_9

    .line 1147
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, v4}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 1149
    :cond_9
    invoke-direct {p0, p1, p3}, Lcom/htc/launcher/Launcher;->onPickItem(ILandroid/content/Intent;)V

    .line 1159
    :cond_a
    :goto_1
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mWaitingForResult:Z

    goto :goto_0

    .line 1125
    :cond_b
    if-ne p1, v6, :cond_7

    .line 1126
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    sget-object v2, Lcom/htc/launcher/Launcher;->mSettingWidgetCellInfo:Lcom/htc/launcher/CellInfo;

    invoke-virtual {v1, p2, p3, v2}, Lcom/htc/launcher/DesktopItemController;->onCompleteEditLegacy(ILandroid/content/Intent;Lcom/htc/launcher/CellInfo;)V

    .line 1127
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->unlock()V

    .line 1128
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mWaitingForResult:Z

    .line 1130
    sput-object v4, Lcom/htc/launcher/Launcher;->mSettingWidgetCellInfo:Lcom/htc/launcher/CellInfo;

    .line 1132
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "Rosie"

    const-string v2, "[ATS][com.htc.launcher][press_hold_widget][edited]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1150
    :cond_c
    const/16 v1, 0x9

    if-ne p1, v1, :cond_a

    if-nez p2, :cond_a

    if-eqz p3, :cond_a

    .line 1153
    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1155
    .local v0, appWidgetId:I
    if-eq v0, v2, :cond_a

    .line 1156
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/htc/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_1
.end method

.method public onAnimationStateChanged(ZLcom/htc/launcher/LeapController$ZoomDirection;)V
    .locals 2
    .parameter "playing"
    .parameter "direction"

    .prologue
    .line 8889
    if-eqz p1, :cond_1

    .line 8890
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/WidgetsManager;->fireVisible(I)V

    .line 8903
    :cond_0
    :goto_0
    return-void

    .line 8893
    :cond_1
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sIsRealTimeThumbnailMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    if-ne p2, v0, :cond_0

    .line 8894
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v0}, Lcom/htc/launcher/WidgetsManager;->fireAllVisible()V

    goto :goto_0
.end method

.method public onClickAddtoHome(Lcom/htc/launcher/CellInfo;)V
    .locals 6
    .parameter "cellInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7015
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Rosie"

    const-string v2, "onClickAddtoHome()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7016
    :cond_0
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mIsListAdapterReady:Z

    if-nez v1, :cond_1

    .line 7069
    :goto_0
    return-void

    .line 7022
    :cond_1
    if-nez p1, :cond_2

    .line 7023
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1, v5}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object p1

    .line 7024
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    .line 7034
    :cond_2
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 7036
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    if-nez v1, :cond_3

    .line 7037
    new-instance v1, Lcom/htc/launcher/AddListAdapter;

    invoke-direct {v1, p0, p0, v3}, Lcom/htc/launcher/AddListAdapter;-><init>(Lcom/htc/launcher/Launcher;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    .line 7038
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/AddWidgetLayout;->setAdapter(Lcom/htc/launcher/AddListAdapter;)V

    .line 7039
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

    new-instance v2, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;

    invoke-direct {v2, p0, v5}, Lcom/htc/launcher/Launcher$AddToHomeItemClickListener;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/launcher/AddWidgetLayout;->setAddWidgetListener(Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;)V

    .line 7040
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mProgramListLayout:Lcom/htc/launcher/AddWidgetLayout;

    new-instance v2, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;

    invoke-direct {v2, p0}, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/htc/launcher/AddWidgetLayout;->setPersonalizeOnItemClickListener(Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;)V

    .line 7042
    :cond_3
    sget v1, Lcom/htc/launcher/Launcher;->mMiddleClickButton:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 7043
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/launcher/AddListAdapter;->reset(Z)V

    .line 7051
    :cond_4
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7052
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/launcher/widget/SlidingDrawer;->restore_layout()V

    .line 7055
    :cond_5
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7056
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v1}, Lcom/htc/launcher/AllAppsView;->clearFocus()V

    .line 7057
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/launcher/widget/SlidingDrawer;->animateClose()V

    .line 7058
    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->updateWallpaperVisibility(Z)V

    .line 7059
    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->updateFusionVisibility(Z)V

    .line 7060
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v1, v2}, Lcom/htc/launcher/widget/FunctionBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 7064
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.personalize.carousel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7067
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClickAllProgram()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 6956
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "onClickAllProgram()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6957
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6958
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_1

    .line 6959
    const-string v0, "Handle buttons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " left_btn.mDrawer.isMoving() =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6998
    :cond_1
    :goto_0
    return-void

    .line 6963
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->closeFolder()V

    .line 6964
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    .line 6967
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->initTabs()V

    .line 6968
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    sget v1, Lcom/htc/launcher/Launcher;->mProgramListId:I

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AllAppsView;->changeDrawerContentById(I)V

    .line 6969
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->restoreLastViewAspect()V

    .line 6971
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsAllProgramSliding:Z

    .line 6972
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "Handle buttons"

    const-string v1, "all program sliding up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6973
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6980
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6981
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->clearFocus()V

    .line 6982
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->animateClose()V

    .line 6983
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->updateWallpaperVisibility(Z)V

    .line 6984
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->updateFusionVisibility(Z)V

    .line 6985
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/FunctionBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 6990
    :cond_4
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->onOpenDrawer()V

    .line 6991
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6992
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mControl:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6993
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->layout_update_for_allapps()V

    .line 6995
    :cond_5
    const-string v0, "com.htc.launcher"

    const-string v1, "user_action"

    const-string v2, "allapp_launch"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/launcher/Logger;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6996
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Rosie"

    const-string v1, "HTC user profiling     allapp_launch     true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClickPhone()V
    .locals 3

    .prologue
    .line 5081
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 5082
    const-string v1, "Handle buttons"

    const-string v2, "try startCallActivity "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->startCallActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5090
    :goto_0
    return-void

    .line 5086
    :catch_0
    move-exception v0

    .line 5087
    .local v0, e:Ljava/lang/Exception;
    const v1, 0x7f0b0038

    const/16 v2, 0x3e8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCloseDrawer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4418
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->setVisibility(I)V

    .line 4419
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4420
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mControl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4421
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->restore_layout()V

    .line 4423
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->close()V

    .line 4424
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->updateWallpaperVisibility(Z)V

    .line 4425
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->updateFusionVisibility(Z)V

    .line 4426
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7372
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/launcher/Profiler;->start()V

    .line 7373
    :cond_0
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "Rotate.Performance"

    const-string v4, "+onConfigurationChanged"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7375
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/launcher/Launcher;->mStartOrientation:J

    .line 7377
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mFreezeable:Z

    .line 7378
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    if-eqz v1, :cond_2

    .line 7379
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v1}, Lcom/htc/launcher/SlideController;->stopSlide()V

    .line 7381
    :cond_2
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mOnConfigurationChanged:Z

    .line 7382
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    sput v1, Lcom/htc/launcher/Launcher;->mUiMode:I

    .line 7390
    sget-object v1, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v1}, Lcom/htc/launcher/OrientationMonitor;->onConfigurationChanged()V

    .line 7392
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7394
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 7395
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mSkipUiModeChange:Z

    .line 7399
    :cond_3
    iget v1, p0, Lcom/htc/launcher/Launcher;->mCurrentMcc:I

    iget v4, p1, Landroid/content/res/Configuration;->mcc:I

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/htc/launcher/Launcher;->mCurrentMnc:I

    iget v4, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v4, :cond_5

    .line 7400
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iget v4, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-direct {p0, v1, v4}, Lcom/htc/launcher/Launcher;->onSimChanged(II)V

    .line 7404
    :cond_5
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mCurrentLocale:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 7405
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/Launcher;->mCurrentLocale:Ljava/lang/String;

    .line 7406
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->saveLocaleAndSimConfigs()V

    .line 7408
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    sput-object v1, Lcom/htc/launcher/Utilities;->sCollator:Ljava/text/Collator;

    .line 7411
    const/16 v1, 0x66

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->dismissDialog(I)V

    .line 7412
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7419
    :goto_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->showDialog(I)V

    .line 7421
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mOnConfigChangedReloading:Z

    .line 7422
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mOptionsMenuChanged:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 7423
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mPageSelect:Z

    .line 7430
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->removeAllViewsRecursively()V

    .line 7431
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/htc/launcher/DragLayer;->removeAllViews()V

    .line 7433
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7434
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->setContentView(I)V

    .line 7435
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->setupViews()V

    .line 7438
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v1}, Lcom/htc/launcher/WidgetsManager;->onActivityDestroy()V

    .line 7441
    sget-object v1, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v1, v2, p0, v2}, Lcom/htc/launcher/LauncherModel;->loadApplications(ZLcom/htc/launcher/Launcher;Z)Z

    move-result v0

    .line 7443
    .local v0, loadApplications:Z
    sget-object v1, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v1, v3, p0, v2, v0}, Lcom/htc/launcher/LauncherModel;->loadUserItems(ZLcom/htc/launcher/Launcher;ZZ)V

    .line 7445
    const-string v1, "RosieDbDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged() --> loadUserItems(false, launcher, true, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7449
    .end local v0           #loadApplications:Z
    :cond_6
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->isSupportLandscape:Z

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/htc/launcher/Launcher;->mCurrentOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v4, :cond_15

    .line 7450
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mChangingOrientation:Z

    .line 7452
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    .line 7453
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    .line 7454
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->leaveEditMode()V

    .line 7455
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v1}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7456
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v1}, Lcom/htc/launcher/LeapController;->endLeapMode()V

    .line 7457
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v1}, Lcom/htc/launcher/LeapController;->cancelGesture()V

    .line 7460
    :cond_7
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mUnlockAnimListener:Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mUnlockAnimListener:Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;

    iget-boolean v1, v1, Lcom/htc/launcher/Launcher$RosieUnlockAnimationListener;->mAnimating:Z

    if-eqz v1, :cond_8

    .line 7461
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v1, :cond_8

    .line 7462
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->unlockAnimationStop()V

    .line 7465
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/launcher/Launcher;->mCurrentOrientation:I

    .line 7466
    sget-object v1, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    invoke-virtual {v1}, Lcom/htc/launcher/OrientationMonitor;->addOnConfigurationChanged()V

    .line 7467
    sget-object v1, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/htc/launcher/LauncherAppWidgetHost;->startListening()V

    .line 7471
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    if-eqz v1, :cond_9

    .line 7473
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->hideTutorialNotice()V

    .line 7476
    :cond_9
    iget v1, p0, Lcom/htc/launcher/Launcher;->orientationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/launcher/Launcher;->orientationCount:I

    .line 7477
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_b

    .line 7478
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    if-eqz v1, :cond_a

    .line 7479
    const-string v1, "Rosie"

    const-string v4, "too soon to enter orientation change again"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7480
    :cond_a
    const-string v1, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orientationCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/launcher/Launcher;->orientationCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7482
    :cond_b
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    if-nez v1, :cond_c

    .line 7483
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3}, Lcom/htc/launcher/Workspace;->restoreRemovedChildren(IZ)V

    .line 7484
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/htc/launcher/DragLayer;->restoreRemovedChildren()V

    .line 7487
    :cond_c
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->mNewConfig:Landroid/content/res/Configuration;

    .line 7489
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    if-nez v1, :cond_d

    .line 7490
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/htc/launcher/DragLayer;->tempRemoveChildren()V

    .line 7492
    :cond_d
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v1}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v1}, Lcom/htc/launcher/AllAppsView;->isAllApps()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 7493
    :cond_e
    iget v1, p0, Lcom/htc/launcher/Launcher;->mCurrentOrientation:I

    if-ne v1, v2, :cond_12

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher;->allProgramUpdateOrientation(Z)V

    .line 7494
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    invoke-virtual {v1, v4, v2}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->reset(II)V

    .line 7496
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v1, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 7505
    :goto_2
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/htc/launcher/Workspace;->setVisibility(I)V

    .line 7506
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mOnOrientationChange:Z

    .line 7507
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    invoke-virtual {v1, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 7508
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iput-boolean v2, v1, Lcom/htc/launcher/Workspace;->mFirstLayout:Z

    .line 7510
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7511
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->SearchBar_UpdateOrientation()V

    .line 7512
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->ButtonBarViews_UpdateOrientation()V

    .line 7513
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v1

    sget-object v2, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v2}, Lcom/htc/launcher/LauncherModel;->getButtonBarOccupied()[Z

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showMiddleBackgroundImageControls([Z)V

    .line 7517
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    if-eqz v1, :cond_f

    .line 7518
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v1}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 7519
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/launcher/widget/SlidingDrawer;->restore_layout()V

    .line 7523
    :cond_f
    :goto_3
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    if-eqz v1, :cond_10

    .line 7524
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/htc/launcher/DragLayer;->DragHint_UpdateOrientation()V

    .line 7532
    :cond_10
    :goto_4
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mOnConfigurationChanged:Z

    .line 7535
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_11

    .line 7536
    const-string v1, "Rosie"

    const-string v2, ">> onConfigurationChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7537
    const-string v1, "onConfigurationChanged: "

    invoke-static {v3, v1}, Lcom/htc/launcher/Profiler;->stop(ZLjava/lang/String;)V

    .line 7539
    :cond_11
    return-void

    :cond_12
    move v1, v3

    .line 7493
    goto :goto_1

    .line 7498
    :cond_13
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->reset(II)V

    .line 7500
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/htc/launcher/widget/SlidingDrawer;->setVisibility(I)V

    .line 7502
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mOrientationIdleHandler:Lcom/htc/launcher/Launcher$OrientationIdleHandler;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher$OrientationIdleHandler;->doStageOne()V

    goto :goto_2

    .line 7521
    :cond_14
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/launcher/widget/SlidingDrawer;->layout_update_for_allapps()V

    goto :goto_3

    .line 7529
    :cond_15
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mFreezeable:Z

    goto :goto_4

    .line 7413
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 582
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - enter"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getFilesDir()Ljava/io/File;

    .line 588
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/launcher/Utilities;->enforceConfigOrientation(Landroid/content/Context;I)V

    .line 593
    :cond_0
    new-instance v0, Lcom/htc/launcher/Launcher$DofreezeScreen;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$DofreezeScreen;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->m_freezeScreen:Lcom/htc/launcher/Launcher$DofreezeScreen;

    .line 594
    new-instance v11, Landroid/os/HandlerThread;

    const-string v0, "freezeScreen"

    invoke-direct {v11, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 595
    .local v11, t1:Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 596
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->m_freezeScreenHandler:Landroid/os/Handler;

    .line 598
    invoke-static {}, Lcom/htc/launcher/OperatorTabManager;->getInstance()Lcom/htc/launcher/OperatorTabManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/launcher/OperatorTabManager;->setContext(Landroid/content/Context;)V

    .line 599
    invoke-static {}, Lcom/htc/launcher/OperatorTabManager;->getInstance()Lcom/htc/launcher/OperatorTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/OperatorTabManager;->getResources()Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->setResources(Landroid/content/res/Resources;)V

    .line 600
    invoke-static {p0}, Lcom/htc/launcher/PagesManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;

    .line 602
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 603
    .local v10, pref:Landroid/content/SharedPreferences;
    const-string v0, "SHOWED"

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/launcher/Launcher;->isTipShowed:Z

    .line 604
    const-string v0, "newstyle_tip"

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/launcher/Launcher;->newStyleTip:Z

    .line 606
    sget-boolean v0, Lcom/htc/launcher/Launcher;->newStyleTip:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/launcher/Launcher;->isTipShowed:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/launcher/Launcher;->shortcutTipPriority:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 607
    const-string v0, "Rosie"

    const-string v1, "initShortcutTip from db"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->initShortcutTip()V

    .line 611
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->setGId(I)V

    .line 613
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->isSupportLandscape:Z

    .line 616
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v0, "/data/data/"

    const-string v1, "AllProgramSliding"

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsEstimateSlidingDrawer:Z

    .line 619
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "Handle buttons"

    const-string v1, "enable All program Sliding estimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v8           #file:Ljava/io/File;
    :cond_2
    :goto_0
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - get Collator"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/Utilities;->sCollator:Ljava/text/Collator;

    .line 633
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - get sKeyguardManager"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    sget-object v0, Lcom/htc/launcher/Launcher;->sKeyguardManager:Landroid/app/HtcIfKeyguardManager;

    if-nez v0, :cond_3

    .line 635
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcIfKeyguardManager;

    sput-object v0, Lcom/htc/launcher/Launcher;->sKeyguardManager:Landroid/app/HtcIfKeyguardManager;

    .line 637
    :cond_3
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/launcher/Launcher;->mCurrentOrientation:I

    .line 638
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    .line 640
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - SettingUtil.loadSettings()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-static {p0}, Lcom/htc/launcher/settings/SettingUtil;->loadSettings(Landroid/content/Context;)V

    .line 644
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - new ScrollMonitor(this)"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    new-instance v0, Lcom/htc/launcher/ScrollMonitor;

    invoke-direct {v0, p0}, Lcom/htc/launcher/ScrollMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    .line 647
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - new OrientationMonitor(this)"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    new-instance v0, Lcom/htc/launcher/OrientationMonitor;

    invoke-direct {v0, p0}, Lcom/htc/launcher/OrientationMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    .line 650
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - mHandler.getLooper().setMessageLogging()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sIsEnableLoopLog:Z

    if-eqz v0, :cond_4

    .line 653
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x2

    const-string v3, "Rosie"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 658
    :cond_4
    new-instance v0, Lcom/htc/launcher/Launcher$RootAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/Launcher$RootAsyncTask;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    .line 660
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - selectWallpaperConfig()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->selectWallpaperConfig()V

    .line 663
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - super.onCreate()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 666
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - FxSkinUtility.loadSkinResource()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0}, Lcom/htc/fusion/fx/FxSkinUtility;->loadSkinResource(Landroid/content/Context;I)V

    .line 670
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - get AppWidgetManager instance()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->showLoadingCursor:Z

    .line 676
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - lockOrientation()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->lockOrientation()V

    .line 683
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - getDefaultAppWidgetHostInstance()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {p0}, Lcom/htc/launcher/Launcher;->getDefaultAppWidgetHostInstance(Landroid/content/Context;)Lcom/htc/launcher/LauncherAppWidgetHost;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    .line 686
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherAppWidgetHost;->startListening()V

    .line 693
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - checkLocale()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-direct {p0, p0}, Lcom/htc/launcher/Launcher;->checkLocale(Landroid/content/Context;)Z

    move-result v9

    .line 698
    .local v9, isLocaleChanged:Z
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - init wallpaper manager"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/launcher/WallpaperManager;->initWithAppContext(Landroid/content/Context;)V

    .line 701
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v13

    .line 702
    .local v13, wp:Lcom/htc/launcher/WallpaperManager;
    invoke-virtual {v13, p0}, Lcom/htc/launcher/WallpaperManager;->registerOnWallpaperChangedListener(Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;)V

    .line 703
    invoke-virtual {v13}, Lcom/htc/launcher/WallpaperManager;->isImageWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mImageWallpaper:Z

    .line 704
    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is image wallpaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mImageWallpaper:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/launcher/Launcher$WallpaperIntentReceiver;->sLauncherStarted:Z

    .line 707
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - getDefaultDisplay()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 709
    .local v7, display:Landroid/view/Display;
    invoke-static {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;->getInstance(Landroid/view/Display;)Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/Launcher;->sFxPathFinder:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;

    .line 710
    invoke-static {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;->getInstance(Landroid/view/Display;)Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/Launcher;->sFxSceneManager:Lcom/htc/android/rosie/home/fxcontrol/FxSceneManager;

    .line 712
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - setWallpaperDimension()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-direct {p0, v7}, Lcom/htc/launcher/Launcher;->setWallpaperDimension(Landroid/view/Display;)V

    .line 715
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - getWindow()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 717
    .local v12, window:Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 718
    .local v6, attr:Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 720
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 722
    invoke-virtual {v12, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 724
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->setContentView(I)V

    .line 726
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - setupViews()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->setupViews()V

    .line 729
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - initTutorialNotice()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->initTutorialNotice()V

    .line 732
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - registerIntentReceivers()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->registerIntentReceivers()V

    .line 735
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - registerContentObservers()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->registerContentObservers()V

    .line 738
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->registerTelephonyManager:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->runInNextEvLoop(Ljava/lang/Runnable;)V

    .line 740
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 743
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 744
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v1, "launcher.all_apps_folder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 746
    :cond_5
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - restoreState()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 753
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - new WidgetsManager()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    new-instance v0, Lcom/htc/launcher/WidgetsManager;

    invoke-direct {v0}, Lcom/htc/launcher/WidgetsManager;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    .line 756
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->instanceNoScan()Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/WidgetsManager;->setWidgetPackageManager(Lcom/htc/launcher/WidgetPackageManager;)V

    .line 759
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - new HostWidgetManager()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    if-nez v0, :cond_6

    .line 763
    new-instance v0, Lcom/htc/android/rosie/home/HostWidgetManager;

    new-instance v1, Lcom/htc/launcher/HostActivityBridge;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getViewObject()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/launcher/HostActivityBridge;-><init>(Landroid/app/Activity;Lcom/htc/fusion/fx/FxViewObject;)V

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/home/HostWidgetManager;-><init>(Lcom/htc/android/rosie/home/HostWidgetManager$Owner;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    .line 765
    :cond_6
    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->instanceNoScan()Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/WidgetPackageManager;->setFxWidgetManager(Lcom/htc/android/rosie/home/HostWidgetManager;)V

    .line 783
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - new DesktopItemController()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    if-nez v0, :cond_7

    .line 785
    new-instance v0, Lcom/htc/launcher/DesktopItemController;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/DesktopItemController;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Workspace;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/android/rosie/home/HostWidgetManager;Lcom/htc/launcher/SlideController;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    .line 786
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->setLegacyFloatingEnv(Lcom/htc/launcher/DesktopItemController$FloatingEnv;)V

    .line 787
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/DesktopItemController;->setFxFloatingEnv(Lcom/htc/launcher/DesktopItemController$FloatingEnv;)V

    .line 790
    :cond_7
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - startLoaders()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-direct {p0, v9}, Lcom/htc/launcher/Launcher;->startLoaders(Z)V

    .line 792
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mRestoring:Z

    if-nez v0, :cond_8

    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mPauseByLoaders:Z

    .line 796
    :cond_8
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - new SpannableStringBuilder"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 799
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 802
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    new-instance v0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/Launcher$TiltSettingsObserver;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltSettingsObserver:Lcom/htc/launcher/Launcher$TiltSettingsObserver;

    .line 809
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - new TiltSettingQueryAsyncTask.execute"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v0, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 811
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->loadLocaleAndSimConfigs()V

    .line 812
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] Launcher.onCreate() - exit"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void

    .line 621
    .end local v6           #attr:Landroid/view/WindowManager$LayoutParams;
    .end local v7           #display:Landroid/view/Display;
    .end local v9           #isLocaleChanged:Z
    .end local v12           #window:Landroid/view/Window;
    .end local v13           #wp:Lcom/htc/launcher/WallpaperManager;
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 15
    .parameter "id"

    .prologue
    .line 5337
    sparse-switch p1, :sswitch_data_0

    .line 5469
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/CarouselInternalActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v12

    :goto_0
    return-object v12

    .line 5339
    :sswitch_0
    new-instance v2, Lcom/htc/launcher/Launcher$CreateShortcut;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/launcher/Launcher$CreateShortcut;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v12

    goto :goto_0

    .line 5341
    :sswitch_1
    const-string v2, "WidgetPackageManager"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 5343
    .local v11, preferences:Landroid/content/SharedPreferences;
    const-string v2, "scan_htc_widget_done"

    const/4 v3, 0x0

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 5344
    .local v13, scanDone:Z
    new-instance v12, Lcom/htc/launcher/Launcher$NoSearchProgressDialog;

    invoke-direct {v12, p0, p0}, Lcom/htc/launcher/Launcher$NoSearchProgressDialog;-><init>(Lcom/htc/launcher/Launcher;Landroid/content/Context;)V

    .line 5345
    .local v12, progressDialog:Lcom/htc/launcher/Launcher$NoSearchProgressDialog;
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v13, :cond_0

    const v2, 0x20c00a3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/htc/launcher/Launcher$NoSearchProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5347
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/htc/launcher/Launcher$NoSearchProgressDialog;->setIndeterminate(Z)V

    .line 5348
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/launcher/Launcher$NoSearchProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 5345
    :cond_0
    const v2, 0x7f0b0045

    goto :goto_1

    .line 5352
    .end local v11           #preferences:Landroid/content/SharedPreferences;
    .end local v12           #progressDialog:Lcom/htc/launcher/Launcher$NoSearchProgressDialog;
    .end local v13           #scanDone:Z
    :sswitch_2
    :try_start_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5353
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0b000a

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5354
    const v2, 0x7f030022

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5356
    .local v1, textEntryView:Landroid/view/View;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5357
    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 5359
    .local v10, list:Landroid/widget/ListView;
    new-instance v6, Lcom/htc/launcher/AddWallpaperDialogAdapter;

    invoke-direct {v6, p0}, Lcom/htc/launcher/AddWallpaperDialogAdapter;-><init>(Landroid/content/Context;)V

    .line 5360
    .local v6, adapter:Lcom/htc/launcher/AddWallpaperDialogAdapter;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 5361
    invoke-virtual {v10, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5362
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 5363
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 5364
    new-instance v2, Lcom/htc/launcher/Launcher$18;

    invoke-direct {v2, p0}, Lcom/htc/launcher/Launcher$18;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5388
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5390
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto/16 :goto_0

    .line 5391
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #textEntryView:Landroid/view/View;
    .end local v6           #adapter:Lcom/htc/launcher/AddWallpaperDialogAdapter;
    .end local v10           #list:Landroid/widget/ListView;
    :catch_0
    move-exception v9

    .line 5393
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 5397
    .end local v9           #e:Ljava/lang/Exception;
    :sswitch_3
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 5398
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 5402
    :cond_2
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 5403
    .local v14, tmpLabels:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 5404
    .local v8, currentSort:I
    invoke-static {p0}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/launcher/ApplicationManager;->hasDefault:Z

    if-eqz v2, :cond_7

    .line 5405
    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/String;

    .line 5406
    .local v7, choiceLabels:[Ljava/lang/String;
    const/4 v2, 0x0

    const v3, 0x7f0b0073

    invoke-virtual {p0, v3}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 5407
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, v14, v3

    aput-object v3, v7, v2

    .line 5408
    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    aput-object v3, v7, v2

    .line 5409
    const/4 v2, 0x3

    const/4 v3, 0x2

    aget-object v3, v14, v3

    aput-object v3, v7, v2

    .line 5410
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v2, v2, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->CUST_PRIORITY:Ljava/util/Comparator;

    if-ne v2, v3, :cond_4

    .line 5411
    const/4 v8, 0x0

    .line 5433
    :cond_3
    :goto_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x20c0139

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/launcher/Launcher$19;

    invoke-direct {v3, p0}, Lcom/htc/launcher/Launcher$19;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-virtual {v2, v7, v8, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v12

    goto/16 :goto_0

    .line 5412
    :cond_4
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v2, v2, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    if-ne v2, v3, :cond_5

    .line 5413
    const/4 v8, 0x1

    goto :goto_2

    .line 5414
    :cond_5
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v2, v2, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_NEWEST_FIRST:Ljava/util/Comparator;

    if-ne v2, v3, :cond_6

    .line 5415
    const/4 v8, 0x2

    goto :goto_2

    .line 5416
    :cond_6
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v2, v2, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_OLDEST_FIRST:Ljava/util/Comparator;

    if-ne v2, v3, :cond_3

    .line 5417
    const/4 v8, 0x3

    goto :goto_2

    .line 5420
    .end local v7           #choiceLabels:[Ljava/lang/String;
    :cond_7
    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    .line 5421
    .restart local v7       #choiceLabels:[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v14, v3

    aput-object v3, v7, v2

    .line 5422
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v14, v3

    aput-object v3, v7, v2

    .line 5423
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-object v3, v14, v3

    aput-object v3, v7, v2

    .line 5424
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v2, v2, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    if-ne v2, v3, :cond_8

    .line 5425
    const/4 v8, 0x0

    goto :goto_2

    .line 5426
    :cond_8
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v2, v2, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_NEWEST_FIRST:Ljava/util/Comparator;

    if-ne v2, v3, :cond_9

    .line 5427
    const/4 v8, 0x1

    goto :goto_2

    .line 5428
    :cond_9
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    iget-object v2, v2, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_OLDEST_FIRST:Ljava/util/Comparator;

    if-ne v2, v3, :cond_3

    .line 5429
    const/4 v8, 0x2

    goto :goto_2

    .line 5337
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 3710
    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-eqz v2, :cond_0

    .line 3780
    :goto_0
    return v0

    .line 3713
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3716
    const/16 v2, 0xf

    const v3, 0x7f0b0022

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x50

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3720
    const v2, 0x7f0b001f

    invoke-interface {p1, v0, v5, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02006c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x57

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3726
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3727
    const v2, 0x20c0138

    invoke-interface {p1, v0, v6, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x2080333

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x73

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3738
    :cond_1
    const/4 v2, 0x6

    const v3, 0x20c0200

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x2080336

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3753
    const/4 v2, 0x7

    const v3, 0x7f0b0034

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x208032a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3756
    const/16 v2, 0x8

    const v3, 0x7f0b0035

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x2080326

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x47

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3759
    const/16 v2, 0xa

    const v3, 0x7f0b0037

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x2080323

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x44

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3762
    const/16 v2, 0xb

    const v3, 0x20c0137

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x2080338

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x53

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3765
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3766
    const/16 v2, 0xe

    const v3, 0x20c0138

    invoke-interface {p1, v4, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x2080333

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x73

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3771
    :cond_2
    const/16 v2, 0xd

    invoke-static {p0, p1, v4, v2, v1}, Lcom/htc/launcher/AppSharing;->addIfExists(Landroid/content/Context;Landroid/view/Menu;III)V

    .line 3773
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mOptionsMenuChanged:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3775
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->hasResizeFrame()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3776
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->exitWidgetResizeMode()V

    .line 3777
    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    :cond_3
    move v0, v1

    .line 3780
    goto/16 :goto_0
.end method

.method onDesktopItemsLoaded()V
    .locals 2

    .prologue
    .line 4535
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 4560
    :goto_0
    return-void

    .line 4537
    :cond_0
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_1

    .line 4538
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "Home"

    const-string v1, "setting grid adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    :cond_1
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherModel;->getApplicationsAdapter()Lcom/htc/launcher/ApplicationsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    .line 4541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsListAdapterReady:Z

    .line 4542
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsApplicationLoaded:Z

    if-eqz v0, :cond_2

    .line 4543
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->createListAdapter()V

    .line 4555
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->setAllAppsAdapter(Lcom/htc/launcher/ApplicationsAdapter;)V

    .line 4557
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->bindDesktopItems()V

    .line 4559
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->updateButtonBarViews()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3478
    sget-boolean v4, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "Rosie"

    const-string v5, "onDestroy"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    :cond_0
    iput-boolean v8, p0, Lcom/htc/launcher/Launcher;->mDestroying:Z

    .line 3480
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v4, :cond_1

    .line 3481
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mTiltSettingsObserver:Lcom/htc/launcher/Launcher$TiltSettingsObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 3483
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    monitor-enter v5

    .line 3484
    :try_start_0
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 3485
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3488
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 3489
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_2

    .line 3490
    invoke-virtual {v3, v6}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 3491
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    if-eqz v4, :cond_2

    .line 3492
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 3495
    :cond_2
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->onDestroy()V

    .line 3496
    invoke-super {p0}, Lcom/htc/widget/CarouselInternalActivity;->onDestroy()V

    .line 3498
    invoke-static {}, Lcom/htc/launcher/PendingUIUpdate;->reset()V

    .line 3502
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    if-eqz v4, :cond_3

    .line 3503
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/HostWidgetManager;->finish()V

    .line 3504
    iput-object v6, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    .line 3509
    :cond_3
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v4}, Lcom/htc/launcher/WidgetsManager;->onDestory()V

    .line 3510
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v4}, Lcom/htc/launcher/WidgetsManager;->onActivityDestroy()V

    .line 3514
    :try_start_1
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v4}, Lcom/htc/launcher/LauncherAppWidgetHost;->stopListening()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3519
    :goto_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/method/TextKeyListener;->release()V

    .line 3521
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v4}, Lcom/htc/launcher/DesktopItemController;->destroy()V

    .line 3523
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v4}, Lcom/htc/launcher/AllAppsView;->getAllContents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3524
    .local v0, c:Landroid/view/ViewGroup;
    instance-of v4, v0, Lcom/htc/launcher/AllAppsListView;

    if-eqz v4, :cond_5

    move-object v4, v0

    .line 3525
    check-cast v4, Lcom/htc/launcher/AllAppsListView;

    invoke-virtual {v4}, Lcom/htc/launcher/AllAppsListView;->clearTextFilter()V

    move-object v4, v0

    .line 3526
    check-cast v4, Lcom/htc/launcher/AllAppsListView;

    invoke-virtual {v4, v6}, Lcom/htc/launcher/AllAppsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3529
    :cond_5
    instance-of v4, v0, Lcom/htc/launcher/AllAppsGridView;

    if-eqz v4, :cond_6

    move-object v4, v0

    .line 3530
    check-cast v4, Lcom/htc/launcher/AllAppsGridView;

    invoke-virtual {v4}, Lcom/htc/launcher/AllAppsGridView;->clearTextFilter()V

    move-object v4, v0

    .line 3531
    check-cast v4, Lcom/htc/launcher/AllAppsGridView;

    invoke-virtual {v4, v6}, Lcom/htc/launcher/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3533
    :cond_6
    instance-of v4, v0, Lcom/htc/launcher/AddWidgetLayout;

    if-eqz v4, :cond_4

    .line 3534
    check-cast v0, Lcom/htc/launcher/AddWidgetLayout;

    .end local v0           #c:Landroid/view/ViewGroup;
    invoke-virtual {v0, v6}, Lcom/htc/launcher/AddWidgetLayout;->setAdapter(Lcom/htc/launcher/AddListAdapter;)V

    goto :goto_1

    .line 3485
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3515
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v1

    .line 3516
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "Rosie"

    const-string v5, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3538
    .end local v1           #ex:Ljava/lang/NullPointerException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/htc/launcher/WallpaperManager;->unregisterOnWallpaperChangedListener(Lcom/htc/launcher/WallpaperManager$OnWallpaperChangedListener;)V

    .line 3541
    sget-object v4, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v4}, Lcom/htc/launcher/LauncherModel;->unbind()V

    .line 3542
    sget-object v4, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v4}, Lcom/htc/launcher/LauncherModel;->abortLoaders()V

    .line 3544
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3545
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mAppWidgetResetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3546
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3548
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mKeyguardIntentReceiver:Lcom/htc/launcher/Launcher$KeyguardIntentReceiver;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3549
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mThemeChangeReceiver:Lcom/htc/launcher/Launcher$ThemeChangeReceiver;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3551
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mHtcWidgetUpdateReceiver:Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3552
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mSummaryReceiver:Lcom/htc/launcher/Launcher$SummaryReceiver;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3553
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3555
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->unregisterWeatherAnimationNotify()V

    .line 3556
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mSilderReceiver:Lcom/htc/launcher/Launcher$SilderReceiver;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3558
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_9

    .line 3559
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->phoneStateListener:Lcom/htc/launcher/Launcher$RosiePhoneStateListener;

    invoke-virtual {v4, v5, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3572
    :goto_2
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mUpdateSceneListReceiver:Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;

    if-eqz v4, :cond_8

    .line 3573
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mUpdateSceneListReceiver:Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3575
    :cond_8
    iput-object v6, p0, Lcom/htc/launcher/Launcher;->mUpdateSceneListReceiver:Lcom/htc/launcher/Launcher$UpdateSceneListReceiver;

    .line 3577
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    .line 3578
    iput-boolean v8, p0, Lcom/htc/launcher/Launcher;->mDestroyed:Z

    .line 3579
    iput-boolean v7, p0, Lcom/htc/launcher/Launcher;->mIsEstimateSlidingDrawer:Z

    .line 3582
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 3584
    return-void

    .line 3561
    :cond_9
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->registerTelephonyManager:Ljava/lang/Runnable;

    invoke-direct {p0, v4}, Lcom/htc/launcher/Launcher;->cancelDelayed(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method onFavoritesChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 4486
    iput-boolean v6, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    .line 4487
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->lock()V

    .line 4488
    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p0

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/Launcher;->removeWidgetsAndLoadUserItems(ZLcom/htc/launcher/Launcher;ZZIZ)V

    .line 4489
    return-void
.end method

.method public onGoogleSearchRequested()Z
    .locals 2

    .prologue
    .line 4062
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "On Google Search: The intent is a Search category."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/CarouselInternalActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v13}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v13}, Lcom/htc/launcher/AllAppsView;->isAllApps()Z

    move-result v13

    if-eqz v13, :cond_f

    const/16 v13, 0x14

    move/from16 v0, p1

    if-eq v0, v13, :cond_0

    const/16 v13, 0x13

    move/from16 v0, p1

    if-ne v0, v13, :cond_f

    .line 1932
    :cond_0
    const v13, 0x7f07002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1933
    .local v11, searchBar:Landroid/view/View;
    if-nez v11, :cond_2

    .line 1934
    const/4 v5, 0x1

    .line 2071
    .end local v11           #searchBar:Landroid/view/View;
    :cond_1
    :goto_0
    return v5

    .line 1936
    .restart local v11       #searchBar:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v14}, Lcom/htc/launcher/AllAppsView;->getContentView()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1937
    .local v2, allAppsContent:Landroid/view/View;
    const-string v13, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    .line 1938
    .local v8, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v6, 0x0

    .line 1939
    .local v6, hideSoftKeyboard:Z
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x13

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-nez v13, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/CarouselHost;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x13

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v13}, Lcom/htc/launcher/ApplicationsAdapter;->getCount()I

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-eqz v13, :cond_6

    .line 1941
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 1942
    invoke-virtual {v11}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1972
    :goto_1
    if-eqz v6, :cond_5

    .line 1973
    new-instance v13, Lcom/htc/launcher/Launcher$8;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8, v11}, Lcom/htc/launcher/Launcher$8;-><init>(Lcom/htc/launcher/Launcher;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    const-wide/16 v14, 0x190

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/htc/launcher/Launcher;->runDelayed(Ljava/lang/Runnable;J)V

    .line 1984
    const/4 v6, 0x0

    .line 1987
    :cond_5
    const/4 v5, 0x1

    goto :goto_0

    .line 1943
    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v13, 0x14

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v13}, Lcom/htc/launcher/ApplicationsAdapter;->getCount()I

    move-result v13

    if-nez v13, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/CarouselHost;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x13

    move/from16 v0, p1

    if-ne v0, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v13}, Lcom/htc/launcher/ApplicationsAdapter;->getCount()I

    move-result v13

    if-eqz v13, :cond_9

    .line 1945
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1946
    invoke-virtual {v2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1947
    const/4 v6, 0x1

    goto :goto_1

    .line 1949
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x14

    move/from16 v0, p1

    if-eq v0, v13, :cond_b

    :cond_a
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v13

    if-eqz v13, :cond_c

    const/16 v13, 0x14

    move/from16 v0, p1

    if-ne v0, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v13}, Lcom/htc/launcher/ApplicationsAdapter;->getCount()I

    move-result v13

    if-nez v13, :cond_c

    .line 1951
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    .line 1952
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/CarouselWidget;->requestFocusFromTouch()Z

    .line 1953
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1957
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v13}, Lcom/htc/launcher/ApplicationsAdapter;->getCount()I

    move-result v13

    if-nez v13, :cond_d

    const/16 v13, 0x13

    move/from16 v0, p1

    if-ne v0, v13, :cond_d

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-eqz v13, :cond_d

    .line 1959
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 1960
    invoke-virtual {v11}, Landroid/view/View;->requestFocusFromTouch()Z

    goto/16 :goto_1

    .line 1961
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v13}, Lcom/htc/launcher/ApplicationsAdapter;->getCount()I

    move-result v13

    if-nez v13, :cond_e

    .line 1962
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    .line 1963
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/CarouselWidget;->requestFocusFromTouch()Z

    .line 1964
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1966
    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1967
    invoke-virtual {v2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1968
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1990
    .end local v2           #allAppsContent:Landroid/view/View;
    .end local v6           #hideSoftKeyboard:Z
    .end local v8           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v11           #searchBar:Landroid/view/View;
    :cond_f
    invoke-super/range {p0 .. p2}, Lcom/htc/widget/CarouselInternalActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 1991
    .local v5, handled:Z
    if-nez v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->acceptFilter()Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v13, 0x42

    move/from16 v0, p1

    if-eq v0, v13, :cond_1

    .line 2006
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isUAKSupported()Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->mIsMenuKeyDown:Z

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v13}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v13

    if-nez v13, :cond_11

    .line 2008
    if-nez v5, :cond_11

    const/16 v13, 0x1d

    move/from16 v0, p1

    if-lt v0, v13, :cond_11

    const/16 v13, 0x36

    move/from16 v0, p1

    if-gt v0, v13, :cond_11

    .line 2010
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x3ec

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->isUakKeyProcessed:Z

    if-nez v13, :cond_11

    .line 2011
    sget-boolean v13, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v13, :cond_10

    const-string v13, "Rosie"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Send UAK key long press timeout message , keyCode "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x3ec

    const/16 v16, 0x0

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v14, v15, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x5dc

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2020
    :cond_11
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v14, v15, v0, v1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 2022
    .local v4, gotKey:Z
    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 2028
    invoke-direct/range {p0 .. p2}, Lcom/htc/launcher/Launcher;->hardwareKeySmartGoogleSearch(ILandroid/view/KeyEvent;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 2029
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2033
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2035
    .local v12, str:Ljava/lang/String;
    const/4 v10, 0x1

    .line 2036
    .local v10, isDialable:Z
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    .line 2037
    .local v3, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v3, :cond_13

    .line 2038
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v13

    if-nez v13, :cond_14

    .line 2039
    const/4 v10, 0x0

    .line 2044
    :cond_13
    if-eqz v10, :cond_15

    .line 2045
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.DIAL"

    const-string v14, "tel"

    const/4 v15, 0x0

    invoke-static {v14, v12, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v9, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2054
    .local v9, intent:Landroid/content/Intent;
    :goto_3
    const/high16 v13, 0x1020

    invoke-virtual {v9, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2058
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2063
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2064
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2065
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2067
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2037
    .end local v9           #intent:Landroid/content/Intent;
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2048
    :cond_15
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2050
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v13, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v9, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 2059
    :catch_0
    move-exception v13

    goto :goto_4
.end method

.method public onKeyDownToRequestSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4403
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4404
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v0}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4405
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-nez v0, :cond_0

    .line 4406
    invoke-direct {p0, v1, v2}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    .line 4415
    :cond_0
    :goto_0
    return-void

    .line 4411
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->closeOptionsMenu()V

    .line 4414
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/htc/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/16 v7, 0x3ec

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1872
    if-ne p1, v3, :cond_0

    .line 1873
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 1876
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/CarouselInternalActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1878
    .local v0, handled:Z
    if-ne p1, v3, :cond_2

    .line 1879
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v2}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-eqz v2, :cond_1

    .line 1880
    const/4 v2, 0x0

    invoke-direct {p0, v6, v2}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    .line 1918
    .end local v0           #handled:Z
    :cond_1
    :goto_0
    return v0

    .line 1882
    .restart local v0       #handled:Z
    :cond_2
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-nez v3, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1883
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v3}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1884
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable all app search, char is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    .line 1889
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isUAKSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/htc/launcher/Launcher;->lastUakKeyCode:I

    if-ne v3, p1, :cond_4

    .line 1890
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1891
    iput-boolean v6, p0, Lcom/htc/launcher/Launcher;->isUakKeyProcessed:Z

    .line 1892
    iput v6, p0, Lcom/htc/launcher/Launcher;->lastUakKeyCode:I

    :cond_4
    move v0, v2

    .line 1895
    goto :goto_0

    .line 1898
    :cond_5
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isUAKSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1d

    if-lt p1, v3, :cond_1

    const/16 v3, 0x36

    if-gt p1, v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->mIsMenuKeyDown:Z

    if-nez v3, :cond_1

    .line 1901
    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->isUakKeyProcessed:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1902
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_6

    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable UAK key launch, keyCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_6
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1905
    new-instance v1, Landroid/content/Intent;

    const-string v3, "ACTION_UAK_TRIGGLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1906
    .local v1, uakIntent:Landroid/content/Intent;
    const-string v3, "EXTRA_UAK_KEY_TYPE"

    add-int/lit8 v4, p1, -0x1d

    add-int/lit8 v4, v4, 0x61

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1907
    const-string v3, "EXTRA_UAK_KEY_EVENT_LONGPRESS"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1908
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v2

    .line 1909
    goto/16 :goto_0

    .line 1910
    .end local v1           #uakIntent:Landroid/content/Intent;
    :cond_7
    iget v3, p0, Lcom/htc/launcher/Launcher;->lastUakKeyCode:I

    if-ne v3, p1, :cond_8

    .line 1911
    iput-boolean v6, p0, Lcom/htc/launcher/Launcher;->isUakKeyProcessed:Z

    .line 1912
    iput v6, p0, Lcom/htc/launcher/Launcher;->lastUakKeyCode:I

    :cond_8
    move v0, v2

    .line 1915
    goto/16 :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5205
    sget-boolean v6, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v6, :cond_0

    const-string v6, "Rosie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLongClick:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    :cond_0
    if-nez p1, :cond_2

    .line 5267
    :cond_1
    :goto_0
    return v4

    .line 5209
    :cond_2
    iget-boolean v6, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    if-eqz v6, :cond_3

    move v4, v5

    .line 5210
    goto :goto_0

    .line 5213
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->isTutorialView(Landroid/view/View;)Z

    move-result v0

    .line 5217
    .local v0, bTutorial:Z
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->removeTutorialNotice()V

    .line 5220
    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v6}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5224
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->findCellInfo(Landroid/view/View;)Lcom/htc/launcher/CellInfo;

    move-result-object v1

    .line 5226
    .local v1, cellInfo:Lcom/htc/launcher/CellInfo;
    if-nez v1, :cond_4

    move v4, v5

    .line 5228
    goto :goto_0

    .line 5231
    :cond_4
    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->allowLongPress()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5235
    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v6}, Lcom/htc/launcher/DragLayer;->isDragging()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5236
    const-string v4, "Rosie"

    const-string v6, "Illegal state: long click while dragging"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 5237
    goto :goto_0

    .line 5241
    :cond_5
    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher;->isEmptyCell(Lcom/htc/launcher/CellInfo;)Z

    move-result v3

    .line 5243
    .local v3, onEmptySpace:Z
    if-nez v3, :cond_6

    if-eqz v0, :cond_8

    .line 5244
    :cond_6
    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->mStickyMode:Z

    if-eqz v5, :cond_7

    .line 5245
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 5247
    :cond_7
    iput-object v1, p0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    .line 5248
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->onClickAddtoHome(Lcom/htc/launcher/CellInfo;)V

    goto :goto_0

    .line 5252
    :cond_8
    iget-object v6, v1, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    instance-of v6, v6, Lcom/htc/launcher/Folder;

    if-nez v6, :cond_b

    .line 5254
    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher;->isValidCellInfo(Lcom/htc/launcher/CellInfo;)Z

    move-result v2

    .line 5255
    .local v2, isCellValid:Z
    if-nez v2, :cond_9

    move v4, v5

    .line 5256
    goto :goto_0

    .line 5260
    :cond_9
    sput-object v1, Lcom/htc/launcher/Launcher;->mSettingWidgetCellInfo:Lcom/htc/launcher/CellInfo;

    .line 5261
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_a

    const-string v5, "Rosie"

    const-string v6, "[EDIT_DEBUG] onLongClick() mWorkspace.startDrag()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
    :cond_a
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5, v1}, Lcom/htc/launcher/Workspace;->startDrag(Lcom/htc/launcher/CellInfo;)V

    .line 5263
    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->switchToStickyMode(Z)V

    goto :goto_0

    .end local v2           #isCellValid:Z
    :cond_b
    move v4, v5

    .line 5267
    goto :goto_0
.end method

.method public onLongPress()V
    .locals 0

    .prologue
    .line 8908
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->onLowMemory()V

    .line 1403
    :cond_0
    const-string v0, "Rosie"

    const-string v1, "TODO: onLowMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    invoke-super {p0}, Lcom/htc/widget/CarouselInternalActivity;->onLowMemory()V

    .line 1405
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 19
    .parameter "intent"

    .prologue
    .line 3122
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/CarouselInternalActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    const-string v14, "com.htc.launcher.intent.category.SEARCH"

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3126
    sget-boolean v13, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v13, :cond_0

    const-string v13, "Rosie"

    const-string v14, "OnNewIntent: The intent is a Search category."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/launcher/Launcher;->mIsSearchCategory:Z

    .line 3130
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->resetMiddleButton()V

    .line 3133
    const-string v13, "android.intent.action.MAIN"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 3136
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x40

    and-int/2addr v13, v14

    const/high16 v14, 0x40

    if-eq v13, v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x1000

    and-int/2addr v13, v14

    const/high16 v14, 0x1000

    if-ne v13, v14, :cond_3

    .line 3138
    :cond_2
    const/4 v13, 0x1

    sput-boolean v13, Lcom/htc/launcher/Launcher;->sIsBroughtToFront:Z

    .line 3140
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->closeAllPanels()V

    .line 3143
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->dismissDialog(I)V

    .line 3145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3152
    :goto_0
    const/16 v13, 0x67

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->dismissDialog(I)V

    .line 3153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3159
    :goto_1
    const/4 v13, 0x2

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->dismissDialog(I)V

    .line 3161
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3168
    :goto_2
    const/16 v13, 0x66

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->dismissDialog(I)V

    .line 3170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->unlock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3178
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/Launcher;->addItemIntoDesktop(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3179
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/launcher/Launcher;->sIsBroughtToFront:Z

    .line 3321
    :cond_4
    :goto_4
    return-void

    .line 3203
    :cond_5
    sget-boolean v13, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v13, :cond_6

    const-string v13, "Rosie"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "System.currentTimeMillis() - mStickyLeftTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/launcher/Launcher;->mStickyLeftTime:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/launcher/Launcher;->mLauncherLeftTime:J

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x190

    cmp-long v13, v13, v15

    if-gez v13, :cond_10

    .line 3206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->hasResizeFrame()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->exitWidgetResizeMode()V

    .line 3208
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 3211
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->mPageSelect:Z

    if-eqz v13, :cond_b

    .line 3212
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/launcher/Launcher;->mIsPressHomeKey:Z

    .line 3213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/launcher/LeapController;->leaveLeapMode(I)V

    .line 3248
    :cond_8
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->closeDrawer()V

    .line 3249
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget-object v12, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3250
    .local v12, token:Landroid/os/IBinder;
    if-eqz v12, :cond_9

    .line 3251
    const-string v13, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 3252
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_9

    .line 3253
    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3255
    .end local v6           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/launcher/Launcher;->mSkipUiModeChange:Z

    .line 3279
    .end local v12           #token:Landroid/os/IBinder;
    :goto_6
    const/4 v13, 0x0

    sput-boolean v13, Lcom/htc/launcher/Launcher;->sIsBroughtToFront:Z

    .line 3281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    if-eqz v13, :cond_a

    .line 3282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v13}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    .line 3284
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    if-eqz v13, :cond_14

    const/4 v7, 0x1

    .line 3285
    .local v7, isInTabEditMode:Z
    :goto_7
    if-eqz v7, :cond_4

    .line 3287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->onTabEndSliding(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3214
    .end local v7           #isInTabEditMode:Z
    :cond_b
    sget v13, Lcom/htc/launcher/Launcher;->mUiMode:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_c

    .line 3216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->showDefaultScreen()V

    .line 3217
    const/4 v13, 0x0

    sput v13, Lcom/htc/launcher/Launcher;->mUiMode:I

    goto :goto_5

    .line 3218
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->isDefaultScreenShowing()Z

    move-result v13

    if-nez v13, :cond_e

    .line 3219
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->mSkipUiModeChange:Z

    if-nez v13, :cond_8

    .line 3223
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->mIsAllowMoveToDefaultScreen:Z

    if-eqz v13, :cond_d

    .line 3224
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/launcher/Launcher;->mIsAllowMoveToDefaultScreen:Z

    .line 3225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x3ea

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 3226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v14}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/launcher/Workspace;->drawScreens(I)V

    .line 3227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    const/4 v14, 0x1

    #setter for: Lcom/htc/launcher/Launcher$WidgetTilter;->mSurpressScroll:Z
    invoke-static {v13, v14}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$2402(Lcom/htc/launcher/Launcher$WidgetTilter;Z)Z

    .line 3228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V
    invoke-static {v13}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V

    .line 3230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->moveToDefaultScreen()I

    move-result v2

    .line 3231
    .local v2, duration:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x3ea

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    int-to-long v15, v2

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3235
    .end local v2           #duration:I
    :cond_d
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/launcher/Launcher;->mIsPressHomeKey:Z

    goto/16 :goto_5

    .line 3237
    :cond_e
    sget-boolean v13, Lcom/htc/launcher/settings/SettingUtil;->sIsHomeToThumbnail:Z

    if-eqz v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->canEnableLeapMode()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/launcher/Launcher;->mStickyLeftTime:J

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x190

    cmp-long v13, v13, v15

    if-lez v13, :cond_8

    .line 3239
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->mSkipUiModeChange:Z

    if-nez v13, :cond_8

    .line 3240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/launcher/Workspace;->drawScreens(I)V

    .line 3241
    const-string v13, "com.htc.launcher"

    const-string v14, "leap_view"

    const-string v15, "leapview_launch"

    const-string v16, "key"

    invoke-static/range {v13 .. v16}, Lcom/htc/launcher/Logger;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3242
    sget-boolean v13, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v13, :cond_f

    const-string v13, "Rosie"

    const-string v14, "HTC user profiling     leapview_launch     true,key"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v13}, Lcom/htc/launcher/LeapController;->enterLeapMode()V

    .line 3245
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/launcher/Launcher;->mIsPressHomeKey:Z

    goto/16 :goto_5

    .line 3257
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->mPageSelect:Z

    if-eqz v13, :cond_11

    .line 3258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/launcher/LeapController;->leaveLeapMode(I)V

    goto/16 :goto_6

    .line 3260
    :cond_11
    const-string v13, "open_personalize"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 3261
    .local v11, openPersonalize:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/htc/launcher/WidgetsManager;->onActivityNewIntent(Lcom/htc/launcher/Launcher;)V

    .line 3262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->isDefaultScreenShowing()Z

    move-result v13

    if-nez v13, :cond_12

    if-nez v11, :cond_12

    .line 3263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->showDefaultScreen()V

    .line 3265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 3267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v13}, Lcom/htc/launcher/Workspace;->doNotRestoreCurrentScreen()V

    .line 3269
    :cond_12
    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->mIsLoading:Z

    if-nez v13, :cond_13

    .line 3270
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/Launcher;->onOpenPersonalize()V

    .line 3271
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    goto/16 :goto_6

    .line 3274
    :cond_13
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/launcher/Launcher;->closeDrawer(Z)V

    goto/16 :goto_6

    .line 3284
    .end local v11           #openPersonalize:Z
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 3291
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.htc.launcher.action.OPEN_LAUNCHER_BAR_FOLDER"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3294
    sget-object v13, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/launcher/Launcher;

    .line 3295
    .local v10, launcher:Lcom/htc/launcher/Launcher;
    if-eqz v10, :cond_4

    .line 3299
    const-string v13, "folder_id"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 3301
    .local v3, folder_id:J
    sget-object v13, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v13}, Lcom/htc/launcher/LauncherModel;->getButtonBarItems()Ljava/util/ArrayList;

    move-result-object v9

    .line 3303
    .local v9, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-eqz v9, :cond_4

    .line 3307
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/ItemInfo;

    .line 3308
    .local v8, item:Lcom/htc/launcher/ItemInfo;
    iget-wide v13, v8, Lcom/htc/launcher/ItemInfo;->id:J

    cmp-long v13, v13, v3

    if-nez v13, :cond_16

    iget v13, v8, Lcom/htc/launcher/ItemInfo;->itemType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_16

    .line 3309
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/launcher/Launcher;->closeDrawer(Z)V

    .line 3311
    const-string v13, "Rosie"

    const-string v14, "ACTION_OPEN_LAUNCHER_BAR_FOLDER %b"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/Launcher;->mSkipUnlockAnimation:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3312
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/launcher/Launcher;->mSkipUnlockAnimation:Z

    if-eqz v13, :cond_17

    .line 3313
    iget-object v13, v10, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    check-cast v8, Lcom/htc/launcher/FolderInfo;

    .end local v8           #item:Lcom/htc/launcher/ItemInfo;
    invoke-virtual {v13, v8}, Lcom/htc/launcher/DesktopItemController;->onClickFolder(Lcom/htc/launcher/FolderInfo;)V

    goto/16 :goto_4

    .line 3315
    .restart local v8       #item:Lcom/htc/launcher/ItemInfo;
    :cond_17
    check-cast v8, Lcom/htc/launcher/FolderInfo;

    .end local v8           #item:Lcom/htc/launcher/ItemInfo;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/launcher/Launcher;->m_openFolderAfterUnlockAnimation:Lcom/htc/launcher/FolderInfo;

    goto/16 :goto_4

    .line 3171
    .end local v3           #folder_id:J
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    .end local v10           #launcher:Lcom/htc/launcher/Launcher;
    :catch_0
    move-exception v13

    goto/16 :goto_3

    .line 3162
    :catch_1
    move-exception v13

    goto/16 :goto_2

    .line 3154
    :catch_2
    move-exception v13

    goto/16 :goto_1

    .line 3146
    :catch_3
    move-exception v13

    goto/16 :goto_0
.end method

.method public onOpenPersonalize()V
    .locals 2

    .prologue
    .line 4434
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "onOpenPersonalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4435
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsOpenPersonalizeBySetting:Z

    .line 4436
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AllAppsView;->changeDrawerContentById(I)V

    .line 4437
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->prepareAddToHomeContent()V

    .line 4438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 4440
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4441
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->restore_layout()V

    .line 4444
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/SlidingDrawer;->setVisibility(I)V

    .line 4445
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->open()V

    .line 4447
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mControl:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4448
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mControl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4449
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 3830
    iput-boolean v5, p0, Lcom/htc/launcher/Launcher;->mIsMenuKeyDown:Z

    .line 3832
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3923
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 3834
    :pswitch_0
    invoke-static {}, Lcom/htc/launcher/Launcher;->addNewFolder()V

    goto :goto_0

    .line 3845
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3847
    .local v2, settings:Landroid/content/Intent;
    const/high16 v4, 0x1020

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3849
    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0

    .line 3853
    .end local v2           #settings:Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->removeTutorialNotice()V

    .line 3854
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x60

    if-eq v4, v5, :cond_1

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 3856
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3857
    .local v1, i:Landroid/content/Intent;
    const-string v4, "com.htc.htcnew"

    const-string v5, "com.htc.htcnew.HTCNew"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3858
    const-string v4, "android.htc.intent.action.SHARE_BUTTON"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3860
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3861
    :catch_0
    move-exception v0

    .line 3862
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v4, :cond_0

    .line 3863
    const-string v4, "Rosie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity fail, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3867
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->prepareAddToHomeContent()V

    .line 3868
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->prepareCurrentScreenCache()V

    .line 3869
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Lcom/htc/launcher/AllAppsView;->changeDrawerContentById(I)V

    .line 3870
    invoke-virtual {p0, v6}, Lcom/htc/launcher/Launcher;->onClickAddtoHome(Lcom/htc/launcher/CellInfo;)V

    goto :goto_0

    .line 3874
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->startWallpaper()V

    goto :goto_0

    .line 3878
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->onSearchRequested()Z

    goto :goto_0

    .line 3881
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->showNotifications()V

    goto :goto_0

    .line 3886
    :pswitch_6
    invoke-direct {p0, v5}, Lcom/htc/launcher/Launcher;->setAllAppsLayout(Z)V

    goto :goto_0

    .line 3889
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/htc/launcher/Launcher;->setAllAppsLayout(Z)V

    goto :goto_0

    .line 3893
    :pswitch_8
    invoke-direct {p0, v3, v6}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3896
    :pswitch_9
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3899
    :pswitch_a
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v4

    if-nez v4, :cond_5

    .line 3900
    :cond_3
    sget-boolean v4, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v4, :cond_4

    const-string v4, "Rosie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MENU_ALL_APPS_SORT mApplicationsAdapter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    :cond_4
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v4, :cond_0

    .line 3902
    sget-boolean v4, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "Rosie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MENU_ALL_APPS_SORT mApplicationsAdapter.getList() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3906
    :cond_5
    const/16 v4, 0x67

    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->showDialog(I)V

    goto/16 :goto_0

    .line 3910
    :pswitch_b
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->onClickAllProgram()V

    goto/16 :goto_0

    .line 3913
    :pswitch_c
    invoke-static {p0}, Lcom/htc/launcher/AppSharing;->onItemSelected(Lcom/htc/launcher/Launcher;)V

    goto/16 :goto_0

    .line 3916
    :pswitch_d
    invoke-direct {p0, v3, v6}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3919
    :pswitch_e
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->enterPreStickyMode()V

    goto/16 :goto_0

    .line 3832
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_e
        :pswitch_0
    .end packed-switch
.end method

.method onOrientationChanged(Z)V
    .locals 5
    .parameter "portrait"

    .prologue
    const v3, 0x7f0a005c

    const/4 v4, -0x1

    .line 7336
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher;->allProgramUpdateOrientation(Z)V

    .line 7338
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->isSupportLandscape:Z

    if-eqz v0, :cond_0

    .line 7340
    sget-object v0, Lcom/htc/launcher/Launcher;->sOrientationMonitor:Lcom/htc/launcher/OrientationMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/OrientationMonitor;->onOrientationChanged(Z)V

    .line 7343
    :cond_0
    if-eqz p1, :cond_1

    .line 7344
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x51

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/FunctionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7355
    :goto_0
    return-void

    .line 7349
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x15

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/FunctionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 1726
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "Launcher onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->hasResizeFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1729
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->exitWidgetResizeMode()V

    .line 1730
    invoke-virtual {p0, v3}, Lcom/htc/launcher/Launcher;->showWindow(Z)V

    .line 1732
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 1734
    iput-boolean v11, p0, Lcom/htc/launcher/Launcher;->mIsPause:Z

    .line 1735
    iput-boolean v11, p0, Lcom/htc/launcher/Launcher;->mFreezeable:Z

    .line 1737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1738
    .local v7, begin:J
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->isKeyguardOnWhenOnResume:Z

    .line 1740
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    if-eqz v0, :cond_8

    move v9, v11

    .line 1741
    .local v9, isInTabEditMode:Z
    :goto_0
    if-eqz v9, :cond_2

    .line 1745
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->onTabEndSliding(Ljava/lang/String;)V

    .line 1749
    :cond_2
    invoke-static {}, Lcom/htc/launcher/PendingUIUpdate;->instance()Lcom/htc/launcher/PendingUIUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/PendingUIUpdate;->beginScroll()V

    .line 1756
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mPauseByLoaders:Z

    if-eqz v0, :cond_3

    .line 1757
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mPauseByLoaders:Z

    .line 1760
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->closeFolder()V

    .line 1762
    invoke-super {p0}, Lcom/htc/widget/CarouselInternalActivity;->onPause()V

    .line 1764
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mIsRessumeNeedCloseSliderAndStartActivity:Z

    .line 1765
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1769
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.htc.android.wallpaper.resume"

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1777
    :goto_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v0, p0}, Lcom/htc/launcher/WidgetsManager;->onActivityPause(Lcom/htc/launcher/Launcher;)V

    .line 1778
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->dumpMemory()V

    .line 1781
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    .line 1784
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsAllowMoveToDefaultScreen:Z

    if-eqz v0, :cond_4

    .line 1785
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v0}, Lcom/htc/launcher/SlideController;->stopSlide()V

    .line 1786
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1787
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->resetSink()V

    .line 1788
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 1789
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->endScroll()V

    .line 1793
    :cond_4
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mWillLeave:Z

    if-eqz v0, :cond_a

    .line 1794
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0}, Lcom/htc/launcher/LeapController;->endLeapMode()V

    .line 1798
    :goto_2
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0, v11}, Lcom/htc/launcher/Workspace;->enableScroll(Z)V

    .line 1799
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->onPause()V

    .line 1802
    invoke-virtual {p0, v3}, Lcom/htc/launcher/Launcher;->raisePriority(Z)V

    .line 1805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher;->mLauncherLeftTime:J

    .line 1807
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 1810
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v1

    invoke-virtual {v0, v1, v11}, Lcom/htc/android/rosie/home/HostWidgetManager;->pauseWidgets(IZ)V

    .line 1813
    invoke-direct {p0, v3}, Lcom/htc/launcher/Launcher;->enableTilt(Z)V

    .line 1815
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsInComingCall:Z

    if-eqz v0, :cond_5

    .line 1816
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->stopPhoneAnim()V

    .line 1819
    :cond_5
    const-string v0, "htctelephony"

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/service/HtcTelephonyManager;

    .line 1821
    .local v10, phoneServ:Lcom/htc/service/HtcTelephonyManager;
    if-eqz v10, :cond_6

    .line 1822
    invoke-virtual {v10, v11}, Lcom/htc/service/HtcTelephonyManager;->notifyScreenBusy(Z)V

    .line 1823
    const-string v0, "Rosie"

    const-string v1, "notifyScreenBusy(true)"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_6
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_7

    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() [finished] : diff - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_7
    return-void

    .end local v9           #isInTabEditMode:Z
    .end local v10           #phoneServ:Lcom/htc/service/HtcTelephonyManager;
    :cond_8
    move v9, v3

    .line 1740
    goto/16 :goto_0

    .line 1773
    .restart local v9       #isInTabEditMode:Z
    :cond_9
    invoke-direct {p0, v3}, Lcom/htc/launcher/Launcher;->closeDrawer(Z)V

    goto/16 :goto_1

    .line 1796
    :cond_a
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v0}, Lcom/htc/launcher/LeapController;->endAnimation()V

    goto :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 5474
    packed-switch p1, :pswitch_data_0

    .line 5479
    :goto_0
    return-void

    .line 5476
    :pswitch_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->lock()V

    goto :goto_0

    .line 5474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3785
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v5}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v5}, Lcom/htc/launcher/DragLayer;->isDragging()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->mIsWorkspaceChanging:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->mPageSelect:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move v6, v7

    .line 3824
    :cond_2
    :goto_0
    return v6

    .line 3789
    :cond_3
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3790
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v8}, Lcom/htc/launcher/Workspace;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/launcher/DesktopItemController;->closeFolder(Lcom/htc/launcher/Folder;)V

    .line 3793
    :cond_4
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/htc/launcher/Workspace;->findAllVacantCells([Z)Lcom/htc/launcher/CellInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/launcher/Launcher;->mMenuAddInfo:Lcom/htc/launcher/CellInfo;

    .line 3797
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mOptionsMenuChanged:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3798
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 3799
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Launcher;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3804
    :cond_5
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 3808
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    .line 3809
    .local v0, allApps:Z
    if-nez v0, :cond_7

    move v5, v6

    :goto_1
    invoke-interface {p1, v7, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3810
    if-nez v0, :cond_8

    move v5, v6

    :goto_2
    invoke-interface {p1, v6, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3811
    const/4 v5, 0x2

    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3812
    if-eqz v0, :cond_2

    .line 3813
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3814
    .local v2, l:Landroid/view/MenuItem;
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3815
    .local v1, g:Landroid/view/MenuItem;
    const/16 v5, 0xb

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 3817
    .local v4, s:Landroid/view/MenuItem;
    sget v5, Lcom/htc/launcher/Launcher;->mProgramListId:I

    const v8, 0x7f070003

    if-ne v5, v8, :cond_9

    move v3, v6

    .line 3818
    .local v3, listView:Z
    :goto_3
    if-nez v3, :cond_6

    move v7, v6

    :cond_6
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3819
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3820
    const-string v5, "tab_allapps"

    iget-object v7, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v7}, Lcom/htc/launcher/AllAppsView;->getCurrentTab()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v1           #g:Landroid/view/MenuItem;
    .end local v2           #l:Landroid/view/MenuItem;
    .end local v3           #listView:Z
    .end local v4           #s:Landroid/view/MenuItem;
    :cond_7
    move v5, v7

    .line 3809
    goto :goto_1

    :cond_8
    move v5, v7

    .line 3810
    goto :goto_2

    .restart local v1       #g:Landroid/view/MenuItem;
    .restart local v2       #l:Landroid/view/MenuItem;
    .restart local v4       #s:Landroid/view/MenuItem;
    :cond_9
    move v3, v7

    .line 3817
    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 3401
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 3402
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    .line 1409
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v10}, Lcom/htc/launcher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->requestLayout()V

    .line 1410
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v10}, Lcom/htc/launcher/DragLayer;->requestLayout()V

    .line 1411
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x30

    if-eq v10, v11, :cond_0

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x1c

    if-ne v10, v11, :cond_1

    .line 1412
    :cond_0
    const-string v10, "persist.sys.kidzone_mode"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1414
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1415
    .local v4, intent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.htc.launcher"

    const-string v12, "com.htc.launcher.kidzone.RestrictLauncher"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1417
    :try_start_0
    const-string v10, "Rosie"

    const-string v11, "Launcher onResume() jump to kidzone mode"

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    sget-boolean v10, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v10, :cond_2

    const-string v10, "Rosie"

    const-string v11, "Launcher onResume()"

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1428
    .local v1, begin:J
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsPause:Z

    .line 1430
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->mActivityLaunched:Z

    if-eqz v10, :cond_3

    .line 1431
    const-string v10, "Rosie"

    const-string v11, "Launch done."

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mResetLaunchState:Ljava/lang/Runnable;

    invoke-direct {p0, v10}, Lcom/htc/launcher/Launcher;->cancelDelayed(Ljava/lang/Runnable;)V

    .line 1433
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mResetLaunchState:Ljava/lang/Runnable;

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 1437
    :cond_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->isUakKeyProcessed:Z

    .line 1438
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/launcher/Launcher;->lastUakKeyCode:I

    .line 1439
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsConfigurationChanged:Z

    if-eqz v10, :cond_1a

    .line 1440
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->changeOrientation()V

    .line 1446
    :cond_4
    :goto_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsRessumeNeedCloseSliderAndStartActivity:Z

    .line 1447
    invoke-super {p0}, Lcom/htc/widget/CarouselInternalActivity;->onResume()V

    .line 1448
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->isSupportLandscape:Z

    if-nez v10, :cond_5

    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 1449
    const-string v10, "Rosie"

    const-string v11, "orientation error, it is caused by framework do something wrong"

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_5
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->clearLaputaNavigateFlag()V

    .line 1456
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsPressHomeKey:Z

    if-nez v10, :cond_6

    .line 1457
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.htc.launcher.intent.RESUMED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1458
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1462
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->showLoadingCursor:Z

    .line 1463
    .local v5, loadingOnResume:Z
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->showLoadingCursor:Z

    if-eqz v10, :cond_9

    .line 1464
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->showLoadingCursor:Z

    .line 1467
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v10, :cond_7

    .line 1468
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->hide()V

    .line 1471
    :cond_7
    sget-boolean v10, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v10, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/htc/launcher/Launcher;->mLoadingTime:J

    .line 1472
    :cond_8
    const/16 v10, 0x64

    invoke-virtual {p0, v10}, Lcom/htc/launcher/Launcher;->showDialog(I)V

    .line 1473
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsLoading:Z

    .line 1476
    :cond_9
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->mWillLeave:Z

    if-eqz v10, :cond_a

    .line 1483
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->mWillLeave:Z

    .line 1489
    :cond_a
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->mRestoring:Z

    if-eqz v10, :cond_b

    .line 1490
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/htc/launcher/Launcher;->startLoaders(Z)V

    .line 1493
    :cond_b
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v10, :cond_c

    .line 1495
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v11, "launcher.all_apps_folder"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1497
    .local v0, allApps:Z
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v11, "launcher.sliding_all_apps"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1500
    .end local v0           #allApps:Z
    :cond_c
    iget-boolean v8, p0, Lcom/htc/launcher/Launcher;->mIsPressHomeKey:Z

    .line 1502
    .local v8, resumeByHomeKey:Z
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v10}, Lcom/htc/launcher/Workspace;->onRestoreInstanceState()V

    .line 1503
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v10}, Lcom/htc/launcher/Workspace;->onResume()V

    .line 1505
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v10}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndexByScrollX()I

    move-result v10

    int-to-float v3, v10

    .line 1506
    .local v3, curPage:F
    sget-boolean v10, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v10, :cond_d

    const-string v10, "Rosie"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onResume() [onRestoreInstanceState] : diff - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_d
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsPressHomeKey:Z

    .line 1513
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z

    .line 1515
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsSearchCategory:Z

    if-eqz v10, :cond_f

    .line 1516
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsSearchCategory:Z

    .line 1517
    sget-boolean v10, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v10, :cond_e

    const-string v10, "Rosie"

    const-string v11, "OnResume: The intent is a Search category."

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :cond_e
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->onSearchRequested()Z

    .line 1522
    :cond_f
    sget-object v10, Lcom/htc/launcher/Launcher;->sKeyguardManager:Landroid/app/HtcIfKeyguardManager;

    invoke-interface {v10}, Landroid/app/HtcIfKeyguardManager;->keyguardIsShowing()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1523
    sget-boolean v10, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v10, :cond_10

    .line 1524
    sget-boolean v10, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v10, :cond_10

    const-string v10, "Rosie"

    const-string v11, "keyguardIsShowing"

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_10
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->isKeyguardOnWhenOnResume:Z

    .line 1527
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    const/16 v11, 0x32

    invoke-virtual {v10, p0, v11}, Lcom/htc/launcher/WidgetsManager;->onActivityResume(Lcom/htc/launcher/Launcher;I)V

    .line 1529
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/android/rosie/home/HostWidgetManager;->onResumeInKeyguard(I)V

    .line 1531
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mScrollMonitor:Lcom/htc/launcher/ScrollMonitor;

    invoke-virtual {v10}, Lcom/htc/launcher/ScrollMonitor;->refreshFile()V

    .line 1534
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v10}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1535
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;

    invoke-virtual {v10}, Lcom/htc/launcher/LeapController;->endLeapMode()V

    .line 1538
    :cond_11
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 1539
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->showUnlockAnimation()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1541
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->show()V

    .line 1544
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mSlideController:Lcom/htc/launcher/SlideController;

    invoke-virtual {v10}, Lcom/htc/launcher/SlideController;->stopSlide()V

    .line 1545
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v10}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1546
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->resetSink()V

    .line 1547
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 1548
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v10}, Lcom/htc/launcher/Workspace;->endScroll()V

    .line 1551
    :cond_12
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->prepareUnlockAnimation(Z)V

    .line 1576
    :cond_13
    :goto_2
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v10}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v10

    if-nez v10, :cond_14

    .line 1577
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/launcher/Workspace;->setIsRootNamespace(Z)V

    .line 1582
    :cond_14
    invoke-static {}, Lcom/htc/launcher/PendingUIUpdate;->instance()Lcom/htc/launcher/PendingUIUpdate;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/launcher/PendingUIUpdate;->endScroll()V

    .line 1585
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v10}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v10}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v10}, Lcom/htc/launcher/AddListAdapter;->getLevel()I

    move-result v10

    if-nez v10, :cond_15

    .line 1588
    new-instance v9, Lcom/htc/launcher/Launcher$6;

    invoke-direct {v9, p0}, Lcom/htc/launcher/Launcher$6;-><init>(Lcom/htc/launcher/Launcher;)V

    .line 1597
    .local v9, thread:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1607
    .end local v9           #thread:Ljava/lang/Thread;
    :cond_15
    if-nez v5, :cond_16

    .line 1608
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/htc/launcher/Launcher;->enableTilt(Z)V

    .line 1610
    :cond_16
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsInComingCall:Z

    if-eqz v10, :cond_17

    .line 1611
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v10}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->playPhoneAnim()V

    .line 1614
    :cond_17
    sget-object v10, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    const/4 v11, 0x1

    invoke-virtual {v10, p0, v11}, Lcom/htc/launcher/LauncherModel;->refreshUsageStats(Landroid/content/Context;Z)V

    .line 1619
    const-string v10, "launcher"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1620
    .local v7, pref:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "resumed"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1637
    const/4 v10, 0x0

    const-wide/16 v11, 0x320

    invoke-virtual {p0, v10, v11, v12}, Lcom/htc/launcher/Launcher;->startCreateScenePreviewThread(ZJ)V

    .line 1640
    const-string v10, "htctelephony"

    invoke-virtual {p0, v10}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/service/HtcTelephonyManager;

    .line 1642
    .local v6, phoneServ:Lcom/htc/service/HtcTelephonyManager;
    if-eqz v6, :cond_18

    .line 1643
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/htc/service/HtcTelephonyManager;->notifyScreenBusy(Z)V

    .line 1644
    const-string v10, "Rosie"

    const-string v11, "notifyScreenBusy(false)"

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    :cond_18
    sget-boolean v10, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v10, :cond_19

    const-string v10, "Rosie"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onResume() [finished] : diff - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    :cond_19
    return-void

    .line 1441
    .end local v3           #curPage:F
    .end local v5           #loadingOnResume:Z
    .end local v6           #phoneServ:Lcom/htc/service/HtcTelephonyManager;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    .end local v8           #resumeByHomeKey:Z
    :cond_1a
    iget-boolean v10, p0, Lcom/htc/launcher/Launcher;->mChangingOrientation:Z

    if-nez v10, :cond_4

    .line 1442
    sget-boolean v10, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v10, :cond_1b

    const-string v10, "Rosie"

    const-string v11, "onResume handleOrientationChangedPendingTask"

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    :cond_1b
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->handleOrientationChangedPendingTask()V

    goto/16 :goto_1

    .line 1556
    .restart local v3       #curPage:F
    .restart local v5       #loadingOnResume:Z
    .restart local v8       #resumeByHomeKey:Z
    :cond_1c
    sget-boolean v10, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v10, :cond_1d

    const-string v10, "Rosie"

    const-string v11, "not keyguardIsShowing"

    invoke-static {v10, v11}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :cond_1d
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->isKeyguardOnWhenOnResume:Z

    .line 1558
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v10}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v10

    if-nez v10, :cond_20

    .line 1559
    if-eqz v8, :cond_1f

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {p0, v10}, Lcom/htc/launcher/Launcher;->onResumeWhenKeyguardOff(Lcom/htc/launcher/Launcher;)V

    .line 1560
    if-nez v8, :cond_1e

    .line 1561
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-static {}, Lcom/htc/launcher/Launcher;->getScreen()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgets(I)V

    .line 1563
    :cond_1e
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->changeVisibility(Z)V

    .line 1568
    :goto_4
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->freeze(Z)V

    .line 1571
    iget-object v10, p0, Lcom/htc/launcher/Launcher;->m_freezeScreenHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/htc/launcher/Launcher;->m_freezeScreen:Lcom/htc/launcher/Launcher$DofreezeScreen;

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_1f
    move-object v10, p0

    .line 1559
    goto :goto_3

    .line 1565
    :cond_20
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/launcher/Launcher;->mIsRessumeNeedCloseSliderAndStartActivity:Z

    goto :goto_4

    .line 1421
    .end local v1           #begin:J
    .end local v3           #curPage:F
    .end local v5           #loadingOnResume:Z
    .end local v8           #resumeByHomeKey:Z
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 1419
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method protected onResumeWhenKeyguardOff(Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/WidgetsManager;->onActivityResume(Lcom/htc/launcher/Launcher;)V

    .line 1678
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mBinder:Lcom/htc/launcher/Launcher$DesktopBinder;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mBinder:Lcom/htc/launcher/Launcher$DesktopBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/launcher/Launcher$DesktopBinder;->mTerminate:Z

    .line 1858
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "outState"

    .prologue
    .line 3406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3410
    .local v1, begin:J
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->lastDialog:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    .line 3411
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->lastDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Dialog;

    .line 3412
    .local v3, dialog:Landroid/app/Dialog;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3419
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/launcher/Launcher;->dismissDialog(I)V

    .line 3420
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "Rosie"

    const-string v6, "Launcher.onSaveInstanceState: dismissDialog"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    .end local v3           #dialog:Landroid/app/Dialog;
    :cond_0
    const-string v5, "launcher.current_screen"

    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3437
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3439
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3440
    const-string v5, "launcher.all_apps_folder"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3441
    const-string v5, "launcher.sliding_all_apps"

    iget-object v6, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v6}, Lcom/htc/launcher/AllAppsView;->getContentId()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3444
    :cond_1
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    iget-boolean v5, v5, Lcom/htc/launcher/CellInfo;->valid:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->mWaitingForResult:Z

    if-eqz v5, :cond_2

    .line 3446
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mAddItemCellInfo:Lcom/htc/launcher/CellInfo;

    .line 3447
    .local v0, addItemCellInfo:Lcom/htc/launcher/CellInfo;
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget v6, v0, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {v5, v6}, Lcom/htc/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/CellLayout;

    .line 3450
    .local v4, layout:Lcom/htc/launcher/CellLayout;
    const-string v5, "launcher.add_screen"

    iget v6, v0, Lcom/htc/launcher/CellInfo;->screen:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3452
    const-string v5, "launcher.add_cellX"

    iget v6, v0, Lcom/htc/launcher/CellInfo;->cellX:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3454
    const-string v5, "launcher.add_cellY"

    iget v6, v0, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3456
    const-string v5, "launcher.add_spanX"

    iget v6, v0, Lcom/htc/launcher/CellInfo;->spanX:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3458
    const-string v5, "launcher.add_spanY"

    iget v6, v0, Lcom/htc/launcher/CellInfo;->spanY:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3460
    const-string v5, "launcher.add_countX"

    invoke-virtual {v4}, Lcom/htc/launcher/CellLayout;->getCountX()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3462
    const-string v5, "launcher.add_countY"

    invoke-virtual {v4}, Lcom/htc/launcher/CellLayout;->getCountY()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3464
    const-string v5, "launcher.add_occupied_cells"

    invoke-virtual {v4}, Lcom/htc/launcher/CellLayout;->getOccupiedCells()[Z

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 3469
    .end local v0           #addItemCellInfo:Lcom/htc/launcher/CellInfo;
    .end local v4           #layout:Lcom/htc/launcher/CellLayout;
    :cond_2
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_3

    const-string v5, "Rosie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSaveInstanceState() [finished] : diff - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    :cond_3
    return-void
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 4019
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "Steven"

    const-string v3, "On Search request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4021
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    invoke-virtual {v2}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4022
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 4024
    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z

    if-eqz v2, :cond_2

    .line 4025
    invoke-direct {p0, v0, v4}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    .line 4057
    :cond_1
    :goto_0
    return v0

    .line 4027
    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    goto :goto_0

    .line 4032
    :cond_3
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->closeOptionsMenu()V

    .line 4040
    invoke-virtual {p0, v4, v0, v4, v1}, Lcom/htc/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v0, v1

    .line 4041
    goto :goto_0

    .line 4045
    :cond_4
    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mPageSelect:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->snapToSearch()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4046
    invoke-direct {p0, v1}, Lcom/htc/launcher/Launcher;->closeDrawer(Z)V

    move v0, v1

    .line 4047
    goto :goto_0

    .line 4049
    :cond_5
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->closeOptionsMenu()V

    .line 4056
    invoke-virtual {p0, v4, v0, v4, v1}, Lcom/htc/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v0, v1

    .line 4057
    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/htc/launcher/DragLayer;->abortDrag()V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->releaseScreenCache()V

    .line 887
    :cond_1
    invoke-super {p0}, Lcom/htc/widget/CarouselInternalActivity;->onStop()V

    .line 888
    return-void
.end method

.method public onTabEndSliding(Ljava/lang/String;)V
    .locals 1
    .parameter "endTag"

    .prologue
    .line 9047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    .line 9048
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->hideHandle(Z)V

    .line 9049
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onTabEndSliding(Ljava/lang/String;)V

    .line 9050
    return-void
.end method

.method public onTabStartSliding(Ljava/lang/String;)V
    .locals 2
    .parameter "startTag"

    .prologue
    .line 9056
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onTabStartSliding(Ljava/lang/String;)V

    .line 9057
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/launcher/Launcher;->hideHandle(Z)V

    .line 9058
    iput-object p1, p0, Lcom/htc/launcher/Launcher;->lastTabTag:Ljava/lang/String;

    .line 9063
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V

    .line 9064
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7266
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isButtonCanPress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->isButtonCanPress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsListAdapterReady:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->mIsListAdapterReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7268
    :cond_0
    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->isButtonCanPress:Z

    if-nez v3, :cond_2

    .line 7328
    :cond_1
    :goto_0
    return v1

    .line 7270
    :cond_2
    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->mIsListAdapterReady:Z

    if-eqz v3, :cond_1

    .line 7273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->mIsTouchDownNeedCacheBtn:Z

    if-eqz v3, :cond_1

    .line 7277
    :cond_3
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/SlidingDrawer;->isMoving()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_1
    move v1, v2

    .line 7328
    goto :goto_0

    .line 7282
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 7283
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->prepareCurrentScreenCache()V

    .line 7284
    iput-boolean v1, p0, Lcom/htc/launcher/Launcher;->mIsTouchDownNeedCacheBtn:Z

    .line 7285
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    goto :goto_1

    .line 7286
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 7287
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsTouchDownNeedCacheBtn:Z

    .line 7288
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7290
    .local v0, hidArea:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 7300
    .end local v0           #hidArea:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    .line 7302
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    if-eqz v3, :cond_6

    .line 7303
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v3}, Lcom/htc/launcher/AddListAdapter;->setHeightPriority()V

    .line 7304
    :cond_6
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-nez v3, :cond_7

    .line 7305
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->prepareCurrentScreenCache()V

    .line 7306
    iget-object v3, p0, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const v4, 0x7f070005

    invoke-virtual {v3, v4}, Lcom/htc/launcher/AllAppsView;->changeDrawerContentById(I)V

    .line 7307
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->prepareAddToHomeContent()V

    .line 7310
    :cond_7
    iput-boolean v1, p0, Lcom/htc/launcher/Launcher;->mIsTouchDownNeedCacheBtn:Z

    .line 7311
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->stop3DAnimation()V

    goto :goto_1

    .line 7312
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 7313
    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsTouchDownNeedCacheBtn:Z

    .line 7314
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7316
    .restart local v0       #hidArea:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    .line 7280
    nop

    :pswitch_data_0
    .packed-switch 0x7f070010
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 1683
    invoke-super {p0}, Lcom/htc/widget/CarouselInternalActivity;->onUserLeaveHint()V

    .line 1684
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    .line 1685
    const-string v0, "Rosie"

    const-string v1, "Leaving"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mWillLeave:Z

    .line 1687
    return-void
.end method

.method public onWallpaperChanged(Landroid/app/WallpaperInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6431
    const-string v5, "Rosie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onWallpaperChanged():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6432
    if-nez p1, :cond_1

    move v0, v3

    .line 6433
    .local v0, isImage:Z
    :goto_0
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v2

    .line 6434
    .local v2, wp:Lcom/htc/launcher/WallpaperManager;
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->shouldRestartForWallpaperChange()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/launcher/Launcher;->mImageWallpaper:Z

    if-eq v5, v0, :cond_2

    move v1, v3

    .line 6435
    .local v1, restart:Z
    :goto_1
    invoke-static {p0}, Lcom/htc/launcher/Launcher;->saveHomeWallpaper(Landroid/content/Context;)V

    .line 6436
    invoke-virtual {v2}, Lcom/htc/launcher/WallpaperManager;->isImageWallpaper()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mImageWallpaper:Z

    .line 6437
    if-eqz v1, :cond_0

    .line 6438
    sget-object v4, Lcom/htc/launcher/Launcher;->sSceneLock:Ljava/lang/Object;

    monitor-enter v4

    .line 6439
    :try_start_0
    const-string v3, "Rosie"

    const-string v5, "rosie is killed for wallpaper changed"

    invoke-static {v3, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6440
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 6441
    monitor-exit v4

    .line 6443
    :cond_0
    return-void

    .end local v0           #isImage:Z
    .end local v1           #restart:Z
    .end local v2           #wp:Lcom/htc/launcher/WallpaperManager;
    :cond_1
    move v0, v4

    .line 6432
    goto :goto_0

    .restart local v0       #isImage:Z
    .restart local v2       #wp:Lcom/htc/launcher/WallpaperManager;
    :cond_2
    move v1, v4

    .line 6434
    goto :goto_1

    .line 6441
    .restart local v1       #restart:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 9
    .parameter "focus"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1287
    if-eqz p1, :cond_0

    .line 1288
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v0

    .line 1289
    .local v0, wm:Lcom/htc/launcher/WallpaperManager;
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mNeedLiveWallpaperSpin:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mChangingOrientation:Z

    if-nez v1, :cond_2

    .line 1290
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/htc/launcher/WallpaperManager;->pauseWallpaper(Landroid/os/IBinder;Z)V

    .line 1296
    :goto_0
    iput-boolean v3, p0, Lcom/htc/launcher/Launcher;->mNeedLiveWallpaperSpin:Z

    .line 1299
    .end local v0           #wm:Lcom/htc/launcher/WallpaperManager;
    :cond_0
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mWindowFocus:Z

    .line 1300
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "Rosie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity.onWindowFocusChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", c? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/launcher/Launcher;->mChangingOrientation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v7

    .line 1302
    .local v7, ws:Lcom/htc/launcher/Workspace;
    if-nez v7, :cond_3

    .line 1312
    :goto_1
    return-void

    .line 1292
    .end local v7           #ws:Lcom/htc/launcher/Workspace;
    .restart local v0       #wm:Lcom/htc/launcher/WallpaperManager;
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/htc/launcher/WallpaperManager;->pauseWallpaper(Landroid/os/IBinder;Z)V

    .line 1293
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.htc.android.wallpaper.resume"

    const/4 v6, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 1305
    .end local v0           #wm:Lcom/htc/launcher/WallpaperManager;
    .restart local v7       #ws:Lcom/htc/launcher/Workspace;
    :cond_3
    if-eqz p1, :cond_4

    .line 1306
    const/high16 v1, 0x2

    invoke-virtual {v7, v1}, Lcom/htc/launcher/Workspace;->setDescendantFocusability(I)V

    goto :goto_1

    .line 1308
    :cond_4
    const/high16 v1, 0x6

    invoke-virtual {v7, v1}, Lcom/htc/launcher/Workspace;->setDescendantFocusability(I)V

    .line 1309
    invoke-virtual {p0, v8}, Lcom/htc/launcher/Launcher;->stop3DAnimation(Z)V

    goto :goto_1
.end method

.method public postDelayedCallbackToExitStickyMode()V
    .locals 4

    .prologue
    .line 9533
    const-string v0, "Rosie"

    const-string v1, "[STICKY] Launcher.postDelayedCallbackToExitStickyMode() - enter"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9534
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isStickyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mExitStickyCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 9547
    :cond_0
    :goto_0
    return-void

    .line 9537
    :cond_1
    new-instance v0, Lcom/htc/launcher/Launcher$32;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$32;-><init>(Lcom/htc/launcher/Launcher;)V

    iput-object v0, p0, Lcom/htc/launcher/Launcher;->mExitStickyCallback:Ljava/lang/Runnable;

    .line 9545
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mExitStickyCallback:Ljava/lang/Runnable;

    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sAutoExitStickyModeTimeOut:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9546
    const-string v0, "Rosie"

    const-string v1, "[STICKY] Launcher.postDelayedCallbackToExitStickyMode() - exit "

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method raisePriority(Z)V
    .locals 0
    .parameter "raise"

    .prologue
    .line 1696
    return-void
.end method

.method public refreshAddToHomeAdapter()V
    .locals 4

    .prologue
    .line 4563
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4564
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4565
    :cond_0
    return-void
.end method

.method public registerTiltObserver(Lcom/htc/launcher/Launcher$TiltObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 8483
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    monitor-enter v1

    .line 8484
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8485
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8486
    :cond_0
    monitor-exit v1

    .line 8487
    return-void

    .line 8486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reloadDesktopItems()V
    .locals 1

    .prologue
    .line 4492
    new-instance v0, Lcom/htc/launcher/Launcher$14;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$14;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4499
    return-void
.end method

.method public removeDropTarget(Lcom/htc/launcher/DropTarget;)V
    .locals 3
    .parameter "dropTarget"

    .prologue
    .line 9041
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher.removeDropTarget("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9042
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/DragLayer;->removeDropTarget(Lcom/htc/launcher/DropTarget;)V

    .line 9043
    return-void
.end method

.method public removeTutorialNotice()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4695
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTutorialNotice() , mIsShowTutorialNotice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4698
    :cond_0
    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    if-eqz v2, :cond_2

    .line 4700
    iput-boolean v5, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    .line 4701
    const-string v2, "launcher"

    invoke-virtual {p0, v2, v5}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4703
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4704
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "tutorial_notice"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4705
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4708
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_1

    .line 4709
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "Rosie"

    const-string v3, "removing tutorial notice."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4710
    :cond_1
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->hideTutorialNotice()V

    .line 4713
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/launcher/Launcher;->mTutorialNoticeViews:Ljava/util/HashMap;

    .line 4715
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method removeWidgetsAndLoadUserItems(ZLcom/htc/launcher/Launcher;ZZIZ)V
    .locals 9
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"
    .parameter "toScreen"
    .parameter "reloadWallpaper"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5874
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    .line 5875
    .local v1, desktopLocked:Z
    iput-boolean v5, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    .line 5877
    sget-object v7, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    if-eqz v7, :cond_0

    .line 5878
    sget-object v7, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    invoke-virtual {v7, p0}, Lcom/htc/launcher/WidgetPackageManager;->removeAllWidgetLayout(Lcom/htc/launcher/Launcher;)V

    .line 5882
    :cond_0
    sget-object v7, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v7}, Lcom/htc/launcher/LauncherModel;->getDesktopAppWidgets()Ljava/util/ArrayList;

    move-result-object v0

    .line 5883
    .local v0, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/LauncherAppWidgetInfo;>;"
    if-eqz v0, :cond_2

    .line 5884
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 5885
    .local v3, info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    invoke-virtual {v3}, Lcom/htc/launcher/LauncherAppWidgetInfo;->isTWM_Widget()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5886
    iget-object v7, p0, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    iget v8, v3, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v7, v8}, Lcom/htc/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 5887
    const/4 v7, -0x1

    iput v7, v3, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    goto :goto_0

    .line 5892
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    :cond_2
    iput-boolean v1, p0, Lcom/htc/launcher/Launcher;->mDesktopLocked:Z

    .line 5895
    iget-object v4, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 5896
    .local v4, workspace:Lcom/htc/launcher/Workspace;
    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->clear()V

    .line 5899
    iget-object v7, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeAllItems()V

    .line 5900
    iget-object v7, p0, Lcom/htc/launcher/Launcher;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/HostWidgetManager;->removeAllWidgets()V

    .line 5902
    if-ltz p5, :cond_3

    .line 5903
    invoke-static {p5}, Lcom/htc/launcher/Launcher;->setScreen(I)V

    .line 5904
    iget-object v7, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v7, p5}, Lcom/htc/launcher/Workspace;->setCurrentScreen(I)V

    .line 5907
    :cond_3
    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->requestLayout()V

    .line 5910
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_5

    :goto_1
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v7

    if-ne v5, v7, :cond_6

    .line 5913
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->lockOrientation()V

    .line 5915
    sget-object v5, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v5, v6, p0, v6, v6}, Lcom/htc/launcher/LauncherModel;->loadUserItems(ZLcom/htc/launcher/Launcher;ZZ)V

    .line 5929
    :goto_2
    const-string v5, "RosieDbDebug"

    const-string v6, "removeWidgetsAndLoadUserItems() --> loadUserItems(false, launcher, true, false)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5930
    if-eqz p6, :cond_4

    .line 5931
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->loadHomeWallpaper()V

    .line 5933
    :cond_4
    return-void

    :cond_5
    move v5, v6

    .line 5910
    goto :goto_1

    .line 5917
    :cond_6
    sget-boolean v5, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v5, :cond_7

    const-string v5, "Rosie"

    const-string v6, "removeWidgetsAndLoadUserItems when orientation changed"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5918
    :cond_7
    iget-object v5, p0, Lcom/htc/launcher/Launcher;->mOrientationChangedRunnables:Ljava/util/ArrayList;

    new-instance v6, Lcom/htc/launcher/Launcher$21;

    invoke-direct {v6, p0}, Lcom/htc/launcher/Launcher$21;-><init>(Lcom/htc/launcher/Launcher;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public resetMiddleButton()V
    .locals 1

    .prologue
    .line 9000
    const/4 v0, -0x1

    sput v0, Lcom/htc/launcher/Launcher;->mMiddleClickButton:I

    .line 9001
    return-void
.end method

.method public sendMsgDoneAllBinding()V
    .locals 3

    .prologue
    .line 9026
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsgFinishBindFxWidget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/Launcher;->mFinishLoading:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9027
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 9028
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9030
    :cond_1
    return-void
.end method

.method public setAbortDrag(Z)V
    .locals 0
    .parameter "isAbort"

    .prologue
    .line 9199
    sput-boolean p1, Lcom/htc/launcher/Launcher;->mIsAbortDrag:Z

    .line 9200
    return-void
.end method

.method setBackgroundTrafficLight(Z)V
    .locals 0
    .parameter "light"

    .prologue
    .line 1328
    return-void
.end method

.method public setBottomBarAreaVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 5286
    new-instance v0, Lcom/htc/launcher/Launcher$17;

    invoke-direct {v0, p0, p1}, Lcom/htc/launcher/Launcher$17;-><init>(Lcom/htc/launcher/Launcher;I)V

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5291
    return-void
.end method

.method setCurrentWorkspace(IZ)V
    .locals 1
    .parameter "workspaceId"
    .parameter "autoSave"

    .prologue
    .line 5780
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/launcher/Launcher;->setCurrentWorkspace(IZZ)V

    .line 5781
    return-void
.end method

.method setCurrentWorkspace(IZZ)V
    .locals 1
    .parameter "workspaceId"
    .parameter "isNeedBackLightEffect"
    .parameter "autoSave"

    .prologue
    .line 5785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/launcher/Launcher;->setCurrentWorkspace(IZZZ)V

    .line 5786
    return-void
.end method

.method setCurrentWorkspace(IZZZ)V
    .locals 6
    .parameter "workspaceId"
    .parameter "isNeedBackLightEffect"
    .parameter "forceReload"
    .parameter "autoSave"

    .prologue
    const/4 v5, 0x1

    .line 5791
    iget v0, p0, Lcom/htc/launcher/Launcher;->mCurrentSceneId:I

    .line 5792
    .local v0, oldId:I
    iput p1, p0, Lcom/htc/launcher/Launcher;->mCurrentSceneId:I

    .line 5794
    if-eqz p4, :cond_1

    if-lez v0, :cond_1

    .line 5795
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate current scene to workspace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5796
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/htc/launcher/LauncherModel;->duplicateAllItems(Landroid/content/Context;II)V

    .line 5799
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->leaveEditMode()V

    .line 5801
    iput-boolean v5, p0, Lcom/htc/launcher/Launcher;->mIsWorkspaceChanging:Z

    .line 5802
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->lock()V

    .line 5803
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentWorkspace , removeTutorialNotice() , mIsShowTutorialNotice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/launcher/Launcher;->mIsShowTutorialNotice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5807
    :cond_2
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->removeTutorialNotice()V

    .line 5816
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    if-eqz v2, :cond_3

    .line 5817
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->showAllScreens()V

    .line 5818
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->thawAllScreens()V

    .line 5819
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->hide()V

    .line 5821
    :cond_3
    iput-boolean v5, p0, Lcom/htc/launcher/Launcher;->mIsLoading:Z

    .line 5822
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->lockOrientation()V

    .line 5824
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/htc/launcher/Launcher;->showDialog(I)V

    .line 5828
    new-instance v1, Lcom/htc/launcher/Launcher$20;

    invoke-direct {v1, p0, p1}, Lcom/htc/launcher/Launcher$20;-><init>(Lcom/htc/launcher/Launcher;I)V

    .line 5851
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5860
    return-void
.end method

.method public setLiveWallpaperName(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "LiveWallpaperName"

    .prologue
    .line 8347
    sput-object p1, Lcom/htc/launcher/Launcher;->mLiveWallpaperName:Ljava/lang/CharSequence;

    .line 8348
    return-void
.end method

.method public setlocalLOGD(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 6952
    sput-boolean p1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    .line 6953
    return-void
.end method

.method showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 7958
    if-nez p1, :cond_0

    .line 7960
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 7961
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->clearTypedText()V

    .line 7963
    :cond_0
    if-nez p3, :cond_1

    .line 7964
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 7965
    .restart local p3
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7968
    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 7970
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 7972
    return-void
.end method

.method showWindow(Z)V
    .locals 5
    .parameter "bShow"

    .prologue
    .line 9185
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v2}, Lcom/htc/launcher/DragLayer;->getDragView()Lcom/htc/launcher/DragView;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mDragLayer:Lcom/htc/launcher/DragLayer;

    invoke-virtual {v2}, Lcom/htc/launcher/DragLayer;->getOpenFolder()Lcom/htc/launcher/Folder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9196
    :cond_0
    :goto_0
    return-void

    .line 9189
    :cond_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->shouldChangeAppWindowVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9191
    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show app window:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9192
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 9193
    .local v0, w:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 9194
    .local v1, wlp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_2

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 9195
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 9194
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 3598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/Launcher;->mWaitingForResult:Z

    .line 3599
    invoke-super {p0, p1, p2}, Lcom/htc/widget/CarouselInternalActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3600
    return-void
.end method

.method public startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 3604
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3609
    :goto_0
    return-void

    .line 3605
    :catch_0
    move-exception v0

    .line 3606
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Rosie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t start activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/launcher/Launcher;->mWaitingForResult:Z

    goto :goto_0
.end method

.method public startActivitySafely(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const v6, 0x7f0b0009

    const/4 v5, 0x0

    .line 5109
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5110
    :try_start_1
    iget-boolean v2, p0, Lcom/htc/launcher/Launcher;->mActivityLaunched:Z

    if-eqz v2, :cond_1

    .line 5111
    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring starting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5112
    monitor-exit p0

    .line 5142
    :cond_0
    :goto_0
    return-void

    .line 5114
    :cond_1
    const/high16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5115
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 5116
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/launcher/Launcher;->mActivityLaunched:Z

    .line 5117
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mResetLaunchState:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/htc/launcher/Launcher;->cancelDelayed(Ljava/lang/Runnable;)V

    .line 5118
    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mResetLaunchState:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/launcher/Launcher;->runDelayed(Ljava/lang/Runnable;J)V

    .line 5119
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5120
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5123
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "type"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "app"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 5124
    .local v0, data:[Ljava/lang/String;
    const-string v2, "com.htc.launcher"

    const-string v3, "app_launch"

    invoke-static {v2, v3, v0}, Lcom/htc/launcher/Logger;->u(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5125
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC user profiling     type     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    .line 5127
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 5128
    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC user profiling     app     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 5130
    .end local v0           #data:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 5131
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iput-boolean v5, p0, Lcom/htc/launcher/Launcher;->mWaitingForResult:Z

    .line 5132
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5119
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5134
    :catch_1
    move-exception v1

    .line 5135
    .local v1, e:Ljava/lang/SecurityException;
    iput-boolean v5, p0, Lcom/htc/launcher/Launcher;->mWaitingForResult:Z

    .line 5136
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5138
    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public startCallActivity()V
    .locals 7

    .prologue
    .line 2633
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2636
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x1

    .line 2638
    .local v2, isIdle:Z
    sget-boolean v4, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v4, :cond_0

    .line 2639
    const-string v5, "Handle buttons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is phone null? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    :cond_0
    if-eqz v3, :cond_1

    .line 2642
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2648
    :cond_1
    :goto_1
    if-nez v2, :cond_3

    .line 2650
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2659
    :goto_2
    return-void

    .line 2639
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 2643
    :catch_0
    move-exception v0

    .line 2644
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_1

    .line 2656
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2657
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_2

    .line 2651
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public startCreateScenePreviewThread(ZJ)V
    .locals 6
    .parameter "force"
    .parameter "delay"

    .prologue
    const-wide/16 v4, 0x0

    .line 6282
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Rosie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+startCreateScenePreviewThread("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6283
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->isSceneDirty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 6284
    const-string v1, "Rosie"

    const-string v2, "startCreateScenePreviewThread() - not dirty"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6349
    :cond_1
    :goto_0
    return-void

    .line 6289
    :cond_2
    iget-boolean v1, p0, Lcom/htc/launcher/Launcher;->mIsPause:Z

    if-eqz v1, :cond_3

    cmp-long v1, p2, v4

    if-nez v1, :cond_3

    .line 6290
    const-string v1, "Rosie"

    const-string v2, "startCreateScenePreviewThread() activity paused"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6295
    :cond_3
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mCreateScenePreviewThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_4

    .line 6296
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CreateScenePreviewThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/htc/launcher/Launcher;->mCreateScenePreviewThread:Landroid/os/HandlerThread;

    .line 6297
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mCreateScenePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6298
    new-instance v1, Lcom/htc/launcher/Launcher$22;

    iget-object v2, p0, Lcom/htc/launcher/Launcher;->mCreateScenePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/launcher/Launcher$22;-><init>(Lcom/htc/launcher/Launcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/launcher/Launcher;->mCreateScenePreviewHandler:Landroid/os/Handler;

    .line 6336
    :cond_4
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mCreateScenePreviewHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 6338
    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mCreateScenePreviewHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6339
    cmp-long v1, p2, v4

    if-nez v1, :cond_6

    .line 6340
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mCreateScenePreviewHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6348
    :cond_5
    :goto_1
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "Rosie"

    const-string v2, "-startCreateScenePreviewThread()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6342
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mCreateScenePreviewHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6343
    :catch_0
    move-exception v0

    .line 6344
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected startDispatchDraw()V
    .locals 4

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/htc/launcher/Launcher;->mIsAllProgramSliding:Z

    if-eqz v0, :cond_0

    .line 1013
    iget-wide v0, p0, Lcom/htc/launcher/Launcher;->mStartDrawingTime:J

    iput-wide v0, p0, Lcom/htc/launcher/Launcher;->a:J

    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/Launcher;->mStartDrawingTime:J

    .line 1015
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/launcher/Launcher;->mStartDrawingThreadTime:J

    .line 1016
    iget-wide v0, p0, Lcom/htc/launcher/Launcher;->mStartDrawingTime:J

    iget-wide v2, p0, Lcom/htc/launcher/Launcher;->a:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/Launcher;->addTwoStartInterval(J)V

    .line 1019
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 3613
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_1

    .line 3615
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.microsoft.mobileexperience.bing.SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3619
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3620
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 3621
    const-string v3, "jojo"

    const-string v4, "send intent"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3677
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 3623
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3624
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t start activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 3629
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3630
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.servo.search"

    const-string v4, "com.servo.search.ui.ServoSearchActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3631
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3633
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3634
    :catch_1
    move-exception v0

    .line 3635
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t start activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3645
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/htc/launcher/Launcher;->getSearchEngine()Ljava/lang/String;

    move-result-object v2

    .line 3646
    .local v2, searchEngine:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_3

    .line 3647
    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSearch: searchEngine="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    :cond_3
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCHANYWHERE_INTENT:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3649
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3652
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 3654
    :catch_2
    move-exception v0

    .line 3655
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "Rosie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSearch: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    if-nez p3, :cond_5

    .line 3673
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 3674
    .restart local p3
    const-string v3, "source"

    const-string v4, "launcher-search"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3676
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/CarouselInternalActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto/16 :goto_0
.end method

.method public startShortcutTip()V
    .locals 3

    .prologue
    .line 1655
    new-instance v0, Lcom/htc/launcher/Launcher$7;

    invoke-direct {v0, p0}, Lcom/htc/launcher/Launcher$7;-><init>(Lcom/htc/launcher/Launcher;)V

    const-wide/16 v1, 0x3e8

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/launcher/Launcher;->runDelayed(Ljava/lang/Runnable;J)V

    .line 1671
    return-void
.end method

.method public stop3DAnimation()V
    .locals 1

    .prologue
    .line 8024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->stop3DAnimation(Z)V

    .line 8025
    return-void
.end method

.method public stop3DAnimation(Z)V
    .locals 2
    .parameter "bResumeWidgets"

    .prologue
    .line 8029
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.weatherwallpaper.service.intent.action.HIDE_WEATHER_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/launcher/Launcher;->stopService(Landroid/content/Intent;)Z

    .line 8030
    if-eqz p1, :cond_0

    .line 8031
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/WidgetsManager;->fireVisible(I)V

    .line 8032
    :cond_0
    return-void
.end method

.method public switchToStickyMode(Z)V
    .locals 0
    .parameter "toStickyMode"

    .prologue
    .line 9359
    iput-boolean p1, p0, Lcom/htc/launcher/Launcher;->mStickyMode:Z

    .line 9360
    return-void
.end method

.method public unregisterTiltObserver(Lcom/htc/launcher/Launcher$TiltObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 8490
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    monitor-enter v1

    .line 8491
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8492
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mTiltObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8493
    :cond_0
    monitor-exit v1

    .line 8494
    return-void

    .line 8493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update2DButtonBarViews()V
    .locals 2

    .prologue
    .line 2611
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lcom/htc/launcher/Launcher;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/ButtonBar;->update2DButtonBarViews()V

    .line 2613
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    sget-object v1, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/htc/launcher/LauncherModel;->getButtonBarOccupied()[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->showMiddleBackgroundImageControls([Z)V

    .line 2615
    :cond_0
    return-void
.end method

.method public updateButtonBarViews()V
    .locals 2

    .prologue
    .line 2605
    sget-object v1, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/htc/launcher/LauncherModel;->getButtonBarItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2606
    .local v0, buttonBarItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    iget-object v1, p0, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v1, v0}, Lcom/htc/launcher/DesktopItemController;->addNavbarItems(Ljava/util/ArrayList;)V

    .line 2607
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->update2DButtonBarViews()V

    .line 2608
    return-void
.end method

.method updateFusionVisibility(Z)V
    .locals 0
    .parameter "bVisible"

    .prologue
    .line 9730
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4
    .parameter "bVisible"

    .prologue
    const/high16 v2, 0x10

    .line 9718
    if-eqz p1, :cond_1

    move v1, v2

    .line 9719
    .local v1, nWpflags:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 9721
    .local v0, nCurflags:I
    if-eq v1, v0, :cond_0

    .line 9722
    invoke-virtual {p0}, Lcom/htc/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 9724
    :cond_0
    return-void

    .line 9718
    .end local v0           #nCurflags:I
    .end local v1           #nWpflags:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected writeAllProgramLogs(Ljava/lang/StringBuffer;)V
    .locals 10
    .parameter "buffer"

    .prologue
    .line 1034
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1035
    .local v0, LogBuf:Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x0

    .line 1037
    .local v6, total:J
    const-string v8, "Time intervals: \n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1038
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mIntervals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 1039
    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mIntervals:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1040
    .local v3, interval:J
    add-long/2addr v6, v3

    .line 1041
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1038
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1044
    .end local v3           #interval:J
    :cond_0
    const-string v8, "\nThread intervals: \n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1045
    const/4 v2, 0x0

    :goto_1
    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mThreadIntervals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 1046
    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mThreadIntervals:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1045
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1048
    :cond_1
    const-string v8, "\nCPU intervals: \n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1049
    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mTwoStartIntervals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1050
    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mTwoStartIntervals:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1049
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1053
    :cond_2
    const-string v8, "\nDumpProcess: \n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1054
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1055
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, fs:Ljava/lang/String;
    new-instance v5, Lcom/htc/launcher/Launcher$2;

    invoke-direct {v5, p0, v1}, Lcom/htc/launcher/Launcher$2;-><init>(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V

    .line 1070
    .local v5, thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1072
    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mThreadIntervals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1073
    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mTwoStartIntervals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1074
    iget-object v8, p0, Lcom/htc/launcher/Launcher;->mIntervals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1075
    return-void
.end method
