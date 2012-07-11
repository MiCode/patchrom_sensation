.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 2345
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2366
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2368
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2369
    return-void
.end method

.method public exposeFallback()V
    .locals 1

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2387
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 2394
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2808(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I

    .line 2377
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2378
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 2379
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2380
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2352
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 2354
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 2355
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 2356
    return-void
.end method
