.class Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcRadio;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/HtcRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/HtcRadio;Lcom/android/internal/telephony/cdma/HtcRadio$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcRadio;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.telephony.cdma-flight.mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    const-string/jumbo v1, "timerId"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    #getter for: Lcom/android/internal/telephony/cdma/HtcRadio;->mWaitingTimerId:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$100(Lcom/android/internal/telephony/cdma/HtcRadio;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWaitingPerioid(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$200(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V

    .line 138
    :cond_0
    return-void
.end method
