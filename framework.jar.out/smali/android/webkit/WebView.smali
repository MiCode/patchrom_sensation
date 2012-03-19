.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$OnWebViewTabEffectListener;,
        Landroid/webkit/WebView$WrapActions;,
        Landroid/webkit/WebView$QuickSelectWV;,
        Landroid/webkit/WebView$QuickSelectAbs;,
        Landroid/webkit/WebView$AutoScrollerWrapper;,
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$TouchEventQueue;,
        Landroid/webkit/WebView$QueuedTouch;,
        Landroid/webkit/WebView$RequestFormData;,
        Landroid/webkit/WebView$ViewSizeData;,
        Landroid/webkit/WebView$SaveWebArchiveMessage;,
        Landroid/webkit/WebView$PackageListener;,
        Landroid/webkit/WebView$ProxyReceiver;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$OnTrimMemoryListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$InnerScrollChangedListener;,
        Landroid/webkit/WebView$InnerGlobalLayoutListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_SCRIPT_CHOOSER_JAVASCRIPT:Ljava/lang/String; = "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'https://ssl.gstatic.com/accessibility/javascript/android/AndroidScriptChooser.user.js\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_OPTED_OUT:I = 0x0

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_PROVIDED:I = 0x1

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_UNDEFINED:I = -0x1

.field private static final ALIAS_ACCESSIBILITY_JS_INTERFACE:Ljava/lang/String; = "accessibility"

.field private static final ANGLE_HORIZ:F = 0.0f

.field private static final ANGLE_VERT:F = 2.0f

.field private static final ANYWHERE:I = 0x2

.field static final AUTOFILL_COMPLETE:I = 0x86

.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final AWAKEN_SCROLL_BARS:I = 0x9

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field static final DEBUG_TEXT_HANDLES:Z = false

.field private static final DEBUG_TOUCH_HIGHLIGHT:Z = true

.field public static DEFAULT_TEXT_RATIO:F = 0.0f

.field private static DEFAULT_TEXT_WIDTH:I = 0x0

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x3d4

.field static final DID_FIRST_LAYOUT_MSG_ID:I = 0xca

.field static final DOM_FOCUS_CHANGED:I = 0x7a

.field static final DO_MOTION_UP:I = 0x77

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAG_LAYER_FINGER_DISTANCE:I = 0x4e20

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x3

.field private static final DRAW_EXTRAS_FIND:I = 0x1

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x2

.field static final ENTER_FULLSCREEN_VIDEO:I = 0x89

.field static final FIND_AGAIN:I = 0x7e

.field static final FINISH_VIEW_SIZE_CHANGE:I = 0xc8

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FORM_DID_BLUR:I = 0x7c

.field private static final FULLY_ON_SCREEN:I = 0x0

.field private static final HEAVY_WEBSITE_DOUBLE_TAP_TIMEOUT:I = 0x258

.field private static final HEAVY_WEBSITE_LONGPRESS_TIMEOUT:I = 0x320

.field static final HIDE_FULLSCREEN:I = 0x79

.field private static HIGHLIGHT_COLOR:I = 0x0

.field private static final HSLOPE_TO_BREAK_SNAP:F = 0.4f

.field private static final HSLOPE_TO_START_SNAP:F = 0.25f

.field static final HTCACTIONMODE_POPUP_FOCUSABLE:Z = false

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field private static final INTERSECTS_SCREEN:I = 0x1

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field private static final LAST_PACKAGE_MSG_ID:I = 0x83

.field private static final LAST_PRIVATE_MSG_ID:I = 0xb

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x2bc

.field private static final LONG_PRESS_TIMEOUT_FOR_TEXTSELECTION:I = 0x12c

.field static final MARK_DEBUG:Z = false

.field private static final MAX_DURATION:I = 0x2ee

.field public static MAX_SMARTZOOM_SCALE:I = 0x0

.field private static final MINIMUM_VELOCITY_RATIO_FOR_ACCELERATION:F = 0.2f

.field private static final MIN_FLING_TIME:I = 0xfa

.field public static MIN_SMARTZOOM_SCALE:I = 0x0

.field private static final MMA_WEIGHT_N:F = 5.0f

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field static final MULTI_TOUCH_RECOVERY_STATUS:I = 0xc9

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field static final NO_LEFTEDGE:I = -0x1

.field public static final OVER_SCROLL_NOTE_CUSTOMIZED:I = 0x6

.field public static final OVER_SCROLL_WEBVIEW_CUSTOMIZED:I = 0x5

.field private static final PACKAGE_FP:Ljava/lang/String; = "com.adobe.flashplayer"

.field private static final PADDING_ALIGN_LEFT:I = 0x14

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final PATTERN_MATCH_AXS_URL_PARAMETER:Ljava/lang/String; = "(\\?axs=(0|1))|(&axs=(0|1))"

.field static final PAUSE_TIMER_HEAVY_PAGE:I = 0x136

.field private static final PREVENT_DEFAULT_IGNORE:I = 0x4

.field private static final PREVENT_DEFAULT_MAYBE_YES:I = 0x1

.field private static final PREVENT_DEFAULT_NO:I = 0x0

.field private static final PREVENT_DEFAULT_NO_FROM_TOUCH_DOWN:I = 0x2

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field private static final PREVENT_DEFAULT_YES:I = 0x3

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_PENDING_PICTURE:I = 0x133

.field private static final RELEASE_PENDING_SCROLL:I = 0x132

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REPLACE_BASE_CONTENT:I = 0x7b

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID:I = 0x80

.field static final RESUME_TIMER_HEAVY_PAGE:I = 0x137

.field static final RETURN_LABEL:I = 0x7d

.field static final SAVE_WEBARCHIVE_FINISHED:I = 0x84

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field static final SCREEN_ON:I = 0x88

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field private static final SCROLL_BITS:I = 0x6

.field private static final SCROLL_SELECT_TEXT:I = 0xb

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_STRING_CHANGED:I = 0x82

.field static final SELECT_AT:I = 0x87

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field private static final SELECT_SCROLL:I = 0x5

.field private static final SELECT_SCROLL_INTERVAL:J = 0x10L

.field static final SET_AUTOFILLABLE:I = 0x85

.field static final SET_IS_LOADING:I = 0xcc

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SET_TOUCH_HIGHLIGHT_RECTS:I = 0x83

.field static final SET_WILL_DRAW:I = 0x12f

.field static final SET_WILL_NOT_DRAW:I = 0x12e

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_QUICK_DESCRIPTION:I = 0xcb

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SLIDE_TITLE_DURATION:I = 0x1f4

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field static final SNED_VIEW_SIZE_ZOOM:I = 0x131

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field public static TAB_EFFECT_PIVOT_L_X:F = 0.0f

.field public static TAB_EFFECT_PIVOT_L_Y:F = 0.0f

.field public static TAB_EFFECT_PIVOT_P_X:F = 0.0f

.field public static TAB_EFFECT_PIVOT_P_Y:F = 0.0f

.field private static final TAP_TIMEOUT:I = 0x12c

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_LAYER_MODE:I = 0x9

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_HIGHLIGHT_ARC:F = 5.0f

.field private static final TOUCH_HIGHLIGHT_ELAPSE_TIME:I = 0x7d0

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x0

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UNHANDLED_NAV_KEY:I = 0x6e

.field static final UPDATE_SELECTION:I = 0x8a

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0x6a

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_WEB_CONTNET_MSG_ID:I = 0xcd

.field static final UPDATE_ZOOM_DENSITY:I = 0x8b

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final USE_JAVA_TEXT_SELECTION:Z = true

.field static final USE_WEBKIT_RINGS:Z = false

.field private static final VSLOPE_TO_BREAK_SNAP:F = 0.95f

.field private static final VSLOPE_TO_START_SNAP:F = 1.25f

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field static final WEBVIEW_INIT:I = 0x130

.field private static final ZOOM_BITS:I = 0x86

.field public static gbIsAnimationZoomOut:Z

.field protected static mBottomOverScrollEnabled:Z

.field private static mIncrementEGLContextHack:Z

.field static mLogEvent:Z

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field protected static mOverscrollMode:I

.field public static mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

.field protected static mTopOverScrollEnabled:Z

.field public static m_bHostFullScreenMode:Z

.field private static m_nTabEffectType_Transition:I

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sMaxViewportWidth:I

.field private static sNotificationsEnabled:Z

.field private static sPackageInstallationReceiverAdded:Z

.field private static sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;


# instance fields
.field public final DEFAULT_TAB_MIN_RATIO:F

.field private DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

.field protected cursorRect:Landroid/graphics/Rect;

.field private howToSelection:I

.field private mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

.field private mAccessibilityScriptInjected:Z

.field public mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

.field public mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

.field private mAutoRedraw:Z

.field private mAutoScrollX:I

.field private mAutoScrollY:I

.field protected mAutoScroller:Landroid/webkit/WebViewAutoScroller;

.field mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

.field private mAverageAngle:F

.field private mBackgroundColor:I

.field public mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRemoved:Z

.field private mBlockWebkitViewMessages:Z

.field private mBrowserCustomizedDefaultScale:Z

.field private mCacheDrawScale:F

.field private mCacheDrawX:F

.field private mCacheDrawY:F

.field private mCachedOverlappingActionModeHeight:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentVisibleRect:Landroid/graphics/Rect;

.field private mContentWidth:I

.field private mCurrentScrollingLayerId:I

.field private mCurrentTouchInterval:I

.field mCustomFindMode:Z

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field public mDefaultZoomInDuration:I

.field private mDeferTouchMode:I

.field private mDeferTouchProcess:Z

.field private mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mDoubleTapSlopSquare:I

.field protected mDragAfterActionDown:Z

.field mDragFromTextInput:Z

.field private mDrawCanvas:Landroid/graphics/Canvas;

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field private mDrawSelectionPointer:Z

.field private mExtendSelection:Z

.field private mFindCallback:Landroid/webkit/FindActionModeCallback;

.field private mFindIsUp:Z

.field private mFocusSizeChanged:Z

.field private mForwardTouchEvents:Z

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private final mGLRectViewport:Landroid/graphics/Rect;

.field private mGLViewportEmpty:Z

.field private mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mGotCenterDown:Z

.field mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

.field protected mHTCWebCore:Landroid/webkit/HTCWebCore;

.field private mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mHardwareAccelSkia:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mHtcCustomizedDefaultScale:Z

.field private mInOverScrollMode:Z

.field private mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

.field private mInitialScaleInPercent:I

.field public mIntervalScale:F

.field private mIsHeavyWebSite:Z

.field private mIsPaused:Z

.field private mIsStopDrawing:Z

.field mIsTouchOnScreen:Z

.field private mKeysPressed:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastActualHeightSent:I

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastDeferTouchX:F

.field private mLastDeferTouchY:F

.field private mLastFind:Ljava/lang/String;

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field mLastTouchX:I

.field mLastTouchY:I

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mListBoxMessage:Landroid/os/Message;

.field private mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mMapTrackballToArrowKeys:Z

.field private mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

