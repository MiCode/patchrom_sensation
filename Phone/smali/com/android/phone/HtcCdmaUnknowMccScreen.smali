.class public Lcom/android/phone/HtcCdmaUnknowMccScreen;
.super Landroid/app/Activity;
.source "HtcCdmaUnknowMccScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_UNKNOWN_MCC:I = 0x1

.field private static final EVENT_SHOW_DIALOG:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaUnknowMccScreen"


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaUnknowMccScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 76
    new-instance v0, Lcom/android/phone/HtcCdmaUnknowMccScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaUnknowMccScreen$2;-><init>(Lcom/android/phone/HtcCdmaUnknowMccScreen;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaUnknowMccScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v1, p0, Lcom/android/phone/HtcCdmaUnknowMccScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 49
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaUnknowMccScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaUnknowMccScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e010e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e010f

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaUnknowMccScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e013c

    new-instance v2, Lcom/android/phone/HtcCdmaUnknowMccScreen$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaUnknowMccScreen$1;-><init>(Lcom/android/phone/HtcCdmaUnknowMccScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaUnknowMccScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaUnknowMccScreen;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
