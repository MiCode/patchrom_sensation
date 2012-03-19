.class public abstract Lcom/android/camera/component/IntentReceiver;
.super Lcom/android/camera/component/UIComponent;
.source "IntentReceiver.java"


# static fields
.field protected static final TIME_MANUAL:I = 0x0

.field protected static final TIME_PAUSING:I = 0x3

.field protected static final TIME_PREVIEW_STARTED:I = 0x2

.field protected static final TIME_RESUMING:I = 0x1


# instance fields
.field private final m_IntentReceiver:Landroid/content/BroadcastReceiver;

.field private m_IsReceiverRegistered:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V
    .locals 5
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraActivity"
    .parameter "timeToRegister"
    .parameter "timeToUnregister"

    .prologue
    .line 49
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 27
    new-instance v2, Lcom/android/camera/component/IntentReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IntentReceiver$1;-><init>(Lcom/android/camera/component/IntentReceiver;)V

    iput-object v2, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    if-ne p4, p5, :cond_0

    .line 54
    const-string v2, "timeToRegister equals to timeToUnregister"

    invoke-static {p1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeToRegister equals to timeToUnregister"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 61
    .local v0, eventManager:Lcom/android/camera/EventManager;
    packed-switch p4, :pswitch_data_0

    .line 77
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :pswitch_0
    const-string v1, "CameraActivity.Resuming"

    .line 80
    .local v1, eventName:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 82
    new-instance v2, Lcom/android/camera/component/IntentReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IntentReceiver$2;-><init>(Lcom/android/camera/component/IntentReceiver;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 93
    :cond_1
    packed-switch p5, :pswitch_data_1

    .line 110
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    .end local v1           #eventName:Ljava/lang/String;
    :pswitch_1
    const-string v1, "CameraActivity.PreviewStarted"

    .line 68
    .restart local v1       #eventName:Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v1           #eventName:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Intent receiver will be registered when activity is pausing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "CameraActivity.Pausing"

    .line 72
    .restart local v1       #eventName:Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v1           #eventName:Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 75
    .restart local v1       #eventName:Ljava/lang/String;
    goto :goto_0

    .line 96
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Intent receiver will be unregistered when activity is resuming"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "CameraActivity.Resuming"

    .line 113
    :goto_1
    if-eqz v1, :cond_2

    .line 115
    new-instance v2, Lcom/android/camera/component/IntentReceiver$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IntentReceiver$3;-><init>(Lcom/android/camera/component/IntentReceiver;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 124
    :cond_2
    return-void

    .line 100
    :pswitch_5
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Intent receiver will be unregistered when preview is started"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "CameraActivity.PreviewStarted"

    .line 102
    goto :goto_1

    .line 104
    :pswitch_6
    const-string v1, "CameraActivity.Pausing"

    .line 105
    goto :goto_1

    .line 107
    :pswitch_7
    const/4 v1, 0x0

    .line 108
    goto :goto_1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/camera/component/IntentReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/IntentReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/IntentReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    return v0
.end method


# virtual methods
.method public final isReceiverRegistered()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    return v0
.end method

.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 138
    return-void
.end method

.method protected abstract prepareIntentFilter(Landroid/content/IntentFilter;)V
.end method

.method protected final registerReceiver()V
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->threadAccessCheck()V

    .line 152
    iget-boolean v1, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v0}, Lcom/android/camera/component/IntentReceiver;->prepareIntentFilter(Landroid/content/IntentFilter;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    goto :goto_0
.end method

.method protected final unregisterReceiver()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->threadAccessCheck()V

    .line 171
    iget-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    goto :goto_0
.end method
