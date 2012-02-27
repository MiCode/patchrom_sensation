.class public Lcom/android/phone/HtcCdmaSignalFadeScreen;
.super Landroid/app/Activity;
.source "HtcCdmaSignalFadeScreen.java"


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_SIGNAL_FADE_ERROR:I = 0x1

.field private static final EVENT_SHOW_DIALOG:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaSignalFadeScreen"


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mSignalFadeErrorId:I

.field private mSignalFadeErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorId:I

    .line 41
    iput-object v1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorMsg:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 102
    new-instance v0, Lcom/android/phone/HtcCdmaSignalFadeScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaSignalFadeScreen$2;-><init>(Lcom/android/phone/HtcCdmaSignalFadeScreen;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaSignalFadeScreen;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaSignalFadeScreen;->updateDialog(Landroid/content/Intent;)V

    return-void
.end method

.method private updateDialog(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 65
    const-string v0, "SIGNAL_FADE_ERROR_ID"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorId:I

    .line 66
    iget v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaSignalFadeScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorMsg:Ljava/lang/String;

    .line 67
    iget v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorId:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaSignalFadeScreen;->removeDialog(I)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaSignalFadeScreen;->showDialog(I)V

    .line 74
    :goto_0
    const-string v0, "HtcCdmaSignalFadeScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update signal fade screen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v1, "HtcCdmaSignalFadeScreen"

    const-string v2, "Created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaSignalFadeScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 53
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 86
    packed-switch p1, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mSignalFadeErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0112

    new-instance v2, Lcom/android/phone/HtcCdmaSignalFadeScreen$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaSignalFadeScreen$1;-><init>(Lcom/android/phone/HtcCdmaSignalFadeScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 98
    iget-object v0, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "HtcCdmaSignalFadeScreen"

    const-string v1, "Closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 58
    const-string v1, "HtcCdmaSignalFadeScreen"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 61
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaSignalFadeScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    return-void
.end method
