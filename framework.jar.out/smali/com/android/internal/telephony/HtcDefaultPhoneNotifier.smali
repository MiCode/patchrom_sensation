.class public Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;
.super Lcom/android/internal/telephony/DefaultPhoneNotifier;
.source "HtcDefaultPhoneNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;
    }
.end annotation


# static fields
.field private static final EVENT_CALL_FORWARDING_CHANGED:I = 0x5

.field private static final EVENT_CELL_LOCATION:I = 0x9

.field private static final EVENT_DATA_ACTIVITY:I = 0x6

.field private static final EVENT_DATA_CONNECTION:I = 0x7

.field private static final EVENT_DATA_CONNECTION_FAIL:I = 0x8

.field private static final EVENT_MESSAGE_WAITING_CHANGED:I = 0x4

.field private static final EVENT_PHONE_STATE:I = 0x1

.field private static final EVENT_SERVICE_STATE:I = 0x2

.field private static final EVENT_SIGNAL_STRENGTH:I = 0x3

.field private static final PENDING_DATA_ACTIVITY_FOR_CALL_END__MS:I = 0x7d0

.field private static final PENDING_DATA_ACTIVITY_FOR_CALL_START__MS:I = 0xbb8


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPendingNotification:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutCallEnd:I

.field private mTimeoutCallStart:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;-><init>(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mHandler:Landroid/os/Handler;

    .line 22
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->initPendingTime()V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->dispatchQueueEvent(ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    return-void
.end method

.method private dispatchQueueEvent(ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 0
    .parameter "event"
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 115
    :pswitch_0
    invoke-super {p0, p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-super {p0, p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-super {p0, p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 124
    :pswitch_3
    invoke-super {p0, p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 127
    :pswitch_4
    invoke-super {p0, p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 130
    :pswitch_5
    invoke-super {p0, p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 133
    :pswitch_6
    invoke-super {p0, p2, p3, p4, p5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    .line 136
    :pswitch_7
    invoke-super {p0, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_8
    invoke-super {p0, p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private eventEnqueue(ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)Z
    .locals 10
    .parameter "event"
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    .local v7, enqeue:Z
    const/4 v8, -0x1

    .line 81
    .local v8, timeoutValue:I
    packed-switch p1, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    .line 101
    if-ltz v8, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mHandler:Landroid/os/Handler;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;-><init>(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    return v7

    .line 83
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v7, v0

    .line 84
    :goto_1
    if-nez v7, :cond_0

    if-eqz p3, :cond_0

    .line 85
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    const/4 v7, 0x1

    .line 87
    iget v8, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mTimeoutCallStart:I

    goto :goto_0

    :cond_3
    move v7, v1

    .line 83
    goto :goto_1

    .line 89
    :cond_4
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v7, 0x1

    .line 91
    iget v8, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mTimeoutCallEnd:I

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move v7, v0

    :goto_2
    goto :goto_0

    :cond_5
    move v7, v1

    goto :goto_2

    .line 81
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initPendingTime()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mTimeoutCallStart:I

    .line 59
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mTimeoutCallEnd:I

    .line 66
    return-void
.end method


# virtual methods
.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .parameter "sender"

    .prologue
    const/4 v3, 0x0

    .line 27
    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->eventEnqueue(ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyDataActivity(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 6
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 35
    const/4 v1, 0x7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->eventEnqueue(ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 43
    const/16 v1, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->eventEnqueue(ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
