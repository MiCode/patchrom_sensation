.class Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppHtcBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 5337
    iput-object p1, p0, Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5337
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5342
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5343
    :cond_0
    const-string v4, "com.htc.launcher.action.mode_change"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5344
    const-string v4, "kidzone_mode"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 5347
    .local v1, isEnabled:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneApp;->setKidzone(Z)V

    .line 5361
    .end local v1           #isEnabled:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 5344
    goto :goto_0

    .line 5348
    :cond_3
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5349
    iget-object v3, p0, Lcom/android/phone/PhoneApp$PhoneAppHtcBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->notifyRadioTimezone()V
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$5800(Lcom/android/phone/PhoneApp;)V

    goto :goto_1

    .line 5350
    :cond_4
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5351
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "PhoneApp"

    const-string v4, "update missed call notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    :cond_5
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    goto :goto_1

    .line 5353
    :cond_6
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5354
    invoke-static {v3}, Lcom/android/phone/util/VoiceRecorderHelper;->setMediaMounted(Z)V

    goto :goto_1

    .line 5355
    :cond_7
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5356
    invoke-static {v3}, Lcom/android/phone/util/VoiceRecorderHelper;->setMediaMounted(Z)V

    goto :goto_1

    .line 5357
    :cond_8
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5358
    const-string v4, "read-only"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    move v2, v1

    .line 5359
    .local v2, writable:Z
    :goto_2
    invoke-static {v2}, Lcom/android/phone/util/VoiceRecorderHelper;->setMediaMounted(Z)V

    goto :goto_1

    .end local v2           #writable:Z
    :cond_9
    move v2, v3

    .line 5358
    goto :goto_2
.end method
