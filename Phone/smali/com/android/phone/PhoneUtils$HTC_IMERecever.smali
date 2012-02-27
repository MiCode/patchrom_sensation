.class Lcom/android/phone/PhoneUtils$HTC_IMERecever;
.super Landroid/content/BroadcastReceiver;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HTC_IMERecever"
.end annotation


# instance fields
.field final dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 4069
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4070
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$HTC_IMERecever;->dialog:Landroid/app/Dialog;

    .line 4071
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x2

    .line 4075
    const-string v3, "SIP"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4077
    .local v0, sip:Ljava/lang/String;
    const-string v3, "SIP_VISIBLE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 4079
    .local v1, sipVisible:Z
    iget-object v3, p0, Lcom/android/phone/PhoneUtils$HTC_IMERecever;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 4081
    .local v2, win:Landroid/view/Window;
    if-eqz v1, :cond_2

    .line 4082
    const/16 v3, 0x60

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v3, v4, :cond_0

    const/16 v3, 0x8

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v4, :cond_1

    .line 4084
    :cond_0
    const/16 v3, 0xa5

    invoke-virtual {v2, v5, v3}, Landroid/view/Window;->setLayout(II)V

    .line 4092
    :goto_0
    return-void

    .line 4087
    :cond_1
    const/16 v3, 0x12c

    invoke-virtual {v2, v5, v3}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 4090
    :cond_2
    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method
