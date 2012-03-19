.class public Lcom/android/camera/component/AutoBacklightIntentSender;
.super Lcom/android/camera/component/UIComponent;
.source "AutoBacklightIntentSender.java"


# static fields
.field public static final RESEND_MSG_TIME:I = 0x7530

.field public static final SEND_ENABLE_AUTOBACKLIGHT:I = 0x2711


# instance fields
.field disableHandler:Lcom/android/camera/IEventHandler;

.field enableHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 58
    const-string v0, "AutoBacklightIntentSender"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 28
    new-instance v0, Lcom/android/camera/component/AutoBacklightIntentSender$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$1;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    iput-object v0, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->enableHandler:Lcom/android/camera/IEventHandler;

    .line 36
    new-instance v0, Lcom/android/camera/component/AutoBacklightIntentSender$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$2;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    iput-object v0, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->disableHandler:Lcom/android/camera/IEventHandler;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->disableAutoBacklight()V

    return-void
.end method

.method private disableAutoBacklight()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoBacklight()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "backlight.delay"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method private enableAutoBacklight()V
    .locals 4

    .prologue
    const/16 v3, 0x2711

    .line 182
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enableAutoBacklight()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v3}, Lcom/android/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "entering.screen.brightness"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v1, "backlight.delay"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    const/16 v1, 0x7530

    invoke-virtual {p0, p0, v3, v1}, Lcom/android/camera/component/AutoBacklightIntentSender;->sendMessage(Lcom/android/camera/component/Component;II)Z

    .line 196
    return-void
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 155
    .local v0, eventManager:Lcom/android/camera/EventManager;
    if-nez v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->enableHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 162
    const-string v1, "CameraActivity.Activate"

    iget-object v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->enableHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 163
    const-string v1, "CameraActivity.Deactivate"

    iget-object v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->disableHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 164
    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->disableHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 102
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 131
    :goto_0
    return-void

    .line 125
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 148
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->registerListeners()V

    .line 149
    return-void
.end method
