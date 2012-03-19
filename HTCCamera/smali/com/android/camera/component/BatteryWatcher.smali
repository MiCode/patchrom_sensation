.class public Lcom/android/camera/component/BatteryWatcher;
.super Lcom/android/camera/component/IntentReceiver;
.source "BatteryWatcher.java"


# instance fields
.field m_FlashRestriction:Lcom/android/camera/FlashRestriction;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6
    .parameter "cameraActivity"

    .prologue
    .line 23
    const-string v1, "Battery Watcher"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/component/BatteryWatcher;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_FlashRestriction:Lcom/android/camera/FlashRestriction;

    .line 40
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_FlashRestriction:Lcom/android/camera/FlashRestriction;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_FlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v1}, Lcom/android/camera/FlashRestriction;->checkBatteryCapacity()V

    .line 42
    iget-object v1, p0, Lcom/android/camera/component/BatteryWatcher;->m_FlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v1}, Lcom/android/camera/FlashRestriction;->checkBatteryTemperature()V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 59
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    return-void
.end method
