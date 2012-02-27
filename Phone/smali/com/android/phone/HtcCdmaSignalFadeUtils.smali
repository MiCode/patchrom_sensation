.class public Lcom/android/phone/HtcCdmaSignalFadeUtils;
.super Ljava/lang/Object;
.source "HtcCdmaSignalFadeUtils.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaSignalFadeUtils"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/phone/HtcCdmaSignalFadeUtils;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private static getSignalFadeString(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 57
    packed-switch p0, :pswitch_data_0

    .line 60
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 58
    :pswitch_0
    const v0, 0x7f0e0115

    goto :goto_0

    .line 59
    :pswitch_1
    const v0, 0x7f0e0116

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchSignalFadeDialog(I)V
    .locals 4
    .parameter "signalFadeErrorID"

    .prologue
    .line 44
    invoke-static {p1}, Lcom/android/phone/HtcCdmaSignalFadeUtils;->getSignalFadeString(I)I

    move-result v1

    .line 45
    .local v1, stringID:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1084

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    const-string v2, "com.android.phone"

    const-class v3, Lcom/android/phone/HtcCdmaSignalFadeScreen;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v2, "SIGNAL_FADE_ERROR_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    iget-object v2, p0, Lcom/android/phone/HtcCdmaSignalFadeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleSignalFadeError(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x0

    .line 20
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 21
    const-string v2, "HtcCdmaSignalFadeUtils"

    const-string v3, "Exception signal fade mode:"

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 26
    .local v0, SignalFadeData:[I
    if-nez v0, :cond_2

    .line 27
    const-string v2, "HtcCdmaSignalFadeUtils"

    const-string v3, "Signal fade without parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_2
    const-string v2, "HtcCdmaSignalFadeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SignalFade Message ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_3

    .line 33
    aget v2, v0, v5

    invoke-direct {p0, v2}, Lcom/android/phone/HtcCdmaSignalFadeUtils;->launchSignalFadeDialog(I)V

    goto :goto_0

    .line 35
    :cond_3
    aget v2, v0, v5

    invoke-static {v2}, Lcom/android/phone/HtcCdmaSignalFadeUtils;->getSignalFadeString(I)I

    move-result v1

    .line 36
    .local v1, stringID:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/android/phone/HtcCdmaSignalFadeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
