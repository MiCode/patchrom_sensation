.class public Lcom/android/internal/policy/impl/MiuiLockScreen;
.super Landroid/widget/FrameLayout;
.source "MiuiLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/QcomCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiLockScreen$4;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;,
        Lcom/android/internal/policy/impl/MiuiLockScreen$Status;
    }
.end annotation


# static fields
.field private static final BACKGROUND_MUSIC_SHOW_DEFAULT_ALBUM:I = 0x3

.field private static final BACKGROUND_MUSIC_SHOW_HAS_ALBUM:I = 0x2

.field private static final BACKGROUND_MUSIC_SHOW_NONE:I = 0x1

.field private static final BACKGROUND_NONE:I = 0x0

.field private static final CONTROL_VIEW_BATTERY:I = 0x5

.field private static final CONTROL_VIEW_CALL:I = 0x1

.field private static final CONTROL_VIEW_DATE:I = 0x3

.field private static final CONTROL_VIEW_MUSIC:I = 0x4

.field private static final CONTROL_VIEW_NONE:I = 0x0

.field private static final CONTROL_VIEW_SMS:I = 0x2

.field private static final CallLog_COLUMNS:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MAKR_PREVIEW_READ_DELAY:J = 0x7d0L

.field private static final MAX_VISIBLE_ITEM_NUM:I = 0x2

.field private static final QUERY_TOKEN:I = 0x35

.field private static final SMS_RECEIVED_WAKE_UP_DELAY:I = 0x61a8

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static sPrevStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;


# instance fields
.field private isPaused:Z

.field private mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

.field private mBackgroundMask:Landroid/widget/ImageView;

.field private mBatteryInfo:Landroid/view/View;

.field private mBatteryInfoText:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

.field private mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

.field private mCallsControlView:Landroid/view/View;

.field private mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

.field private mCallsPreviewList:Landroid/widget/ListView;

.field private mCarrier:Landroid/widget/TextView;

.field private mControlView:Landroid/widget/FrameLayout;

.field private mControlViewType:I

.field private mCreationOrientation:I

.field private mCurrentPreviewList:Landroid/widget/ListView;

.field private mEmergencyCall:Landroid/view/View;

.field private mEmergencyCallText:Landroid/widget/Button;

.field private mEnableMenuKeyInLockScreen:Z

.field private final mFadeoutAnim:Landroid/view/animation/Animation;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHintView:Landroid/view/View;

.field private mKeyboardHidden:I

.field private mLastGrabTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

.field private mPluggedIn:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

.field private mShowingBatteryInfo:Z

.field private mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

.field private mSmsControlView:Landroid/view/View;

.field private mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

.field private mSmsPreviewList:Landroid/widget/ListView;

.field private mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

.field private mTimeView:Landroid/view/View;

