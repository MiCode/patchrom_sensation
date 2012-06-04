.class public abstract Lcom/android/internal/policy/impl/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# static fields
.field private static final BACKGROUND_COLOR:I = 0x70000000

.field private static final KEYGUARD_MANAGES_VOLUME:Z = true

.field private static final MSG_LONG_PRESS:I = 0x1


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private mHandler:Landroid/os/Handler;

.field private mPokeWait:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mPokeWait:Z

    .line 64
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewBase$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewBase;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 161
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewBase$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewBase$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewBase;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/KeyguardViewBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mPokeWait:Z

    return p1
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 221
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 222
    .local v2, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_7

    .line 223
    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    move v5, v6

    .line 313
    :cond_1
    :goto_1
    return v5

    .line 229
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 233
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_1

    .line 245
    :cond_3
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 255
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 260
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    const/4 v1, 0x0

    .line 265
    .local v1, isMusicActive:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 267
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    const/16 v4, 0x18

    if-ne v2, v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v8, v4, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 274
    const/4 v1, 0x1

    .line 280
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isBootCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.lockscreen.volumekey"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, volumeIntent:Landroid/content/Intent;
    const-string v4, "isMusicActive"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    const-string v4, "keyCode"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 260
    .end local v1           #isMusicActive:Z
    .end local v3           #volumeIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 267
    .restart local v1       #isMusicActive:Z
    :cond_6
    const/4 v4, -0x1

    goto :goto_2

    .line 293
    .end local v1           #isMusicActive:Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 294
    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_0

    .line 306
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 307
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch

    .line 294
    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    :goto_0
    :pswitch_0
    return v0

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 209
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public abstract clearIdleScreen()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 175
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 181
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mPokeWait:Z

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mPokeWait:Z

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 192
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    :goto_1
    return v1

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_0

    .line 195
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 319
    const/high16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 320
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    return-object v0
.end method

.method public abstract getIdleScreenLabel()Ljava/lang/String;
.end method

.method public abstract hideIdleScreen()V
.end method

.method public abstract isLockScreen()Z
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract recreateChildScreen()V
.end method

.method public abstract reset()V
.end method

.method public resetBackground()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method

.method setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 98
    return-void
.end method

.method public abstract setIdleScreen(Landroid/content/ComponentName;)V
.end method

.method public abstract show()V
.end method

.method public abstract showIdleScreen()V
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method

.method public isDisplayDesktop()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

