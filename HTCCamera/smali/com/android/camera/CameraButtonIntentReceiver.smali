.class public Lcom/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 19
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 21
    .local v0, event:Landroid/view/KeyEvent;
    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 27
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "camera_capture_mode"

    const-string v5, "null"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, mode:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, i:Landroid/content/Intent;
    invoke-static {}, Lcom/android/camera/component/HwCameraSwitchButton;->hasButton()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderHWButton()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    :cond_1
    const-class v4, Lcom/android/camera/CameraEntry;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    :goto_1
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 34
    :cond_2
    if-eqz v2, :cond_3

    const-string v4, "camera_capture_mode_movie"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 35
    const-class v4, Lcom/android/camera/CamcorderEntry;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 37
    :cond_3
    const-class v4, Lcom/android/camera/CameraEntry;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method
