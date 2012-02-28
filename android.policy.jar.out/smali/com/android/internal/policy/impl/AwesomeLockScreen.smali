.class Lcom/android/internal/policy/impl/AwesomeLockScreen;
.super Landroid/widget/FrameLayout;
.source "AwesomeLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;
.implements Lcom/android/internal/policy/impl/QcomCallback;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AwesomeLockScreen"

.field private static mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# instance fields
.field private isPaused:Z

.field private mBatteryLevel:Lmiui/app/screenelement/IndexedNumberVariable;

.field private final mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

.field private mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

.field private mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/miui/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    .line 74
    iput-object p3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    iput-object p4, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 76
    iput-object p5, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->setFocusable(Z)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->setFocusableInTouchMode(Z)V

    .line 81
    sget-object v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v1, p1, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 85
    :cond_0
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 86
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 88
    new-instance v1, Lmiui/app/screenelement/ScreenContext;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    new-instance v3, Lmiui/app/screenelement/ResourceManager;

    new-instance v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;

    invoke-direct {v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;-><init>()V

    invoke-direct {v3, v4}, Lmiui/app/screenelement/ResourceManager;-><init>(Lmiui/app/screenelement/ResourceManager$ResourceLoader;)V

    new-instance v4, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;

    invoke-direct {v4, p0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;)V

    invoke-direct {v1, v2, v3, v4}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/ScreenElementFactory;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    .line 91
    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->onRefreshBatteryInfo(ZZI)V

    .line 93
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v2, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;-><init>(Lmiui/app/screenelement/ScreenContext;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->load()Z

    .line 95
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-direct {v1, v2, p0, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;-><init>(Landroid/content/Context;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 96
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/AwesomeLockScreen;)Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->cleanUp()V

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 153
    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 154
    iput-object v1, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 155
    return-void
.end method

.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 224
    :cond_0
    return-void
.end method

.method public haptic(I)V
    .locals 3
    .parameter "effectId"

    .prologue
    .line 215
    sget-object v0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 217
    return-void
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->isDisplayDesktop()Z

    move-result v0

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 119
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 124
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onPause()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    .line 141
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 235
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 163
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iput-boolean p1, v0, Lmiui/app/screenelement/ScreenContext;->mShowingBatteryInfo:Z

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iput-boolean p2, v0, Lmiui/app/screenelement/ScreenContext;->mPluggedIn:Z

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iput p3, v0, Lmiui/app/screenelement/ScreenContext;->mBatteryLevel:I

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mBatteryLevel:Lmiui/app/screenelement/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lmiui/app/screenelement/IndexedNumberVariable;

    const-string v1, "battery_level"

    iget-object v2, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/Variables;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mBatteryLevel:Lmiui/app/screenelement/IndexedNumberVariable;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mBatteryLevel:Lmiui/app/screenelement/IndexedNumberVariable;

    int-to-double v1, p3

    invoke-virtual {v0, v1, v2}, Lmiui/app/screenelement/IndexedNumberVariable;->set(D)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenContext:Lmiui/app/screenelement/ScreenContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/app/screenelement/ScreenContext;->mShouldUpdate:Z

    .line 179
    :cond_1
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 110
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 247
    return-void
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 110
    return-void
.end method


.method public onResume()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->onResume()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->isPaused:Z

    .line 147
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 160
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 183
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 251
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 206
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 211
    return-void
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mRoot:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 231
    :cond_0
    return-void
.end method

.method public unlocked(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/AwesomeLockScreen;->mCallback:Lcom/miui/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/KeyguardScreenCallback;->setPendingIntent(Landroid/content/Intent;)V

    .line 190
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/AwesomeLockScreen$1;-><init>(Lcom/android/internal/policy/impl/AwesomeLockScreen;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AwesomeLockScreen;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method
