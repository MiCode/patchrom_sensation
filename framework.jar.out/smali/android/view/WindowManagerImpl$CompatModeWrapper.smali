.class Landroid/view/WindowManagerImpl$CompatModeWrapper;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;
.implements Landroid/view/HtcIfWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatModeWrapper"
.end annotation


# instance fields
.field private final mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V
    .locals 1
    .parameter "wm"
    .parameter "ci"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    instance-of v0, p1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    .end local p1
    iget-object p1, p1, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    :goto_0
    iput-object p1, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    .line 139
    if-nez p2, :cond_1

    .line 140
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mDefaultDisplay:Landroid/view/Display;

    .line 147
    :goto_1
    iput-object p2, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 148
    return-void

    .line 132
    .restart local p1
    :cond_0
    check-cast p1, Landroid/view/WindowManagerImpl;

    goto :goto_0

    .line 143
    .end local p1
    :cond_1
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/Display;->createCompatibleDisplay(ILandroid/view/CompatibilityInfoHolder;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;)V

    .line 153
    return-void
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 1
    .parameter "token"
    .parameter "type"

    .prologue
    .line 183
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1, p2}, Landroid/view/HtcIfWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 186
    :cond_0
    return-void
.end method

.method public getAnimationScales()[F
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0}, Landroid/view/HtcIfWindowManager;->getAnimationScales()[F

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0}, Landroid/view/HtcIfWindowManager;->getRotation()I

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwitchState(I)I
    .locals 1
    .parameter "sw"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->getSwitchState(I)I

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 247
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1, p2}, Landroid/view/HtcIfWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public keyguardIsShowing()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0}, Landroid/view/HtcIfWindowManager;->keyguardIsShowing()Z

    move-result v0

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 163
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 173
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 197
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->removeWindowToken(Landroid/os/IBinder;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setAnimationScales([F)V
    .locals 1
    .parameter "scales"

    .prologue
    .line 203
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->setAnimationScales([F)V

    .line 206
    :cond_0
    return-void
.end method

.method public setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 209
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1, p2}, Landroid/view/HtcIfWindowManager;->setPenSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setPointerSpeed(I)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 215
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->setPointerSpeed(I)V

    .line 218
    :cond_0
    return-void
.end method

.method public setShowKeyguard(Z)V
    .locals 1
    .parameter "showLockScreen"

    .prologue
    .line 263
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->setShowKeyguard(Z)V

    .line 266
    :cond_0
    return-void
.end method

.method public setStatusBarTouchMode(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 221
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->setStatusBarTouchMode(Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public showKeyguardWithAnimation(Z)V
    .locals 1
    .parameter "showLockScreen"

    .prologue
    .line 269
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->showKeyguardWithAnimation(Z)V

    .line 272
    :cond_0
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method