.field protected mMatrixValues:[F

.field private mMaxAutoScrollX:I

.field private mMaxAutoScrollY:I

.field private mMaximumFling:I

.field private mMinAutoScrollX:I

.field private mMinAutoScrollY:I

.field private mNativeClass:I

.field private mNavSlop:I

.field private mOrientation:I

.field public mOriginalScale:F

.field private mOverScrollGlow:Landroid/webkit/OverScrollGlow;

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDistance:I

.field private mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

.field private mPendingScrollX:I

.field private mPendingScrollY:I

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPictureUpdatePausedForFocusChange:Z

.field public mPluginHide:Z

.field private mPositionRectBase:Landroid/graphics/Rect;

.field private mPositionRectEnd:Landroid/graphics/Rect;

.field private mPositionRectExtend:Landroid/graphics/Rect;

.field private mPositionRectLock:Ljava/lang/Object;

.field private mPositionRectStart:Landroid/graphics/Rect;

.field private mPreventDefault:I

.field final mPrivateHandler:Landroid/os/Handler;

.field private mPureZoomMode:Z

.field public mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

.field private mRemoveBackground:Z

.field private mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

.field private final mScrollFilter:Landroid/graphics/DrawFilter;

.field private mScrollOffset:Landroid/graphics/Point;

.field mScroller:Landroid/widget/OverScroller;

.field private mScrollingLayerBounds:Landroid/graphics/Rect;

.field private mScrollingLayerRect:Landroid/graphics/Rect;

.field private mSelectCallback:Landroid/webkit/SelectActionModeCallback;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field protected mSelection:Landroid/webkit/WebViewSelectionMethod;

.field private mSelectionStarted:Z

.field private mSendScrollEvent:Z

.field private mSentAutoScrollMessage:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field public mStartTime:J

.field private mStartTouchX:I

.field private mStartTouchY:I

.field public mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

.field private mTabEffectTimeout:Ljava/lang/Runnable;

.field private mTextGeneration:I

.field private mTextSelectionPaint:Landroid/graphics/Paint;

.field private mTextSelectionRegion:Landroid/graphics/Region;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTitleBar:Landroid/view/View;

.field private mTitleBarHeight:I

.field private mTitleGravity:I

.field private mTouchCrossHairColor:Landroid/graphics/Paint;

.field private final mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

.field private mTouchHighlightRegion:Landroid/graphics/Region;

.field private mTouchHighlightRequested:J

.field private mTouchHighlightX:I

.field private mTouchHighlightY:I

.field private mTouchHightlightPaint:Landroid/graphics/Paint;

.field private mTouchMode:I

.field mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field final mViewManager:Landroid/webkit/ViewManager;

.field private final mViewRectViewport:Landroid/graphics/Rect;

.field private final mVisibleContentRect:Landroid/graphics/RectF;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWebTextView:Landroid/webkit/WebTextView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private mYDistanceToSlideTitleOffScreen:I

.field private final mZoomFilter:Landroid/graphics/DrawFilter;

.field public mZoomInDuration:I

.field private mZoomManager:Landroid/webkit/ZoomManager;

.field m_bCustomizeEnableTBS:Z

.field m_bEnableTBS:Z

.field m_bHasNewWebView:Z

.field private m_bIsBrowserApp:Z

.field m_bIsLoadFinish:Z

.field m_bIsLoading:Z

.field private m_bIsScrollingPause:Z

.field public m_bMailClientUsed:Z

.field private m_bNeedInvokeTabDialog:Z

.field private m_bNeedRestore:Z

.field m_bPauseAll:Z

.field m_bPauseTextReflowbyCurrentScale:Z

.field m_bsetScaleWithoutCheck:Z

.field private m_fResotreActualScale:F

.field public m_nCurrentTabMinLeft:I

.field public m_nCurrentTabMinLeft_modify:I

.field public m_nCurrentTabMinTop:I

.field public m_nCurrentTabMinTop_modify:I

.field public m_nHostStatusbarHeight:I

.field private m_nRestoreScrollX:I

.field private m_nRestoreScrollY:I

.field m_nSelectHighlightColor:I

.field m_nTextWrapWidth_pauseTextReflow:I

.field public m_nVisibleTitleHeight:I

.field public mbIsAnimationZoomOutFinish:Z

.field public mbNeedCallBack:Z

.field public mfTabRatio:F

.field private misCacheDrawBitmap:Z

.field ownerActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private selectionUIType:I

.field protected shortTapOnWebView:Z

.field private triggerByTouch:Z

.field private willSelectWord:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 695
    const v0, 0x6633b5e5

    sput v0, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    .line 807
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWAKEN_SCROLL_BARS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SCROLL_SELECT_TEXT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 821
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v3

    const-string v1, "102"

    aput-object v1, v0, v4

    const-string v1, "103"

    aput-object v1, v0, v5

    const-string v1, "104"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UNHANDLED_NAV_KEY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "REPLACE_BASE_CONTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "FORM_DID_BLUR"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FIND_AGAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SELECTION_STRING_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SET_TOUCH_HIGHLIGHT_RECTS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SAVE_WEBARCHIVE_FINISHED"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SET_AUTOFILLABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "AUTOFILL_COMPLETE"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SELECT_AT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "SCREEN_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ENTER_FULLSCREEN_VIDEO"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "UPDATE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "UPDATE_ZOOM_DENSITY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 871
    const/16 v0, 0x3d4

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 947
    sput-boolean v4, Landroid/webkit/WebView;->mLogEvent:Z

    .line 954
    sput-boolean v4, Landroid/webkit/WebView;->sNotificationsEnabled:Z

    .line 982
    sput-boolean v3, Landroid/webkit/WebView;->mIncrementEGLContextHack:Z

    .line 1242
    sput-boolean v3, Landroid/webkit/WebView;->sPackageInstallationReceiverAdded:Z

    .line 1251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->sGoogleApps:Ljava/util/Set;

    .line 1252
    sget-object v0, Landroid/webkit/WebView;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11180
    sput v3, Landroid/webkit/WebView;->m_nTabEffectType_Transition:I

    .line 12061
    sput-boolean v3, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    .line 12062
    sput-boolean v3, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    .line 12063
    const/4 v0, -0x1

    sput v0, Landroid/webkit/WebView;->mOverscrollMode:I

    .line 14043
    sput v3, Landroid/webkit/WebView;->DEFAULT_TEXT_WIDTH:I

    .line 14044
    const v0, 0x3faaaaab

    sput v0, Landroid/webkit/WebView;->DEFAULT_TEXT_RATIO:F

    .line 14045
    const/16 v0, 0x82

    sput v0, Landroid/webkit/WebView;->MIN_SMARTZOOM_SCALE:I

    .line 14046
    const/16 v0, 0x96

    sput v0, Landroid/webkit/WebView;->MAX_SMARTZOOM_SCALE:I

    .line 14260
    sput-boolean v4, Landroid/webkit/WebView;->m_bHostFullScreenMode:Z

    .line 14304
    sput-boolean v3, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    .line 14319
    const/high16 v0, 0x3f00

    sput v0, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14320
    const v0, 0x3f333333

    sput v0, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14321
    const v0, 0x3ef0a3d7

    sput v0, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14322
    const v0, 0x3f547ae1

    sput v0, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    .line 14689
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1093
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1094
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1102
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 1113
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, javaScriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 375
    iput-object v2, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    .line 378
    iput-object v2, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    .line 389
    iput-object v2, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    .line 398
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    .line 399
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    .line 400
    iput-boolean v5, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    .line 473
    new-instance v0, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 526
    iput v5, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 539
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    .line 548
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 561
    iput-boolean v5, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 572
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 583
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    .line 592
    iput-boolean v6, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 652
    iput-boolean v6, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 653
    iput-boolean v5, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 666
    iput-boolean v5, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 687
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    .line 701
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    .line 717
    iput-boolean v5, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    .line 720
    iput-boolean v5, p0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    .line 874
    iput v5, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 878
    iput-boolean v6, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    .line 880
    iput v5, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 898
    iput v5, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    .line 899
    iput v5, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    .line 950
    iput-wide v7, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 969
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 972
    iput v5, p0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 973
    iput v5, p0, Landroid/webkit/WebView;->mAutoScrollY:I

    .line 974
    iput v5, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    .line 975
    iput v5, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    .line 976
    iput v5, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    .line 977
    iput v5, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    .line 978
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    .line 979
    iput-boolean v5, p0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    .line 985
    new-instance v0, Landroid/webkit/WebView$TouchEventQueue;

    invoke-direct {v0, p0, v2}, Landroid/webkit/WebView$TouchEventQueue;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    .line 988
    iput-boolean v5, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    .line 994
    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    .line 995
    iput-boolean v5, p0, Landroid/webkit/WebView;->mBackgroundRemoved:Z

    .line 996
    iput-boolean v5, p0, Landroid/webkit/WebView;->mRemoveBackground:Z

    .line 998
    iput-object v2, p0, Landroid/webkit/WebView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1686
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 3184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    .line 3186
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    .line 3187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 3188
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollOffset:Landroid/graphics/Point;

    .line 3223
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 3251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    .line 3970
    iput-boolean v5, p0, Landroid/webkit/WebView;->mCustomFindMode:Z

    .line 5075
    iput v5, p0, Landroid/webkit/WebView;->mOrientation:I

    .line 5243
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v4, 0x40

    invoke-direct {v0, v1, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 5246
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 5435
    iput-boolean v5, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 5436
    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 5437
    iput v5, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 5438
    iput v5, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 5812
    iput-boolean v5, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 6777
    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsTouchOnScreen:Z

    .line 7862
    iput-wide v7, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 7863
    iput-wide v7, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 7864
    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7865
    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 7866
    iput v5, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 7867
    iput v5, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 7868
    iput-boolean v5, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 7869
    iput-boolean v5, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 7870
    iput-boolean v5, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 7871
    iput-boolean v5, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 7881
    iput v5, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 7882
    iput v5, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 7883
    iput-boolean v5, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 7884
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 7885
    iput-wide v7, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 7886
    iput-wide v7, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 7892
    iput-boolean v6, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 11159
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bsetScaleWithoutCheck:Z

    .line 11160
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    .line 11174
    iput-object v2, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 11175
    iput-object v2, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    .line 11176
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/webkit/WebView;->mMatrixValues:[F

    .line 11177
    iput v5, p0, Landroid/webkit/WebView;->mTitleBarHeight:I

    .line 11179
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    .line 11181
    const v0, 0xd0f7a7

    iput v0, p0, Landroid/webkit/WebView;->m_nSelectHighlightColor:I

    .line 11243
    iput v5, p0, Landroid/webkit/WebView;->howToSelection:I

    .line 11244
    iput v5, p0, Landroid/webkit/WebView;->selectionUIType:I

    .line 11397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    .line 11401
    new-instance v0, Landroid/webkit/WebViewAutoScroller;

    invoke-direct {v0}, Landroid/webkit/WebViewAutoScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mAutoScroller:Landroid/webkit/WebViewAutoScroller;

    .line 11402
    iput-boolean v5, p0, Landroid/webkit/WebView;->shortTapOnWebView:Z

    .line 12153
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    .line 12154
    iput v5, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    .line 12221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectLock:Ljava/lang/Object;

    .line 12222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectStart:Landroid/graphics/Rect;

    .line 12223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectEnd:Landroid/graphics/Rect;

    .line 12224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectBase:Landroid/graphics/Rect;

    .line 12225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectExtend:Landroid/graphics/Rect;

    .line 12263
    iput-boolean v5, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    .line 12264
    iput-boolean v5, p0, Landroid/webkit/WebView;->willSelectWord:Z

    .line 12268
    new-instance v0, Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$AutoScrollerWrapper;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    .line 13742
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    .line 13860
    iput-boolean v6, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    .line 13884
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bNeedRestore:Z

    .line 13885
    iput v5, p0, Landroid/webkit/WebView;->m_nRestoreScrollX:I

    .line 13886
    iput v5, p0, Landroid/webkit/WebView;->m_nRestoreScrollY:I

    .line 13887
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/WebView;->m_fResotreActualScale:F

    .line 13888
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    .line 13890
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    .line 14049
    iput-boolean v5, p0, Landroid/webkit/WebView;->mPluginHide:Z

    .line 14069
    iput-boolean v5, p0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    .line 14300
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/webkit/WebView;->mStartTime:J

    .line 14301
    const/16 v0, 0xc8

    iput v0, p0, Landroid/webkit/WebView;->mDefaultZoomInDuration:I

    .line 14302
    iget v0, p0, Landroid/webkit/WebView;->mDefaultZoomInDuration:I

    iput v0, p0, Landroid/webkit/WebView;->mZoomInDuration:I

    .line 14303
    iput-object v2, p0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 14305
    iput-boolean v6, p0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    .line 14306
    const v0, 0x3f181062

    iput v0, p0, Landroid/webkit/WebView;->DEFAULT_TAB_MIN_RATIO:F

    .line 14307
    const v0, 0x3f181062

    iput v0, p0, Landroid/webkit/WebView;->mfTabRatio:F

    .line 14308
    iput-boolean v5, p0, Landroid/webkit/WebView;->mbNeedCallBack:Z

    .line 14309
    iput v5, p0, Landroid/webkit/WebView;->m_nCurrentTabMinTop:I

    .line 14310
    iput v5, p0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft:I

    .line 14311
    iput v5, p0, Landroid/webkit/WebView;->m_nCurrentTabMinTop_modify:I

    .line 14312
    iput v5, p0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft_modify:I

    .line 14313
    iput-object v2, p0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    .line 14314
    iput-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    .line 14315
    iput v5, p0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    .line 14316
    iput v5, p0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    .line 14317
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bNeedInvokeTabDialog:Z

    .line 14592
    new-instance v0, Landroid/webkit/WebView$13;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$13;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mTabEffectTimeout:Ljava/lang/Runnable;

    .line 14702
    iput-boolean v5, p0, Landroid/webkit/WebView;->mDragAfterActionDown:Z

    .line 14714
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bEnableTBS:Z

    .line 14715
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bCustomizeEnableTBS:Z

    .line 14716
    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bHasNewWebView:Z

    .line 14829
    iput-boolean v5, p0, Landroid/webkit/WebView;->mHtcCustomizedDefaultScale:Z

    .line 14830
    iput-boolean v5, p0, Landroid/webkit/WebView;->mBrowserCustomizedDefaultScale:Z

    .line 14858
    iput-boolean v5, p0, Landroid/webkit/WebView;->mPureZoomMode:Z

    .line 14868
    iput v5, p0, Landroid/webkit/WebView;->mPendingScrollX:I

    .line 14869
    iput v5, p0, Landroid/webkit/WebView;->mPendingScrollY:I

    .line 14870
    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    .line 1141
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1143
    if-nez p1, :cond_0

    .line 1144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_0
    invoke-static {p1}, Landroid/webkit/JniUtil;->setContext(Landroid/content/Context;)V

    .line 1150
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1151
    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    .line 1152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/L10nUtils;->setApplicationContext(Landroid/content/Context;)V

    .line 1153
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0, v1, p4}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1154
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 1155
    new-instance v0, Landroid/widget/OverScroller;

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    .line 1156
    new-instance v0, Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomManager;-><init>(Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    .line 1161
    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    .line 1162
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setupPackageListener(Landroid/content/Context;)V

    .line 1163
    invoke-static {p1}, Landroid/webkit/WebView;->setupProxyListener(Landroid/content/Context;)V

    .line 1166
    new-instance v0, Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-direct {v0, v1, p0}, Landroid/webkit/HTCWebCore;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    .line 1168
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelectionColors()V

    .line 1175
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebSelectionType(I)V

    .line 1178
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1180
    if-eqz p5, :cond_1

    .line 1181
    invoke-direct {p0}, Landroid/webkit/WebView;->startPrivateBrowsing()V

    .line 1184
    :cond_1
    new-instance v0, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$AutoFillData;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    .line 1185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    .line 1123
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 1124
    return-void
.end method

.method public static SetWebViewTabEffectListener(Landroid/webkit/WebView$OnWebViewTabEffectListener;)V
    .locals 0
    .parameter "Listener"

    .prologue
    .line 14699
    sput-object p0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    .line 14700
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3150
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 3151
    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-static {p0}, Landroid/webkit/WebView;->handleProxyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-object p1, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object p1
.end method

.method static synthetic access$10100(Landroid/webkit/WebView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeSelectAt(II)V

    return-void
.end method

.method static synthetic access$10300(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    return v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetIsBrowser(Z)V

    return-void
.end method

.method static synthetic access$10500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10800(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    return-object v0
.end method

.method static synthetic access$11000(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11200(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11400(Landroid/webkit/WebView;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$11402(Landroid/webkit/WebView;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-object p1, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$11502(Landroid/webkit/WebView;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-object p1, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$11900(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$12000(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12100(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12200(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12300(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12400(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$12700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$12800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method static synthetic access$12900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$13100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$13200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    return v0
.end method

.method static synthetic access$13300()I
    .locals 1

    .prologue
    .line 354
    sget v0, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    return v0
.end method

.method static synthetic access$13400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$13500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$13600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$13700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$13800(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return v0
.end method

.method static synthetic access$13802(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return p1
.end method

.method static synthetic access$13900(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    return-void
.end method

.method static synthetic access$14000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$14100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$14200(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/webkit/WebView;->willSelectWord:Z

    return v0
.end method

.method static synthetic access$14202(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/webkit/WebView;->willSelectWord:Z

    return p1
.end method

.method static synthetic access$14300(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    return v0
.end method

.method static synthetic access$14400(Landroid/webkit/WebView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 354
    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$14500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$14600(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$14700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$14800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$14900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$15000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$15100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->selectionUIType:I

    return v0
.end method

.method static synthetic access$15400(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15500(Landroid/webkit/WebView;ILandroid/graphics/Region;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$15600(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/webkit/WebView;IIZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$15900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mTouchHighlightX:I

    return p1
.end method

.method static synthetic access$16200(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$16300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$16400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$16500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$16600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$16700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1702(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mTouchHighlightY:I

    return p1
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return v0
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView;Landroid/view/MotionEvent;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->handleTouchEventEditable(Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/webkit/WebView;Landroid/view/MotionEvent;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->handleTouchEventCommon(Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/webkit/WebView;)Landroid/graphics/Region;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return v0
.end method

.method static synthetic access$2502(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return p1
.end method

.method static synthetic access$2600(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return v0
.end method

.method static synthetic access$2602(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return p1
.end method

.method static synthetic access$2700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return v0
.end method

.method static synthetic access$2702(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return p1
.end method

.method static synthetic access$2800(Landroid/webkit/WebView;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->startScrollingLayer(FF)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->startDrag()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Landroid/webkit/WebView;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3800(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mAutoScrollX:I

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mAutoScrollY:I

    return v0
.end method

.method static synthetic access$4402(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    return p1
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebView;IIZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/WebView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->scrollLayerTo(II)V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$4902(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$5102(Landroid/webkit/WebView;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-object p1, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    return-object p1
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$5600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$5700(Landroid/webkit/WebView;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->doShortPress()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeReplaceBaseContent(I)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebView;ILjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeCreate(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$6702(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-object p1, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$6800(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7000(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-static {p0, p1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$7200(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$7500(Landroid/webkit/WebView;IIZJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 354
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    return v0
.end method

.method static synthetic access$7700(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->updateWebTextViewPosition()V

    return-void
.end method

.method static synthetic access$7900(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    return-void
.end method

.method static synthetic access$8000(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$8102(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$8202(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$8302(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method static synthetic access$8400(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    return v0
.end method

.method static synthetic access$8500(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    return-object v0
.end method

.method static synthetic access$8600(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return v0
.end method

.method static synthetic access$8702(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$8800(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doMotionUp(II)V

    return-void
.end method

.method static synthetic access$9000(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$9100(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissFullScreenMode()V

    return-void
.end method

.method static synthetic access$9200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$9300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$9400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$9500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method static synthetic access$9602(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mPendingScrollX:I

    return p1
.end method

.method static synthetic access$9702(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mPendingScrollY:I

    return p1
.end method

.method static synthetic access$9802(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$9902(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    iput p1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    return p1
.end method

.method private accessibilityScriptInjected()Z
    .locals 1

    .prologue
    .line 10824
    iget-boolean v0, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    return v0
.end method

.method private addAccessibilityApisToJavaScript()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1452
    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1455
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1456
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1457
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1458
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1459
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".**webview**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v6, v6, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1461
    iget-object v2, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-string v3, "accessibility"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1465
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private adjustWebTextViewSize(Landroid/graphics/Rect;)V
    .locals 14
    .parameter "rect"

    .prologue
    const/4 v1, -0x1

    const/16 v11, 0x19

    const v13, 0x3fcccccd

    const v12, 0x400ccccd

    .line 11318
    iget-object v10, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-nez v10, :cond_1

    .line 11392
    :cond_0
    :goto_0
    return-void

    .line 11321
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 11323
    .local v7, url:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 11326
    const-string/jumbo v10, "m.yahoo.com"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_c

    .line 11328
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v6

    .line 11329
    .local v6, type:I
    const/4 v10, 0x3

    if-ne v6, v10, :cond_0

    .line 11333
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    .line 11334
    .local v8, useragent:Ljava/lang/String;
    if-nez v8, :cond_4

    .line 11335
    .local v1, idx:I
    :goto_1
    if-ltz v1, :cond_0

    .line 11338
    invoke-virtual {p0}, Landroid/webkit/WebView;->getRight()I

    move-result v10

    invoke-virtual {p0}, Landroid/webkit/WebView;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_5

    const/4 v2, 0x1

    .line 11339
    .local v2, landscape:Z
    :goto_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()F

    move-result v10

    float-to-int v4, v10

    .line 11340
    .local v4, textsize:I
    add-int v5, v4, v4

    .line 11341
    .local v5, textsize2:I
    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    .line 11342
    .local v0, actualScale:F
    if-eqz v2, :cond_9

    .line 11344
    invoke-virtual {p0}, Landroid/webkit/WebView;->getRight()I

    move-result v10

    const/16 v11, 0x140

    if-le v10, v11, :cond_6

    move v9, v5

    .line 11345
    .local v9, widthoffset:I
    :goto_3
    cmpl-float v10, v0, v13

    if-lez v10, :cond_2

    .line 11347
    cmpg-float v10, v0, v12

    if-gez v10, :cond_7

    .line 11349
    sub-float v10, v0, v13

    const v11, 0x3f19999a

    div-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    .line 11358
    :cond_2
    :goto_4
    iget v10, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v9

    iput v10, p1, Landroid/graphics/Rect;->right:I

    .line 11372
    :goto_5
    add-int/lit8 v5, v5, 0x4

    .line 11373
    iget v10, p1, Landroid/graphics/Rect;->right:I

    if-lez v10, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ge v10, v5, :cond_0

    .line 11374
    :cond_3
    iget v10, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v5

    iput v10, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 11334
    .end local v0           #actualScale:F
    .end local v1           #idx:I
    .end local v2           #landscape:Z
    .end local v4           #textsize:I
    .end local v5           #textsize2:I
    .end local v9           #widthoffset:I
    :cond_4
    const-string v10, "Android"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 11338
    .restart local v1       #idx:I
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 11344
    .restart local v0       #actualScale:F
    .restart local v2       #landscape:Z
    .restart local v4       #textsize:I
    .restart local v5       #textsize2:I
    :cond_6
    add-int v9, v5, v4

    goto :goto_3

    .line 11353
    .restart local v9       #widthoffset:I
    :cond_7
    const v10, 0x40733333

    cmpl-float v10, v0, v10

    if-lez v10, :cond_8

    .line 11354
    const v0, 0x40733333

    .line 11355
    :cond_8
    sub-float v10, v0, v12

    div-float/2addr v10, v13

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v10, v4

    add-int/2addr v9, v10

    goto :goto_4

    .line 11362
    .end local v9           #widthoffset:I
    :cond_9
    add-int v9, v5, v4

    .line 11363
    .restart local v9       #widthoffset:I
    cmpl-float v10, v0, v12

    if-lez v10, :cond_b

    .line 11365
    const v10, 0x404ccccd

    cmpl-float v10, v0, v10

    if-lez v10, :cond_a

    .line 11366
    const v0, 0x404ccccd

    .line 11367
    :cond_a
    sub-float v10, v0, v12

    const/high16 v11, 0x3f80

    div-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    .line 11369
    :cond_b
    iget v10, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v9

    iput v10, p1, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 11376
    .end local v0           #actualScale:F
    .end local v1           #idx:I
    .end local v2           #landscape:Z
    .end local v4           #textsize:I
    .end local v5           #textsize2:I
    .end local v6           #type:I
    .end local v8           #useragent:Ljava/lang/String;
    .end local v9           #widthoffset:I
    :cond_c
    const-string/jumbo v10, "http://www.google.com.eg/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 11378
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v10, v11, :cond_d

    const-string/jumbo v10, "m?site"

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "?source"

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 11383
    :cond_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    .line 11384
    .restart local v8       #useragent:Ljava/lang/String;
    if-nez v8, :cond_e

    .line 11385
    .restart local v1       #idx:I
    :goto_6
    if-ltz v1, :cond_0

    .line 11388
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 11389
    .local v3, padding:Landroid/graphics/Rect;
    iget v10, p1, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iput v10, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 11384
    .end local v1           #idx:I
    .end local v3           #padding:Landroid/graphics/Rect;
    :cond_e
    const-string v10, "Android"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_6
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 3233
    iget v1, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-boolean v1, v1, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    if-eqz v1, :cond_0

    .line 3234
    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v0, v1, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    .line 3235
    .local v0, ct:Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0xa

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0xa

    iget v3, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v3, 0xa

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3249
    .end local v0           #ct:Landroid/graphics/Point;
    :goto_0
    return-void

    .line 3240
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3241
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 3246
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 3247
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 3248
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3257
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3258
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 3263
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 3264
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 3265
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 3266
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3226
    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 3227
    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3228
    return-void
.end method

.method private calculateDragAngle(II)F
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 6905
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 6906
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 6907
    int-to-double v0, p2

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private cancelSelectDialog()V
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->cancel()V

    .line 1819
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 1821
    :cond_0
    return-void
.end method

.method private cancelTouch()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x3

    .line 7809
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 7810
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7811
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7814
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v2, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_2

    .line 7817
    invoke-virtual {p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    .line 7819
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7820
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7821
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 7823
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7824
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7825
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7826
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7827
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7828
    invoke-direct {p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 7830
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7831
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7832
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 7833
    return-void
.end method

.method private cancelWebCoreTouchEvent(IIZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "removeEvents"

    .prologue
    const/16 v7, 0x8d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7652
    invoke-direct {p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7653
    if-eqz p3, :cond_0

    .line 7654
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3, v7}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 7656
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7657
    .local v0, ted:Landroid/webkit/WebViewCore$TouchEventData;
    new-array v3, v6, [I

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 7658
    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    aput v5, v3, v5

    .line 7659
    new-array v3, v6, [Landroid/graphics/Point;

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 7660
    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v5

    .line 7661
    new-array v3, v6, [Landroid/graphics/Point;

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 7662
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v1, v3, v4

    .line 7663
    .local v1, viewX:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v2, v3, v4

    .line 7664
    .local v2, viewY:I
    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v5

    .line 7665
    const/4 v3, 0x3

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7666
    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 7668
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 7669
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3, v7, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7670
    const/4 v3, 0x4

    iput v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7672
    if-eqz p3, :cond_1

    .line 7675
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->ignoreCurrentlyMissingEvents()V

    .line 7678
    .end local v0           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    .end local v1           #viewX:I
    .end local v2           #viewY:I
    :cond_1
    return-void
.end method

.method private static checkThread()V
    .locals 3

    .prologue
    .line 10905
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 10906
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All WebView methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Future versions of WebView may not support use on other threads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 10911
    .local v0, throwable:Ljava/lang/Throwable;
    const-string/jumbo v1, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10912
    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    .line 10914
    :cond_0
    return-void
.end method

.method private clearActionModes()V
    .locals 1

    .prologue
    .line 1788
    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1790
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 1796
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-eqz v0, :cond_1

    .line 1797
    iget-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->finish()V

    .line 1799
    :cond_1
    return-void

    .line 1793
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallback;->finish()V

    goto :goto_0
.end method

.method private clearHelpers()V
    .locals 0

    .prologue
    .line 1807
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 1808
    invoke-direct {p0}, Landroid/webkit/WebView;->clearActionModes()V

    .line 1809
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissFullScreenMode()V

    .line 1810
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelSelectDialog()V

    .line 1814
    return-void
.end method

.method private clearTextEntry()V
    .locals 1

    .prologue
    .line 2733
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2734
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    .line 2739
    :goto_0
    return-void

    .line 2737
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    goto :goto_0
.end method

.method private static computeDuration(II)I
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 4073
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4074
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 4075
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 3408
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3409
    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 3412
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    .prologue
    .line 3438
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3439
    iget v0, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 3442
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentSizeChanged(Z)V
    .locals 2
    .parameter "updateLayout"

    .prologue
    .line 4373
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4398
    :cond_0
    :goto_0
    return-void

    .line 4377
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    .line 4378
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 4380
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4382
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    .line 4383
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    .line 4385
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4396
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto :goto_0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 3098
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private destroyImpl()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1834
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1835
    iget-object v1, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 1836
    iget-object v1, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 1837
    iput-object v3, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 1840
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v1, :cond_1

    .line 1841
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->remove()V

    .line 1842
    iput-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 1844
    :cond_1
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeStopGL()V

    .line 1845
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_3

    .line 1848
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v3}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1849
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v3}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1851
    monitor-enter p0

    .line 1852
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1853
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1854
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 1855
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1858
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v3}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1861
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v2

    .line 1862
    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1863
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1865
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_3
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_4

    .line 1866
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    .line 1867
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    .line 1872
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 1873
    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1874
    iput-object v3, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 1876
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_6

    .line 1877
    iput-object v3, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    .line 1879
    :cond_6
    iput-object v3, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    .line 1881
    return-void

    .line 1855
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1863
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private didUpdateWebTextViewDimensions(I)Z
    .locals 9
    .parameter "intersection"

    .prologue
    .line 5113
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5119
    .local v0, contentBounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 5120
    .local v2, vBox:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 5121
    .local v3, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 5122
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->offsetByLayerScrollPosition(Landroid/graphics/Rect;)V

    .line 5127
    packed-switch p1, :pswitch_data_0

    .line 5138
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "invalid parameter passed to didUpdateWebTextViewDimensions"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 5129
    :pswitch_0
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    .line 5141
    .local v1, onScreen:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 5142
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 5144
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->updateTextSize()V

    .line 5145
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateWebTextViewPadding()V

    .line 5146
    const/4 v4, 0x1

    .line 5154
    :goto_1
    return v4

    .line 5132
    .end local v1           #onScreen:Z
    :pswitch_1
    invoke-static {v3, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 5133
    .restart local v1       #onScreen:Z
    goto :goto_0

    .line 5135
    .end local v1           #onScreen:Z
    :pswitch_2
    const/4 v1, 0x1

    .line 5136
    .restart local v1       #onScreen:Z
    goto :goto_0

    .line 5153
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->remove()V

    .line 5154
    const/4 v4, 0x0

    goto :goto_1

    .line 5127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static disablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1909
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1910
    const-class v2, Landroid/webkit/WebView;

    monitor-enter v2

    .line 1911
    :try_start_0
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    .line 1912
    const/4 v1, 0x0

    sput-boolean v1, Landroid/webkit/WebView;->sNotificationsEnabled:Z

    .line 1913
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1914
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1915
    invoke-static {v0}, Landroid/webkit/WebView;->disableProxyListener(Landroid/content/Context;)V

    .line 1916
    :cond_0
    monitor-exit v2

    .line 1917
    return-void

    .line 1916
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized disableProxyListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1222
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1227
    :goto_0
    monitor-exit v1

    return-void

    .line 1225
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1226
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dismissFullScreenMode()V
    .locals 1

    .prologue
    .line 6765
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6766
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v0}, Landroid/webkit/PluginFullScreenHolder;->hide()V

    .line 6767
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 6769
    :cond_0
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .locals 7
    .parameter "isTextView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5522
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5526
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v1, v2

    .line 5527
    .local v1, zoom:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 5528
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mLastTouchY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 5529
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 5531
    :cond_0
    if-eqz p1, :cond_3

    .line 5532
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5533
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5534
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 5535
    if-eqz v1, :cond_1

    .line 5536
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    .line 5547
    :cond_1
    :goto_1
    return-void

    .end local v1           #zoom:Z
    :cond_2
    move v1, v3

    .line 5526
    goto :goto_0

    .line 5546
    .restart local v1       #zoom:Z
    :cond_3
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method private doDrag(II)V
    .locals 19
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 7726
    or-int v2, p1, p2

    if-eqz v2, :cond_3

    .line 7727
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollX:I

    .line 7728
    .local v5, oldX:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mScrollY:I

    .line 7729
    .local v6, oldY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    .line 7730
    .local v7, rangeX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    .line 7731
    .local v8, rangeY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move/from16 v16, v0

    .line 7737
    .local v16, overscrollDistance:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_1

    .line 7738
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v12

    .line 7739
    .local v12, contentX:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v13

    .line 7743
    .local v13, contentY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->right:I

    .line 7744
    .local v14, maxX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 7745
    .local v15, maxY:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v12

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 7747
    .local v17, resultX:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 7750
    .local v18, resultY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_4

    .line 7753
    :cond_0
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7754
    move/from16 p1, v12

    .line 7755
    move/from16 p2, v13

    .line 7756
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 7757
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 7758
    move v7, v14

    .line 7759
    move v8, v15

    .line 7769
    .end local v12           #contentX:I
    .end local v13           #contentY:I
    .end local v14           #maxX:I
    .end local v15           #maxY:I
    .end local v17           #resultX:I
    .end local v18           #resultY:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_2

    .line 7770
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/OverScrollGlow;->setOverScrollDeltas(II)V

    .line 7773
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 7776
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v2}, Landroid/webkit/OverScrollGlow;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7777
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7780
    .end local v5           #oldX:I
    .end local v6           #oldY:I
    .end local v7           #rangeX:I
    .end local v8           #rangeY:I
    .end local v16           #overscrollDistance:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->keepZoomPickerVisible()V

    .line 7781
    return-void

    .line 7765
    .restart local v5       #oldX:I
    .restart local v6       #oldY:I
    .restart local v7       #rangeX:I
    .restart local v8       #rangeY:I
    .restart local v12       #contentX:I
    .restart local v13       #contentY:I
    .restart local v14       #maxX:I
    .restart local v15       #maxY:I
    .restart local v16       #overscrollDistance:I
    .restart local v17       #resultX:I
    .restart local v18       #resultY:I
    :cond_4
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method private doFling()V
    .locals 30

    .prologue
    .line 8197
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 8346
    :cond_0
    :goto_0
    return-void

    .line 8200
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    .line 8201
    .local v6, maxX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    .line 8204
    .local v8, maxY:I
    const/16 v24, 0x3e8

    .line 8205
    .local v24, initFlingVelocity:I
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x7b

    if-ne v2, v5, :cond_2

    .line 8206
    const/16 v24, 0x5dc

    .line 8208
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mMaximumFling:I

    int-to-float v5, v5

    move/from16 v0, v24

    invoke-virtual {v2, v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8211
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 8212
    .local v28, vx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v29, v0

    .line 8214
    .local v29, vy:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    .line 8215
    .local v3, scrollX:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollY:I

    .line 8216
    .local v4, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move/from16 v25, v0

    .line 8217
    .local v25, overscrollDistance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move/from16 v19, v0

    .line 8220
    .local v19, overflingDistance:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_3

    .line 8221
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 8222
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 8223
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 8224
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 8226
    const/16 v19, 0x0

    move/from16 v25, v19

    .line 8229
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v2, :cond_4

    .line 8230
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    .line 8231
    const/16 v29, 0x0

    .line 8236
    :cond_4
    :goto_1
    if-nez v6, :cond_5

    if-eqz v29, :cond_6

    :cond_5
    if-nez v8, :cond_a

    if-nez v28, :cond_a

    .line 8238
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    .line 8240
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 8241
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v2, :cond_7

    .line 8242
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8244
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8245
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8248
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v2, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_0

    .line 8252
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v5, v5, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 8233
    :cond_9
    const/16 v28, 0x0

    goto :goto_1

    .line 8258
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v21

    .line 8259
    .local v21, currentVelocity:F
    move/from16 v0, v28

    int-to-double v9, v0

    move/from16 v0, v29

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v27, v0

    .line 8260
    .local v27, velocity:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelocity:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_c

    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelocity:F

    const v5, 0x3e4ccccd

    mul-float/2addr v2, v5

    cmpl-float v2, v27, v2

    if-lez v2, :cond_c

    .line 8262
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelY:F

    float-to-double v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelX:F

    float-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    move/from16 v0, v29

    int-to-double v11, v0

    move/from16 v0, v28

    int-to-double v13, v0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v22, v0

    .line 8264
    .local v22, deltaR:F
    const v20, 0x40c90fdb

    .line 8265
    .local v20, circle:F
    const v2, 0x40b4f4ab

    cmpl-float v2, v22, v2

    if-gtz v2, :cond_b

    const v2, 0x3f20d97c

    cmpg-float v2, v22, v2

    if-gez v2, :cond_c

    .line 8266
    :cond_b
    move/from16 v0, v28

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mLastVelX:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v28, v0

    .line 8267
    move/from16 v0, v29

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mLastVelY:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v29, v0

    .line 8268
    move/from16 v0, v28

    int-to-double v9, v0

    move/from16 v0, v29

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v27, v0

    .line 8285
    .end local v20           #circle:F
    .end local v22           #deltaR:F
    :cond_c
    if-eqz v3, :cond_d

    if-ne v3, v6, :cond_e

    :cond_d
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 8286
    const/16 v28, 0x0

    .line 8288
    :cond_e
    if-eqz v4, :cond_f

    if-ne v4, v8, :cond_10

    :cond_f
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_10

    .line 8289
    const/16 v29, 0x0

    .line 8292
    :cond_10
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_16

    .line 8293
    if-lez v28, :cond_11

    move/from16 v0, v25

    neg-int v2, v0

    if-eq v3, v2, :cond_12

    :cond_11
    if-gez v28, :cond_13

    add-int v2, v6, v25

    if-ne v3, v2, :cond_13

    .line 8295
    :cond_12
    const/16 v28, 0x0

    .line 8297
    :cond_13
    if-lez v29, :cond_14

    move/from16 v0, v25

    neg-int v2, v0

    if-eq v4, v2, :cond_15

    :cond_14
    if-gez v29, :cond_16

    add-int v2, v8, v25

    if-ne v4, v2, :cond_16

    .line 8299
    :cond_15
    const/16 v29, 0x0

    .line 8303
    :cond_16
    move/from16 v0, v28

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mLastVelX:F

    .line 8304
    move/from16 v0, v29

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mLastVelY:F

    .line 8305
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 8308
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move/from16 v0, v28

    neg-int v12, v0

    move/from16 v0, v29

    neg-int v13, v0

    const/4 v14, 0x0

    const/16 v16, 0x0

    if-nez v6, :cond_19

    const/16 v18, 0x0

    :goto_2
    move v10, v3

    move v11, v4

    move v15, v6

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 8315
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v26

    .line 8318
    .local v26, time:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v5, 0x9

    if-eq v2, v5, :cond_17

    .line 8319
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 8323
    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v2, v5, :cond_18

    .line 8325
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_1a

    .line 8327
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v5, v5, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move/from16 v0, v26

    invoke-virtual {v2, v5, v0}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 8345
    :cond_18
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .end local v26           #time:I
    :cond_19
    move/from16 v18, v19

    .line 8308
    goto :goto_2

    .line 8332
    .restart local v26       #time:I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v5, :cond_18

    .line 8334
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 8335
    .local v23, hili:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    .line 8336
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto :goto_3
.end method

.method private doMotionUp(II)V
    .locals 4
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v3, 0x0

    .line 8594
    iget v1, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    .line 8595
    .local v0, slop:I
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v1, :cond_0

    .line 8596
    const v1, 0x11206

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8598
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8599
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 8601
    :cond_1
    return-void
.end method

.method private doShortPress()V
    .locals 7

    .prologue
    .line 8536
    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v5, :cond_1

    .line 8591
    :cond_0
    :goto_0
    return-void

    .line 8539
    :cond_1
    iget v5, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 8542
    const/4 v5, 0x7

    iput v5, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 8545
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 8547
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    .line 8548
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8550
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8551
    .local v0, contentX:I
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8552
    .local v1, contentY:I
    iget v5, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    .line 8567
    .local v3, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8568
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_0

    .line 8571
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8572
    invoke-direct {p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 8573
    new-instance v4, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v4}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 8576
    .local v4, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    const/4 v5, 0x0

    iput v5, v4, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 8577
    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x8c

    invoke-virtual {v5, v6, v4}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 8578
    .end local v4           #touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    :cond_4
    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 8579
    new-instance v2, Landroid/webkit/WebViewCore$MotionUpData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$MotionUpData;-><init>()V

    .line 8581
    .local v2, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitFramePointer()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    .line 8582
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodePointer()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    .line 8583
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, v2, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    .line 8584
    iput v0, v2, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    .line 8585
    iput v1, v2, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    .line 8586
    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x92

    invoke-virtual {v5, v6, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 8589
    .end local v2           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :cond_5
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_0
.end method

.method private doTrackball(JI)V
    .locals 25
    .parameter "time"
    .parameter "metaState"

    .prologue
    .line 8071
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    sub-long/2addr v5, v7

    long-to-int v12, v5

    .line 8072
    .local v12, elapsed:I
    if-nez v12, :cond_0

    .line 8073
    const/16 v12, 0xc8

    .line 8075
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v22, v3, v5

    .line 8076
    .local v22, xRate:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v24, v3, v5

    .line 8077
    .local v24, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v19

    .line 8078
    .local v19, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v18

    .line 8079
    .local v18, viewHeight:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_3

    .line 8080
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    if-nez v3, :cond_1

    .line 8084
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionX()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectX:I

    .line 8085
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectY:I

    .line 8086
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mExtendSelection:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 8087
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 8089
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/webkit/WebView;->moveSelection(FF)V

    .line 8091
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 8157
    :cond_2
    :goto_0
    return-void

    .line 8094
    :cond_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 8095
    .local v9, ax:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 8096
    .local v10, ay:F
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 8104
    .local v15, maxA:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentWidth:I

    sub-int v20, v3, v19

    .line 8105
    .local v20, width:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentHeight:I

    sub-int v13, v3, v18

    .line 8106
    .local v13, height:I
    if-gez v20, :cond_4

    const/16 v20, 0x0

    .line 8107
    :cond_4
    if-gez v13, :cond_5

    const/4 v13, 0x0

    .line 8108
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 8109
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 8110
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 8111
    const/4 v3, 0x0

    float-to-int v5, v15

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 8112
    .local v11, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v16, v0

    .line 8113
    .local v16, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v17, v0

    .line 8114
    .local v17, oldScrollY:I
    if-lez v11, :cond_b

    .line 8115
    cmpg-float v3, v9, v10

    if-gez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_6

    const/16 v4, 0x13

    .line 8119
    .local v4, selectKeyCode:I
    :goto_1
    const/16 v3, 0xa

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 8126
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativePageShouldHandleShiftAndArrows()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 8127
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    if-ge v14, v11, :cond_9

    .line 8128
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    .line 8127
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 8115
    .end local v4           #selectKeyCode:I
    .end local v14           #i:I
    :cond_6
    const/16 v4, 0x14

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_8

    const/16 v4, 0x15

    goto :goto_1

    :cond_8
    const/16 v4, 0x16

    goto :goto_1

    .line 8130
    .restart local v4       #selectKeyCode:I
    .restart local v14       #i:I
    :cond_9
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    .line 8134
    .end local v14           #i:I
    :cond_a
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 8136
    .end local v4           #selectKeyCode:I
    :cond_b
    const/4 v3, 0x5

    if-lt v11, v3, :cond_2

    .line 8137
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v21

    .line 8138
    .local v21, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v13}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v23

    .line 8147
    .local v23, yMove:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_c

    .line 8148
    const/16 v21, 0x0

    .line 8150
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_d

    .line 8151
    const/16 v23, 0x0

    .line 8153
    :cond_d
    if-nez v21, :cond_e

    if-eqz v23, :cond_2

    .line 8154
    :cond_e
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto/16 :goto_0

    .line 8131
    .end local v21           #xMove:I
    .end local v23           #yMove:I
    .restart local v4       #selectKeyCode:I
    :cond_f
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move v5, v11

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 8132
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_3
.end method

.method private domChangedFocus()V
    .locals 2

    .prologue
    .line 2895
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2896
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2898
    :cond_0
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;Z)V
    .locals 2
    .parameter "canvas"
    .parameter "drawRings"

    .prologue
    .line 4616
    iget v1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    .line 4618
    return-void

    .line 4616
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V
    .locals 22
    .parameter "canvas"
    .parameter "color"
    .parameter "drawCursorRing"

    .prologue
    .line 5251
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_1

    .line 5252
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5253
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 5382
    :cond_0
    :goto_0
    return-void

    .line 5256
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    .line 5258
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v17

    .line 5259
    .local v17, animateZoom:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    :cond_4
    const/16 v16, 0x1

    .line 5264
    .local v16, animateScroll:Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 5265
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 5266
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5267
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5268
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5270
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    if-nez v2, :cond_6

    .line 5271
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5273
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5276
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5279
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 5280
    .local v21, saveCount:I
    if-eqz v17, :cond_e

    .line 5281
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/ZoomManager;->animateZoom(Landroid/graphics/Canvas;)V

    .line 5286
    :cond_7
    :goto_2
    const/4 v15, 0x0

    .line 5289
    .local v15, UIAnimationsRunning:Z
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->nativeEvaluateLayersAnimations(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5291
    const/4 v15, 0x1

    .line 5296
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xc4

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5297
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5301
    :cond_8
    const/4 v8, 0x0

    .line 5302
    .local v8, extras:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v2, :cond_f

    .line 5303
    const/4 v8, 0x1

    .line 5326
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 5327
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5328
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v2, :cond_11

    const/4 v4, 0x0

    .line 5329
    .local v4, glRectViewport:Landroid/graphics/Rect;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v2, :cond_12

    const/4 v5, 0x0

    .line 5331
    .local v5, viewRectViewport:Landroid/graphics/Rect;
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNativeClass:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScale()F

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebView;->nativeGetDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I

    move-result v20

    .local v20, functor:I
    move-object/from16 v2, p1

    .line 5333
    check-cast v2, Landroid/view/HardwareCanvas;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/HardwareCanvas;->callDrawGLFunction(I)Z

    .line 5334
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getHardwareAccelSkiaEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_a

    .line 5335
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getHardwareAccelSkiaEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    .line 5336
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->nativeUseHardwareAccelSkia(Z)V

    .line 5357
    .end local v4           #glRectViewport:Landroid/graphics/Rect;
    .end local v5           #viewRectViewport:Landroid/graphics/Rect;
    .end local v20           #functor:I
    :cond_a
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5358
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_b

    .line 5360
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->howToSelection:I

    if-nez v2, :cond_17

    .line 5361
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->drawTextSelectionHandles(Landroid/graphics/Canvas;)V

    .line 5367
    :cond_b
    :goto_7
    const/4 v2, 0x3

    if-ne v8, v2, :cond_c

    .line 5368
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 5369
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5372
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    if-eqz v2, :cond_0

    .line 5373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 5378
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5379
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    goto/16 :goto_0

    .line 5259
    .end local v8           #extras:I
    .end local v15           #UIAnimationsRunning:Z
    .end local v16           #animateScroll:Z
    .end local v21           #saveCount:I
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 5282
    .restart local v16       #animateScroll:Z
    .restart local v21       #saveCount:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5283
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_2

    .line 5304
    .restart local v8       #extras:I
    .restart local v15       #UIAnimationsRunning:Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_10

    .line 5309
    :cond_10
    if-eqz p3, :cond_9

    .line 5310
    const/4 v8, 0x3

    .line 5312
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5313
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 5328
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    goto/16 :goto_4

    .line 5329
    .restart local v4       #glRectViewport:Landroid/graphics/Rect;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    goto/16 :goto_5

    .line 5340
    .end local v4           #glRectViewport:Landroid/graphics/Rect;
    :cond_13
    const/16 v19, 0x0

    .line 5341
    .local v19, df:Landroid/graphics/DrawFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v15, :cond_16

    .line 5342
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v19, v0

    .line 5346
    :cond_15
    :goto_8
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5349
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v12, p2

    move v13, v8

    invoke-direct/range {v9 .. v14}, Landroid/webkit/WebView;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIZ)I

    move-result v18

    .line 5351
    .local v18, content:I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5352
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_a

    if-eqz v18, :cond_a

    .line 5353
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x85

    const/4 v6, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v6}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_6

    .line 5343
    .end local v18           #content:I
    :cond_16
    if-eqz v16, :cond_15

    .line 5344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v19, v0

    goto :goto_8

    .line 5363
    .end local v19           #df:Landroid/graphics/DrawFilter;
    :cond_17
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->drawQuickSelect(Landroid/graphics/Canvas;)V

    goto/16 :goto_7
.end method

.method private drawOverScrollBackground(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 4625
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 4626
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 4627
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108053e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4630
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4632
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 4633
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4634
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4635
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4638
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v9, 0x0

    .line 4639
    .local v9, top:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v8

    .line 4640
    .local v8, right:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v9, v0

    .line 4642
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4643
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4644
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    neg-int v0, v0

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v0, v9, v0

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v0, v8, v0

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 4646
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 4647
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4649
    const/high16 v1, -0x4080

    const/4 v0, -0x1

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4651
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4652
    return-void
.end method

.method private drawQuickSelect(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x4

    .line 12347
    const/4 v2, 0x0

    .line 12350
    .local v2, flag:I
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    .line 12351
    iget-object v8, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v6

    .line 12352
    .local v6, scale:F
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 12355
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12356
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    sget v9, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 12359
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-boolean v7, v8, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 12362
    .local v7, showingMagniier:Z
    if-eqz v7, :cond_0

    .line 12363
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    .line 12365
    :cond_0
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->setEmpty()V

    .line 12366
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    iget-object v9, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V

    .line 12368
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v8}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v8

    sget-object v9, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v1, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    .line 12371
    .local v1, drawRegion:Landroid/graphics/Region;
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 12372
    .local v4, r:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 12373
    .local v5, rf:Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RegionIterator;

    invoke-direct {v3, v1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 12374
    .local v3, iter:Landroid/graphics/RegionIterator;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 12375
    .local v0, clip:Landroid/graphics/Rect;
    :cond_1
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 12376
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 12377
    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 12378
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 12368
    .end local v0           #clip:Landroid/graphics/Rect;
    .end local v1           #drawRegion:Landroid/graphics/Region;
    .end local v3           #iter:Landroid/graphics/RegionIterator;
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v5           #rf:Landroid/graphics/RectF;
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    goto :goto_0

    .line 12384
    .restart local v0       #clip:Landroid/graphics/Rect;
    .restart local v1       #drawRegion:Landroid/graphics/Region;
    .restart local v3       #iter:Landroid/graphics/RegionIterator;
    .restart local v4       #r:Landroid/graphics/Rect;
    .restart local v5       #rf:Landroid/graphics/RectF;
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 12385
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 12386
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 12387
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 12390
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    iget-object v9, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12394
    if-nez v7, :cond_4

    .line 12395
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    .line 12399
    :cond_4
    if-eqz v2, :cond_5

    .line 12400
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 12402
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-boolean v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    if-eqz v8, :cond_6

    .line 12403
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v9, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 12409
    :goto_2
    return-void

    .line 12406
    :cond_6
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v8, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 12407
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v8, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_2
.end method

.method private drawTextSelectionHandles(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 5385
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    .line 5386
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    .line 5387
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    sget v9, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 5389
    :cond_0
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->setEmpty()V

    .line 5390
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    iget-object v9, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V

    .line 5391
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5392
    .local v5, r:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RegionIterator;

    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-direct {v4, v8}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 5393
    .local v4, iter:Landroid/graphics/RegionIterator;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5394
    .local v0, clip:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    invoke-virtual {v4, v5}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5395
    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 5399
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5400
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 5403
    :cond_2
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    .line 5404
    iget-object v8, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080597

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 5407
    :cond_3
    const/4 v8, 0x4

    new-array v3, v8, [I

    .line 5408
    .local v3, handles:[I
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-direct {p0, v8, v3}, Landroid/webkit/WebView;->nativeGetSelectionHandles(I[I)V

    .line 5409
    const/4 v8, 0x0

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v6

    .line 5410
    .local v6, start_x:I
    const/4 v8, 0x1

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v7

    .line 5411
    .local v7, start_y:I
    const/4 v8, 0x2

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 5412
    .local v1, end_x:I
    const/4 v8, 0x3

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v2

    .line 5414
    .local v2, end_y:I
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    sub-int/2addr v6, v8

    .line 5415
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5418
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_4

    .line 5419
    iget-object v8, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080599

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 5422
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    sub-int/2addr v1, v8

    .line 5423
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v8, v1, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5430
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5431
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5432
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1891
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1892
    const-class v2, Landroid/webkit/WebView;

    monitor-enter v2

    .line 1893
    :try_start_0
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 1894
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebView;->sNotificationsEnabled:Z

    .line 1895
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1896
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1897
    invoke-static {v0}, Landroid/webkit/WebView;->setupProxyListener(Landroid/content/Context;)V

    .line 1898
    :cond_0
    monitor-exit v2

    .line 1899
    return-void

    .line 1898
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensureAccessibilityScriptInjectorInstance(Z)V
    .locals 1
    .parameter "present"

    .prologue
    .line 4249
    if-eqz p1, :cond_1

    .line 4250
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-nez v0, :cond_0

    .line 4251
    new-instance v0, Landroid/webkit/AccessibilityInjector;

    invoke-direct {v0, p0}, Landroid/webkit/AccessibilityInjector;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    .line 4256
    :cond_0
    :goto_0
    return-void

    .line 4254
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_0
.end method

.method private extendScroll(I)Z
    .locals 4
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 2632
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 2633
    .local v0, finalY:I
    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    .line 2634
    .local v1, newY:I
    if-ne v1, v0, :cond_0

    .line 2637
    :goto_0
    return v2

    .line 2635
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2636
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v2, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 2637
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 3911
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3912
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 3938
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddressAndPhone(Ljava/lang/String;[I[I[I)I
    .locals 4
    .parameter "data"
    .parameter "type"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/16 v3, 0x100

    const/4 v1, 0x0

    .line 14762
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 14777
    :goto_0
    return v0

    .line 14765
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v2, p1

    if-lt v2, v3, :cond_2

    array-length v2, p2

    if-lt v2, v3, :cond_2

    array-length v2, p3

    if-ge v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 14767
    goto :goto_0

    .line 14770
    :cond_3
    const/4 v0, 0x0

    .line 14771
    .local v0, ret:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_4

    .line 14772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeFindAddressAndPhone(Ljava/lang/String;[I[I[I)I

    move-result v0

    goto :goto_0

    .line 14774
    :cond_4
    invoke-static {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeFindAddressAndPhone(Ljava/lang/String;[I[I[I)I

    move-result v0

    goto :goto_0
.end method

.method public static findAddressAndPhone2(Ljava/lang/String;[I[I[I[I[I[I[I[I[I[I[I)I
    .locals 14
    .parameter "data"
    .parameter "type"
    .parameter "offset"
    .parameter "len"
    .parameter "countryOffset"
    .parameter "countryLength"
    .parameter "zipCodeOffset"
    .parameter "zipCodeLength"
    .parameter "stateOffset"
    .parameter "stateLength"
    .parameter "cityOffset"
    .parameter "cityLength"

    .prologue
    .line 14783
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 14784
    :cond_0
    const/4 v13, 0x0

    .line 14807
    :goto_0
    return v13

    .line 14786
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v1, p1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_2

    move-object/from16 v0, p2

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_2

    move-object/from16 v0, p3

    array-length v1, v0

    const/16 v2, 0x100

    if-ge v1, v2, :cond_3

    .line 14788
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 14790
    :cond_3
    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    if-eqz p7, :cond_4

    if-eqz p8, :cond_4

    if-eqz p9, :cond_4

    if-eqz p10, :cond_4

    if-eqz p11, :cond_4

    move-object/from16 v0, p4

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p5

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p6

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p7

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p8

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p9

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p10

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p11

    array-length v1, v0

    const/16 v2, 0x100

    if-ge v1, v2, :cond_5

    .line 14794
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 14796
    :cond_5
    const/4 v13, 0x0

    .line 14797
    .local v13, ret:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_6

    .line 14798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-static/range {v1 .. v12}, Landroid/webkit/WebViewCore;->nativeFindAddressAndPhone2(Ljava/lang/String;[I[I[I[I[I[I[I[I[I[I[I)I

    move-result v13

    goto/16 :goto_0

    .line 14802
    :cond_6
    invoke-static/range {p0 .. p11}, Landroid/webkit/WebViewCore;->nativeFindAddressAndPhone2(Ljava/lang/String;[I[I[I[I[I[I[I[I[I[I[I)I

    move-result v13

    goto/16 :goto_0
.end method

.method private fnIsHtcApplication()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1356
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1357
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1358
    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return v1

    .line 1362
    :cond_1
    const-string v2, "com.htc.android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1366
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private forceBreakWord(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 12209
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_0

    .line 12210
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCore;->nativeEnableTextReflowWithBreakWords(Z)V

    .line 12211
    :cond_0
    return-void
.end method

.method private getAxsUrlParameterValue(Ljava/lang/String;)I
    .locals 4
    .parameter "url"

    .prologue
    .line 4265
    iget-object v2, p0, Landroid/webkit/WebView;->mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

    if-nez v2, :cond_0

    .line 4266
    const-string v2, "(\\?axs=(0|1))|(&axs=(0|1))"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

    .line 4268
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4269
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4270
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4271
    .local v0, keyValuePair:Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4273
    .end local v0           #keyValuePair:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getDefaultTextWidth()I
    .locals 1

    .prologue
    .line 14060
    sget v0, Landroid/webkit/WebView;->DEFAULT_TEXT_WIDTH:I

    return v0
.end method

.method private getOverlappingActionModeHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1689
    iget-object v1, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-nez v1, :cond_0

    .line 1697
    :goto_0
    return v0

    .line 1692
    :cond_0
    iget v1, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    if-gez v1, :cond_1

    .line 1693
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 1694
    iget-object v1, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/FindActionModeCallback;->getActionModeGlobalBottom()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 1697
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    goto :goto_0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4564
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4565
    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 4564
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    .prologue
    .line 10696
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 10697
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 10704
    .local v1, width:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    return v2

    .line 10699
    .end local v1           #width:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10700
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10701
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    .prologue
    .line 10709
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 10710
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 10719
    .local v0, height:I
    :goto_0
    int-to-float v2, v0

    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 10712
    .end local v0           #height:I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10713
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10714
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private getVisibleTitleHeightImpl()I
    .locals 3

    .prologue
    .line 1682
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getOverlappingActionModeHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 2612
    if-eqz p1, :cond_0

    .line 2613
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2614
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x6a

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2617
    :cond_0
    return-void

    .line 2614
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goBackOrForwardImpl(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 2600
    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_0

    .line 2601
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 2602
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

    invoke-virtual {v0}, Landroid/webkit/HTCQuickSearch;->leaveQuickSearchShareMode()V

    .line 2603
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2609
    :goto_0
    return-void

    .line 2608
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    goto :goto_0
.end method

.method private static handleProxyBroadcast(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/16 v2, 0xc1

    .line 1230
    const-string/jumbo v1, "proxy"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 1231
    .local v0, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1232
    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 1236
    :goto_0
    return-void

    .line 1235
    :cond_1
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleTouchEventCommon(Landroid/view/MotionEvent;III)Z
    .locals 23
    .parameter "ev"
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6916
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    .line 6922
    .local v17, eventTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 6923
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 6925
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchX:I

    sub-int v13, v3, p3

    .line 6926
    .local v13, deltaX:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchY:I

    sub-int v14, v3, p4

    .line 6927
    .local v14, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v10

    .line 6928
    .local v10, contentX:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v11

    .line 6931
    .local v11, contentY:I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->triggerByTouch:Z

    .line 6934
    packed-switch p2, :pswitch_data_0

    .line 7544
    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 6936
    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 6937
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 6938
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 6941
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->willSelectWord:Z

    .line 6942
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mIsTouchOnScreen:Z

    .line 6943
    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 6944
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    sput-boolean v3, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    .line 6945
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_7

    const/4 v3, 0x1

    :goto_3
    sput-boolean v3, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    .line 6948
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 6952
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 6953
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6956
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    .line 6958
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 7042
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_19

    .line 7044
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v3, :cond_14

    const-wide/16 v3, 0x258

    :goto_5
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7047
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v3, :cond_15

    const-wide/16 v3, 0x320

    :goto_6
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7050
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_16

    .line 7051
    :cond_5
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7058
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 7059
    new-instance v22, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v22 .. v22}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7060
    .local v22, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move/from16 v0, p2

    move-object/from16 v1, v22

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7061
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 7062
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 7063
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 7064
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7065
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 7066
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7067
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7068
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v22

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7069
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 7071
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v22

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 7072
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 7073
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7074
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_18

    .line 7076
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    .line 7077
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    goto/16 :goto_0

    .line 6944
    .end local v22           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 6945
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 6959
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 6960
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6961
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6962
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 6964
    :cond_9
    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_a

    .line 6965
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_4

    .line 6968
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 6969
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6970
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_4

    :cond_b
    const/4 v3, 0x0

    goto :goto_8

    .line 6979
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDragAfterActionDown:Z

    if-eqz v3, :cond_11

    .line 6980
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6981
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDragAfterActionDown:Z

    .line 6985
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_12

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    .line 6989
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_d

    .line 6990
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x62

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6993
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 6994
    new-instance v12, Landroid/webkit/WebViewCore$TouchHighlightData;

    invoke-direct {v12}, Landroid/webkit/WebViewCore$TouchHighlightData;-><init>()V

    .line 6995
    .local v12, data:Landroid/webkit/WebViewCore$TouchHighlightData;
    iput v10, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mX:I

    .line 6996
    iput v11, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mY:I

    .line 6997
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    .line 6998
    iget-object v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    iput v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    .line 7000
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNavSlop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    iput v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mSlop:I

    .line 7001
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 7002
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_e

    .line 7003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/webkit/WebView;->mTouchHighlightRequested:J

    .line 7004
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xbb

    invoke-virtual {v3, v4, v12}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 7008
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 7009
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    .line 7010
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    .line 7011
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v4, Landroid/webkit/WebView$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7020
    .end local v12           #data:Landroid/webkit/WebViewCore$TouchHighlightData;
    :cond_f
    sget-boolean v3, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v3, v17, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_10

    .line 7021
    const v3, 0x111d6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v6, v17, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7024
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_3

    .line 7026
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_13

    .line 7027
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto/16 :goto_4

    .line 6983
    :cond_11
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_9

    .line 6985
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 7032
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 7033
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 7037
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_4

    .line 7044
    :cond_14
    const-wide/16 v3, 0x12c

    goto/16 :goto_5

    .line 7047
    :cond_15
    const-wide/16 v3, 0x2bc

    goto/16 :goto_6

    .line 7052
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_17

    .line 7053
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_7

    .line 7055
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_7

    .line 7080
    .restart local v22       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_19

    .line 7081
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7082
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7088
    .end local v22           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_19
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 7090
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDragAfterActionDown:Z

    goto/16 :goto_0

    .line 7108
    :pswitch_1
    const/16 v19, 0x0

    .line 7109
    .local v19, firstMove:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-nez v3, :cond_1b

    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-lt v3, v4, :cond_1b

    .line 7111
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7112
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7113
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7114
    const/16 v19, 0x1

    .line 7115
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1a

    .line 7116
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7118
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 7119
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 7123
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_1d

    if-nez v19, :cond_1c

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    sub-long v3, v17, v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1d

    .line 7125
    :cond_1c
    new-instance v22, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v22 .. v22}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7126
    .restart local v22       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move/from16 v0, p2

    move-object/from16 v1, v22

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7127
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 7128
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 7129
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 7130
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7131
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 7132
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7133
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7134
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v22

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7135
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 7136
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7137
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v22

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 7138
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 7139
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7140
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 7141
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-nez v3, :cond_0

    .line 7144
    if-eqz v19, :cond_1d

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 7145
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7150
    .end local v22           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 7156
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_21

    .line 7157
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7164
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_1f

    .line 7166
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_22

    .line 7167
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7171
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7203
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2e

    .line 7206
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_0

    .line 7210
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 7214
    :cond_20
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_0

    .line 7162
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 7177
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    if-eqz v3, :cond_1f

    .line 7181
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    .line 7182
    .local v21, parent:Landroid/view/ViewParent;
    if-eqz v21, :cond_23

    .line 7183
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7185
    :cond_23
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    move/from16 v0, p3

    if-gt v0, v3, :cond_27

    const/4 v3, -0x5

    :goto_c
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 7187
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    move/from16 v0, p4

    if-gt v0, v3, :cond_29

    const/4 v3, -0x5

    :goto_d
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    .line 7189
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    if-nez v3, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    if-eqz v3, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-nez v3, :cond_25

    .line 7191
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    .line 7192
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const-wide/16 v5, 0x10

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7195
    :cond_25
    if-nez v13, :cond_26

    if-eqz v14, :cond_0

    .line 7196
    :cond_26
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 7197
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 7185
    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    move/from16 v0, p3

    if-lt v0, v3, :cond_28

    const/4 v3, 0x5

    goto :goto_c

    :cond_28
    const/4 v3, 0x0

    goto :goto_c

    .line 7187
    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    move/from16 v0, p4

    if-lt v0, v3, :cond_2a

    const/4 v3, 0x5

    goto :goto_d

    :cond_2a
    const/4 v3, 0x0

    goto :goto_d

    .line 7221
    .end local v21           #parent:Landroid/view/ViewParent;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v15

    .line 7223
    .local v15, detector:Landroid/view/ScaleGestureDetector;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->calculateDragAngle(II)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    .line 7224
    if-eqz v15, :cond_2c

    invoke-virtual {v15}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 7226
    :cond_2c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_31

    .line 7227
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7228
    if-lez v13, :cond_30

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 7229
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    .line 7237
    :cond_2d
    :goto_f
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7238
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    .line 7239
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    .line 7240
    const/4 v13, 0x0

    .line 7241
    const/4 v14, 0x0

    .line 7243
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/webkit/WebView;->startScrollingLayer(FF)V

    .line 7244
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    .line 7248
    .end local v15           #detector:Landroid/view/ScaleGestureDetector;
    :cond_2e
    const/16 v16, 0x0

    .line 7249
    .local v16, done:Z
    const/16 v20, 0x0

    .line 7250
    .local v20, keepScrollBarsVisible:Z
    if-nez v13, :cond_33

    if-nez v14, :cond_33

    .line 7251
    const/16 v16, 0x1

    move/from16 v20, v16

    .line 7302
    .end local v20           #keepScrollBarsVisible:Z
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->doDrag(II)V

    .line 7305
    if-eqz v20, :cond_3e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3e

    .line 7307
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f

    .line 7308
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7309
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7312
    :cond_2f
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    .line 7315
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7320
    if-nez v16, :cond_3d

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 7228
    .end local v16           #done:Z
    .restart local v15       #detector:Landroid/view/ScaleGestureDetector;
    :cond_30
    const/4 v3, 0x0

    goto :goto_e

    .line 7230
    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2d

    .line 7231
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7232
    if-lez v14, :cond_32

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 7233
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto/16 :goto_f

    .line 7232
    :cond_32
    const/4 v3, 0x0

    goto :goto_11

    .line 7253
    .end local v15           #detector:Landroid/view/ScaleGestureDetector;
    .restart local v16       #done:Z
    .restart local v20       #keepScrollBarsVisible:Z
    :cond_33
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->calculateDragAngle(II)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mAverageAngle:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    .line 7256
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v3, :cond_37

    .line 7257
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    .line 7259
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const v4, 0x3f733333

    cmpg-float v3, v3, v4

    if-gez v3, :cond_34

    .line 7260
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7263
    :cond_34
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_35

    .line 7265
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const v4, 0x3ecccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    .line 7266
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7280
    :cond_35
    :goto_12
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v3, :cond_36

    .line 7281
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    .line 7282
    const/4 v14, 0x0

    .line 7287
    :cond_36
    :goto_13
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    .line 7288
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    .line 7290
    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-le v3, v4, :cond_3c

    .line 7291
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7292
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 7299
    :goto_14
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_10

    .line 7270
    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_39

    .line 7271
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7272
    if-lez v13, :cond_38

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 7273
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto :goto_12

    .line 7272
    :cond_38
    const/4 v3, 0x0

    goto :goto_15

    .line 7274
    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    .line 7275
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7276
    if-lez v14, :cond_3a

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 7277
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto/16 :goto_12

    .line 7276
    :cond_3a
    const/4 v3, 0x0

    goto :goto_16

    .line 7284
    :cond_3b
    const/4 v13, 0x0

    goto :goto_13

    .line 7294
    :cond_3c
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7295
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 7296
    const/16 v20, 0x1

    goto :goto_14

    .line 7320
    .end local v20           #keepScrollBarsVisible:Z
    :cond_3d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 7322
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 7329
    .end local v16           #done:Z
    .end local v19           #firstMove:Z
    :pswitch_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mIsTouchOnScreen:Z

    .line 7331
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 7333
    :cond_3f
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 7334
    new-instance v22, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v22 .. v22}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7335
    .restart local v22       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 7336
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 7337
    move/from16 v0, p2

    move-object/from16 v1, v22

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7338
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 7339
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7340
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 7341
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7342
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7343
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v22

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7344
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 7345
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7346
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v22

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 7347
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 7348
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7356
    .end local v22           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_40
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 7357
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-eqz v3, :cond_41

    .line 7358
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 7360
    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    .line 7524
    :cond_42
    :goto_17
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_0

    .line 7362
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7363
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7364
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_43

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_44

    .line 7365
    :cond_43
    new-instance v22, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v22 .. v22}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7366
    .restart local v22       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 7367
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 7368
    const/16 v3, 0x200

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7369
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 7370
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7371
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 7372
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7373
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7374
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v22

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7375
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 7378
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v22

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 7379
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 7380
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_17

    .line 7381
    .end local v22           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_44
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    .line 7393
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mLastTouchX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mLastTouchY:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/ZoomManager;->handleDoubleTap(FF)V

    .line 7394
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_17

    .line 7400
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7401
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7402
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_48

    .line 7403
    const-string/jumbo v3, "webview"

    const-string v4, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7407
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_45

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_45

    .line 7408
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto/16 :goto_17

    .line 7413
    :cond_45
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v3

    if-gtz v3, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v3

    if-lez v3, :cond_47

    .line 7429
    :cond_46
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 7432
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7469
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7470
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7473
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    sub-long v3, v17, v3

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4f

    .line 7474
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_4e

    .line 7475
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7486
    :goto_18
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7487
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    .line 7489
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_42

    .line 7490
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto/16 :goto_17

    .line 7439
    :cond_47
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_17

    .line 7443
    :cond_48
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_4a

    .line 7445
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_49

    .line 7446
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto/16 :goto_17

    .line 7450
    :cond_49
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v3

    if-nez v3, :cond_42

    .line 7451
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_17

    .line 7457
    :cond_4a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4d

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomIn()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 7459
    :cond_4b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v3, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v3, :cond_4c

    const-wide/16 v3, 0x258

    :goto_19
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_17

    :cond_4c
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v3, v3

    goto :goto_19

    .line 7463
    :cond_4d
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto/16 :goto_17

    .line 7481
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_18

    .line 7495
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollY:I

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 7498
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7501
    :cond_50
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_51

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_51

    .line 7502
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    .line 7507
    :cond_51
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7508
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7514
    :pswitch_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 7516
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    .line 7518
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7519
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_42

    .line 7520
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_17

    .line 7529
    :pswitch_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v3, v4, :cond_52

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_52

    .line 7530
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    .line 7534
    :cond_52
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_53

    .line 7535
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollY:I

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 7537
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7539
    :cond_53
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 7540
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_0

    .line 6934
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 7360
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private handleTouchEventEditable(Landroid/view/MotionEvent;III)Z
    .locals 27
    .parameter "ev"
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11428
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    .line 11434
    .local v17, eventTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 11435
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 11437
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchX:I

    sub-int v13, v3, p3

    .line 11438
    .local v13, deltaX:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchY:I

    sub-int v14, v3, p4

    .line 11439
    .local v14, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v10

    .line 11440
    .local v10, contentX:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v11

    .line 11442
    .local v11, contentY:I
    packed-switch p2, :pswitch_data_0

    .line 12058
    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 11445
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->hideSingleTapQuickActions()V

    .line 11448
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 11449
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 11450
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 11455
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->shortTapOnWebView:Z

    .line 11456
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    .line 11457
    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 11458
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v3, :cond_8

    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    :goto_2
    sput-boolean v3, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    .line 11459
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_3
    sput-boolean v3, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    .line 11463
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_a

    .line 11467
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 11468
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 11469
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 11470
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 11539
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v3, v4, :cond_5

    .line 11540
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_14

    const/16 v20, 0x1

    .line 11541
    .local v20, isMoveable:Z
    :goto_5
    if-eqz v20, :cond_4

    .line 11542
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 11544
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-nez v20, :cond_15

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v4, v3}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    .line 11546
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectX:I

    .line 11547
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectY:I

    .line 11552
    .end local v20           #isMoveable:Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1a

    .line 11554
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11556
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    :goto_7
    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11563
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_17

    .line 11564
    :cond_7
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 11571
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 11572
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 11573
    .local v26, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move/from16 v0, p2

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 11574
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 11575
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 11576
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 11577
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 11578
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 11579
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 11580
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 11581
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 11582
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 11584
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v26

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 11585
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 11586
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11587
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_19

    .line 11589
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    .line 11590
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    goto/16 :goto_0

    .line 11458
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 11459
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 11471
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 11472
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11473
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 11474
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 11476
    :cond_b
    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_c

    .line 11477
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_4

    .line 11480
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 11481
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 11482
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_4

    :cond_d
    const/4 v3, 0x0

    goto :goto_9

    .line 11488
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 11489
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_13

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    .line 11493
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_f

    .line 11494
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x62

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 11497
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 11498
    new-instance v12, Landroid/webkit/WebViewCore$TouchHighlightData;

    invoke-direct {v12}, Landroid/webkit/WebViewCore$TouchHighlightData;-><init>()V

    .line 11499
    .local v12, data:Landroid/webkit/WebViewCore$TouchHighlightData;
    iput v10, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mX:I

    .line 11500
    iput v11, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mY:I

    .line 11501
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    .line 11502
    iget-object v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    iput v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    .line 11504
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNavSlop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    iput v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mSlop:I

    .line 11505
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 11506
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_10

    .line 11507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/webkit/WebView;->mTouchHighlightRequested:J

    .line 11508
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xbb

    invoke-virtual {v3, v4, v12}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 11512
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 11513
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    .line 11514
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    .line 11515
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v4, Landroid/webkit/WebView$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/webkit/WebView$11;-><init>(Landroid/webkit/WebView;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11524
    .end local v12           #data:Landroid/webkit/WebViewCore$TouchHighlightData;
    :cond_11
    sget-boolean v3, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v3, v17, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_12

    .line 11525
    const v3, 0x111d6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v6, v17, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 11528
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_3

    .line 11529
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 11530
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 11534
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_4

    .line 11489
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 11540
    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 11544
    .restart local v20       #isMoveable:Z
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 11556
    .end local v20           #isMoveable:Z
    :cond_16
    const/16 v3, 0x2bc

    goto/16 :goto_7

    .line 11565
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_18

    .line 11566
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_8

    .line 11568
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_8

    .line 11593
    .restart local v26       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 11594
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11595
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11601
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1a
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/webkit/WebView;->startTouch(FFJ)V

    goto/16 :goto_0

    .line 11605
    :pswitch_1
    const/16 v19, 0x0

    .line 11606
    .local v19, firstMove:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-nez v3, :cond_1c

    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-lt v3, v4, :cond_1c

    .line 11608
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11609
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11610
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 11611
    const/16 v19, 0x1

    .line 11612
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1b

    .line 11613
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 11615
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 11616
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 11620
    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_1e

    if-nez v19, :cond_1d

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    sub-long v3, v17, v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1e

    .line 11622
    :cond_1d
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 11623
    .restart local v26       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move/from16 v0, p2

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 11624
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 11625
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 11626
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 11627
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 11628
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 11629
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 11630
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 11631
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 11632
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 11633
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11634
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v26

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 11635
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 11636
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11637
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 11638
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-nez v3, :cond_0

    .line 11641
    if-eqz v19, :cond_1e

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 11642
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11649
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_1f

    .line 11653
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    .line 11654
    .local v22, offset:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 11655
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    .line 11656
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectX:I

    .line 11657
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectY:I

    .line 11659
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v10, v11, v4}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    .line 11660
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v4, 0x78

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mSelectX:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/WebView$QuickSelectAbs;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 11665
    .end local v22           #offset:[I
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 11671
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_24

    .line 11672
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11679
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    if-eqz v3, :cond_29

    .line 11683
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    .line 11684
    .local v23, parent:Landroid/view/ViewParent;
    if-eqz v23, :cond_20

    .line 11685
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 11687
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    move/from16 v0, p3

    if-gt v0, v3, :cond_25

    const/4 v3, -0x5

    :goto_c
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 11689
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    move/from16 v0, p4

    if-gt v0, v3, :cond_27

    const/4 v3, -0x5

    :goto_d
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    .line 11691
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    if-nez v3, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    if-eqz v3, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-nez v3, :cond_22

    .line 11693
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    .line 11694
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const-wide/16 v5, 0x10

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11697
    :cond_22
    if-nez v13, :cond_23

    if-eqz v14, :cond_0

    .line 11698
    :cond_23
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 11699
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 11677
    .end local v23           #parent:Landroid/view/ViewParent;
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 11687
    .restart local v23       #parent:Landroid/view/ViewParent;
    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    move/from16 v0, p3

    if-lt v0, v3, :cond_26

    const/4 v3, 0x5

    goto :goto_c

    :cond_26
    const/4 v3, 0x0

    goto :goto_c

    .line 11689
    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    move/from16 v0, p4

    if-lt v0, v3, :cond_28

    const/4 v3, 0x5

    goto :goto_d

    :cond_28
    const/4 v3, 0x0

    goto :goto_d

    .line 11704
    .end local v23           #parent:Landroid/view/ViewParent;
    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2e

    .line 11707
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_0

    .line 11711
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 11715
    :cond_2a
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_0

    .line 11722
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v15

    .line 11724
    .local v15, detector:Landroid/view/ScaleGestureDetector;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->calculateDragAngle(II)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    .line 11725
    if-eqz v15, :cond_2c

    invoke-virtual {v15}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 11727
    :cond_2c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_31

    .line 11728
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 11729
    if-lez v13, :cond_30

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 11730
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    .line 11738
    :cond_2d
    :goto_f
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 11739
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    .line 11740
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    .line 11741
    const/4 v13, 0x0

    .line 11742
    const/4 v14, 0x0

    .line 11744
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/webkit/WebView;->startScrollingLayer(FF)V

    .line 11745
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    .line 11749
    .end local v15           #detector:Landroid/view/ScaleGestureDetector;
    :cond_2e
    const/16 v16, 0x0

    .line 11750
    .local v16, done:Z
    const/16 v21, 0x0

    .line 11751
    .local v21, keepScrollBarsVisible:Z
    if-nez v13, :cond_33

    if-nez v14, :cond_33

    .line 11752
    const/16 v16, 0x1

    move/from16 v21, v16

    .line 11803
    .end local v21           #keepScrollBarsVisible:Z
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->doDrag(II)V

    .line 11806
    if-eqz v21, :cond_3e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3e

    .line 11808
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f

    .line 11809
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 11810
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11813
    :cond_2f
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    .line 11816
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11821
    if-nez v16, :cond_3d

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 11729
    .end local v16           #done:Z
    .restart local v15       #detector:Landroid/view/ScaleGestureDetector;
    :cond_30
    const/4 v3, 0x0

    goto :goto_e

    .line 11731
    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2d

    .line 11732
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 11733
    if-lez v14, :cond_32

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 11734
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto/16 :goto_f

    .line 11733
    :cond_32
    const/4 v3, 0x0

    goto :goto_11

    .line 11754
    .end local v15           #detector:Landroid/view/ScaleGestureDetector;
    .restart local v16       #done:Z
    .restart local v21       #keepScrollBarsVisible:Z
    :cond_33
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->calculateDragAngle(II)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mAverageAngle:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    .line 11757
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v3, :cond_37

    .line 11758
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    .line 11760
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const v4, 0x3f733333

    cmpg-float v3, v3, v4

    if-gez v3, :cond_34

    .line 11761
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 11764
    :cond_34
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_35

    .line 11766
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const v4, 0x3ecccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    .line 11767
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 11781
    :cond_35
    :goto_12
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v3, :cond_36

    .line 11782
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    .line 11783
    const/4 v14, 0x0

    .line 11788
    :cond_36
    :goto_13
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    .line 11789
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    .line 11791
    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-le v3, v4, :cond_3c

    .line 11792
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 11793
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 11800
    :goto_14
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_10

    .line 11771
    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_39

    .line 11772
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 11773
    if-lez v13, :cond_38

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 11774
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto :goto_12

    .line 11773
    :cond_38
    const/4 v3, 0x0

    goto :goto_15

    .line 11775
    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    .line 11776
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 11777
    if-lez v14, :cond_3a

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 11778
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto/16 :goto_12

    .line 11777
    :cond_3a
    const/4 v3, 0x0

    goto :goto_16

    .line 11785
    :cond_3b
    const/4 v13, 0x0

    goto :goto_13

    .line 11795
    :cond_3c
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 11796
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 11797
    const/16 v21, 0x1

    goto :goto_14

    .line 11821
    .end local v21           #keepScrollBarsVisible:Z
    :cond_3d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 11823
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 11829
    .end local v16           #done:Z
    .end local v19           #firstMove:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v3}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    .line 11834
    const/4 v3, 0x0

    sput-boolean v3, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    sput-boolean v3, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    .line 11837
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 11839
    :cond_3f
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 11840
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 11841
    .restart local v26       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 11842
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 11843
    move/from16 v0, p2

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 11844
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 11845
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 11846
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 11847
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 11848
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 11849
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 11850
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 11851
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11852
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v26

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 11853
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 11854
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11856
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_40
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 11857
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-eqz v3, :cond_41

    .line 11858
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 11860
    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    .line 12031
    :cond_42
    :goto_17
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_0

    .line 11862
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11863
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11864
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_43

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_44

    .line 11865
    :cond_43
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 11866
    .restart local v26       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 11867
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 11868
    const/16 v3, 0x200

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 11869
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 11870
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 11871
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 11872
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 11873
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 11874
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 11875
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 11878
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v26

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 11879
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 11880
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_17

    .line 11881
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_44
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    .line 11883
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v10, v11, v4, v5}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    .line 11887
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_17

    .line 11893
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11894
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11895
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_48

    .line 11896
    const-string/jumbo v3, "webview"

    const-string v4, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11898
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v3

    if-gtz v3, :cond_45

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v3

    if-lez v3, :cond_47

    .line 11914
    :cond_45
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 11917
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 11958
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11959
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11962
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    if-gez v3, :cond_4c

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->checkVerticalBouncingCallback(I)Z

    move-result v25

    .line 11963
    .local v25, springBack:Z
    if-nez v25, :cond_4d

    .line 12002
    :cond_46
    :goto_19
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 12003
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 12009
    .end local v25           #springBack:Z
    :pswitch_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 12010
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 12011
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_42

    .line 12012
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_17

    .line 11924
    :cond_47
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_17

    .line 11928
    :cond_48
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_49

    .line 11930
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v3

    if-nez v3, :cond_42

    .line 11931
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_17

    .line 11937
    :cond_49
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomIn()Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomOut()Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 11943
    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11950
    :cond_4b
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 11951
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->shortTapOnWebView:Z

    goto/16 :goto_17

    .line 11962
    :cond_4c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_18

    .line 11970
    .restart local v25       #springBack:Z
    :cond_4d
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    sub-long v3, v17, v3

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4f

    .line 11971
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_4e

    .line 11972
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11983
    :goto_1a
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 11984
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_17

    .line 11978
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1a

    .line 11987
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollY:I

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 11990
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11994
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_46

    .line 11995
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 11996
    .local v24, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    .line 11997
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_19

    .line 12018
    .end local v24           #r:Landroid/graphics/Rect;
    .end local v25           #springBack:Z
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_42

    .line 12019
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 12020
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 12024
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 12025
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v10, v11, v4, v5}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    goto/16 :goto_17

    .line 12035
    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_51

    .line 12036
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollY:I

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 12038
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 12042
    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v3}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    .line 12043
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_52

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_52

    .line 12045
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 12046
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 12047
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 12048
    .restart local v24       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    .line 12049
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 12053
    .end local v24           #r:Landroid/graphics/Rect;
    :cond_52
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 12054
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_0

    .line 11442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 11653
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 11860
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 5551
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5552
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5554
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5556
    :cond_1
    return-void
.end method

.method private hitFocusedPlugin(II)Z
    .locals 1
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    .line 6747
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitTestResult(Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;
    .locals 11
    .parameter "fallback"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x7

    .line 2818
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_1

    move-object v3, v7

    .line 2889
    :cond_0
    :goto_0
    return-object v3

    .line 2822
    :cond_1
    new-instance v3, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v3, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    .line 2825
    .local v3, result:Landroid/webkit/WebView$HitTestResult;
    iget v8, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v9, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 2826
    .local v1, contentX:I
    iget v8, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v9, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 2828
    .local v2, contentY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2830
    const/4 v0, 0x1

    .line 2831
    .local v0, checkCursor:Z
    iget-boolean v8, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    if-eqz v8, :cond_2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeCheckTouchOnFocusRing(II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2833
    const/4 v0, 0x0

    .line 2835
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 2836
    .local v6, url:Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v8, "facebook.com"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 2837
    const/4 v0, 0x1

    .line 2840
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2841
    const/16 v7, 0x9

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2875
    .end local v0           #checkCursor:Z
    .end local v6           #url:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v5

    .line 2876
    .local v5, type:I
    if-eqz v5, :cond_5

    if-ne v5, v10, :cond_0

    .line 2881
    :cond_5
    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v4

    .line 2882
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2883
    if-nez v5, :cond_c

    const/4 v7, 0x5

    :goto_2
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2886
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_0

    .line 2844
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #type:I
    .restart local v0       #checkCursor:Z
    .restart local v6       #url:Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v4

    .line 2847
    .restart local v4       #text:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_4

    .line 2848
    const-string/jumbo v7, "tel:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2849
    const/4 v7, 0x2

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2850
    const-string/jumbo v7, "tel:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .end local v4           #text:Ljava/lang/String;
    :cond_7
    move-object v4, v7

    .line 2844
    goto :goto_3

    .line 2851
    .restart local v4       #text:Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "mailto:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2852
    const/4 v7, 0x4

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2853
    const-string/jumbo v7, "mailto:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2854
    :cond_9
    const-string v7, "geo:0,0?q="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2855
    const/4 v7, 0x3

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2856
    const-string v7, "geo:0,0?q="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2858
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2859
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v10}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2860
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2864
    .end local v0           #checkCursor:Z
    .end local v4           #text:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :cond_b
    if-eqz p1, :cond_4

    .line 2872
    const-string/jumbo v7, "webview"

    const-string/jumbo v8, "hitTestResult use fallback"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    move-object v3, p1

    goto/16 :goto_1

    .line 2883
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #type:I
    :cond_c
    const/16 v7, 0x8

    goto/16 :goto_2
.end method

.method private inEditingMode()Z
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inFullScreenMode()Z
    .locals 1

    .prologue
    .line 6761
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1371
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/WebView$OnTrimMemoryListener;->init(Landroid/content/Context;)V

    .line 1373
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 1374
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1375
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1376
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1377
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 1379
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1380
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 1381
    .local v3, slop:I
    mul-int v4, v3, v3

    iput v4, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 1382
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 1383
    mul-int v4, v3, v3

    iput v4, p0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    .line 1385
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 1386
    .local v1, density:F
    invoke-direct {p0}, Landroid/webkit/WebView;->useCustomizedDefaultScale()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1387
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v4, :sswitch_data_0

    .line 1411
    :cond_0
    :goto_0
    const/high16 v4, 0x4180

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1412
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->init(F)V

    .line 1413
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mMaximumFling:I

    .line 1416
    const/high16 v4, 0x3f80

    mul-float v5, v1, v1

    div-float/2addr v4, v5

    iput v4, p0, Landroid/webkit/WebView;->DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

    .line 1418
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    .line 1419
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    .line 1421
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getScrollBarStyle()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1424
    new-instance v4, Ljava/util/Vector;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    .line 1425
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 1429
    iget-object v4, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    .line 1430
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v5, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    invoke-virtual {v4, v5}, Landroid/webkit/ZoomManager;->setIsBrowserApp(Z)V

    .line 1434
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x130

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1436
    invoke-virtual {p0}, Landroid/webkit/WebView;->InitTabEffectPivot()V

    .line 1438
    return-void

    .line 1390
    :sswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1391
    .local v2, loc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/webkit/WebView;->mBrowserCustomizedDefaultScale:Z

    if-nez v4, :cond_2

    .line 1392
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 1394
    :cond_2
    const v1, 0x3f666666

    .line 1395
    goto :goto_0

    .line 1399
    .end local v2           #loc:Ljava/util/Locale;
    :sswitch_1
    const v1, 0x3fa66666

    .line 1400
    goto/16 :goto_0

    .line 1402
    :sswitch_2
    const/high16 v1, 0x3fa0

    .line 1403
    goto/16 :goto_0

    .line 1387
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x61 -> :sswitch_1
        0x8a -> :sswitch_2
        0x91 -> :sswitch_1
    .end sparse-switch
.end method

.method private injectAccessibilityForUrl(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4198
    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v5, :cond_0

    .line 4241
    :goto_0
    return-void

    .line 4201
    :cond_0
    iget-object v5, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 4203
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4205
    invoke-direct {p0, v4}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    .line 4209
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4211
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    .line 4216
    :cond_2
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->getAxsUrlParameterValue(Ljava/lang/String;)I

    move-result v1

    .line 4217
    .local v1, axsParameterValue:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    .line 4218
    iget-object v5, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_script_injection"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 4220
    .local v2, onDeviceScriptInjectionEnabled:Z
    :goto_1
    if-eqz v2, :cond_4

    .line 4221
    invoke-direct {p0, v4}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    .line 4223
    const-string/jumbo v4, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'https://ssl.gstatic.com/accessibility/javascript/android/AndroidScriptChooser.user.js\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4226
    iput-boolean v3, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    goto :goto_0

    .end local v2           #onDeviceScriptInjectionEnabled:Z
    :cond_3
    move v2, v4

    .line 4218
    goto :goto_1

    .line 4229
    .restart local v2       #onDeviceScriptInjectionEnabled:Z
    :cond_4
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    .line 4231
    .end local v2           #onDeviceScriptInjectionEnabled:Z
    :cond_5
    if-nez v1, :cond_6

    .line 4233
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    .line 4234
    :cond_6
    if-ne v1, v3, :cond_7

    .line 4235
    invoke-direct {p0, v4}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    .line 4237
    const-string/jumbo v3, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'https://ssl.gstatic.com/accessibility/javascript/android/AndroidScriptChooser.user.js\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 4239
    :cond_7
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL value for the \"axs\" URL parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3143
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    .line 3144
    return-void
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 5831
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtcZoomingEnabled()Z
    .locals 1

    .prologue
    .line 14848
    const/4 v0, 0x1

    return v0
.end method

.method private isScrollableForAccessibility()Z
    .locals 3

    .prologue
    .line 1500
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/webkit/WebView;->mPaddingRight:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/webkit/WebView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 8055
    packed-switch p1, :pswitch_data_0

    .line 8065
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8057
    :pswitch_0
    const/4 v0, 0x2

    .line 8063
    :goto_0
    return v0

    .line 8059
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 8061
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 8063
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 8055
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPageHandleNavKey(IJZI)V
    .locals 13
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"
    .parameter "metaState"

    .prologue
    .line 10739
    if-eqz p4, :cond_0

    .line 10740
    const/4 v5, 0x0

    .line 10741
    .local v5, keyEventAction:I
    const/16 v12, 0x67

    .line 10742
    .local v12, eventHubAction:I
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 10748
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    and-int/lit8 v1, p5, 0x1

    and-int/lit8 v2, p5, 0x2

    or-int/2addr v1, v2

    and-int/lit8 v2, p5, 0x4

    or-int v8, v1, v2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 10753
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v12, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10754
    return-void

    .line 10744
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    .end local v12           #eventHubAction:I
    :cond_0
    const/4 v5, 0x1

    .line 10745
    .restart local v5       #keyEventAction:I
    const/16 v12, 0x68

    .restart local v12       #eventHubAction:I
    goto :goto_0
.end method

.method private loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2397
    .local v0, dataUrl:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2398
    const-string v1, "base64"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2399
    const-string v1, ";base64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2401
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;)V

    .line 2404
    return-void
.end method

.method private loadUrlImpl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 2336
    if-nez p1, :cond_0

    .line 2340
    :goto_0
    return-void

    .line 2339
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2318
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2319
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 2320
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 2321
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 2322
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2323
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2324
    return-void
.end method

.method private native nativeCacheHitFramePointer()I
.end method

.method private native nativeCacheHitIsPlugin()Z
.end method

.method private native nativeCacheHitNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCacheHitNodePointer()I
.end method

.method private native nativeCheckTouchOnFocusRing(II)Z
.end method

.method private native nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeCreate(ILjava/lang/String;Z)V
.end method

.method private native nativeCursorFramePointer()I
.end method

.method private native nativeCursorIntersects(Landroid/graphics/Rect;)Z
.end method

.method private native nativeCursorIsAnchor()Z
.end method

.method private native nativeCursorIsTextInput()Z
.end method

.method private native nativeCursorNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCursorNodePointer()I
.end method

.method private native nativeCursorPosition()Landroid/graphics/Point;
.end method

.method private native nativeCursorText()Ljava/lang/String;
.end method

.method private native nativeCursorWantsKeyEvents()Z
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIZ)I
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEnableTBS(Z)V
.end method

.method private native nativeEvaluateLayersAnimations(I)Z
.end method

.method private native nativeExtendSelection(II)V
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeFindAllQuietly(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeFindIndex()I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusCandidateIsRtlText()Z
.end method

.method private native nativeFocusCandidateIsTextInput()Z
.end method

.method private native nativeFocusCandidateLayerId()I
.end method

.method private native nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateText()Ljava/lang/String;
.end method

.method private native nativeFocusCandidateTextPadding()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateType()I
.end method

.method private native nativeFocusIsPlugin()Z
.end method

.method private native nativeFocusNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetBackgroundColor()I
.end method

.method private native nativeGetBaseLayer()I
.end method

.method private native nativeGetCursorRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeGetSelectionHandles(I[I)V
.end method

.method private native nativeGetSelectionRegion()Landroid/graphics/Region;
.end method

.method private native nativeGetSelectionStart(Landroid/graphics/Rect;)V
.end method

.method private native nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V
.end method

.method private native nativeHasContent()Z
.end method

.method private native nativeHasCursorNode()Z
.end method

.method private native nativeHasFocusNode()Z
.end method

.method private native nativeHideCursor()V
.end method

.method private native nativeHitSelection(II)Z
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeIsSwapToChangedLayer()Z
.end method

.method private native nativeLayerBounds(I)Landroid/graphics/Rect;
.end method

.method private native nativeMotionUp(III)Z
.end method

.method private native nativeMoveCursor(IIZ)Z
.end method

.method private native nativeMoveGeneration()I
.end method

.method private native nativeMoveSelection(II)V
.end method

.method protected static native nativeOnTrimMemory(I)V
.end method

.method private native nativePageShouldHandleShiftAndArrows()Z
.end method

.method private native nativePointInNavCache(III)Z
.end method

.method private native nativeRegisterPageSwapCallback()V
.end method

.method private native nativeReplaceBaseContent(I)V
.end method

.method private native nativeScrollLayer(III)Z
.end method

.method private native nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method private native nativeSelectAll()V
.end method

.method private native nativeSelectAt(II)V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSelectableText()Landroid/graphics/Point;
.end method

.method private native nativeSelectionX()I
.end method

.method private native nativeSelectionY()I
.end method

.method private native nativeSetBaseLayer(ILandroid/graphics/Region;ZZZ)V
.end method

.method private native nativeSetExtendSelection()V
.end method

.method private native nativeSetFindIsEmpty()V
.end method

.method private native nativeSetFindIsUp(Z)V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetIsBrowser(Z)V
.end method

.method private native nativeSetIsScrolling(Z)V
.end method

.method private static native nativeSetPauseDrawing(IZ)V
.end method

.method private native nativeSetPreSelect(Z)V
.end method

.method private native nativeSetSelectionColors(IIIII)V
.end method

.method private native nativeSetSelectionPointer(IZFII)V
.end method

.method private native nativeShowCursorTimed()V
.end method

.method private native nativeStopGL()V
.end method

.method private native nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method private native nativeTextGeneration()I
.end method

.method private native nativeTileProfilingClear()V
.end method

.method private native nativeTileProfilingGetFloat(IILjava/lang/String;)F
.end method

.method private native nativeTileProfilingGetInt(IILjava/lang/String;)I
.end method

.method private native nativeTileProfilingNumFrames()I
.end method

.method private native nativeTileProfilingNumTilesInFrame(I)I
.end method

.method private native nativeTileProfilingStart()V
.end method

.method private native nativeTileProfilingStop()F
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private native nativeUpdateDrawGLFunction(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
.end method

.method private native nativeUseHardwareAccelSkia(Z)V
.end method

.method private native nativeWordSelection(II)Z
.end method

.method private navHandledKey(IIZJ)Z
    .locals 11
    .parameter "keyCode"
    .parameter "count"
    .parameter "noScroll"
    .parameter "time"

    .prologue
    .line 10759
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_1

    .line 10760
    const/4 v1, 0x0

    .line 10814
    :cond_0
    :goto_0
    return v1

    .line 10762
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 10763
    iput-wide p4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 10764
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    .line 10765
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeMoveCursor(IIZ)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v1, 0x1

    .line 10772
    .local v1, keyHandled:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 10775
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 10776
    .local v0, contentCursorRingBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 10777
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 10779
    .local v6, viewCursorRingBounds:Landroid/graphics/Rect;
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/webkit/WebView;->mLastTouchX:I

    .line 10780
    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/webkit/WebView;->mLastTouchY:I

    .line 10781
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v8, :cond_0

    .line 10784
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 10785
    .local v7, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10786
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10787
    .local v5, outset:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 10788
    .local v3, maxXScroll:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v4, v8, 0x2

    .line 10789
    .local v4, maxYScroll:I
    neg-int v8, v3

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 10790
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10794
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 10796
    .local v2, maxH:I
    if-lez v2, :cond_4

    .line 10797
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 10805
    :cond_2
    :goto_2
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 10806
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 10813
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    goto/16 :goto_0

    .line 10765
    .end local v0           #contentCursorRingBounds:Landroid/graphics/Rect;
    .end local v1           #keyHandled:Z
    .end local v2           #maxH:I
    .end local v3           #maxXScroll:I
    .end local v4           #maxYScroll:I
    .end local v5           #outset:Landroid/graphics/Rect;
    .end local v6           #viewCursorRingBounds:Landroid/graphics/Rect;
    .end local v7           #visRect:Landroid/graphics/Rect;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 10799
    .restart local v0       #contentCursorRingBounds:Landroid/graphics/Rect;
    .restart local v1       #keyHandled:Z
    .restart local v2       #maxH:I
    .restart local v3       #maxXScroll:I
    .restart local v4       #maxYScroll:I
    .restart local v5       #outset:Landroid/graphics/Rect;
    .restart local v6       #viewCursorRingBounds:Landroid/graphics/Rect;
    .restart local v7       #visRect:Landroid/graphics/Rect;
    :cond_4
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    neg-int v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 10801
    if-gez v2, :cond_2

    .line 10802
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_2
.end method

.method private offsetByLayerScrollPosition(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "box"

    .prologue
    .line 5159
    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateLayerId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5161
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 5164
    :cond_0
    return-void
.end method

.method private onZoomAnimationEnd()V
    .locals 4

    .prologue
    const/16 v2, 0x137

    const/4 v1, 0x0

    .line 5202
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5206
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setVisibility(I)V

    .line 5209
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v0, :cond_1

    .line 5211
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5212
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5215
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeFPDoPlay()V

    .line 5216
    invoke-virtual {p0}, Landroid/webkit/WebView;->fnResumePlayGifAnimation()V

    .line 5217
    return-void
.end method

.method private onZoomAnimationStart()V
    .locals 3

    .prologue
    const/16 v2, 0x136

    .line 5186
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-nez v0, :cond_0

    .line 5187
    invoke-virtual {p0}, Landroid/webkit/WebView;->pauseFPDoPlay()V

    .line 5188
    invoke-virtual {p0}, Landroid/webkit/WebView;->fnPausePlayGifAnimation()V

    .line 5190
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v0, :cond_0

    .line 5191
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5192
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 5195
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5196
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setVisibility(I)V

    .line 5198
    :cond_1
    return-void
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 8694
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 8695
    return-void
.end method

.method private passMultiTouchToWebKit(Landroid/view/MotionEvent;J)V
    .locals 9
    .parameter "ev"
    .parameter "sequence"

    .prologue
    .line 7548
    new-instance v2, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7549
    .local v2, ted:Landroid/webkit/WebViewCore$TouchEventData;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 7551
    .local v1, count:I
    new-array v5, v1, [I

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 7552
    new-array v5, v1, [Landroid/graphics/Point;

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 7553
    new-array v5, v1, [Landroid/graphics/Point;

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 7554
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 7555
    iget-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aput v6, v5, v0

    .line 7556
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    .line 7557
    .local v3, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    .line 7558
    .local v4, y:I
    iget-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v0

    .line 7559
    iget-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v0

    .line 7554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7561
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    iget v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    iget v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 7563
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mActionIndex:I

    .line 7565
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7566
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7567
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    .line 7568
    iput-wide p2, v2, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 7569
    iget-object v5, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v5, v2}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 7570
    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x8d

    invoke-virtual {v5, v6, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7571
    invoke-virtual {p0}, Landroid/webkit/WebView;->cancelLongPress()V

    .line 7572
    iget-object v5, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7573
    return-void
.end method

.method private pauseTextReflowbyCurrentViewWidth()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12156
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    if-ne v0, v1, :cond_0

    .line 12161
    :goto_0
    return-void

    .line 12159
    :cond_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    .line 12160
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    goto :goto_0
.end method

.method static pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 2956
    if-ge p2, p1, :cond_1

    .line 2958
    const/4 p0, 0x0

    .line 2967
    :cond_0
    :goto_0
    return p0

    .line 2960
    :cond_1
    if-gez p0, :cond_2

    .line 2961
    const/4 p0, 0x0

    goto :goto_0

    .line 2963
    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    .line 2964
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 4081
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 4091
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 4092
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    .line 4093
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v3, p1, v0

    .line 4094
    .local v3, dx:I
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v4, p2, v0

    .line 4096
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_0

    .line 4097
    const/4 v0, 0x0

    .line 4109
    :goto_0
    return v0

    .line 4099
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 4100
    if-eqz p3, :cond_2

    .line 4102
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4104
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 4105
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4109
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 4102
    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_1

    .line 4107
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private recordNewContentSize(IIZ)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 3158
    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 3181
    :goto_0
    return-void

    .line 3163
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v0, p2, :cond_2

    .line 3165
    :cond_1
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 3166
    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 3169
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v0, :cond_2

    .line 3171
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    .line 3172
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3175
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 3176
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 3180
    :cond_2
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private removeAccessibilityApisFromJavaScript()V
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1473
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1475
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1477
    :cond_0
    return-void
.end method

.method private removeTouchHighlight()V
    .locals 2

    .prologue
    .line 4946
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 4947
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4948
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V

    .line 4949
    return-void
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 5
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 2121
    const-string/jumbo v3, "scrollX"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2122
    .local v1, sx:I
    const-string/jumbo v3, "scrollY"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2124
    .local v2, sy:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 2125
    iput-object p1, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 2127
    iput v1, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2128
    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2129
    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, p2}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 2130
    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    .line 2131
    .local v0, scale:F
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2132
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 2134
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2135
    return-void
.end method

.method private saveStateHtc(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 13
    .parameter "outState"

    .prologue
    const/4 v10, 0x0

    .line 2025
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2026
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 2027
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v9

    .line 2028
    .local v9, size:I
    const/4 v11, 0x0

    add-int/lit8 v12, v0, -0x3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2029
    .local v8, savedStart:I
    add-int/lit8 v11, v0, 0x3

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2030
    .local v6, savedEnd:I
    sub-int/2addr v0, v8

    .line 2032
    sub-int v7, v6, v8

    .line 2035
    .local v7, savedSize:I
    if-ltz v0, :cond_0

    if-ge v0, v7, :cond_0

    if-nez v7, :cond_1

    :cond_0
    move-object v5, v10

    .line 2067
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    :goto_0
    return-object v5

    .line 2038
    .restart local v5       #list:Landroid/webkit/WebBackForwardList;
    :cond_1
    const-string/jumbo v11, "index"

    invoke-virtual {p1, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2042
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2043
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    move v3, v8

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_4

    .line 2044
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 2045
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_2

    .line 2048
    const-string/jumbo v11, "webview"

    const-string/jumbo v12, "saveState: Unexpected null history item."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 2049
    goto :goto_0

    .line 2051
    :cond_2
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 2052
    .local v1, data:[B
    if-nez v1, :cond_3

    move-object v5, v10

    .line 2056
    goto :goto_0

    .line 2058
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2043
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2060
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    const-string/jumbo v10, "history"

    invoke-virtual {p1, v10, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2061
    iget-object v10, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v10, :cond_5

    .line 2062
    const-string v10, "certificate"

    iget-object v11, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v11}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2065
    :cond_5
    const-string/jumbo v10, "privateBrowsingEnabled"

    invoke-virtual {p0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2066
    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 3
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2494
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x93

    new-instance v2, Landroid/webkit/WebView$SaveWebArchiveMessage;

    invoke-direct {v2, p1, p2, p3}, Landroid/webkit/WebView$SaveWebArchiveMessage;-><init>(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2496
    return-void
.end method

.method private scaleTrackballX(FI)I
    .locals 4
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 8027
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 8028
    .local v1, xMove:I
    move v0, v1

    .line 8029
    .local v0, nextXMove:I
    if-lez v1, :cond_1

    .line 8030
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    .line 8031
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 8036
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 8037
    return v1

    .line 8033
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    .line 8034
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 8041
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 8042
    .local v1, yMove:I
    move v0, v1

    .line 8043
    .local v0, nextYMove:I
    if-lez v1, :cond_1

    .line 8044
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    .line 8045
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 8050
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 8051
    return v1

    .line 8047
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    .line 8048
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scrollLayerTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4062
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_0

    .line 4070
    :goto_0
    return-void

    .line 4065
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/WebView;->nativeScrollLayer(III)Z

    .line 4066
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 4067
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 4068
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 4069
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method private sendMotionUp(IIIII)V
    .locals 3
    .parameter "touchGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10682
    new-instance v0, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 10683
    .local v0, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 10684
    iput p2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    .line 10685
    iput p3, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    .line 10686
    iput p4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    .line 10687
    iput p5, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    .line 10688
    iget-object v1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {p0, p4, p5, v1, v2}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    .line 10690
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10691
    return-void
.end method

.method private sendMoveFocus(II)V
    .locals 4
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 10643
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7f

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10645
    return-void
.end method

.method private sendMoveMouse(IIII)V
    .locals 3
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10649
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10651
    return-void
.end method

.method private sendMoveMouseIfLatest(ZZ)V
    .locals 5
    .parameter "removeFocus"
    .parameter "stopPaintingCaret"

    .prologue
    const/4 v1, 0x0

    .line 10662
    if-eqz p1, :cond_0

    .line 10663
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 10665
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x88

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 10668
    return-void

    :cond_1
    move v0, v1

    .line 10665
    goto :goto_0
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 4115
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_1

    .line 4139
    :cond_0
    :goto_0
    return v1

    .line 4122
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p1

    .line 4123
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p2

    .line 4124
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v2, :cond_3

    .line 4126
    if-eqz p2, :cond_2

    .line 4127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4128
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4129
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 4130
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 4137
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_2
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v1, p3, v1}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4139
    :cond_3
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setContentScrollTo(II)Z
    .locals 6
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4300
    iget-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v4, :cond_1

    .line 4349
    :cond_0
    :goto_0
    return v2

    .line 4310
    :cond_1
    or-int v4, p1, p2

    if-nez v4, :cond_2

    .line 4314
    const/4 v0, 0x0

    .line 4315
    .local v0, vx:I
    const/4 v1, 0x0

    .line 4327
    .local v1, vy:I
    :goto_1
    if-nez p1, :cond_4

    if-ne p2, v3, :cond_4

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v4, :cond_4

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 4330
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    .line 4334
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 4335
    iput v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    goto :goto_0

    .line 4317
    .end local v0           #vx:I
    .end local v1           #vy:I
    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 4318
    .restart local v0       #vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .restart local v1       #vy:I
    goto :goto_1

    .line 4337
    :cond_3
    const/16 v4, 0x1f4

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0

    .line 4343
    :cond_4
    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 4346
    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    if-eq v4, v0, :cond_5

    if-gez p1, :cond_6

    :cond_5
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v4, v1, :cond_0

    if-ltz p2, :cond_0

    :cond_6
    move v2, v3

    .line 4347
    goto :goto_0
.end method

.method public static setDefaultTextWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 14064
    sput p0, Landroid/webkit/WebView;->DEFAULT_TEXT_WIDTH:I

    .line 14065
    return-void
.end method

.method private setFindIsUp(Z)V
    .locals 1
    .parameter "isUp"

    .prologue
    .line 3862
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 3863
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3865
    :goto_0
    return-void

    .line 3864
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetFindIsUp(Z)V

    goto :goto_0
.end method

.method public static setHostFullScreenMode(Z)V
    .locals 0
    .parameter "bHostFullScreenMode"

    .prologue
    .line 14262
    sput-boolean p0, Landroid/webkit/WebView;->m_bHostFullScreenMode:Z

    .line 14263
    return-void
.end method

.method public static setTabEffectType_Transition(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 14274
    invoke-static {p0}, Landroid/webkit/ZoomManager;->setTabEffectType_Transition(I)V

    .line 14275
    return-void
.end method

.method private setTouchHighlightRects(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10107
    .local p1, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 10108
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 10109
    if-eqz p1, :cond_3

    .line 10110
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 10111
    .local v1, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 10116
    .local v2, viewRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_1

    .line 10118
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 10120
    :cond_1
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip the huge selection rect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10124
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v2           #viewRect:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 10126
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private setUpSelect(ZII)Z
    .locals 6
    .parameter "selectWord"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6202
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    .line 6272
    :cond_0
    :goto_0
    return v1

    .line 6203
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6204
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 6206
    :cond_2
    iget v3, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_3

    .line 6207
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    .line 6209
    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectAbs;->setUpSelect()V

    :goto_1
    move v1, v2

    .line 6272
    goto :goto_0

    .line 6213
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 6214
    if-eqz p1, :cond_4

    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;->nativeWordSelection(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6215
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    goto :goto_0

    .line 6218
    :cond_4
    new-instance v3, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v3}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    iput-object v3, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 6219
    iget-object v3, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v3, p0}, Landroid/webkit/SelectActionModeCallback;->setWebView(Landroid/webkit/WebView;)V

    .line 6220
    iget-object v3, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_5

    .line 6223
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    goto :goto_0

    .line 6226
    :cond_5
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 6227
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    iput-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 6233
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6234
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6235
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6236
    .local v0, rect:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 6237
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 6245
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 6246
    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    .line 6247
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    .line 6248
    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    .line 6249
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    .line 6250
    iget v1, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iget v3, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    .line 6253
    iget v1, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v1, :cond_7

    .line 6254
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_6

    .line 6255
    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    .line 6257
    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    .line 6260
    :cond_6
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_7

    .line 6261
    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    .line 6263
    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    .line 6267
    :cond_7
    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    .line 6268
    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    .line 6269
    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    .line 6270
    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    goto/16 :goto_1

    .line 6238
    :cond_8
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v4

    if-le v3, v4, :cond_9

    .line 6239
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 6240
    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectY:I

    goto/16 :goto_2

    .line 6242
    :cond_9
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 6243
    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectY:I

    goto/16 :goto_2
.end method

.method private setupPackageListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1288
    const-class v4, Landroid/webkit/WebView;

    monitor-enter v4

    .line 1292
    :try_start_0
    sget-boolean v3, Landroid/webkit/WebView;->sPackageInstallationReceiverAdded:Z

    if-eqz v3, :cond_0

    .line 1293
    monitor-exit v4

    .line 1332
    :goto_0
    return-void

    .line 1296
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1297
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1298
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1299
    new-instance v1, Landroid/webkit/WebView$PackageListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkit/WebView$PackageListener;-><init>(Landroid/webkit/WebView$1;)V

    .line 1300
    .local v1, packageListener:Landroid/content/BroadcastReceiver;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1301
    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebView;->sPackageInstallationReceiverAdded:Z

    .line 1302
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    new-instance v2, Landroid/webkit/WebView$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    .line 1331
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1302
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #packageListener:Landroid/content/BroadcastReceiver;
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static declared-synchronized setupProxyListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1205
    const-class v3, Landroid/webkit/WebView;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebView;->sNotificationsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1216
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 1208
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1209
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1210
    new-instance v2, Landroid/webkit/WebView$ProxyReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/webkit/WebView$ProxyReceiver;-><init>(Landroid/webkit/WebView$1;)V

    sput-object v2, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    .line 1211
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1213
    .local v0, currentProxy:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1214
    invoke-static {v0}, Landroid/webkit/WebView;->handleProxyBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1205
    .end local v0           #currentProxy:Landroid/content/Intent;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private shouldForwardTouchEvent()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6752
    iget-object v2, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v2, :cond_1

    .line 6754
    :cond_0
    :goto_0
    return v0

    .line 6753
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 6754
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private spawnContentScrollTo(II)V
    .locals 4
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 4355
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    .line 4363
    :goto_0
    return-void

    .line 4360
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 4361
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .line 4362
    .local v1, vy:I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method private startDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7693
    invoke-virtual {p0}, Landroid/webkit/WebView;->fnScrollingBegin()V

    .line 7695
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 7697
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7698
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 7700
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    if-nez v0, :cond_0

    .line 7701
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 7704
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    if-eq v0, v1, :cond_2

    .line 7706
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    .line 7723
    :cond_2
    return-void
.end method

.method private startPrivateBrowsing()V
    .locals 2

    .prologue
    .line 2628
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPrivateBrowsingEnabled(Z)V

    .line 2629
    return-void
.end method

.method private startScrollingLayer(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6805
    float-to-int v2, p1

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6806
    .local v0, contentX:I
    float-to-int v2, p2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6807
    .local v1, contentY:I
    iget-object v2, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    .line 6809
    iget v2, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_0

    .line 6810
    const/16 v2, 0x9

    iput v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6812
    :cond_0
    return-void
.end method

.method private startTouch(FFJ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 7682
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iput v0, p0, Landroid/webkit/WebView;->mStartTouchX:I

    .line 7683
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iput v0, p0, Landroid/webkit/WebView;->mStartTouchY:I

    .line 7684
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 7685
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7686
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7687
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7689
    return-void
.end method

.method private stopTouch()V
    .locals 2

    .prologue
    .line 7784
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 7786
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7787
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7788
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 7794
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 7795
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7796
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7800
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_3

    .line 7801
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0}, Landroid/webkit/OverScrollGlow;->releaseAll()V

    .line 7803
    :cond_3
    return-void
.end method

.method private updateSelection()V
    .locals 8

    .prologue
    .line 8426
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    .line 8438
    :goto_0
    return-void

    .line 8429
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x8a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 8431
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8432
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8433
    .local v1, contentY:I
    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    .line 8434
    .local v3, slop:I
    new-instance v2, Landroid/graphics/Rect;

    sub-int v4, v0, v3

    sub-int v5, v1, v3

    add-int v6, v0, v3

    add-int v7, v1, v3

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8436
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 8437
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->hitTestResult(Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    goto :goto_0
.end method

.method private updateSelectionColors()V
    .locals 14

    .prologue
    const v13, 0x3be56042

    .line 12330
    iget-object v7, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    .line 12331
    .local v7, context:Landroid/content/Context;
    invoke-static {v7}, Landroid/webkit/WebViewThemeable;->getHighlightColor(Landroid/content/Context;)I

    move-result v10

    .line 12332
    .local v10, wantedColor:I
    const v0, 0xffffff

    and-int/2addr v0, v10

    const/high16 v11, -0x8000

    add-int v5, v0, v11

    .line 12333
    .local v5, selectionColor:I
    sput v5, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    .line 12334
    invoke-static {v5}, Landroid/graphics/Color;->hue(I)F

    move-result v8

    .line 12335
    .local v8, hue:F
    invoke-static {v5}, Landroid/graphics/Color;->saturation(I)F

    move-result v9

    .line 12336
    .local v9, saturation:F
    invoke-static {v5}, Landroid/graphics/Color;->brightness(I)F

    move-result v6

    .line 12337
    .local v6, brightness:F
    const v0, 0x3c449ba6

    add-float/2addr v0, v8

    const v11, 0x3d48b439

    add-float/2addr v11, v9

    const v12, 0x3dd91687

    sub-float v12, v6, v12

    invoke-static {v0, v11, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v1

    .line 12338
    .local v1, outer0:I
    const v0, 0x3b03126f

    add-float/2addr v0, v8

    add-float v11, v9, v13

    const v12, 0x3cc49ba6

    sub-float v12, v6, v12

    invoke-static {v0, v11, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v2

    .line 12339
    .local v2, outer2:I
    const v0, 0x3bc49ba6

    add-float/2addr v0, v8

    add-float v11, v9, v13

    const v12, 0x3dc8b439

    add-float/2addr v12, v6

    invoke-static {v0, v11, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v3

    .line 12340
    .local v3, inner0:I
    const v0, 0x3b449ba6

    sub-float v0, v8, v0

    const v11, 0x3d4ccccd

    sub-float v11, v9, v11

    const v12, 0x3e189375

    add-float/2addr v12, v6

    invoke-static {v0, v11, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v4

    .local v4, inner2:I
    move-object v0, p0

    .line 12341
    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->nativeSetSelectionColors(IIIII)V

    .line 12342
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12343
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v11, 0x20a

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 12344
    :cond_0
    return-void
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 5
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    .line 10295
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne p2, v2, :cond_1

    .line 10298
    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v3, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    .line 10310
    :cond_0
    :goto_0
    return-void

    .line 10302
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iget v3, p0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v2}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10305
    :cond_2
    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    .line 10306
    .local v1, startIndx:I
    iget v0, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    .line 10307
    .local v0, endIndx:I
    invoke-virtual {p0, p1, v1, v0}, Landroid/webkit/WebView;->updateTextAndSelection(III)V

    goto :goto_0
.end method

.method private updateWebTextViewPosition()V
    .locals 8

    .prologue
    .line 5612
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5613
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 5616
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5623
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 5624
    .local v1, vBox:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->offsetByLayerScrollPosition(Landroid/graphics/Rect;)V

    .line 5625
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 5626
    invoke-static {v0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5627
    invoke-virtual {p0}, Landroid/webkit/WebView;->revealSelection()V

    .line 5629
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateWebTextViewPadding()V

    .line 5630
    return-void
.end method

.method private useCustomizedDefaultScale()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 14832
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 14833
    .local v0, packageName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 14834
    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14836
    :cond_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->mBrowserCustomizedDefaultScale:Z

    iput-boolean v1, p0, Landroid/webkit/WebView;->mHtcCustomizedDefaultScale:Z

    .line 14844
    :goto_0
    return v1

    .line 14839
    :cond_1
    const-string v2, "com.htc.android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14840
    iput-boolean v1, p0, Landroid/webkit/WebView;->mHtcCustomizedDefaultScale:Z

    goto :goto_0

    .line 14844
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private viewInvalidate()V
    .locals 0

    .prologue
    .line 10729
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 10730
    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3119
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    .line 3120
    .local v1, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 3121
    .local v0, dy:I
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v0

    int-to-float v4, p3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 3125
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3133
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v8

    .line 3134
    .local v8, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    .line 3135
    .local v7, dy:I
    int-to-float v0, p3

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-float v0, p4

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v4, v0, v7

    int-to-float v0, p5

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v0, p6

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v6, v0, v7

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 3140
    return-void
.end method

.method private viewToContentDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 3033
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private viewToContentXf(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 3059
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private viewToContentYf(I)F
    .locals 2
    .parameter "y"

    .prologue
    .line 3068
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method AbortScrollerAnimation()V
    .locals 1

    .prologue
    .line 14244
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 14245
    return-void
.end method

.method public AnimationZoomOutDraw(Landroid/graphics/Canvas;F)V
    .locals 24
    .parameter "canvas"
    .parameter "scale"

    .prologue
    .line 14606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 14686
    :cond_0
    :goto_0
    return-void

    .line 14609
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14610
    .local v5, density:F
    const/16 v17, 0x0

    .line 14611
    .local v17, sx:F
    const/16 v18, 0x0

    .line 14613
    .local v18, sy:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string/jumbo v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 14614
    .local v6, display:Landroid/view/Display;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 14615
    const/high16 v20, 0x3f80

    sub-float v20, p2, v20

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sget v21, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    mul-float v17, v20, v21

    .line 14616
    const/high16 v20, 0x3f80

    sub-float v20, p2, v20

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sget v21, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v18, v20, v21

    .line 14622
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 14623
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft_modify:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    mul-float v17, v17, v20

    .line 14624
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nCurrentTabMinTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mfTabRatio:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nCurrentTabMinTop_modify:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    mul-float v18, v18, v20

    .line 14627
    :cond_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    neg-int v10, v0

    .line 14628
    .local v10, left:I
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v15, v10, v20

    .line 14629
    .local v15, right:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v19, v0

    .line 14630
    .local v19, top:I
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v4, v19, v20

    .line 14632
    .local v4, bottom:I
    sub-int v20, v15, v10

    if-lez v20, :cond_0

    sub-int v20, v4, v19

    if-lez v20, :cond_0

    .line 14636
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 14637
    .local v16, sc:I
    const/high16 v20, -0x100

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 14639
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Matrix;->getValues([F)V

    .line 14640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v21, v21, v22

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1, v15, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 14642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 14644
    sget-object v20, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v20, :cond_4

    .line 14648
    const/4 v11, 0x0

    .line 14650
    .local v11, nOffset:I
    sget-object v20, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v20, :cond_3

    sget-object v20, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface/range {v20 .. v20}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    if-eqz v20, :cond_3

    sget-object v20, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface/range {v20 .. v20}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 14651
    :cond_3
    const/4 v13, 0x0

    .line 14652
    .local v13, nOrgWidth:I
    const/4 v12, 0x0

    .line 14653
    .local v12, nOrgHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 14654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 14655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 14661
    :goto_2
    int-to-float v0, v10

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    move/from16 v21, v0

    sub-int v21, v12, v21

    mul-int v21, v21, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, p2

    int-to-float v0, v12

    move/from16 v22, v0

    div-float v21, v21, v22

    add-float v8, v20, v21

    .line 14662
    .local v8, fBlackAreaLeft_Min:F
    int-to-float v0, v15

    move/from16 v20, v0

    sub-float v20, v20, v8

    const/high16 v21, 0x3f80

    sub-float v21, v21, p2

    const/high16 v22, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mfTabRatio:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    div-float v21, v21, v22

    mul-float v9, v20, v21

    .line 14663
    .local v9, fRightOffset:F
    int-to-float v0, v15

    move/from16 v20, v0

    sub-float v7, v20, v9

    .line 14664
    .local v7, fBlackAreaLeft:F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 14666
    new-instance v14, Landroid/graphics/Rect;

    float-to-int v0, v7

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v14, v0, v1, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 14667
    .local v14, rect:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 14669
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 14670
    .local v3, DrawPaint:Landroid/graphics/Paint;
    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14671
    const/high16 v20, -0x100

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 14672
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14679
    .end local v3           #DrawPaint:Landroid/graphics/Paint;
    .end local v7           #fBlackAreaLeft:F
    .end local v8           #fBlackAreaLeft_Min:F
    .end local v9           #fRightOffset:F
    .end local v11           #nOffset:I
    .end local v12           #nOrgHeight:I
    .end local v13           #nOrgWidth:I
    .end local v14           #rect:Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14683
    .end local v16           #sc:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 14684
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 14618
    .end local v4           #bottom:I
    .end local v10           #left:I
    .end local v15           #right:I
    .end local v19           #top:I
    :cond_5
    const/high16 v20, 0x3f80

    sub-float v20, p2, v20

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sget v21, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    mul-float v17, v20, v21

    .line 14619
    const/high16 v20, 0x3f80

    sub-float v20, p2, v20

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sget v21, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v18, v20, v21

    goto/16 :goto_1

    .line 14657
    .restart local v4       #bottom:I
    .restart local v10       #left:I
    .restart local v11       #nOffset:I
    .restart local v12       #nOrgHeight:I
    .restart local v13       #nOrgWidth:I
    .restart local v15       #right:I
    .restart local v16       #sc:I
    .restart local v19       #top:I
    :cond_6
    :try_start_1
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 14658
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    goto/16 :goto_2

    .line 14680
    .end local v11           #nOffset:I
    .end local v12           #nOrgHeight:I
    .end local v13           #nOrgWidth:I
    .end local v16           #sc:I
    :catch_0
    move-exception v20

    goto :goto_3
.end method

.method public EndAnimationZoomOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 14548
    sget-boolean v0, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    if-ne v0, v2, :cond_4

    .line 14551
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mTabEffectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14559
    const v0, 0x3f181062

    iput v0, p0, Landroid/webkit/WebView;->mfTabRatio:F

    .line 14561
    iput-object v3, p0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 14562
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    .line 14563
    iput-boolean v2, p0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    .line 14564
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 14566
    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v0, v0, Landroid/webkit/ZoomManager;->m_bEnableMTBouncingToTabMode:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-ne v0, v2, :cond_0

    .line 14567
    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onResetTabEffect(Landroid/webkit/WebView;)V

    .line 14569
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mDefaultZoomInDuration:I

    iput v0, p0, Landroid/webkit/WebView;->mZoomInDuration:I

    .line 14576
    iget-object v0, p0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 14577
    iget-object v0, p0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 14578
    iput-object v3, p0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    .line 14581
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 14582
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 14584
    iget-object v0, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 14585
    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v0}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v0}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 14586
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 14587
    :cond_3
    iput-object v3, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    .line 14590
    :cond_4
    return-void
.end method

.method public GetOwnerActivityContext()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11191
    iget-object v0, p0, Landroid/webkit/WebView;->ownerActivityContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public HideOutofScreenView()V
    .locals 0

    .prologue
    .line 11205
    return-void
.end method

.method public InitTabEffectPivot()V
    .locals 11

    .prologue
    const v10, 0x3eef1aa0

    const v9, 0x3eeb020c

    const/16 v8, 0x1e0

    const v7, 0x3efae148

    const v6, 0x3eee147b

    .line 14331
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x95

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x96

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x97

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x88

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x89

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_3

    .line 14340
    :cond_0
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x4060

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 14341
    const v3, 0x3ef851ec

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14342
    const v3, 0x3f25a1cb

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14343
    sput v6, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14344
    const v3, 0x3f449ba6

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    .line 14420
    :cond_1
    :goto_0
    return-void

    .line 14346
    :cond_2
    sput v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14347
    const v3, 0x3f2a3d71

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14348
    sput v6, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14349
    const v3, 0x3f4c8b44

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto :goto_0

    .line 14351
    :cond_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xf

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8a

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9b

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9c

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9d

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x70

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v3, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 14362
    :cond_4
    sput v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14363
    const v3, 0x3f2e5604

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14364
    const v3, 0x3ef020c5

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14365
    const v3, 0x3f4d4fdf

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto :goto_0

    .line 14366
    :cond_5
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x62

    if-eq v3, v4, :cond_6

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x63

    if-eq v3, v4, :cond_6

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_6

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x41

    if-eq v3, v4, :cond_6

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x42

    if-ne v3, v4, :cond_7

    .line 14371
    :cond_6
    const v3, 0x3f0353f8

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14372
    const v3, 0x3f33b646

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14373
    const v3, 0x3efbe76d

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14374
    const v3, 0x3f4fdf3b

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    .line 14375
    :cond_7
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x10

    if-ne v3, v4, :cond_8

    .line 14376
    const v3, 0x3ef5c28f

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14377
    const v3, 0x3f51eb85

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    .line 14378
    :cond_8
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_9

    .line 14379
    sput v10, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14380
    const v3, 0x3f24dd2f

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14381
    sput v9, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14382
    const v3, 0x3f424dd3

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    .line 14384
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 14385
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 14386
    .local v2, nScreenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 14388
    .local v1, nScreenHeight:I
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InitTabEffectPivot] >> nScreenWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14389
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InitTabEffectPivot] >> nScreenHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14391
    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_a

    const/16 v3, 0x500

    if-eq v1, v3, :cond_b

    :cond_a
    const/16 v3, 0x500

    if-ne v2, v3, :cond_c

    const/16 v3, 0x2d0

    if-ne v1, v3, :cond_c

    .line 14392
    :cond_b
    sput v10, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14393
    const v3, 0x3f24dd2f

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14394
    sput v9, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14395
    const v3, 0x3f424dd3

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    .line 14396
    :cond_c
    const/16 v3, 0x21c

    if-ne v2, v3, :cond_d

    const/16 v3, 0x3c0

    if-eq v1, v3, :cond_e

    :cond_d
    const/16 v3, 0x3c0

    if-ne v2, v3, :cond_10

    const/16 v3, 0x21c

    if-ne v1, v3, :cond_10

    .line 14397
    :cond_e
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x4060

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    .line 14398
    const v3, 0x3ef851ec

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14399
    const v3, 0x3f25a1cb

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14400
    sput v6, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14401
    const v3, 0x3f449ba6

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    .line 14403
    :cond_f
    sput v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14404
    const v3, 0x3f2a3d71

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14405
    sput v6, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14406
    const v3, 0x3f4c8b44

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    .line 14408
    :cond_10
    if-ne v2, v8, :cond_11

    const/16 v3, 0x320

    if-eq v1, v3, :cond_12

    :cond_11
    const/16 v3, 0x320

    if-ne v2, v3, :cond_13

    if-ne v1, v8, :cond_13

    .line 14409
    :cond_12
    sput v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14410
    const v3, 0x3f2e5604

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14411
    const v3, 0x3ef020c5

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14412
    const v3, 0x3f4d4fdf

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    .line 14413
    :cond_13
    const/16 v3, 0x140

    if-ne v2, v3, :cond_14

    if-eq v1, v8, :cond_15

    :cond_14
    if-ne v2, v8, :cond_1

    const/16 v3, 0x140

    if-ne v1, v3, :cond_1

    .line 14414
    :cond_15
    const v3, 0x3f0353f8

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14415
    const v3, 0x3f33b646

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14416
    const v3, 0x3efbe76d

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14417
    const v3, 0x3f4fdf3b

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0
.end method

.method public InitTabEffectPivot(FFFF)V
    .locals 0
    .parameter "fpx"
    .parameter "fpy"
    .parameter "flx"
    .parameter "fly"

    .prologue
    .line 14325
    sput p1, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    .line 14326
    sput p2, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    .line 14327
    sput p3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    .line 14328
    sput p4, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    .line 14329
    return-void
.end method

.method public IsHeavyWebSite()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 13777
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 13779
    .local v3, url:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 13830
    :cond_0
    :goto_0
    return v4

    .line 13783
    :cond_1
    const-string/jumbo v5, "http://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13784
    const/4 v2, 0x7

    .line 13788
    .local v2, start:I
    :goto_1
    const-string v5, "/"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 13789
    .local v0, end:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 13790
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 13792
    :cond_2
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 13794
    .local v1, host:Ljava/lang/String;
    const-string/jumbo v5, "yahoo.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "mail.yahoo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13797
    :cond_3
    const-string/jumbo v5, "youtube.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13800
    const-string/jumbo v5, "nba.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13803
    const-string/jumbo v5, "msn.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13806
    const-string v5, "bbc.co.uk"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13809
    const-string v5, "cnn.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13812
    const-string v5, "espn.go.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13815
    const-string v5, "engadget.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13818
    const-string/jumbo v5, "wired.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13821
    const-string/jumbo v5, "sina.com.cn"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13824
    const-string/jumbo v5, "mobile01.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13827
    const-string/jumbo v5, "nytimes.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 13830
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 13786
    .end local v0           #end:I
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #start:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #start:I
    goto/16 :goto_1
.end method

.method public IsWebSiteSupportTextReflow()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 13835
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 13837
    .local v3, url:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 13855
    :cond_0
    :goto_0
    return v4

    .line 13841
    :cond_1
    const-string/jumbo v5, "http://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13842
    const/4 v2, 0x7

    .line 13846
    .local v2, start:I
    :goto_1
    const-string v5, "/"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 13847
    .local v0, end:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 13848
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 13850
    :cond_2
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 13852
    .local v1, host:Ljava/lang/String;
    const-string/jumbo v5, "northstream.se"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 13853
    const/4 v4, 0x0

    goto :goto_0

    .line 13844
    .end local v0           #end:I
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #start:I
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #start:I
    goto :goto_1
.end method

.method public IspauseTextReflow()Z
    .locals 1

    .prologue
    .line 12192
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    return v0
.end method

.method public RecoveryDefaultZoomLowerBound()V
    .locals 1

    .prologue
    .line 14036
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->RecoveryDefaultZoomLowerBound()V

    .line 14037
    return-void
.end method

.method public RecoveryDefaultZoomUpperBound()V
    .locals 1

    .prologue
    .line 14032
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->RecoveryDefaultZoomUpperBound()V

    .line 14033
    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 11187
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/webkit/WebView;->ownerActivityContext:Ljava/lang/ref/WeakReference;

    .line 11188
    return-void
.end method

.method public StartAnimationZoomOut(ZF)V
    .locals 17
    .parameter "bNeedCallBack"
    .parameter "fOriginalScale"

    .prologue
    .line 14427
    sget-boolean v2, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    .line 14539
    :cond_0
    :goto_0
    return-void

    .line 14430
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 14441
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 14443
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 14444
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 14447
    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v2, v2, Landroid/webkit/ZoomManager;->m_bEnableMTBouncingToTabMode:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 14448
    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onResetTabEffect(Landroid/webkit/WebView;)V

    .line 14452
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mbNeedCallBack:Z

    .line 14453
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mOriginalScale:F

    .line 14454
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mOriginalScale:F

    sub-float/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mIntervalScale:F

    .line 14455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Landroid/webkit/WebView;->mStartTime:J

    .line 14456
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    .line 14457
    const/4 v2, 0x1

    sput-boolean v2, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    .line 14459
    sget-boolean v2, Landroid/webkit/WebView;->m_bHostFullScreenMode:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_7

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    .line 14460
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v2, v7

    const/4 v7, 0x0

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    .line 14461
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    add-int v11, v2, v7

    .line 14463
    .local v11, nOffset:I
    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v2}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v2}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 14464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    .line 14466
    :cond_3
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 14467
    .local v12, rcLocalDraw:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 14469
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 14470
    .local v3, nTabSnapshot_x:I
    iget v4, v12, Landroid/graphics/Rect;->left:I

    .line 14471
    .local v4, nTabSnapshot_y:I
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 14472
    .local v5, nTabSnapshot_width:I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 14473
    .local v6, nTabSnapshot_height:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    if-nez v2, :cond_4

    .line 14474
    iget v2, v12, Landroid/graphics/Rect;->top:I

    if-le v11, v2, :cond_8

    .line 14475
    const/4 v4, 0x0

    .line 14479
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnGetDefaultDisplayInfo()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    add-int/lit8 v5, v2, -0x3

    .line 14480
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnGetDefaultDisplayInfo()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    sub-int v6, v2, v7

    .line 14482
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/webkit/WebView;->fnCreateTabSnapshot(IIIIFI)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 14484
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 14487
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 14488
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 14489
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    .line 14492
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v7, "window"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 14493
    .local v10, display:Landroid/view/Display;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    .line 14494
    .local v9, density:F
    const/4 v13, 0x0

    .line 14495
    .local v13, sx:F
    const/4 v14, 0x0

    .line 14496
    .local v14, sy:F
    const v2, 0x3f181062

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    .line 14497
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_9

    .line 14498
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    mul-float v13, v2, v7

    .line 14499
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    int-to-float v7, v7

    add-float v14, v2, v7

    .line 14505
    :goto_3
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft:I

    .line 14506
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nCurrentTabMinTop:I

    .line 14511
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 14512
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mfTabRatio:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    .line 14514
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_a

    .line 14515
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    mul-float v13, v2, v7

    .line 14516
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    int-to-float v7, v7

    add-float v14, v2, v7

    .line 14522
    :goto_4
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft_modify:I

    .line 14523
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nCurrentTabMinTop_modify:I

    .line 14526
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 14528
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v7, Landroid/webkit/WebView$12;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/webkit/WebView$12;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14537
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView;->mTabEffectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14538
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView;->mTabEffectTimeout:Ljava/lang/Runnable;

    const-wide/16 v15, 0x4e20

    move-wide v0, v15

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 14459
    .end local v3           #nTabSnapshot_x:I
    .end local v4           #nTabSnapshot_y:I
    .end local v5           #nTabSnapshot_width:I
    .end local v6           #nTabSnapshot_height:I
    .end local v9           #density:F
    .end local v10           #display:Landroid/view/Display;
    .end local v11           #nOffset:I
    .end local v12           #rcLocalDraw:Landroid/graphics/Rect;
    .end local v13           #sx:F
    .end local v14           #sy:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x105000a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_1

    .line 14477
    .restart local v3       #nTabSnapshot_x:I
    .restart local v4       #nTabSnapshot_y:I
    .restart local v5       #nTabSnapshot_width:I
    .restart local v6       #nTabSnapshot_height:I
    .restart local v11       #nOffset:I
    .restart local v12       #rcLocalDraw:Landroid/graphics/Rect;
    :cond_8
    iget v2, v12, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v11

    goto/16 :goto_2

    .line 14501
    .restart local v9       #density:F
    .restart local v10       #display:Landroid/view/Display;
    .restart local v13       #sx:F
    .restart local v14       #sy:F
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    mul-float v13, v2, v7

    .line 14502
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    int-to-float v7, v7

    add-float v14, v2, v7

    goto/16 :goto_3

    .line 14518
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    mul-float v13, v2, v7

    .line 14519
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    int-to-float v7, v7

    add-float v14, v2, v7

    goto/16 :goto_4
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 4521
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4522
    if-nez p1, :cond_0

    .line 4529
    :goto_0
    return-void

    .line 4525
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4526
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 4527
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4528
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method adjustDefaultZoomDensity(I)V
    .locals 3
    .parameter "zoomDensity"

    .prologue
    .line 1534
    iget-object v1, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 1536
    .local v0, density:F
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->updateDefaultZoomDensity(F)V

    .line 1537
    return-void
.end method

.method autoFillForm(I)V
    .locals 3
    .parameter "autoFillQueryId"

    .prologue
    .line 10897
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 10898
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2524
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2525
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2526
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2527
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2528
    monitor-exit v0

    .line 2530
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 2532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4
    .parameter "steps"

    .prologue
    const/4 v2, 0x0

    .line 2574
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2575
    iget-object v3, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2576
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2577
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2578
    monitor-exit v0

    .line 2581
    :goto_0
    return v2

    .line 2580
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    add-int v1, v3, p1

    .line 2581
    .local v1, newIndex:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 2583
    .end local v1           #newIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canGoForward()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2548
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2549
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2550
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2551
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2552
    monitor-exit v0

    .line 2554
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 2556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canZoomIn()Z
    .locals 1

    .prologue
    .line 8391
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 8392
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 8399
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 8400
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 2

    .prologue
    .line 2715
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2716
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2719
    :goto_0
    return-object v0

    .line 2717
    :cond_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 2718
    .local v0, result:Landroid/graphics/Picture;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V

    goto :goto_0
.end method

.method centerFitRect(Landroid/graphics/Rect;)V
    .locals 27
    .parameter "rect"

    .prologue
    .line 8646
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 8647
    .local v17, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 8648
    .local v12, rectHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    .line 8649
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v19

    .line 8650
    .local v19, viewHeight:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v12

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 8652
    .local v18, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v18

    .line 8653
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v23

    if-nez v23, :cond_0

    .line 8654
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    div-int/lit8 v24, v17, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v23

    div-int/lit8 v24, v20, 0x2

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    div-int/lit8 v25, v12, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v24

    div-int/lit8 v25, v19, 0x2

    sub-int v24, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 8689
    :goto_0
    return-void

    .line 8658
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    .line 8659
    .local v5, actualScale:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v10, v23, v24

    .line 8660
    .local v10, oldScreenX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v18

    .line 8661
    .local v15, rectViewX:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v14, v23, v18

    .line 8662
    .local v14, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v7, v23, v18

    .line 8663
    .local v7, newMaxWidth:F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v14

    const/high16 v24, 0x4000

    div-float v8, v23, v24

    .line 8665
    .local v8, newScreenX:F
    cmpl-float v23, v8, v15

    if-lez v23, :cond_3

    .line 8666
    move v8, v15

    .line 8670
    :cond_1
    :goto_1
    mul-float v23, v10, v18

    mul-float v24, v8, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v21, v23, v24

    .line 8672
    .local v21, zoomCenterX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 8674
    .local v11, oldScreenY:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v16, v23, v24

    .line 8675
    .local v16, rectViewY:F
    int-to-float v0, v12

    move/from16 v23, v0

    mul-float v13, v23, v18

    .line 8676
    .local v13, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v6, v23, v24

    .line 8677
    .local v6, newMaxHeight:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x4000

    div-float v9, v23, v24

    .line 8679
    .local v9, newScreenY:F
    cmpl-float v23, v9, v16

    if-lez v23, :cond_4

    .line 8680
    move/from16 v9, v16

    .line 8684
    :cond_2
    :goto_2
    mul-float v23, v11, v18

    mul-float v24, v9, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v22, v23, v24

    .line 8686
    .local v22, zoomCenterY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 8687
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto/16 :goto_0

    .line 8667
    .end local v6           #newMaxHeight:F
    .end local v9           #newScreenY:F
    .end local v11           #oldScreenY:F
    .end local v13           #rectViewHeight:F
    .end local v16           #rectViewY:F
    .end local v21           #zoomCenterX:F
    .end local v22           #zoomCenterY:F
    :cond_3
    sub-float v23, v7, v15

    sub-float v23, v23, v14

    cmpl-float v23, v8, v23

    if-lez v23, :cond_1

    .line 8668
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v7, v15

    sub-float v8, v23, v24

    goto/16 :goto_1

    .line 8681
    .restart local v6       #newMaxHeight:F
    .restart local v9       #newScreenY:F
    .restart local v11       #oldScreenY:F
    .restart local v13       #rectViewHeight:F
    .restart local v16       #rectViewY:F
    .restart local v21       #zoomCenterX:F
    :cond_4
    sub-float v23, v6, v16

    sub-float v23, v23, v13

    cmpl-float v23, v9, v23

    if-lez v23, :cond_2

    .line 8682
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v6, v16

    sub-float v9, v23, v24

    goto :goto_2
.end method

.method centerKeyPressOnTextField()V
    .locals 4

    .prologue
    .line 8531
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 8533
    return-void
.end method

.method checkIsHeavyWebSite()V
    .locals 1

    .prologue
    .line 14872
    invoke-virtual {p0}, Landroid/webkit/WebView;->IsHeavyWebSite()Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    .line 14873
    return-void
.end method

.method protected checkVerticalBouncingCallback(I)Z
    .locals 1
    .parameter "distance"

    .prologue
    .line 12077
    const/4 v0, 0x1

    return v0
.end method

.method public clearCache(Z)V
    .locals 4
    .parameter "includeDiskFiles"

    .prologue
    const/4 v1, 0x0

    .line 3736
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3740
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x6f

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3742
    return-void

    :cond_0
    move v0, v1

    .line 3740
    goto :goto_0
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 3749
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3750
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3751
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 3753
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 3759
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3760
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 3761
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3762
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 3945
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3946
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3950
    :goto_0
    return-void

    .line 3948
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsEmpty()V

    .line 3949
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 3769
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3770
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3771
    return-void
.end method

.method public clearView()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2698
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2699
    iput v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2700
    iput v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2701
    const/4 v2, 0x0

    move-object v0, p0

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->setBaseLayer(ILandroid/graphics/Region;ZZZ)V

    .line 2702
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2703
    return-void
.end method

.method public clearViewState()V
    .locals 1

    .prologue
    .line 2230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    .line 2231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 2232
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2233
    return-void
.end method

.method public clearWebCoreMemoryCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13997
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 13998
    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 3434
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 3418
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 3421
    .local v1, range:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3422
    .local v2, scrollX:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 3423
    .local v0, overscrollRight:I
    if-gez v2, :cond_1

    .line 3424
    sub-int/2addr v1, v2

    .line 3429
    :cond_0
    :goto_0
    return v1

    .line 3425
    :cond_1
    if-le v2, v0, :cond_0

    .line 3426
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method computeMaxScrollX()I
    .locals 2

    .prologue
    .line 8164
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeMaxScrollY()I
    .locals 2

    .prologue
    .line 8172
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/16 v1, 0x9

    const/4 v9, 0x0

    .line 4004
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4005
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 4006
    .local v3, oldX:I
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 4007
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 4008
    .local v10, x:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 4009
    .local v11, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4011
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4012
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 4013
    .local v5, rangeX:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 4014
    .local v6, rangeY:I
    iget v7, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    .line 4017
    .local v7, overflingDistance:I
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v1, :cond_0

    .line 4018
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 4019
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 4020
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 4021
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 4023
    const/4 v7, 0x0

    .line 4026
    :cond_0
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    move-object v0, p0

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 4030
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_1

    .line 4031
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move v1, v10

    move v2, v11

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->absorbGlow(IIIIII)V

    .line 4059
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v7           #overflingDistance:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_1
    :goto_0
    return-void

    .line 4034
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-eq v0, v1, :cond_5

    .line 4035
    iput v10, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 4036
    iput v11, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 4041
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 4043
    invoke-virtual {p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    .line 4045
    invoke-direct {p0, v9}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 4046
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_3

    .line 4047
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 4048
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_3

    .line 4049
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4052
    :cond_3
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v3, v0, :cond_4

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v4, v0, :cond_1

    .line 4053
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0

    .line 4039
    :cond_5
    invoke-direct {p0, v10, v11}, Landroid/webkit/WebView;->scrollLayerTo(II)V

    goto :goto_1

    .line 4057
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_6
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 3469
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 3464
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 3448
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    .line 3451
    .local v1, range:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3452
    .local v2, scrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    .line 3453
    .local v0, overscrollBottom:I
    if-gez v2, :cond_1

    .line 3454
    sub-int/2addr v1, v2

    .line 3459
    :cond_0
    :goto_0
    return v1

    .line 3455
    :cond_1
    if-le v2, v0, :cond_0

    .line 3456
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method protected contentInvalidateAll()V
    .locals 2

    .prologue
    .line 10918
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    .line 10919
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 10921
    :cond_0
    return-void
.end method

.method contentToViewDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 3078
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 3086
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 3094
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 3782
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3783
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 6

    .prologue
    .line 6350
    const/4 v1, 0x0

    .line 6351
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 6352
    .local v2, selection:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 6356
    iget-object v3, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const v4, 0x1040370

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 6359
    const/4 v1, 0x1

    .line 6360
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 6362
    .local v0, cm:Landroid/content/ClipboardManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 6365
    .end local v0           #cm:Landroid/content/ClipboardManager;
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6366
    return v1
.end method

.method cursorData()Landroid/webkit/WebViewCore$CursorData;
    .locals 3

    .prologue
    .line 5469
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorDataNoPosition()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v1

    .line 5470
    .local v1, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 5471
    .local v0, position:Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 5472
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 5473
    return-object v1
.end method

.method cursorDataNoPosition()Landroid/webkit/WebViewCore$CursorData;
    .locals 2

    .prologue
    .line 5477
    new-instance v0, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$CursorData;-><init>()V

    .line 5478
    .local v0, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    .line 5479
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    .line 5480
    return-object v0
.end method

.method public debugDump()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10849
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 10850
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    .line 10851
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 10852
    return-void
.end method

.method deleteSelection(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5491
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 5492
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    .line 5494
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 5496
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 1829
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1830
    invoke-direct {p0}, Landroid/webkit/WebView;->destroyImpl()V

    .line 1831
    return-void
.end method

.method public disableMultiTouch()V
    .locals 1

    .prologue
    .line 14292
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->disableMultiTouch()V

    .line 14293
    return-void
.end method

.method dismissZoomControl()V
    .locals 1

    .prologue
    .line 8372
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 8373
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 6681
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6705
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6708
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 6710
    :goto_1
    return v1

    .line 6683
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6689
    :pswitch_2
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6690
    .local v0, location:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6693
    const/4 v1, 0x0

    goto :goto_1

    .line 6697
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 6710
    .end local v0           #location:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 6681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4496
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4497
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 3985
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3986
    if-nez p1, :cond_0

    .line 3990
    :goto_0
    return-void

    .line 3989
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 4599
    iget-object v1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 4602
    iget-object v1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4603
    const/4 v0, 0x0

    .line 4604
    .local v0, newTop:I
    iget v1, p0, Landroid/webkit/WebView;->mTitleGravity:I

    if-nez v1, :cond_2

    .line 4605
    const/4 v1, 0x0

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4609
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    .line 4610
    iget-object v1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTop(I)V

    .line 4612
    .end local v0           #newTop:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1

    .line 4606
    .restart local v0       #newTop:I
    :cond_2
    iget v1, p0, Landroid/webkit/WebView;->mTitleGravity:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 4607
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    goto :goto_0
.end method

.method drawHistory()Z
    .locals 1

    .prologue
    .line 5442
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public drawPage(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 10862
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 10863
    iget-object v2, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIZ)I

    .line 10864
    return-void
.end method

.method public dumpDisplayTree()V
    .locals 1

    .prologue
    .line 5756
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 5757
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 5766
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xaa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5767
    return-void

    :cond_0
    move v0, v1

    .line 5766
    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 5776
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xab

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5777
    return-void

    :cond_0
    move v0, v1

    .line 5776
    goto :goto_0
.end method

.method public dumpV8Counters()V
    .locals 2

    .prologue
    .line 5807
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5808
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 6282
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 6283
    invoke-direct {p0, v0, v0, v0}, Landroid/webkit/WebView;->setUpSelect(ZII)Z

    .line 6284
    return-void
.end method

.method public enableHTCZoomMethod(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 14278
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->enableHTCZoomMethod(Z)V

    .line 14279
    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    .line 14283
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->enableMultiTouch()V

    .line 14285
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14286
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->forceBreakWord(Z)V

    .line 14288
    :cond_0
    return-void
.end method

.method public enableMultiTouchZoomOutToTabMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 14270
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->enableMultiTouchZoomOutToTabMode(Z)V

    .line 14271
    return-void
.end method

.method protected enableQuickSelection(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 11265
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 11269
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->howToSelection:I

    .line 11284
    if-eqz p1, :cond_1

    .line 11285
    invoke-virtual {p0}, Landroid/webkit/WebView;->initQuickSelect()V

    .line 11287
    :cond_1
    return-void

    .line 11269
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableSmartZoom()V
    .locals 1

    .prologue
    .line 14266
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->enableSmartZoom()V

    .line 14267
    return-void
.end method

.method public enableTBS(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 14718
    iput-boolean p1, p0, Landroid/webkit/WebView;->m_bEnableTBS:Z

    .line 14719
    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bCustomizeEnableTBS:Z

    .line 14720
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bHasNewWebView:Z

    if-ne v0, v1, :cond_0

    .line 14721
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeEnableTBS(Z)V

    .line 14722
    :cond_0
    return-void
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4488
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4489
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4584
    :try_start_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4585
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/WebView$8;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4593
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4595
    return-void

    .line 4593
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 4
    .parameter "find"

    .prologue
    const/4 v0, 0x0

    .line 3806
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3807
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    .line 3812
    :goto_0
    return v0

    .line 3808
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 3810
    .local v0, result:I
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3811
    iput-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    goto :goto_0
.end method

.method findIndex()I
    .locals 1

    .prologue
    .line 3871
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 3872
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFindIndex()I

    move-result v0

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1
    .parameter "forward"

    .prologue
    .line 3794
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3795
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3797
    :goto_0
    return-void

    .line 3796
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 11
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 8190
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 8191
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 8193
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8194
    return-void
.end method

.method public fnCreateTabSnapshot(IIIIFI)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "scale"
    .parameter "offset"

    .prologue
    const/4 v0, 0x0

    .line 14158
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, p5, v2

    if-lez v2, :cond_0

    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14189
    :cond_0
    :goto_0
    return-object v0

    .line 14163
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_0

    .line 14166
    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v2, :cond_4

    .line 14167
    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v2}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    .line 14170
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 14172
    :cond_2
    add-int v2, p4, p6

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    .line 14173
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14174
    .local v1, canvas:Landroid/graphics/Canvas;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 14175
    if-gtz p6, :cond_5

    .line 14176
    neg-int v2, p1

    int-to-float v2, v2

    neg-int v3, p2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14179
    :goto_2
    invoke-virtual {v1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 14184
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    .line 14187
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 14189
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 14169
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    iget-object v2, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 14178
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    :cond_5
    neg-int v2, p1

    int-to-float v2, v2

    int-to-float v3, p6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2
.end method

.method fnEnableGifAnimation(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 11214
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_0

    .line 11215
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCore;->nativeEnableGifAnimation(Z)V

    .line 11216
    :cond_0
    return-void
.end method

.method public fnGetDefaultDisplayInfo()Landroid/view/Display;
    .locals 3

    .prologue
    .line 11197
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 11198
    .local v0, display:Landroid/view/Display;
    return-object v0
.end method

.method public fnGetMaxZoomScale()F
    .locals 1

    .prologue
    .line 14016
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getMaxZoomScale()F

    move-result v0

    return v0
.end method

.method public fnGetMinZoomScale()F
    .locals 1

    .prologue
    .line 14011
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getMinZoomScale()F

    move-result v0

    return v0
.end method

.method public fnPausePlayGifAnimation()V
    .locals 2

    .prologue
    .line 14742
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_0

    .line 14743
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCore;->nativeForceStopGifAnimation(Z)V

    .line 14744
    :cond_0
    return-void
.end method

.method public fnResumePlayGifAnimation()V
    .locals 2

    .prologue
    .line 14748
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_0

    .line 14749
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCore;->nativeForceStopGifAnimation(Z)V

    .line 14750
    :cond_0
    return-void
.end method

.method public fnScrollingBegin()V
    .locals 6

    .prologue
    const/16 v5, 0x136

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13930
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 13932
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-nez v0, :cond_0

    .line 13935
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_0

    .line 13936
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const-wide/32 v1, 0xa00000

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTCWebCore;->nativeSetSkiaFontCacheSize(J)V

    .line 13940
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    if-nez v0, :cond_2

    .line 13945
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v0, :cond_1

    .line 13946
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13947
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 13951
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->pauseFPDoPlay()V

    .line 13952
    invoke-virtual {p0}, Landroid/webkit/WebView;->fnPausePlayGifAnimation()V

    .line 13954
    iput-boolean v4, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    .line 13957
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    if-ne v0, v4, :cond_3

    .line 13958
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-boolean v3, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 13959
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput v3, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 13961
    :cond_3
    return-void
.end method

.method public fnScrollingEnd()V
    .locals 5

    .prologue
    const/16 v2, 0x137

    .line 13968
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->resetVelocity()V

    .line 13969
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 13970
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v0, :cond_0

    .line 13972
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13973
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13976
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeFPDoPlay()V

    .line 13977
    invoke-virtual {p0}, Landroid/webkit/WebView;->fnResumePlayGifAnimation()V

    .line 13979
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    .line 13983
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_2

    .line 13984
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTCWebCore;->nativeSetSkiaFontCacheSize(J)V

    .line 13988
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->fnIsHtcApplication()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13990
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x100

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 13993
    :cond_3
    return-void
.end method

.method public fnresumeUpdate()V
    .locals 1

    .prologue
    .line 14006
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 14007
    return-void
.end method

.method public freeCacheBitmap()Z
    .locals 1

    .prologue
    .line 14134
    iget-object v0, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 14135
    iget-object v0, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 14136
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 14137
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 14138
    const/4 v0, 0x1

    .line 14140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 3725
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3726
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3727
    return-void
.end method

.method protected getAnchorDrawableHeight()I
    .locals 1

    .prologue
    .line 12326
    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getBackgroundColor()I
    .locals 1

    .prologue
    .line 10840
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    return v0
.end method

.method getBaseLayer()I
    .locals 1

    .prologue
    .line 5178
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 5179
    const/4 v0, 0x0

    .line 5181
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetBaseLayer()I

    move-result v0

    goto :goto_0
.end method

.method public getCacheDrawBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14101
    iget-object v0, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCacheDrawBitmapWithFlashPlugin()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 14106
    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14107
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14108
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v1, p0, Landroid/webkit/WebView;->mCacheDrawX:F

    neg-float v1, v1

    iget v2, p0, Landroid/webkit/WebView;->mCacheDrawY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14109
    iget v1, p0, Landroid/webkit/WebView;->mCacheDrawScale:F

    iget v2, p0, Landroid/webkit/WebView;->mCacheDrawScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 14114
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 1722
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1723
    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 3588
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3589
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 3597
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method public getCurrentTextReflowWidth()I
    .locals 2

    .prologue
    .line 12197
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 12198
    iget v0, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    .line 12200
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method getDefaultZoomScale()F
    .locals 1

    .prologue
    .line 8376
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 3559
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3560
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3561
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFoundIndex()I
    .locals 1

    .prologue
    .line 3877
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3878
    invoke-virtual {p0}, Landroid/webkit/WebView;->findIndex()I

    move-result v0

    return v0
.end method

.method getHistoryPictureWidth()I
    .locals 1

    .prologue
    .line 5446
    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 2813
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2814
    iget-object v0, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->hitTestResult(Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1779
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1780
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsCacheDrawBitmap()Z
    .locals 1

    .prologue
    .line 14075
    iget-boolean v0, p0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    return v0
.end method

.method getIsDrawCursorRing()Z
    .locals 1

    .prologue
    .line 14252
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    return v0
.end method

.method public getIsLoading()Z
    .locals 1

    .prologue
    .line 13872
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3537
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3538
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3539
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageBackgroundColor()I
    .locals 1

    .prologue
    .line 3614
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetBackgroundColor()I

    move-result v0

    return v0
.end method

.method getPluginBounds(II)Landroid/graphics/Rect;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8612
    iget v1, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    .line 8613
    .local v0, slop:I
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitIsPlugin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8614
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 8616
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 3580
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3581
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getQuickSearch()Landroid/webkit/HTCQuickSearch;
    .locals 1

    .prologue
    .line 11251
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

    return-object v0
.end method

.method getReadingLevelScale()F
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    return v0
.end method

.method getRectOf(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "type"

    .prologue
    .line 12239
    iget-object v1, p0, Landroid/webkit/WebView;->mPositionRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 12240
    sparse-switch p1, :sswitch_data_0

    .line 12250
    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-object v0

    .line 12242
    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectStart:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1

    goto :goto_0

    .line 12252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12244
    :sswitch_1
    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectEnd:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1

    goto :goto_0

    .line 12246
    :sswitch_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectBase:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1

    goto :goto_0

    .line 12248
    :sswitch_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectExtend:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12240
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
        0x78 -> :sswitch_3
    .end sparse-switch
.end method

.method protected getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 12133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 2746
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2747
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    return v0
.end method

.method public getSearchBox()Landroid/webkit/SearchBox;
    .locals 1

    .prologue
    .line 6373
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6374
    :cond_0
    const/4 v0, 0x0

    .line 6376
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    goto :goto_0
.end method

.method getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6383
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_1

    const-string v0, ""

    .line 6386
    :cond_0
    :goto_0
    return-object v0

    .line 6385
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    .line 6386
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 4551
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4552
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTextHandleScale()F
    .locals 2

    .prologue
    .line 2752
    iget-object v1, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2753
    .local v0, density:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    div-float v1, v0, v1

    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3548
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3549
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3550
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTitleHeight()I
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3571
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3572
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3523
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3524
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3525
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getViewHeight()I
    .locals 2

    .prologue
    .line 1706
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewHeightWithTitle()I
    .locals 2

    .prologue
    .line 1710
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1711
    .local v0, height:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    .line 1712
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1714
    :cond_0
    return v0
.end method

.method getViewManager()Landroid/webkit/ViewManager;
    .locals 1

    .prologue
    .line 10901
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 3

    .prologue
    .line 1654
    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 1655
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 1657
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 1676
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1677
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 4468
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 4449
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 4417
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 8899
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8363
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 8364
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8365
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8366
    const/4 v0, 0x0

    .line 8368
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getExternalZoomPicker()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getZoomOverviewScale()F
    .locals 1

    .prologue
    .line 8384
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    .line 14232
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 2539
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2540
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->goBackOrForwardImpl(I)V

    .line 2541
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0
    .parameter "steps"

    .prologue
    .line 2594
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2595
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->goBackOrForwardImpl(I)V

    .line 2596
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 2563
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2564
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->goBackOrForwardImpl(I)V

    .line 2565
    return-void
.end method

.method handleMultiTouchInWebView(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 7583
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v1

    .line 7588
    .local v1, detector:Landroid/view/ScaleGestureDetector;
    if-nez v1, :cond_1

    .line 7649
    :cond_0
    :goto_0
    return-void

    .line 7590
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 7591
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 7593
    .local v3, y:F
    iget v4, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v8, :cond_2

    .line 7594
    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7596
    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 7601
    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 7602
    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 7604
    invoke-virtual {p0}, Landroid/webkit/WebView;->cancelLongPress()V

    .line 7605
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 7606
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->supportsPanDuringZoom()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7609
    iput v8, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7610
    iget-object v4, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2

    .line 7611
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7616
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 7617
    .local v0, action:I
    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    .line 7618
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 7619
    const/4 v0, 0x0

    .line 7633
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 7635
    iget-object v4, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v4, v5, :cond_8

    :cond_4
    move-object v4, p0

    .line 7637
    check-cast v4, Landroid/webkit/EditableWebView;

    invoke-virtual {v4}, Landroid/webkit/EditableWebView;->onEndSelect()V

    .line 7645
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, p1, v4, v5, v6}, Landroid/webkit/WebView;->handleTouchEventEditable(Landroid/view/MotionEvent;III)Z

    goto/16 :goto_0

    .line 7620
    :cond_6
    const/4 v4, 0x6

    if-ne v0, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-lt v4, v7, :cond_7

    .line 7622
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    .line 7623
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    goto :goto_1

    .line 7624
    :cond_7
    if-ne v0, v7, :cond_3

    .line 7626
    cmpg-float v4, v2, v6

    if-ltz v4, :cond_0

    cmpg-float v4, v3, v6

    if-gez v4, :cond_3

    goto/16 :goto_0

    .line 7638
    :cond_8
    iget-object v4, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v4, v5, :cond_5

    move-object v4, p0

    .line 7641
    check-cast v4, Landroid/webkit/EditableWebView;

    invoke-virtual {v4}, Landroid/webkit/EditableWebView;->pauseSelectionUI()V

    goto :goto_2

    .line 7648
    :cond_9
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, p1, v0, v4, v5}, Landroid/webkit/WebView;->handleTouchEventCommon(Landroid/view/MotionEvent;III)Z

    goto/16 :goto_0
.end method

.method protected hideSingleTapQuickActions()V
    .locals 0

    .prologue
    .line 14704
    return-void
.end method

.method incrementTextGeneration()V
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return-void
.end method

.method protected initQuickSelect()V
    .locals 2

    .prologue
    .line 11294
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

    if-nez v0, :cond_0

    .line 11295
    new-instance v0, Landroid/webkit/HTCQuickSearch;

    invoke-direct {v0, p0}, Landroid/webkit/HTCQuickSearch;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

    .line 11297
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-nez v0, :cond_1

    .line 11298
    new-instance v0, Landroid/webkit/WebView$QuickSelectWV;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$QuickSelectWV;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    .line 11301
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->init()V

    .line 11302
    return-void
.end method

.method initiateTextFieldDrag(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 8467
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8482
    :goto_0
    return-void

    .line 8470
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:I

    .line 8471
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:I

    .line 8472
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 8473
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8474
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 8476
    invoke-virtual {p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    .line 8479
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 8480
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8481
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 13725
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->invalidate()V

    .line 13740
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 2

    .prologue
    .line 2785
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2786
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2787
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :goto_0
    return-void

    .line 2790
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2791
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    goto :goto_0
.end method

.method public isCacheDrawPlugin()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14150
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 14154
    :cond_0
    return v1
.end method

.method protected isEditable()Z
    .locals 1

    .prologue
    .line 11405
    invoke-virtual {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method public isGoogleUrl()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 14208
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 14210
    .local v3, url:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 14228
    :cond_0
    :goto_0
    return v4

    .line 14214
    :cond_1
    const-string/jumbo v5, "http://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14215
    const/4 v2, 0x7

    .line 14219
    .local v2, start:I
    :goto_1
    const-string v5, "/"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 14220
    .local v0, end:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 14221
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 14223
    :cond_2
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 14225
    .local v1, host:Ljava/lang/String;
    const-string v5, "google"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "mail.yahoo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 14226
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 14217
    .end local v0           #end:I
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #start:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #start:I
    goto :goto_1
.end method

.method isInBrowserApp()Z
    .locals 1

    .prologue
    .line 14423
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 3717
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 2623
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2624
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public isPureZoomMode()Z
    .locals 1

    .prologue
    .line 14856
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPureZoomMode:Z

    return v0
.end method

.method isRectFitOnScreen(Landroid/graphics/Rect;)Z
    .locals 8
    .parameter "rect"

    .prologue
    .line 8625
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 8626
    .local v1, rectWidth:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 8627
    .local v0, rectHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v4

    .line 8628
    .local v4, viewWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v3

    .line 8629
    .local v3, viewHeight:I
    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 8630
    .local v2, scale:F
    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v2

    .line 8631
    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v6, v4

    if-gt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isStopDrawing()Z
    .locals 1

    .prologue
    .line 14819
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    return v0
.end method

.method public isWebCoreBlocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 10282
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 10283
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->checkBlock()D

    move-result-wide v1

    const-wide v3, 0x40e5f90000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 10285
    :cond_0
    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 10264
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 10265
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->checkBlock()D

    move-result-wide v1

    const-wide v3, 0x40c3880000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 10271
    :cond_0
    return v0
.end method

.method isWebCoreReady()Z
    .locals 1

    .prologue
    .line 11139
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 2391
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2392
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 2430
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2434
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    .line 2450
    :goto_0
    return-void

    .line 2437
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2438
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2441
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2442
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 2443
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 2444
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 2445
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 2446
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 2447
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 2448
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2449
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 2331
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2332
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;)V

    .line 2333
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2313
    .local p2, additionalHttpHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2314
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2315
    return-void
.end method

.method public loadViewState(Ljava/io/InputStream;)Z
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v1, 0x1

    .line 2213
    :try_start_0
    invoke-static {p1, p0}, Landroid/webkit/ViewStateSerializer;->deserializeViewState(Ljava/io/InputStream;Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 2214
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    .line 2215
    iget-object v2, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 2216
    iget-object v2, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2221
    :goto_0
    return v1

    .line 2218
    :catch_0
    move-exception v0

    .line 2219
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v1, "webview"

    const-string v2, "Failed to loadViewState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2221
    const/4 v1, 0x0

    goto :goto_0
.end method

.method moveSelection(FF)V
    .locals 12
    .parameter "xRate"
    .parameter "yRate"

    .prologue
    const/16 v8, 0x10

    const/16 v7, -0x10

    const/4 v9, 0x0

    .line 7991
    iget v10, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v10, :cond_0

    .line 8024
    :goto_0
    return-void

    .line 7993
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 7994
    .local v6, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 7995
    .local v0, height:I
    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    int-to-float v10, v10

    add-float/2addr v10, p1

    float-to-int v10, v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 7996
    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    int-to-float v10, v10

    add-float/2addr v10, p2

    float-to-int v10, v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 7997
    iget v10, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int v1, v6, v10

    .line 7998
    .local v1, maxX:I
    iget v10, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int v2, v0, v10

    .line 7999
    .local v2, maxY:I
    iget v10, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/lit8 v10, v10, -0x10

    iget v11, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 8001
    iget v10, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/lit8 v10, v10, -0x10

    iget v11, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 8013
    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v10

    iget v11, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 8014
    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v11, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ge v10, v11, :cond_1

    move v3, v7

    .line 8017
    .local v3, scrollX:I
    :goto_1
    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v11, p0, Landroid/webkit/WebView;->mScrollY:I

    if-ge v10, v11, :cond_3

    move v4, v7

    .line 8020
    .local v4, scrollY:I
    :goto_2
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v9}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 8021
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8022
    .local v5, select:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 8023
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 8014
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    .end local v5           #select:Landroid/graphics/Rect;
    :cond_1
    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v11, v1, -0x10

    if-le v10, v11, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    move v3, v9

    goto :goto_1

    .line 8017
    .restart local v3       #scrollX:I
    :cond_3
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v2, -0x10

    if-le v7, v10, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v9

    goto :goto_2
.end method

.method myScrollTo(IIZI)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 12129
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 12130
    return-void
.end method

.method myonScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 14248
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 14249
    return-void
.end method

.method native nativeClearCursor()V
.end method

.method native nativeFocusCandidateFramePointer()I
.end method

.method native nativeFocusCandidateHasNextTextfield()Z
.end method

.method native nativeFocusCandidateIsAutoComplete()Z
.end method

.method native nativeFocusCandidateIsPassword()Z
.end method

.method native nativeFocusCandidateIsSpellcheck()Z
.end method

.method native nativeFocusCandidateLineHeight()I
.end method

.method native nativeFocusCandidateMaxLength()I
.end method

.method native nativeFocusCandidateName()Ljava/lang/String;
.end method

.method native nativeFocusCandidatePointer()I
.end method

.method native nativeFocusCandidateTextSize()F
.end method

.method native nativeFocusNodePointer()I
.end method

.method native nativeGetBlockLeftEdge(IIF)I
.end method

.method native nativeGetFirstMatch()Landroid/graphics/Rect;
.end method

.method native nativeGetHitTestNodeSafely(II)I
.end method

.method native nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public nativeGetRssFeed()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14711
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetRssFeed()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method native nativeGetSelectionEnd(Landroid/graphics/Rect;)V
.end method

.method public nativeHasRssFeed()Z
    .locals 1

    .prologue
    .line 14708
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeHasRssFeed()Z

    move-result v0

    goto :goto_0
.end method

.method native nativeMoveCursorToNextTextInput()Z
.end method

.method native nativeResetSelection()V
.end method

.method native nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method native nativeSmartHorizontalScroll(III)Z
.end method

.method native nativeStartSelection(II)Z
.end method

.method notifyFindDialogDismissed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3956
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 3957
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 3958
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 3967
    :goto_0
    return-void

    .line 3961
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 3962
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3965
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3966
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6393
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 6394
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 6395
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 6396
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    if-nez v1, :cond_1

    .line 6397
    new-instance v1, Landroid/webkit/WebView$InnerGlobalLayoutListener;

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebView$InnerGlobalLayoutListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    .line 6398
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6400
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    if-nez v1, :cond_2

    .line 6401
    new-instance v1, Landroid/webkit/WebView$InnerScrollChangedListener;

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebView$InnerScrollChangedListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    .line 6402
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 6405
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->addAccessibilityApisToJavaScript()V

    .line 6407
    iget-object v1, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v1}, Landroid/webkit/WebView$TouchEventQueue;->reset()V

    .line 6408
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6447
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6454
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 5079
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 5081
    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-nez v0, :cond_0

    .line 5083
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 5084
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 5086
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/webkit/WebView;->mOrientation:I

    .line 5087
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_1

    .line 5088
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5090
    :cond_1
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 5512
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5513
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5514
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6412
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 6413
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 6414
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 6416
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 6417
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    if-eqz v1, :cond_1

    .line 6418
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6419
    iput-object v2, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    .line 6421
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    if-eqz v1, :cond_2

    .line 6422
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 6423
    iput-object v2, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    .line 6426
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->removeAccessibilityApisFromJavaScript()V

    .line 6428
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 6429
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .parameter "canvas"

    .prologue
    .line 4658
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    .line 4659
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4943
    :cond_0
    :goto_0
    return-void

    .line 4666
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v3, v6

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v3, :cond_2

    .line 4667
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 4671
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4672
    sget-boolean v3, Landroid/webkit/WebView;->mIncrementEGLContextHack:Z

    if-nez v3, :cond_3

    .line 4673
    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebView;->mIncrementEGLContextHack:Z

    .line 4674
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v21

    check-cast v21, Ljavax/microedition/khronos/egl/EGL10;

    .line 4675
    .local v21, egl:Ljavax/microedition/khronos/egl/EGL10;
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v22

    .line 4676
    .local v22, eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v35, v0

    .line 4677
    .local v35, version:[I
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 4679
    .end local v21           #egl:Ljavax/microedition/khronos/egl/EGL10;
    .end local v22           #eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v35           #version:[I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->setHardwareAccelerated()V

    .line 4682
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v30

    .line 4683
    .local v30, saveCount:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4685
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->drawOverScrollBackground(Landroid/graphics/Canvas;)V

    .line 4687
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 4688
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4693
    :cond_6
    sget-boolean v3, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    .line 4694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/webkit/WebView;->mStartTime:J

    sub-long v33, v6, v8

    .line 4696
    .local v33, timeInterval:J
    const/16 v32, 0x0

    .line 4697
    .local v32, scale:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mZoomInDuration:I

    int-to-long v6, v3

    cmp-long v3, v33, v6

    if-gtz v3, :cond_9

    .line 4699
    move-wide/from16 v0, v33

    long-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mZoomInDuration:I

    int-to-float v6, v6

    div-float v28, v3, v6

    .line 4700
    .local v28, r:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mOriginalScale:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mIntervalScale:F

    mul-float v6, v6, v28

    add-float v32, v3, v6

    .line 4713
    .end local v28           #r:F
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    const/4 v6, 0x1

    if-eq v3, v6, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mfTabRatio:F

    cmpg-float v3, v32, v3

    if-gez v3, :cond_8

    .line 4714
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mfTabRatio:F

    move/from16 v32, v0

    .line 4716
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->AnimationZoomOutDraw(Landroid/graphics/Canvas;F)V

    .line 4717
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4719
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bNeedInvokeTabDialog:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    .line 4720
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->m_bNeedInvokeTabDialog:Z

    .line 4721
    sget-object v3, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/webkit/WebView;->mbNeedCallBack:Z

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v6}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onMultiTouchBouncingMinScale(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 4710
    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    goto :goto_1

    .line 4725
    :cond_a
    sget-object v3, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 4726
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->m_bNeedInvokeTabDialog:Z

    .line 4727
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 4736
    .end local v32           #scale:F
    .end local v33           #timeInterval:J
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsTouchOnScreen:Z

    if-nez v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1a

    :cond_e
    const/4 v14, 0x1

    .line 4742
    .local v14, animateScroll:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v23

    .line 4744
    .local v23, isHWacc:Z
    const/4 v15, 0x0

    .line 4745
    .local v15, cacheDraw:Z
    const/16 v16, 0x0

    .line 4746
    .local v16, canvasOld:Landroid/graphics/Canvas;
    if-nez v14, :cond_12

    if-nez v23, :cond_12

    .line 4747
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    if-eqz v3, :cond_10

    .line 4748
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_10

    .line 4750
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_f

    .line 4751
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 4752
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 4754
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    .line 4755
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4758
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 4759
    .local v29, rcDraw:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4760
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTitleBarHeight:I

    .line 4762
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    .line 4763
    .local v17, display:Landroid/view/Display;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getHeight()I

    move-result v26

    .line 4764
    .local v26, nScreenHeight:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getWidth()I

    move-result v27

    .line 4768
    .local v27, nScreenWidth:I
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4777
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_10

    .line 4778
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    .line 4787
    .end local v17           #display:Landroid/view/Display;
    .end local v26           #nScreenHeight:I
    .end local v27           #nScreenWidth:I
    .end local v29           #rcDraw:Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1b

    const/4 v15, 0x1

    .line 4788
    :goto_4
    if-eqz v15, :cond_1c

    .line 4789
    move-object/from16 v16, p1

    .line 4790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    move-object/from16 p1, v0

    .line 4803
    :cond_11
    :goto_5
    if-eqz v16, :cond_12

    .line 4804
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 4805
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4811
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x5

    if-eq v3, v6, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x7

    if-ne v3, v6, :cond_1e

    :cond_13
    const/16 v18, 0x1

    .line 4816
    .local v18, drawJavaRings:Z
    :goto_6
    if-nez v18, :cond_1f

    const/16 v19, 0x1

    .line 4820
    .local v19, drawNativeRings:Z
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;Z)V

    .line 4824
    const/16 v25, 0x0

    .line 4825
    .local v25, nHostStatusbarHeight:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_14

    .line 4826
    sget-boolean v3, Landroid/webkit/WebView;->m_bHostFullScreenMode:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_20

    const/16 v25, 0x0

    .line 4827
    :cond_14
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-nez v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v3

    add-int v3, v3, v25

    if-lez v3, :cond_15

    .line 4828
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int/lit16 v3, v3, -0xc8

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v6

    add-int v6, v6, v25

    add-int/lit16 v6, v6, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v6

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    add-int/lit16 v7, v7, 0xc8

    const/4 v8, 0x0

    invoke-direct {v13, v3, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4830
    .local v13, DrawRect:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 4831
    .local v12, DrawPaint:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4832
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v3, v3, Landroid/webkit/ZoomManager;->m_bEnableMTBouncingToTabMode:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_22

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_22

    .line 4833
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x10

    if-ne v3, v6, :cond_21

    .line 4834
    const/4 v3, -0x1

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4845
    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4848
    .end local v12           #DrawPaint:Landroid/graphics/Paint;
    .end local v13           #DrawRect:Landroid/graphics/Rect;
    :cond_15
    if-nez v14, :cond_16

    if-nez v23, :cond_16

    .line 4852
    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_23

    .line 4859
    move-object/from16 p1, v16

    .line 4860
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v31

    .line 4862
    .local v31, sc2:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    const/4 v6, 0x2

    aget v3, v3, v6

    neg-float v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    neg-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4863
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4864
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4874
    .end local v31           #sc2:I
    :cond_16
    :goto_a
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4879
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    .line 4881
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/webkit/OverScrollGlow;->drawEdgeGlows(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4882
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4886
    :cond_17
    if-eqz v18, :cond_18

    .line 4887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/webkit/WebView;->mTouchHighlightRequested:J

    sub-long v4, v6, v8

    .line 4888
    .local v4, delay:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_25

    .line 4889
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v28

    .line 4890
    .local v28, r:Landroid/graphics/Rect;
    move-object/from16 v0, v28

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v28

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v28

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v28

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 4904
    .end local v4           #delay:J
    .end local v28           #r:Landroid/graphics/Rect;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4905
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    or-int/2addr v3, v6

    if-eqz v3, :cond_0

    .line 4906
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    if-nez v3, :cond_19

    .line 4907
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    .line 4908
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    const/high16 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 4910
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int/2addr v3, v6

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int/2addr v3, v6

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v9, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4914
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int/2addr v3, v6

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int/2addr v3, v6

    int-to-float v9, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 4736
    .end local v14           #animateScroll:Z
    .end local v15           #cacheDraw:Z
    .end local v16           #canvasOld:Landroid/graphics/Canvas;
    .end local v18           #drawJavaRings:Z
    .end local v19           #drawNativeRings:Z
    .end local v23           #isHWacc:Z
    .end local v25           #nHostStatusbarHeight:I
    :cond_1a
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 4769
    .restart local v14       #animateScroll:Z
    .restart local v15       #cacheDraw:Z
    .restart local v16       #canvasOld:Landroid/graphics/Canvas;
    .restart local v17       #display:Landroid/view/Display;
    .restart local v23       #isHWacc:Z
    .restart local v26       #nScreenHeight:I
    .restart local v27       #nScreenWidth:I
    .restart local v29       #rcDraw:Landroid/graphics/Rect;
    :catch_0
    move-exception v20

    .line 4770
    .local v20, e:Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "webview"

    const-string v6, "Out of memory, abort createing cache bitmap"

    move-object/from16 v0, v20

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4771
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 4772
    .end local v20           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v20

    .line 4773
    .local v20, e:Ljava/lang/NullPointerException;
    const-string/jumbo v3, "webview"

    const-string/jumbo v6, "null pointer"

    move-object/from16 v0, v20

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4774
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 4787
    .end local v17           #display:Landroid/view/Display;
    .end local v20           #e:Ljava/lang/NullPointerException;
    .end local v26           #nScreenHeight:I
    .end local v27           #nScreenWidth:I
    .end local v29           #rcDraw:Landroid/graphics/Rect;
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 4793
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-nez v3, :cond_11

    .line 4795
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1d

    .line 4796
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 4797
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 4799
    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5

    .line 4811
    :cond_1e
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 4816
    .restart local v18       #drawJavaRings:Z
    :cond_1f
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 4826
    .restart local v19       #drawNativeRings:Z
    .restart local v25       #nHostStatusbarHeight:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x105000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    goto/16 :goto_8

    .line 4836
    .restart local v12       #DrawPaint:Landroid/graphics/Paint;
    .restart local v13       #DrawRect:Landroid/graphics/Rect;
    :cond_21
    const/high16 v3, -0x100

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_9

    .line 4843
    :cond_22
    const v3, -0x777778

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_9

    .line 4866
    .end local v12           #DrawPaint:Landroid/graphics/Paint;
    .end local v13           #DrawRect:Landroid/graphics/Rect;
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-nez v3, :cond_24

    if-nez v14, :cond_24

    .line 4867
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    .line 4869
    :cond_24
    const/4 v15, 0x0

    .line 4870
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    .line 4892
    .restart local v4       #delay:J
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_26

    .line 4893
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    .line 4894
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    sget v6, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 4896
    :cond_26
    new-instance v24, Landroid/graphics/RegionIterator;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 4897
    .local v24, iter:Landroid/graphics/RegionIterator;
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 4898
    .restart local v28       #r:Landroid/graphics/Rect;
    :goto_b
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4899
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_b
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3477
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3478
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr p4, v0

    .line 3480
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3481
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3482
    return-void
.end method

.method onFixedLengthZoomAnimationEnd()V
    .locals 1

    .prologue
    .line 5225
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_0

    .line 5226
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5228
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationEnd()V

    .line 5235
    return-void
.end method

.method onFixedLengthZoomAnimationStart()V
    .locals 1

    .prologue
    .line 5220
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5221
    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationStart()V

    .line 5222
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6567
    if-eqz p1, :cond_2

    .line 6570
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6571
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 6572
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    .line 6588
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 6589
    return-void

    .line 6581
    :cond_2
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 6582
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6583
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    .line 6585
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 7837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 7838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 7859
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 7842
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 7843
    const/4 v3, 0x0

    .line 7844
    .local v3, vscroll:F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 7849
    .local v1, hscroll:F
    :goto_1
    cmpl-float v4, v1, v5

    if-nez v4, :cond_1

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_0

    .line 7850
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v2, v4

    .line 7851
    .local v2, vdelta:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 7852
    .local v0, hdelta:I
    invoke-direct {p0, v0, v2, v6, v6}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7853
    const/4 v4, 0x1

    goto :goto_0

    .line 7846
    .end local v0           #hdelta:I
    .end local v1           #hscroll:F
    .end local v2           #vdelta:I
    .end local v3           #vscroll:F
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v3, v4

    .line 7847
    .restart local v3       #vscroll:F
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_1

    .line 7838
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6462
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 6824
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    .line 6825
    const/4 v1, 0x0

    .line 6831
    :goto_0
    return v1

    .line 6827
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorDataNoPosition()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v0

    .line 6828
    .local v0, data:Landroid/webkit/WebViewCore$CursorData;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 6829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 6830
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x87

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6831
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 1487
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1488
    invoke-direct {p0}, Landroid/webkit/WebView;->isScrollableForAccessibility()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1489
    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1490
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1491
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    .line 1492
    .local v3, convertedContentWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/webkit/WebView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/webkit/WebView;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1493
    .local v1, adjustedViewWidth:I
    sub-int v4, v3, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1494
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    .line 1495
    .local v2, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/webkit/WebView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/webkit/WebView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1496
    .local v0, adjustedViewHeight:I
    sub-int v4, v2, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1497
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1481
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1482
    invoke-direct {p0}, Landroid/webkit/WebView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1483
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v11, -0x1

    const/16 v6, 0x67

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5845
    iput-boolean v5, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    .line 5847
    iput-boolean v5, p0, Landroid/webkit/WebView;->willSelectWord:Z

    .line 5849
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v0, :cond_1

    move v4, v5

    .line 6049
    :cond_0
    :goto_0
    return v4

    .line 5854
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v5

    .line 5855
    goto :goto_0

    .line 5858
    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_3

    move v4, v5

    .line 5859
    goto :goto_0

    .line 5874
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v4, v5

    .line 5876
    goto :goto_0

    .line 5880
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->accessibilityScriptInjected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5881
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5885
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v6, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 5889
    :cond_6
    iput-boolean v5, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    .line 5905
    :cond_7
    :goto_1
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_b

    .line 5906
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5907
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto :goto_0

    .line 5891
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-eqz v0, :cond_7

    .line 5892
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5893
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    invoke-virtual {v0, p2}, Landroid/webkit/AccessibilityInjector;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 5901
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_1

    .line 5909
    :cond_a
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5910
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto :goto_0

    .line 5915
    :cond_b
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_d

    .line 5916
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5917
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto :goto_0

    .line 5919
    :cond_c
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5920
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    .line 5925
    :cond_d
    const/16 v0, 0x7a

    if-ne p1, v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5926
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto/16 :goto_0

    .line 5930
    :cond_e
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5931
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    .line 5935
    :cond_f
    const/16 v0, 0x13

    if-lt p1, v0, :cond_19

    const/16 v0, 0x16

    if-gt p1, v0, :cond_19

    .line 5937
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5938
    invoke-direct {p0}, Landroid/webkit/WebView;->nativePageShouldHandleShiftAndArrows()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5939
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    goto/16 :goto_0

    .line 5944
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5946
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v6, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5952
    :cond_11
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5953
    packed-switch p1, :pswitch_data_0

    .line 5968
    :cond_12
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_17

    .line 5969
    const/16 v0, 0x15

    if-ne p1, v0, :cond_13

    move v10, v11

    .line 5971
    .local v10, xRate:I
    :goto_2
    const/16 v0, 0x13

    if-ne p1, v0, :cond_15

    .line 5973
    .local v11, yRate:I
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 5974
    .local v8, multiplier:I
    mul-int v0, v10, v8

    int-to-float v0, v0

    mul-int v1, v11, v8

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->moveSelection(FF)V

    goto/16 :goto_0

    .line 5955
    .end local v8           #multiplier:I
    .end local v10           #xRate:I
    .end local v11           #yRate:I
    :pswitch_0
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto/16 :goto_0

    .line 5958
    :pswitch_1
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    .line 5961
    :pswitch_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 5962
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v5, v0, v4, v5}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v4

    goto/16 :goto_0

    .line 5964
    :pswitch_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 5965
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v0, v1, v4, v5}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v4

    goto/16 :goto_0

    .line 5969
    :cond_13
    const/16 v0, 0x16

    if-ne p1, v0, :cond_14

    move v10, v4

    goto :goto_2

    :cond_14
    move v10, v5

    goto :goto_2

    .line 5971
    .restart local v10       #xRate:I
    :cond_15
    const/16 v0, 0x14

    if-ne p1, v0, :cond_16

    move v11, v4

    goto :goto_3

    :cond_16
    move v11, v5

    goto :goto_3

    .line 5977
    .end local v10           #xRate:I
    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5978
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_18
    move v4, v5

    .line 5982
    goto/16 :goto_0

    .line 5985
    :cond_19
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1d

    .line 5986
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5987
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    move v9, v4

    .line 5989
    .local v9, wantsKeyEvents:Z
    :goto_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1b

    .line 5990
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_0

    .line 5993
    iput-boolean v4, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5994
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5996
    if-eqz v9, :cond_0

    .line 5999
    :cond_1b
    if-nez v9, :cond_1d

    move v4, v5

    goto/16 :goto_0

    .end local v9           #wantsKeyEvents:Z
    :cond_1c
    move v9, v5

    .line 5987
    goto :goto_4

    .line 6002
    :cond_1d
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6003
    packed-switch p1, :pswitch_data_1

    .line 6021
    :cond_1e
    :goto_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6024
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x79

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6028
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 6030
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6031
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 6032
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 6005
    :pswitch_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_5

    .line 6009
    :pswitch_5
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1f

    move v5, v4

    :cond_1f
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_5

    .line 6013
    :pswitch_6
    const/16 v0, 0xe

    if-ne p1, v0, :cond_20

    move v5, v4

    :cond_20
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_5

    .line 6016
    :pswitch_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    goto/16 :goto_0

    .line 6034
    :cond_21
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasFocusNode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6037
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 6038
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6039
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 6040
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 6045
    :cond_22
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_23

    .line 6047
    :cond_23
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v6, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5953
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 6003
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 5816
    iget-boolean v1, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v1, :cond_1

    .line 5827
    :cond_0
    :goto_0
    return v0

    .line 5820
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5822
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5823
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5825
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x68

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 6062
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v0, :cond_1

    .line 6188
    :cond_0
    :goto_0
    return v4

    .line 6066
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 6071
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6072
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v8

    .line 6073
    .local v8, text:Ljava/lang/String;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v8, :cond_2

    const-string/jumbo v0, "tel:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6075
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6076
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v10

    .line 6077
    goto :goto_0

    .line 6084
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #text:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6090
    invoke-direct {p0}, Landroid/webkit/WebView;->accessibilityScriptInjected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6091
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6095
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v10

    .line 6096
    goto :goto_0

    .line 6099
    :cond_3
    iput-boolean v4, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    .line 6115
    :cond_4
    :goto_1
    const/16 v0, 0x13

    if-lt p1, v0, :cond_8

    const/16 v0, 0x16

    if-gt p1, v0, :cond_8

    .line 6117
    invoke-direct {p0}, Landroid/webkit/WebView;->nativePageShouldHandleShiftAndArrows()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6118
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    move v4, v10

    .line 6119
    goto :goto_0

    .line 6101
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-eqz v0, :cond_4

    .line 6102
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6103
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    invoke-virtual {v0, p2}, Landroid/webkit/AccessibilityInjector;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v10

    .line 6107
    goto/16 :goto_0

    .line 6111
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_1

    .line 6123
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6125
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v10

    .line 6127
    goto/16 :goto_0

    .line 6136
    :cond_8
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->isEnterActionKey(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6138
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6139
    iput-boolean v4, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 6141
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_a

    .line 6142
    iget-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v0, :cond_9

    .line 6143
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 6144
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_2
    move v4, v10

    .line 6150
    goto/16 :goto_0

    .line 6146
    :cond_9
    iput-boolean v10, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 6147
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 6148
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_2

    .line 6154
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 6157
    .local v9, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v9}, Landroid/webkit/WebView;->nativeCursorIntersects(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6160
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v6

    .line 6161
    .local v6, data:Landroid/webkit/WebViewCore$CursorData;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6162
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 6163
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6164
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 6165
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 6166
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6167
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    :cond_b
    move v4, v10

    .line 6169
    goto/16 :goto_0

    .line 6171
    :cond_c
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 6172
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeShowCursorTimed()V

    .line 6173
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v4, v10

    .line 6174
    goto/16 :goto_0

    .line 6176
    :cond_d
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_e

    .line 6177
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    iget v2, v6, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    move v4, v10

    .line 6179
    goto/16 :goto_0

    .line 6184
    .end local v6           #data:Landroid/webkit/WebViewCore$CursorData;
    .end local v9           #visibleRect:Landroid/graphics/Rect;
    :cond_e
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_f

    .line 6186
    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v10

    .line 6188
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x100

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 8743
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 8745
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 8746
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 8747
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 8748
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 8750
    .local v7, widthSize:I
    move v4, v3

    .line 8751
    .local v4, measuredHeight:I
    move v5, v7

    .line 8754
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    .line 8755
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 8759
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_2

    .line 8760
    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 8761
    move v4, v0

    .line 8762
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_0

    .line 8765
    if-le v4, v3, :cond_0

    .line 8766
    move v4, v3

    .line 8767
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 8768
    or-int/2addr v4, v11

    .line 8774
    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_1

    .line 8775
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    .line 8778
    :cond_1
    if-nez v6, :cond_3

    .line 8779
    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    .line 8780
    move v5, v1

    .line 8788
    :goto_1
    monitor-enter p0

    .line 8789
    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 8790
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8791
    return-void

    .line 8772
    :cond_2
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_0

    .line 8782
    :cond_3
    if-ge v5, v1, :cond_4

    .line 8783
    or-int/2addr v5, v11

    .line 8785
    :cond_4
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_1

    .line 8790
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v2, 0x1

    .line 3489
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 3490
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->scrollLayerTo(II)V

    .line 3514
    :cond_0
    :goto_0
    return-void

    .line 3493
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3494
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 3495
    .local v5, maxX:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 3496
    .local v6, maxY:I
    if-nez v5, :cond_5

    .line 3498
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3502
    :cond_2
    :goto_1
    if-ltz p2, :cond_3

    if-le p2, v6, :cond_4

    .line 3503
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3506
    :cond_4
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3507
    .local v3, oldX:I
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3509
    .local v4, oldY:I
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    .line 3511
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_0

    .line 3512
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->pullGlow(IIIIII)V

    goto :goto_0

    .line 3499
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    :cond_5
    if-ltz p1, :cond_6

    if-le p1, v5, :cond_2

    .line 3500
    :cond_6
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    goto :goto_1
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 4165
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4169
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v0, :cond_0

    .line 4171
    const/4 v0, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 4174
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 4176
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onPageFinished(Ljava/lang/String;)V

    .line 4177
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->injectAccessibilityForUrl(Ljava/lang/String;)V

    .line 4178
    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 4153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 4157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    .line 4158
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3653
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3654
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-nez v0, :cond_2

    .line 3655
    iput-boolean v2, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3656
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3659
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 3660
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    .line 3662
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_1

    .line 3663
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    .line 3666
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelSelectDialog()V

    .line 3673
    :goto_0
    return-void

    .line 3670
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    .line 6787
    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationEnd()V

    .line 6792
    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeFPDoPlay()V

    .line 6793
    invoke-virtual {p0}, Landroid/webkit/WebView;->fnResumePlayGifAnimation()V

    .line 6795
    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6796
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 6797
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iget-wide v2, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 6800
    return-void
.end method

.method onPinchToZoomAnimationStart()V
    .locals 0

    .prologue
    .line 6782
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6783
    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationStart()V

    .line 6784
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3696
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3697
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 3698
    iput-boolean v2, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3699
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3700
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 3701
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    .line 3709
    :cond_0
    :goto_0
    return-void

    .line 3706
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    .line 1546
    const/4 v1, 0x0

    .line 1547
    .local v1, rVal:Z
    if-nez p4, :cond_0

    .line 1549
    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :goto_0
    return v1

    .line 1551
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1553
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1558
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1560
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1566
    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040320

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104036b

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104036c

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104036d

    new-instance v5, Landroid/webkit/WebView$4;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104036e

    new-instance v5, Landroid/webkit/WebView$3;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$2;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    .line 1596
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v3, 0x0

    .line 6667
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 6668
    iget-boolean v1, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-nez v1, :cond_0

    .line 6669
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 6672
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 6673
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 6674
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 6677
    .end local v0           #titleHeight:I
    :cond_0
    return-void
.end method

.method protected onSelectTextEnd()V
    .locals 0

    .prologue
    .line 14863
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 6635
    const/4 v1, 0x1

    iget v2, p0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6636
    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    check-cast v1, Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectWV;->pauseSelection()V

    .line 6640
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 6645
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getDefaultMinZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 6646
    .local v0, newMaxViewportWidth:I
    sget v1, Landroid/webkit/WebView;->sMaxViewportWidth:I

    if-le v0, v1, :cond_1

    .line 6647
    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 6650
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/ZoomManager;->onSizeChanged(IIII)V

    .line 6652
    iget-object v1, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-nez v1, :cond_2

    .line 6656
    iget-object v1, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 6660
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    if-nez v1, :cond_3

    .line 6661
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    .line 6663
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/16 v7, 0xa

    const/4 v5, 0x1

    .line 6836
    iget v6, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 6837
    :cond_0
    const/4 v5, 0x0

    .line 6901
    :cond_1
    :goto_0
    return v5

    .line 6858
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 6859
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 6860
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 6861
    .local v4, y:I
    iget v6, p0, Landroid/webkit/WebView;->mLastTouchX:I

    sub-int v0, v6, v3

    .line 6862
    .local v0, deltaX:I
    iget v6, p0, Landroid/webkit/WebView;->mLastTouchY:I

    sub-int v1, v6, v4

    .line 6863
    .local v1, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v7, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v7, :cond_4

    .line 6864
    :cond_3
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x8a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 6869
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_4
    iget v6, p0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v5, v6, :cond_5

    iget-object v6, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v6}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6870
    iget-object v2, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    check-cast v2, Landroid/webkit/WebView$QuickSelectWV;

    .line 6871
    .local v2, quickSelect:Landroid/webkit/WebView$QuickSelectWV;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v5, :cond_6

    .line 6872
    iget-object v6, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v6}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v6

    sget-object v7, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v6, v7, :cond_1

    .line 6876
    invoke-virtual {v2}, Landroid/webkit/WebView$QuickSelectWV;->pauseSelection()V

    .line 6877
    iget-object v6, v2, Landroid/webkit/WebView$QuickSelectWV;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v7, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 6894
    .end local v2           #quickSelect:Landroid/webkit/WebView$QuickSelectWV;
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v5, :cond_7

    iget v6, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-eqz v6, :cond_7

    .line 6895
    iget-object v6, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v6}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Landroid/webkit/WebView;->passMultiTouchToWebKit(Landroid/view/MotionEvent;J)V

    goto :goto_0

    .line 6879
    .restart local v2       #quickSelect:Landroid/webkit/WebView$QuickSelectWV;
    :cond_6
    iget-boolean v6, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_5

    iget-object v6, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getZoomScale()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/webkit/ZoomManager;->isScaleOverLimits(F)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6883
    invoke-virtual {v2}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelection()V

    goto :goto_1

    .line 6897
    .end local v2           #quickSelect:Landroid/webkit/WebView$QuickSelectWV;
    :cond_7
    iget-object v6, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v6, p1}, Landroid/webkit/WebView$TouchEventQueue;->enqueueTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7908
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 7909
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 7910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 7911
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 7987
    :cond_1
    :goto_0
    return v2

    .line 7914
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_6

    .line 7915
    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v4, :cond_1

    .line 7918
    iput-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 7919
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_3

    move v2, v3

    .line 7920
    goto :goto_0

    .line 7922
    :cond_3
    iget-wide v4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    sub-long v4, v0, v4

    cmp-long v2, v4, v6

    if-gtz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7924
    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 7931
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_5
    move v2, v3

    .line 7932
    goto :goto_0

    .line 7934
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_9

    .line 7936
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 7937
    iput-boolean v3, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 7938
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 7939
    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v4, :cond_8

    .line 7940
    iget-boolean v3, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v3, :cond_7

    .line 7941
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 7942
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    goto :goto_0

    .line 7944
    :cond_7
    iput-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 7945
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 7946
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    :cond_8
    move v2, v3

    .line 7955
    goto :goto_0

    .line 7957
    :cond_9
    iget-boolean v4, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v2, v3

    .line 7960
    goto :goto_0

    .line 7962
    :cond_c
    iget-boolean v4, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v4, :cond_1

    .line 7966
    iget-wide v4, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 7971
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 7972
    iget-wide v4, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_d

    .line 7977
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 7978
    iput v3, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v3, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 7980
    :cond_d
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 7984
    iget v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7985
    iget v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 7986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->doTrackball(JI)V

    goto/16 :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 6433
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 6436
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_0

    .line 6437
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 6439
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateDrawingState()V

    .line 6440
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 6526
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 6527
    if-eqz p1, :cond_1

    .line 6528
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebView;)V

    .line 6529
    iget-boolean v1, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    if-eqz v1, :cond_0

    .line 6530
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6531
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    .line 6542
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 6543
    return-void

    .line 6534
    :cond_1
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebView;)V

    .line 6535
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 6536
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6538
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6539
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 3677
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    .line 3678
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateDrawingState()V

    .line 3679
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 11
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 12085
    sget v9, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    sget v9, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_0

    .line 12086
    invoke-super/range {p0 .. p9}, Landroid/widget/AbsoluteLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v9

    .line 12125
    :goto_0
    return v9

    .line 12088
    :cond_0
    add-int v5, p3, p1

    .line 12089
    .local v5, newScrollX:I
    add-int v6, p4, p2

    .line 12090
    .local v6, newScrollY:I
    if-gez v6, :cond_1

    sget-boolean v9, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    if-eqz v9, :cond_2

    :cond_1
    move/from16 v0, p6

    if-le v6, v0, :cond_7

    sget-boolean v9, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    if-nez v9, :cond_7

    .line 12092
    :cond_2
    const/16 p8, 0x0

    .line 12097
    :cond_3
    :goto_1
    const/16 p7, 0x0

    .line 12100
    move/from16 v0, p7

    neg-int v4, v0

    .line 12101
    .local v4, left:I
    add-int v7, p7, p5

    .line 12102
    .local v7, right:I
    move/from16 v0, p8

    neg-int v8, v0

    .line 12103
    .local v8, top:I
    add-int v1, p8, p6

    .line 12105
    .local v1, bottom:I
    const/4 v2, 0x0

    .line 12106
    .local v2, clampedX:Z
    if-le v5, v7, :cond_8

    .line 12107
    move v5, v7

    .line 12108
    const/4 v2, 0x1

    .line 12114
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 12115
    .local v3, clampedY:Z
    if-le v6, v1, :cond_9

    .line 12116
    move v6, v1

    .line 12117
    const/4 v3, 0x1

    .line 12123
    :cond_5
    :goto_3
    invoke-virtual {p0, v5, v6, v2, v3}, Landroid/webkit/WebView;->onOverScrolled(IIZZ)V

    .line 12125
    if-nez v2, :cond_6

    if-eqz v3, :cond_a

    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    .line 12094
    .end local v1           #bottom:I
    .end local v2           #clampedX:Z
    .end local v3           #clampedY:Z
    .end local v4           #left:I
    .end local v7           #right:I
    .end local v8           #top:I
    :cond_7
    if-lez v6, :cond_3

    move/from16 v0, p6

    if-ge v6, v0, :cond_3

    .line 12095
    const/4 v9, 0x0

    sput-boolean v9, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    sput-boolean v9, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    goto :goto_1

    .line 12109
    .restart local v1       #bottom:I
    .restart local v2       #clampedX:Z
    .restart local v4       #left:I
    .restart local v7       #right:I
    .restart local v8       #top:I
    :cond_8
    if-ge v5, v4, :cond_4

    .line 12110
    move v5, v4

    .line 12111
    const/4 v2, 0x1

    goto :goto_2

    .line 12118
    .restart local v3       #clampedY:Z
    :cond_9
    if-ge v6, v8, :cond_5

    .line 12119
    move v6, v8

    .line 12120
    const/4 v3, 0x1

    goto :goto_3

    .line 12125
    :cond_a
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 1635
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1636
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 1644
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1645
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2673
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2674
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    .line 2689
    :goto_0
    return v2

    .line 2677
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2678
    if-eqz p1, :cond_1

    .line 2679
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v4

    invoke-direct {p0, v3, v4, v5, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2682
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2684
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 2685
    add-int/lit8 v1, v0, -0x18

    .line 2689
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v5, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2687
    .end local v1           #y:I
    :cond_2
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2689
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected pageLayerChangedCallBack(Z)V
    .locals 3
    .parameter "isChanged"

    .prologue
    const/16 v2, 0x132

    .line 10142
    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeIsSwapToChangedLayer()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 10144
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10145
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10146
    iget v0, p0, Landroid/webkit/WebView;->mPendingScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mPendingScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 10147
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 10150
    :cond_0
    return-void
.end method

.method protected pageSwapCallback(Z)V
    .locals 2
    .parameter "notifyAnimationStarted"

    .prologue
    .line 10131
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10132
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    .line 10134
    :cond_0
    if-eqz p1, :cond_1

    .line 10135
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 10137
    :cond_1
    return-void
.end method

.method public pageUp(Z)Z
    .locals 5
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2646
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2647
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    .line 2663
    :goto_0
    return v2

    .line 2650
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2651
    if-eqz p1, :cond_1

    .line 2653
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v3, v2, v4, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2656
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2658
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 2659
    neg-int v3, v0

    add-int/lit8 v1, v3, 0x18

    .line 2663
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v4, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2661
    .end local v1           #y:I
    :cond_2
    neg-int v3, v0

    div-int/lit8 v1, v3, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2663
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 8877
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    .line 8893
    :goto_0
    return-void

    .line 8880
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 8881
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 8882
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 8884
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 8885
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 8890
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 8891
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0
.end method

.method public pauseAll()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 13893
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-ne v0, v1, :cond_1

    .line 13913
    :cond_0
    :goto_0
    return-void

    .line 13896
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    if-ne v0, v1, :cond_2

    .line 13897
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-boolean v2, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 13898
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput v2, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 13906
    :cond_2
    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    .line 13907
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 13909
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 13911
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0
.end method

.method public pauseFPDoPlay()V
    .locals 2

    .prologue
    .line 14726
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-nez v0, :cond_0

    .line 14730
    :goto_0
    return-void

    .line 14728
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 14729
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public pauseTextReflow(I)V
    .locals 3
    .parameter "nTextWrapWidth"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 12164
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    if-ne v0, v1, :cond_1

    .line 12178
    :cond_0
    :goto_0
    return-void

    .line 12167
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    .line 12168
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->forceBreakWord(Z)V

    .line 12169
    if-lez p1, :cond_2

    .line 12170
    iput p1, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    .line 12171
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    if-eq v0, v1, :cond_0

    .line 12172
    iput v2, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 12173
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto :goto_0

    .line 12176
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 3623
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3625
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 3629
    :cond_0
    :goto_0
    return-void

    .line 3628
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 4964
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5048
    :cond_0
    :goto_0
    return v4

    .line 4972
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v9

    .line 4973
    .local v9, detector:Landroid/view/ScaleGestureDetector;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4977
    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4979
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 4980
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4984
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4986
    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v0, :cond_3

    .line 4987
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 4992
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->ensureLayout()V

    .line 4995
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 4997
    .local v14, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    iget-wide v2, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v6, v14, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v7, v14, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 5001
    .local v10, fake:Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v10}, Landroid/webkit/WebTextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5002
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->performLongClick()Z

    move-result v4

    goto :goto_0

    .line 4982
    .end local v10           #fake:Landroid/view/MotionEvent;
    .end local v14           #params:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    goto :goto_1

    .line 5004
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_6

    .line 5006
    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v0, :cond_0

    .line 5007
    iput v13, p0, Landroid/webkit/WebView;->mTouchMode:I

    move v4, v13

    .line 5008
    goto :goto_0

    .line 5015
    :cond_6
    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    if-nez v0, :cond_9

    .line 5016
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 5017
    .local v8, cursorRing:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v13

    .line 5018
    goto/16 :goto_0

    .line 5020
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-static {v8, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    .line 5022
    .local v12, isCursorRingVisible:Z
    if-eqz v12, :cond_8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v4, v13

    .line 5024
    goto/16 :goto_0

    .line 5026
    .end local v8           #cursorRing:Landroid/graphics/Rect;
    .end local v12           #isCursorRingVisible:Z
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    :cond_a
    move v11, v13

    .line 5034
    .local v11, forceSelect:Z
    :goto_2
    if-nez v11, :cond_c

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5036
    iput-boolean v13, p0, Landroid/webkit/WebView;->willSelectWord:Z

    move v4, v13

    .line 5038
    goto/16 :goto_0

    .end local v11           #forceSelect:Z
    :cond_b
    move v11, v4

    .line 5026
    goto :goto_2

    .line 5044
    .restart local v11       #forceSelect:Z
    :cond_c
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectText()Z

    move-result v13

    .line 5045
    .local v13, isSelecting:Z
    if-eqz v13, :cond_d

    .line 5046
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    :cond_d
    move v4, v13

    .line 5048
    goto/16 :goto_0
.end method

.method pinLocX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 2972
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    .line 2973
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method pinLocY(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 2978
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    .line 2979
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 0

    .prologue
    .line 13710
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->postInvalidate()V

    .line 13720
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 2351
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2352
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2353
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2354
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 2355
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 2356
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 2357
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2358
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2362
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_0
    return-void

    .line 2360
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method rebuildWebTextView()V
    .locals 7

    .prologue
    .line 5565
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5609
    :cond_0
    :goto_0
    return-void

    .line 5568
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    .line 5571
    .local v0, alreadyThere:Z
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5572
    :cond_2
    if-eqz v0, :cond_0

    .line 5573
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_0

    .line 5579
    :cond_3
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-nez v4, :cond_4

    .line 5580
    new-instance v4, Landroid/webkit/WebTextView;

    iget-object v5, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    invoke-virtual {v6}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v6

    invoke-direct {v4, v5, p0, v6}, Landroid/webkit/WebTextView;-><init>(Landroid/content/Context;Landroid/webkit/WebView;I)V

    iput-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 5582
    const/4 v4, 0x0

    iput v4, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 5584
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->updateTextSize()V

    .line 5585
    invoke-direct {p0}, Landroid/webkit/WebView;->updateWebTextViewPosition()V

    .line 5586
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateText()Ljava/lang/String;

    move-result-object v3

    .line 5587
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v2

    .line 5590
    .local v2, nodePointer:I
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebTextView;->setNodePointer(I)V

    .line 5591
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebTextView;->setType(I)V

    .line 5593
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebTextView;->setGravityForRtl(Z)V

    .line 5594
    if-nez v3, :cond_5

    .line 5598
    const-string v3, ""

    .line 5600
    :cond_5
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 5601
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 5602
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_6

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5603
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 5604
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->clearComposingText()V

    .line 5606
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5607
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->requestFocus()Z

    goto :goto_0
.end method

.method public recoverBackground()V
    .locals 1

    .prologue
    .line 14825
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mRemoveBackground:Z

    .line 14826
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4574
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4575
    return-void
.end method

.method protected registerPageSwapCallback()V
    .locals 0

    .prologue
    .line 10925
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeRegisterPageSwapCallback()V

    .line 10926
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 2513
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2514
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2515
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2516
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2517
    return-void
.end method

.method public removeBackground()V
    .locals 1

    .prologue
    .line 14822
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mRemoveBackground:Z

    .line 14823
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaceName"

    .prologue
    .line 4536
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4537
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 4538
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4539
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4540
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x95

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4542
    .end local v0           #arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    :cond_0
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 3
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 8866
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 8867
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 8868
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 8869
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 8870
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 8871
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 8872
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 8873
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 8797
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v12, :cond_0

    .line 8798
    const/4 v12, 0x0

    .line 8861
    :goto_0
    return v12

    .line 8802
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v12}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 8803
    const/4 v12, 0x0

    goto :goto_0

    .line 8806
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 8809
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebView;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v15

    invoke-direct {v1, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8815
    .local v1, content:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8816
    .local v2, contentTemp:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8817
    iget v12, v1, Landroid/graphics/Rect;->top:I

    if-nez v12, :cond_2

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v12, :cond_2

    .line 8818
    const-string v12, "JuLOG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WebView.requestChildRectangleOnScreen nativeSubtractLayers returns a empty rect content="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8819
    move-object v1, v2

    .line 8822
    :cond_2
    iget v12, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v8

    .line 8823
    .local v8, screenTop:I
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    .line 8824
    .local v5, screenBottom:I
    sub-int v3, v5, v8

    .line 8825
    .local v3, height:I
    const/4 v10, 0x0

    .line 8827
    .local v10, scrollYDelta:I
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v12, v5, :cond_6

    .line 8828
    div-int/lit8 v4, v3, 0x3

    .line 8829
    .local v4, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    mul-int/lit8 v13, v4, 0x2

    if-le v12, v13, :cond_5

    .line 8832
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int v10, v12, v8

    .line 8842
    .end local v4           #oneThirdOfScreenHeight:I
    :cond_3
    :goto_1
    iget v12, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v6

    .line 8843
    .local v6, screenLeft:I
    iget v12, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    .line 8844
    .local v7, screenRight:I
    sub-int v11, v7, v6

    .line 8845
    .local v11, width:I
    const/4 v9, 0x0

    .line 8847
    .local v9, scrollXDelta:I
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->right:I

    if-le v12, v7, :cond_8

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-le v12, v6, :cond_8

    .line 8848
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-le v12, v11, :cond_7

    .line 8849
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v6

    add-int/2addr v9, v12

    .line 8857
    :cond_4
    :goto_2
    or-int v12, v10, v9

    if-eqz v12, :cond_a

    .line 8858
    if-nez p3, :cond_9

    const/4 v12, 0x1

    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v12, v13}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v12

    goto/16 :goto_0

    .line 8836
    .end local v6           #screenLeft:I
    .end local v7           #screenRight:I
    .end local v9           #scrollXDelta:I
    .end local v11           #width:I
    .restart local v4       #oneThirdOfScreenHeight:I
    :cond_5
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    add-int v13, v8, v4

    sub-int v10, v12, v13

    goto :goto_1

    .line 8838
    .end local v4           #oneThirdOfScreenHeight:I
    :cond_6
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-ge v12, v8, :cond_3

    .line 8839
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int v10, v12, v8

    goto :goto_1

    .line 8851
    .restart local v6       #screenLeft:I
    .restart local v7       #screenRight:I
    .restart local v9       #scrollXDelta:I
    .restart local v11       #width:I
    :cond_7
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v7

    add-int/2addr v9, v12

    goto :goto_2

    .line 8853
    :cond_8
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-ge v12, v6, :cond_4

    .line 8854
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int v12, v6, v12

    sub-int/2addr v9, v12

    goto :goto_2

    .line 8858
    :cond_9
    const/4 v12, 0x0

    goto :goto_3

    .line 8861
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    .line 8702
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x0

    .line 8738
    :cond_0
    :goto_0
    return v6

    .line 8704
    :cond_1
    const/4 v6, 0x0

    .line 8705
    .local v6, result:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8706
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    goto :goto_0

    .line 8709
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 8711
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8716
    const/4 v1, 0x0

    .line 8717
    .local v1, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 8725
    :sswitch_0
    const/16 v1, 0x15

    .line 8733
    :goto_1
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8734
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_0

    .line 8719
    :sswitch_1
    const/16 v1, 0x13

    .line 8720
    goto :goto_1

    .line 8722
    :sswitch_2
    const/16 v1, 0x14

    .line 8723
    goto :goto_1

    .line 8728
    :sswitch_3
    const/16 v1, 0x16

    .line 8729
    goto :goto_1

    .line 8717
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_3
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 6
    .parameter "hrefMsg"

    .prologue
    .line 2914
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2915
    if-nez p1, :cond_0

    .line 2933
    :goto_0
    return-void

    .line 2918
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2919
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2920
    .local v1, contentY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2921
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2922
    .local v2, cursorBounds:Landroid/graphics/Rect;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2923
    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    .line 2924
    .local v3, slop:I
    neg-int v4, v3

    neg-int v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 2925
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2926
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 2927
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 2931
    .end local v2           #cursorBounds:Landroid/graphics/Rect;
    .end local v3           #slop:I
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x89

    invoke-virtual {v4, v5, v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestFormData(Ljava/lang/String;IZZ)V
    .locals 8
    .parameter "name"
    .parameter "nodePointer"
    .parameter "autoFillable"
    .parameter "autoComplete"

    .prologue
    .line 5671
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5672
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 5673
    .local v4, update:Landroid/os/Message;
    iput p2, v4, Landroid/os/Message;->arg1:I

    .line 5674
    new-instance v0, Landroid/webkit/WebView$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$RequestFormData;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    .line 5676
    .local v0, updater:Landroid/webkit/WebView$RequestFormData;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5677
    .local v7, t:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 5679
    .end local v0           #updater:Landroid/webkit/WebView$RequestFormData;
    .end local v4           #update:Landroid/os/Message;
    .end local v7           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2943
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2944
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    .line 2952
    :goto_0
    return-void

    .line 2945
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2946
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2947
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2948
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2949
    .local v2, data:Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2951
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method requestLabel(II)V
    .locals 2
    .parameter "framePointer"
    .parameter "nodePointer"

    .prologue
    .line 5688
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5690
    return-void
.end method

.method requestListBox([Ljava/lang/String;[II)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 10637
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[IILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10639
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[I)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 10623
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[ILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10625
    return-void
.end method

.method public resetCacheDrawBitmap()V
    .locals 1

    .prologue
    .line 14086
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    .line 14087
    return-void
.end method

.method resetHeavyWebSite()V
    .locals 1

    .prologue
    .line 14875
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    .line 14876
    return-void
.end method

.method resetRectForUpdateScroll()V
    .locals 1

    .prologue
    .line 11219
    iget-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 11220
    iget-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 11221
    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    .prologue
    .line 7903
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 7904
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .parameter "b"
    .parameter "src"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2149
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2150
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2184
    :cond_0
    :goto_0
    return v3

    .line 2153
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2157
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2158
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2159
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebView$7;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2184
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2181
    :catch_0
    move-exception v1

    .line 2182
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "inState"

    .prologue
    const/4 v8, 0x0

    .line 2250
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2251
    const/4 v6, 0x0

    .line 2252
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_0

    move-object v8, v6

    .line 2299
    :goto_0
    return-object v8

    .line 2255
    :cond_0
    const-string/jumbo v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string/jumbo v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2256
    const-string v9, "certificate"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v9

    iput-object v9, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2259
    iget-object v9, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v9}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2260
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string/jumbo v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2264
    .local v3, index:I
    monitor-enter v5

    .line 2265
    :try_start_0
    const-string/jumbo v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2267
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 2270
    .local v7, size:I
    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    .line 2271
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 2287
    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v7           #size:I
    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2273
    .restart local v1       #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .restart local v7       #size:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 2274
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2275
    .local v0, data:[B
    if-nez v0, :cond_3

    .line 2278
    monitor-exit v5

    goto :goto_0

    .line 2280
    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 2281
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 2273
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2284
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 2286
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 2287
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2289
    const-string/jumbo v8, "privateBrowsingEnabled"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2290
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setPrivateBrowsingEnabled(Z)V

    .line 2292
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, p1}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 2295
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 2297
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_6
    move-object v8, v6

    .line 2299
    goto/16 :goto_0
.end method

.method public resumeAll()V
    .locals 1

    .prologue
    .line 13916
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-nez v0, :cond_0

    .line 13927
    :goto_0
    return-void

    .line 13919
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    .line 13922
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto :goto_0
.end method

.method public resumeFPDoPlay()V
    .locals 2

    .prologue
    .line 14734
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-nez v0, :cond_0

    .line 14738
    :goto_0
    return-void

    .line 14737
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public resumeTextReflow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12181
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    if-nez v0, :cond_0

    .line 12189
    :goto_0
    return-void

    .line 12184
    :cond_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    .line 12185
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->forceBreakWord(Z)V

    .line 12186
    iput v1, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    .line 12187
    iput v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 12188
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 3636
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3638
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 3642
    :goto_0
    return-void

    .line 3641
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method revealSelection()V
    .locals 2

    .prologue
    .line 5652
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 5653
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5655
    :cond_0
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1750
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1751
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .parameter "b"
    .parameter "dest"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2082
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2083
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2084
    :cond_0
    const/4 v2, 0x0

    .line 2117
    :goto_0
    return v2

    .line 2086
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 2089
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2090
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebView$6;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2114
    const-string/jumbo v2, "scrollX"

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2115
    const-string/jumbo v2, "scrollY"

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2116
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    .line 2117
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v7, 0x0

    .line 1968
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1969
    if-nez p1, :cond_0

    move-object v5, v7

    .line 2017
    :goto_0
    return-object v5

    .line 1974
    :cond_0
    iget-boolean v8, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v8, :cond_1

    .line 1975
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->saveStateHtc(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v5

    goto :goto_0

    .line 1980
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1981
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 1982
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 1985
    .local v6, size:I
    if-ltz v0, :cond_2

    if-ge v0, v6, :cond_2

    if-nez v6, :cond_3

    :cond_2
    move-object v5, v7

    .line 1986
    goto :goto_0

    .line 1988
    :cond_3
    const-string/jumbo v8, "index"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1992
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1993
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_6

    .line 1994
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 1995
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_4

    .line 1998
    const-string/jumbo v8, "webview"

    const-string/jumbo v9, "saveState: Unexpected null history item."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 1999
    goto :goto_0

    .line 2001
    :cond_4
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 2002
    .local v1, data:[B
    if-nez v1, :cond_5

    move-object v5, v7

    .line 2006
    goto :goto_0

    .line 2008
    :cond_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2010
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_6
    const-string/jumbo v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2011
    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_7

    .line 2012
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2015
    :cond_7
    const-string/jumbo v7, "privateBrowsingEnabled"

    invoke-virtual {p0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2016
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public saveViewState(Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "stream"

    .prologue
    .line 2197
    :try_start_0
    invoke-static {p1, p0}, Landroid/webkit/ViewStateSerializer;->serializeViewState(Ljava/io/OutputStream;Landroid/webkit/WebView;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2201
    :goto_0
    return v1

    .line 2198
    :catch_0
    move-exception v0

    .line 2199
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v1, "webview"

    const-string v2, "Failed to saveViewState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2201
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    .line 2458
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2459
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 2460
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2488
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2489
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 2490
    return-void
.end method

.method scrollFocusedTextInputX(F)V
    .locals 4
    .parameter "xPercent"

    .prologue
    .line 8445
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 8450
    :cond_0
    :goto_0
    return-void

    .line 8448
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method scrollFocusedTextInputY(I)V
    .locals 4
    .parameter "y"

    .prologue
    .line 8457
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 8461
    :cond_0
    :goto_0
    return-void

    .line 8460
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 6292
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_1

    .line 6303
    :cond_0
    :goto_0
    return-void

    .line 6293
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6294
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v1, :cond_2

    .line 6296
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectableText()Landroid/graphics/Point;

    move-result-object v0

    .line 6297
    .local v0, select:Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->selectText(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6299
    .end local v0           #select:Landroid/graphics/Point;
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectAll()V

    .line 6300
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 6301
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 6302
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public selectText()Z
    .locals 4

    .prologue
    .line 5057
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 5058
    .local v0, x:I
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 5059
    .local v1, y:I
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->selectText(II)Z

    move-result v2

    return v2
.end method

.method selectText(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5066
    invoke-direct {p0, v1, p1, p2}, Landroid/webkit/WebView;->setUpSelect(ZII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5072
    :goto_0
    return v0

    .line 5069
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 5070
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5071
    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    move v0, v1

    .line 5072
    goto :goto_0
.end method

.method selectionDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6310
    iget v1, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v1, :cond_2

    .line 6311
    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v0

    .line 6312
    .local v0, isSelecting:Z
    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectAbs;->selectionDone()V

    .line 6313
    if-eqz v0, :cond_0

    .line 6314
    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    if-eqz v1, :cond_0

    .line 6315
    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/SelectActionModeCallback;->finish()V

    .line 6317
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6340
    .end local v0           #isSelecting:Z
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onSelectTextEnd()V

    .line 6342
    return-void

    .line 6320
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v1, :cond_1

    .line 6321
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 6329
    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/SelectActionModeCallback;->finish()V

    .line 6330
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 6331
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 6332
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6333
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6334
    iput v2, p0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 6335
    iput v2, p0, Landroid/webkit/WebView;->mAutoScrollY:I

    .line 6336
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    goto :goto_0
.end method

.method sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/16 v4, 0x6b

    .line 3191
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3220
    :goto_0
    return-object v0

    .line 3192
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 3195
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_2

    .line 3196
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_1

    .line 3197
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollOffset:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3198
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3199
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v2

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mScrollOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 3202
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3203
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3205
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_4

    .line 3215
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_3

    .line 3216
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x74

    iget-object v2, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3218
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3220
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 3199
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method sendPluginDrawMsg()V
    .locals 2

    .prologue
    .line 8604
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 8605
    return-void
.end method

.method sendViewSizeZoom(Z)Z
    .locals 11
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3293
    iget-boolean v7, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v7, :cond_1

    .line 3397
    :cond_0
    :goto_0
    return v9

    .line 3294
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3296
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 3297
    .local v6, viewWidth:I
    int-to-float v7, v6

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3299
    .local v4, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    sub-int v5, v7, v10

    .line 3300
    .local v5, viewHeight:I
    int-to-float v7, v5

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3303
    .local v3, newHeight:I
    int-to-float v7, v5

    int-to-float v10, v6

    div-float v2, v7, v10

    .line 3312
    .local v2, heightWidthRatio:F
    iget v7, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v4, v7, :cond_2

    iget-boolean v7, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v7, :cond_2

    .line 3313
    const/4 v3, 0x0

    .line 3314
    const/4 v2, 0x0

    .line 3317
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3371
    .local v0, actualViewHeight:I
    iget v7, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v4, v7, :cond_3

    iget v7, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v3, v7, :cond_3

    if-nez p1, :cond_3

    iget v7, p0, Landroid/webkit/WebView;->mLastActualHeightSent:I

    if-eq v0, v7, :cond_0

    .line 3373
    :cond_3
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3374
    .local v1, data:Landroid/webkit/WebView$ViewSizeData;
    iput v4, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3375
    iput v3, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3376
    iput v2, v1, Landroid/webkit/WebView$ViewSizeData;->mHeightWidthRatio:F

    .line 3377
    iput v0, v1, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    .line 3378
    int-to-float v7, v6

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v10

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3379
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3380
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v7, :cond_5

    move v7, v8

    :goto_1
    iput-boolean v7, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3382
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorX()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3383
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorY()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    .line 3385
    invoke-static {}, Landroid/webkit/WebView;->isHtcZoomingEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3386
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget v7, v7, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    .line 3387
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iput v9, v7, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    .line 3390
    :cond_4
    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x69

    invoke-virtual {v7, v9, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3391
    iput v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 3392
    iput v3, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3393
    iput v0, p0, Landroid/webkit/WebView;->mLastActualHeightSent:I

    .line 3394
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->clearDocumentAnchor()V

    move v9, v8

    .line 3395
    goto/16 :goto_0

    :cond_5
    move v7, v9

    .line 3380
    goto :goto_1
.end method

.method setActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6465
    if-eqz p1, :cond_3

    .line 6466
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6469
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 6470
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    .line 6508
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6509
    return-void

    .line 6472
    :cond_2
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 6473
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6476
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    goto :goto_0

    .line 6483
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->isZoomPickerVisible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6491
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 6493
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 6494
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6495
    const/4 v1, 0x7

    iput v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6506
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 10834
    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 10835
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 10836
    return-void
.end method

.method setBaseLayer(ILandroid/graphics/Region;ZZZ)V
    .locals 1
    .parameter "layer"
    .parameter "invalRegion"
    .parameter "showVisualIndicator"
    .parameter "isPictureAfterFirstLayout"
    .parameter "registerPageSwapCallback"

    .prologue
    .line 5168
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 5175
    :cond_0
    :goto_0
    return-void

    .line 5170
    :cond_1
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->nativeSetBaseLayer(ILandroid/graphics/Region;ZZZ)V

    .line 5172
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 5173
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->setBaseLayer(I)V

    goto :goto_0
.end method

.method public setBouncingBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 14195
    return-void
.end method

.method public setCacheDrawBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "cacheBitmap"

    .prologue
    const/4 v7, 0x0

    .line 14121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 14122
    .local v3, startTime:J
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 14123
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 14124
    .local v1, nScreenHeight:I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 14126
    .local v2, nScreenWidth:I
    invoke-static {p1, v7, v7, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 14129
    iget-object v5, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 14130
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 1730
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1735
    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1736
    return-void
.end method

.method setContentHeight(I)V
    .locals 0
    .parameter "nContentHeight"

    .prologue
    .line 3602
    iput p1, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 3603
    return-void
.end method

.method setContentWidth(I)V
    .locals 0
    .parameter "nContentWidth"

    .prologue
    .line 3606
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 3607
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4427
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4428
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 4429
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 3002
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3012
    :goto_0
    return-void

    .line 3003
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3004
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 3006
    :cond_1
    if-eqz p1, :cond_2

    .line 3007
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3011
    :cond_2
    iput-object p1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method setFocusControllerActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v1, 0x0

    .line 6552
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 6559
    :cond_0
    :goto_0
    return-void

    .line 6553
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x8e

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6555
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 6556
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 6557
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6553
    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 6618
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result v0

    .line 6619
    .local v0, changed:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    .line 6626
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 6628
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->setGLRectViewport()V

    .line 6629
    return v0
.end method

.method setGLRectViewport()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 6595
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    .line 6596
    .local v3, visible:Z
    if-eqz v3, :cond_0

    .line 6598
    invoke-virtual {p0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 6599
    .local v0, rootView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 6600
    .local v1, rootViewHeight:I
    iget-object v4, p0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6601
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 6602
    .local v2, savedWebViewBottom:I
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 6603
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    sub-int v6, v1, v2

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 6604
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    .line 6608
    .end local v0           #rootView:Landroid/view/View;
    .end local v1           #rootViewHeight:I
    .end local v2           #savedWebViewBottom:I
    :goto_0
    iget-object v4, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 6609
    iget-boolean v4, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v4, :cond_1

    move-object v4, v5

    :goto_1
    iget-boolean v6, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v6, :cond_2

    :goto_2
    iget-object v6, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4, v5, v6}, Landroid/webkit/WebView;->nativeUpdateDrawGLFunction(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 6611
    return-void

    .line 6606
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    goto :goto_0

    .line 6609
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method public setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 10872
    iput-object p1, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 10873
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1617
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1618
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1619
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1765
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1766
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .parameter "scaleInPercent"

    .prologue
    .line 2775
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2776
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setInitialScaleInPercent(I)V

    .line 2777
    return-void
.end method

.method public setIsCacheDrawBitmap(Z)V
    .locals 0
    .parameter "bSet"

    .prologue
    .line 14071
    iput-boolean p1, p0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    .line 14072
    return-void
.end method

.method public setIsLoading(Z)V
    .locals 4
    .parameter "bIsLoading"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13745
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-nez v0, :cond_0

    if-ne p1, v3, :cond_0

    .line 13746
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->setTextWrapScale(F)V

    .line 13748
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    .line 13749
    if-ne p1, v3, :cond_2

    .line 13750
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    if-ne v0, v3, :cond_1

    .line 13751
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-boolean v2, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 13752
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput v2, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 13774
    :cond_1
    :goto_0
    return-void

    .line 13768
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/WebView;->m_bNeedRestore:Z

    .line 13769
    iput v2, p0, Landroid/webkit/WebView;->m_nRestoreScrollX:I

    .line 13770
    iput v2, p0, Landroid/webkit/WebView;->m_nRestoreScrollY:I

    .line 13771
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/WebView;->m_fResotreActualScale:F

    goto :goto_0
.end method

.method setIsUserScroll(Z)V
    .locals 0
    .parameter "bUserScroll"

    .prologue
    .line 14258
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 1927
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1928
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1929
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 4953
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    .line 4956
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4957
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .parameter "setMap"

    .prologue
    .line 7898
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 7899
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 7900
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 5795
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebViewCore;->setMockDeviceOrientation(ZDZDZD)V

    .line 5797
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .parameter "networkUp"

    .prologue
    const/4 v1, 0x0

    .line 1938
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1939
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x77

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1941
    return-void

    :cond_0
    move v0, v1

    .line 1939
    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 1948
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1949
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1950
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1953
    return-void
.end method

.method setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V
    .locals 13
    .parameter "draw"
    .parameter "updateBaseLayer"

    .prologue
    .line 10154
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_2

    .line 10155
    iget-object v0, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v0, :cond_0

    .line 10156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to setNewPicture with a delay picture already set! (memory leak)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10160
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 10253
    :cond_1
    :goto_0
    return-void

    .line 10163
    :cond_2
    iget-object v12, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 10164
    .local v12, viewState:Landroid/webkit/WebViewCore$ViewState;
    if-eqz v12, :cond_8

    const/4 v4, 0x1

    .line 10166
    .local v4, isPictureAfterFirstLayout:Z
    :goto_1
    if-eqz p2, :cond_3

    .line 10168
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v5, 0x1

    .line 10171
    .local v5, registerPageSwapCallback:Z
    :goto_2
    iget v1, p1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getShowVisualIndicator()Z

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->setBaseLayer(ILandroid/graphics/Region;ZZZ)V

    .line 10175
    .end local v5           #registerPageSwapCallback:Z
    :cond_3
    iget-object v11, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 10178
    .local v11, viewSize:Landroid/graphics/Point;
    iget v7, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 10185
    .local v7, oldContentHeight:I
    iget v0, v11, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v0, v1, :cond_a

    iget v0, v11, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 10190
    .local v10, updateLayout:Z
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    .line 10191
    iget-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1, v10}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 10193
    if-eqz v4, :cond_4

    .line 10195
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 10196
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V

    .line 10197
    iget-boolean v0, v12, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    .line 10199
    .local v8, scrollX:I
    :goto_4
    iget v9, v12, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 10200
    .local v9, scrollY:I
    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    .line 10201
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v0, :cond_4

    .line 10206
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 10209
    .end local v8           #scrollX:I
    .end local v9           #scrollY:I
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    .line 10218
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v11, Landroid/graphics/Point;->y:I

    if-ge v0, v7, :cond_c

    .line 10219
    iget-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 10220
    .local v6, dirty:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 10221
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 10229
    .end local v6           #dirty:Landroid/graphics/Rect;
    :goto_5
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v0, :cond_5

    .line 10230
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 10234
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onNewPicture(Landroid/webkit/WebViewCore$DrawData;)V

    .line 10236
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10237
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 10239
    :cond_6
    if-eqz v4, :cond_7

    .line 10240
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 10244
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 10245
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10246
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x132

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10164
    .end local v4           #isPictureAfterFirstLayout:Z
    .end local v7           #oldContentHeight:I
    .end local v10           #updateLayout:Z
    .end local v11           #viewSize:Landroid/graphics/Point;
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 10168
    .restart local v4       #isPictureAfterFirstLayout:Z
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 10185
    .restart local v7       #oldContentHeight:I
    .restart local v11       #viewSize:Landroid/graphics/Point;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 10197
    .restart local v10       #updateLayout:Z
    :cond_b
    iget v8, v12, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    goto :goto_4

    .line 10226
    :cond_c
    iget-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 10248
    :cond_d
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10249
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10250
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x132

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 6515
    if-eqz p1, :cond_0

    .line 6516
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setCurrentWebView(Landroid/webkit/WebView;)V

    .line 6518
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 6519
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x6

    .line 1507
    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_3

    .line 1508
    :cond_0
    sput p1, Landroid/webkit/WebView;->mOverscrollMode:I

    .line 1509
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1510
    .local v1, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1512
    .local v0, height:I
    if-ne p1, v3, :cond_2

    .line 1513
    const/high16 v2, 0x3f00

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    .line 1517
    :goto_0
    const/4 p1, 0x2

    .line 1523
    .end local v0           #height:I
    .end local v1           #width:I
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 1524
    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    .line 1525
    iget-object v2, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-nez v2, :cond_1

    .line 1526
    new-instance v2, Landroid/webkit/OverScrollGlow;

    invoke-direct {v2, p0}, Landroid/webkit/OverScrollGlow;-><init>(Landroid/webkit/WebView;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    .line 1531
    :cond_1
    :goto_2
    return-void

    .line 1516
    .restart local v0       #height:I
    .restart local v1       #width:I
    :cond_2
    const v2, 0x3e4ccccd

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    goto :goto_0

    .line 1520
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_3
    sput p1, Landroid/webkit/WebView;->mOverscrollMode:I

    goto :goto_1

    .line 1529
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    goto :goto_2
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4479
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4480
    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 4481
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "newProgress"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    .line 13862
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    if-ne v0, v2, :cond_0

    if-eq p1, v3, :cond_0

    .line 13863
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->setTextWrapScale(F)V

    .line 13865
    :cond_0
    if-ne p1, v3, :cond_2

    .line 13866
    iput-boolean v2, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    .line 13869
    :cond_1
    :goto_0
    return-void

    .line 13867
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    if-ne v0, v2, :cond_1

    .line 13868
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    goto :goto_0
.end method

.method setProxyEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 11210
    return-void
.end method

.method public setPureZoomMode(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 14853
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPureZoomMode:Z

    .line 14854
    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 0
    .parameter "bSet"

    .prologue
    .line 11162
    iput-boolean p1, p0, Landroid/webkit/WebView;->m_bsetScaleWithoutCheck:Z

    .line 11163
    iput-boolean p1, p0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    .line 11166
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 1603
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    .line 1605
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1609
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1610
    return-void

    .line 1607
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setSelection(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5505
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 5506
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5508
    :cond_0
    return-void
.end method

.method public setStopDrawing(Z)V
    .locals 2
    .parameter "stop"

    .prologue
    .line 14810
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 14811
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 14816
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    .line 14817
    return-void

    .line 14813
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 14814
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setTitleBarGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 3021
    iput p1, p0, Landroid/webkit/WebView;->mTitleGravity:I

    .line 3023
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3024
    return-void
.end method

.method public setTitleShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "draw"

    .prologue
    .line 14202
    return-void
.end method

.method public setTouchInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 10882
    iput p1, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 10883
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 1
    .parameter "slop"

    .prologue
    .line 13877
    mul-int v0, p1, p1

    iput v0, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 13878
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1626
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1627
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 1628
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4460
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 4461
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4438
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4439
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4440
    return-void
.end method

.method setWebSelectionType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 11305
    iput p1, p0, Landroid/webkit/WebView;->selectionUIType:I

    .line 11306
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->enableQuickSelection(Z)V

    .line 11307
    return-void

    .line 11306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4406
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4407
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4408
    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 0
    .parameter "willDraw"

    .prologue
    .line 3972
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3973
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3974
    iput-boolean p1, p0, Landroid/webkit/WebView;->mCustomFindMode:Z

    .line 3975
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .parameter "fLower"

    .prologue
    .line 14028
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setZoomLowerBound(F)V

    .line 14029
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .parameter "fUpper"

    .prologue
    .line 14024
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setZoomUpperBound(F)V

    .line 14025
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1442
    const/4 v0, 0x1

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "text"
    .parameter "showIme"

    .prologue
    const/4 v1, 0x1

    .line 3826
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3827
    new-instance v0, Landroid/webkit/FindActionModeCallback;

    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V

    .line 3828
    .local v0, callback:Landroid/webkit/FindActionModeCallback;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3830
    :cond_0
    const/4 v1, 0x0

    .line 3849
    :cond_1
    :goto_0
    return v1

    .line 3832
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 3833
    iput-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 3834
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3835
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/FindActionModeCallback;->setWebView(Landroid/webkit/WebView;)V

    .line 3836
    if-eqz p2, :cond_5

    .line 3837
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->showSoftInput()V

    .line 3843
    :cond_3
    if-nez p1, :cond_4

    .line 3844
    iget-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    .line 3846
    :cond_4
    if-eqz p1, :cond_1

    .line 3847
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 3838
    :cond_5
    if-eqz p1, :cond_3

    .line 3839
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 3840
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 2502
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2505
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2506
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2507
    return-void
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    .line 3998
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 3999
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 4000
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 4

    .prologue
    .line 5451
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 5466
    :cond_0
    :goto_0
    return-void

    .line 5452
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5453
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 5454
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 5455
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5456
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 5457
    .local v0, oldScrollX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 5458
    .local v1, oldScrollY:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 5459
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 5460
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_4

    .line 5461
    :cond_3
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0

    .line 5463
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method textFieldDrag(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 8489
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 8503
    :goto_0
    return v0

    .line 8494
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_1

    .line 8495
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 8498
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    .line 8499
    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getTop()I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 8501
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 8502
    .local v0, result:Z
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    goto :goto_0
.end method

.method public tileProfilingClear()V
    .locals 0

    .prologue
    .line 10947
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingClear()V

    .line 10948
    return-void
.end method

.method public tileProfilingGetFloat(IILjava/lang/String;)F
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 10963
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeTileProfilingGetFloat(IILjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public tileProfilingGetInt(IILjava/lang/String;)I
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 10959
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeTileProfilingGetInt(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tileProfilingNumFrames()I
    .locals 1

    .prologue
    .line 10951
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingNumFrames()I

    move-result v0

    return v0
.end method

.method public tileProfilingNumTilesInFrame(I)I
    .locals 1
    .parameter "frame"

    .prologue
    .line 10955
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeTileProfilingNumTilesInFrame(I)I

    move-result v0

    return v0
.end method

.method public tileProfilingStart()V
    .locals 0

    .prologue
    .line 10934
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingStart()V

    .line 10935
    return-void
.end method

.method public tileProfilingStop()F
    .locals 1

    .prologue
    .line 10942
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingStop()F

    move-result v0

    return v0
.end method

.method touchUpOnTextField(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 8512
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8525
    :goto_0
    return-void

    .line 8517
    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_1

    .line 8518
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 8521
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 8522
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 8523
    .local v2, y:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    .line 8524
    .local v0, slop:I
    invoke-direct {p0, v1, v2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    goto :goto_0
.end method

.method protected updateCachedTextfield(Ljava/lang/String;)V
    .locals 1
    .parameter "updatedText"

    .prologue
    .line 10893
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    .line 10894
    return-void
.end method

.method protected updateContentFromMessage(I)V
    .locals 0
    .parameter "pointer"

    .prologue
    .line 12073
    return-void
.end method

.method updateDefaultZoomDensity(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 1540
    const/high16 v0, 0x4180

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1541
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    .line 1542
    return-void
.end method

.method updateDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 3404
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDoubleTapZoom(I)V

    .line 3405
    return-void
.end method

.method updateDrawingState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3682
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 3690
    :cond_0
    :goto_0
    return-void

    .line 3683
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3684
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 3685
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3686
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 3688
    :cond_3
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    goto :goto_0
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1335
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1352
    return-void
.end method

.method updatePositionRect()V
    .locals 4

    .prologue
    .line 12228
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v0, :cond_0

    .line 12236
    :goto_0
    return-void

    .line 12230
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mPositionRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 12231
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectStart:Landroid/graphics/Rect;

    const/16 v3, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    .line 12232
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectEnd:Landroid/graphics/Rect;

    const/16 v3, 0x65

    invoke-virtual {v0, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    .line 12233
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectBase:Landroid/graphics/Rect;

    const/16 v3, 0x62

    invoke-virtual {v0, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    .line 12234
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectExtend:Landroid/graphics/Rect;

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    .line 12235
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateScrollCoordinates(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8177
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 8178
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 8179
    .local v1, oldY:I
    iput p1, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 8180
    iput p2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 8181
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_1

    .line 8182
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 8183
    const/4 v2, 0x1

    .line 8185
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected updateTextAndSelection(III)V
    .locals 0
    .parameter "nodePointer"
    .parameter "startIndx"
    .parameter "endIndx"

    .prologue
    .line 11419
    return-void
.end method

.method updateWebTextViewPadding()V
    .locals 6

    .prologue
    .line 5636
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 5637
    .local v0, paddingRect:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 5640
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 5646
    :cond_0
    return-void
.end method

.method public useMockDeviceOrientation()V
    .locals 2

    .prologue
    .line 5785
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5786
    return-void
.end method

.method viewToContentX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 3042
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 3051
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 8408
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 8409
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 8417
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 8418
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomOut()Z

    move-result v0

    return v0
.end method