.field private mUnlockIccCard:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final sLongPressVibration:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1180
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->CallLog_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v9, 0x50

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 261
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    sget-object v3, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 165
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 172
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 175
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    .line 178
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 181
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    .line 1434
    new-instance v3, Lcom/android/internal/policy/impl/MiuiLockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$3;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    .line 262
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 263
    iput-object p4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 264
    iput-object p5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    .line 266
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->shouldEnableMenuKey()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 268
    iget v3, p2, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCreationOrientation:I

    .line 269
    iget v3, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    .line 271
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, bgView:Landroid/widget/ImageView;
    const v3, 0x30200a2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 274
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    .line 280
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    const v4, 0x302008a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 283
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 289
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x3030004

    invoke-virtual {v1, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 291
    const v3, 0x30b0031

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 293
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 295
    const v3, 0x30b0032

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    .line 297
    const v3, 0x30b0030

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    .line 300
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    .line 301
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$1;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v3, 0x30b0033

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUnlockIccCard:Landroid/view/View;

    .line 308
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUnlockIccCard:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/MiuiLockScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$2;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v3, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    .line 318
    const v3, 0x3030017

    invoke-virtual {v1, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mTimeView:Landroid/view/View;

    .line 319
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x3030016

    invoke-static {v3, v4, v8}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHintView:Landroid/view/View;

    .line 321
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v4, 0x3040004

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mFadeoutAnim:Landroid/view/animation/Animation;

    .line 322
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupSlidingPanel()V

    .line 323
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupBatteryInfo()V

    .line 325
    new-instance v3, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v8}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    .line 326
    new-instance v3, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    .line 328
    new-instance v3, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v8}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    .line 329
    new-instance v3, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    .line 331
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setFocusable(Z)V

    .line 332
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setFocusableInTouchMode(Z)V

    .line 333
    const/high16 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setDescendantFocusability(I)V

    .line 334
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 336
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 337
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 338
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 340
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 341
    .local v2, statusBarBg:Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 342
    const v3, 0x30200bd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 343
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x30

    invoke-direct {v3, v7, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 349
    new-instance v3, Lmiui/util/HapticFeedbackUtil;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v6}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->onPause()V

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MiuiLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MiuiLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/MiuiLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MiuiLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/SlidingPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lmiui/util/HapticFeedbackUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private callAndSmsHandle(Landroid/widget/ListView;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;Landroid/view/View;)V
    .locals 3
    .parameter "previewList"
    .parameter "adapter"
    .parameter "controlView"

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->enableDefaultCount(Z)V

    .line 489
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCurrentPreviewList:Landroid/widget/ListView;

    .line 490
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->markReadDelayVibrate()V

    .line 491
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 496
    :goto_0
    invoke-direct {p0, p3, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 497
    return-void

    .line 493
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 815
    if-eqz p0, :cond_0

    .line 820
    .end local p0
    :goto_0
    return-object p0

    .line 817
    .restart local p0
    :cond_0
    if-eqz p1, :cond_1

    move-object p0, p1

    .line 818
    goto :goto_0

    .line 820
    :cond_1
    const-string p0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 688
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 690
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 691
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 710
    :goto_1
    return-object v1

    .line 688
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 694
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 710
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 696
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 698
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 700
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 702
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 704
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 706
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 708
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    goto :goto_1

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private markReadDelayVibrate()V
    .locals 4

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    :cond_0
    return-void
.end method

.method private noHandle()V
    .locals 8

    .prologue
    .line 503
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 505
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    if-eqz v4, :cond_2

    .line 509
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCurrentPreviewList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCurrentPreviewList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCurrentPreviewList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 512
    .local v0, MAX_MARK_READ_COUNT:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 513
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->markRead(Landroid/content/Context;I)V

    .line 512
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 515
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->enableDefaultCount(Z)V

    .line 516
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;->getCount()I

    move-result v1

    .line 517
    .local v1, count:I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.update_application_message"

    if-le v1, v0, :cond_3

    sub-int v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    if-ne v4, v5, :cond_4

    .line 524
    const-string v4, "android.intent.extra.update_application_flatten_name"

    const-string v5, "com.android.contacts/.TwelveKeyDialer"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 538
    .end local v0           #MAX_MARK_READ_COUNT:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    .line 539
    return-void

    .line 518
    .restart local v0       #MAX_MARK_READ_COUNT:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 528
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    if-ne v4, v5, :cond_1

    .line 529
    const-string v4, "android.intent.extra.update_application_flatten_name"

    const-string v5, "com.android.mms/.ui.MmsTabActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, info:Ljava/lang/String;
    const/4 v0, 0x0

    .line 647
    .local v0, backgroundId:I
    const v2, 0x30200a5

    .line 649
    .local v2, musicBatteryIndicatorId:I
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    if-eqz v3, :cond_0

    .line 650
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    if-eqz v3, :cond_2

    .line 651
    iget v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x30c017f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    const/4 v0, 0x3

    .line 666
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setBatteryInfo(Ljava/lang/String;)V

    .line 667
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setBatteryLevel(I)V

    .line 668
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v3, v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->setBackgroundFor(I)V

    .line 669
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->setBatteryIndicator(I)V

    .line 670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    .line 671
    return-void

    .line 655
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x30c017e

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 656
    const/4 v0, 0x2

    .line 657
    const v2, 0x30200a4

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x30c0180

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 661
    const/4 v0, 0x1

    .line 662
    const v2, 0x30200a6

    goto :goto_0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 407
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    .line 408
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 410
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V

    .line 413
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshBatteryStringAndIcon()V

    .line 415
    return-void
.end method

.method private setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 7
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1014
    if-eqz p1, :cond_4

    .line 1015
    const/4 v3, 0x0

    .line 1016
    .local v3, useDefaultParams:Z
    if-nez p2, :cond_1

    .line 1017
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object p2, v0

    .line 1018
    if-nez p2, :cond_0

    .line 1019
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x50

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .end local p2
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object p2, v1

    .line 1022
    .end local v1           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local p2
    :cond_0
    const/4 v3, 0x1

    .line 1024
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1025
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1026
    .local v2, parent:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    .line 1027
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1028
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1038
    .end local v2           #parent:Landroid/view/ViewGroup;
    .end local v3           #useDefaultParams:Z
    :cond_3
    :goto_0
    return-void

    .line 1032
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setupBatteryInfo()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v1, 0x303000e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfo:Landroid/view/View;

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfo:Landroid/view/View;

    const v1, 0x30b0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfoText:Landroid/widget/TextView;

    .line 399
    return-void
.end method

.method private setupCallsPreviewList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x3030010

    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsControlView:Landroid/view/View;

    .line 376
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsControlView:Landroid/view/View;

    const v2, 0x30b0045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 378
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x303000f

    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, hint:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 382
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    return-void
.end method

.method private setupSlidingPanel()V
    .locals 5

    .prologue
    .line 363
    new-instance v0, Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/policy/impl/SlidingPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x53

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mTimeView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/policy/impl/SlidingPanel;->setTimeView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/SlidingPanel;->setOnTriggerListener(Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->getControlView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    .line 372
    return-void
.end method

.method private setupSmsPreviewList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x3030014

    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsControlView:Landroid/view/View;

    .line 387
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsControlView:Landroid/view/View;

    const v2, 0x30b0051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 390
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x3030013

    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/MiuiLockScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, hint:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 393
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 394
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 244
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x3090006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 245
    .local v0, configDisabled:Z
    const-string v5, "ro.monkey"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 246
    .local v2, isMonkey:Z
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/local/enable_menu_key"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    .line 247
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private startCallsQuery()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x35

    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;->setLoading(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->cancelOperation(I)V

    .line 618
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, " type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    const-string v0, " AND new=1 "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/policy/impl/MiuiLockScreen;->CallLog_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method private startSmsQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x35

    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->setLoading(Z)V

    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->cancelOperation(I)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    sget-object v3, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_PREVIEW_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method private updateBackground()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 928
    const/4 v0, 0x1

    .line 932
    .local v0, backgroundStatus:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->isMusicControlVisible()Z

    move-result v1

    .line 933
    .local v1, isMusicControlVisible:Z
    if-eqz v1, :cond_0

    .line 934
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->isAlbumShow()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$200(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 935
    const/4 v0, 0x2

    .line 940
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 957
    :cond_1
    :goto_1
    return-void

    .line 937
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 943
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    const v4, 0x30200a7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 948
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    const v4, 0x302008a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 949
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBackgroundMask:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 950
    iget v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    if-eqz v2, :cond_1

    .line 951
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    goto :goto_1

    .line 949
    :cond_3
    const/16 v2, 0x8

    goto :goto_2

    .line 940
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateControlView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 968
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->isMusicStatusNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 972
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->shouldShowMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->showAlbum()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$300(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V

    .line 977
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->clearAnimation()V

    .line 979
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    packed-switch v0, :pswitch_data_0

    .line 1006
    invoke-direct {p0, v2, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1010
    :goto_1
    return-void

    .line 975
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateBackground()V

    goto :goto_0

    .line 981
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->getMusicControl()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    .line 985
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsControlView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 986
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupSmsPreviewList()V

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsPreviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsControlView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->callAndSmsHandle(Landroid/widget/ListView;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;Landroid/view/View;)V

    goto :goto_1

    .line 992
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsControlView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 993
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setupCallsPreviewList()V

    .line 995
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsPreviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$CallLogPreviewListAdapter;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsControlView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->callAndSmsHandle(Landroid/widget/ListView;Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;Landroid/view/View;)V

    goto :goto_1

    .line 999
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mHintView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    .line 1002
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfo:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->setControlView(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    .line 979
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V
    .locals 8
    .parameter "status"

    .prologue
    const v7, 0x30c0182

    const v3, 0x30c0181

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 720
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUnlockIccCard:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 723
    sget-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen$4;->$SwitchMap$com$android$internal$policy$impl$MiuiLockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 812
    :goto_0
    return-void

    .line 726
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 743
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x30c0183

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x30c0187

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 750
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 757
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 761
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 769
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 776
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 784
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x30c0186

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v4}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 797
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x30c0184

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x30c0185

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0, v5}, Lcom/miui/internal/policy/impl/SlidingPanel;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCall:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUnlockIccCard:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 899
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 900
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 901
    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 902
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->closeCursor()V

    .line 903
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsHandler:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;->closeCursor()V

    .line 904
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 850
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 851
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateConfiguration()V

    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->registerPlayerStatusListener()V

    .line 857
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->startCallsQuery()V

    .line 858
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->startSmsQuery()V

    .line 859
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 870
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 871
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateConfiguration()V

    .line 872
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->unregisterPlayerStatusListener()V

    .line 864
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 865
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    if-ne p1, v0, :cond_1

    .line 550
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 554
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 612
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 557
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->removeCheckStreamCallbacks()V

    .line 559
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    goto :goto_0

    .line 564
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->removeCheckStreamCallbacks()V

    .line 566
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    goto :goto_0

    .line 570
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->toggleMusicControl()V

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->removeCheckStreamCallbacks()V

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->updateSpectrumVisualizer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->access$100(Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;)V

    goto :goto_0

    .line 576
    :pswitch_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->removeCheckStreamCallbacks()V

    .line 578
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    goto :goto_0

    .line 582
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->removeCheckStreamCallbacks()V

    .line 583
    iput v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mFadeoutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sLongPressVibration:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 591
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLastGrabTime:J

    goto :goto_0

    .line 596
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->noHandle()V

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->addCheckStreamCallbacks()V

    .line 599
    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlViewType:I

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mControlView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 601
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    goto :goto_0

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 419
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 422
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    .line 882
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->onPause()V

    .line 883
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->onPause()V

    .line 884
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 914
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    if-nez v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->clearBatteryAnimations()V

    .line 919
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mEmergencyCallText:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 920
    return-void

    .line 916
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    if-nez v0, :cond_0

    .line 917
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshBatteryStringAndIcon()V

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 637
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mShowingBatteryInfo:Z

    .line 638
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mPluggedIn:Z

    .line 639
    iput p3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryLevel:I

    .line 641
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->refreshBatteryStringAndIcon()V

    .line 642
    return-void
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V

    .line 682
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 2105
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicController:Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$MusicController;->onResume()V

    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 892
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateControlView()V

    .line 893
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/SlidingPanel;->onResume()V

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->isPaused:Z

    .line 895
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 909
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 3
    .parameter "simState"

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 827
    const-string v0, "LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and prev status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/MiuiLockScreen;->sPrevStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    sget-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sPrevStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    sget-object v1, Lcom/android/internal/policy/impl/MiuiLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    if-eq v0, v1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 830
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 834
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    sput-object v0, Lcom/android/internal/policy/impl/MiuiLockScreen;->sPrevStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    .line 835
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mStatus:Lcom/android/internal/policy/impl/MiuiLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->updateLayout(Lcom/android/internal/policy/impl/MiuiLockScreen$Status;)V

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 2109
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 9
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/high16 v8, 0x3400

    const/4 v7, 0x1

    .line 427
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSelector:Lcom/miui/internal/policy/impl/SlidingPanel;

    if-ne p1, v5, :cond_0

    .line 428
    if-ne p2, v7, :cond_1

    .line 430
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, dialIntent:Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 437
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 471
    .end local v1           #dialIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    const/4 v5, 0x3

    if-ne p2, v5, :cond_2

    .line 439
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 440
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 441
    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    .line 443
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v3, smsIntent:Landroid/content/Intent;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 447
    .local v4, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->enableDefaultCount(Z)V

    .line 448
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    .line 449
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mSmsAdapter:Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen$SmsPreviewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 450
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 451
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 456
    .end local v0           #c:Landroid/database/Cursor;
    :cond_4
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 457
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v6, "thread_id"

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 459
    const-string v5, "view_conversation"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 462
    :cond_5
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 467
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v3}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 468
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

.method public setBatteryInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mBatteryInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 838
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 839
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 840
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    .line 841
    iget v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_1

    .line 842
    .local v0, isKeyboardOpen:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 843
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 846
    .end local v0           #isKeyboardOpen:Z
    :cond_0
    return-void

    .line 841
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
