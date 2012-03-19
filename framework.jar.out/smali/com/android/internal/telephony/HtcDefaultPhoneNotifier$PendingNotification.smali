.class Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;
.super Ljava/lang/Object;
.source "HtcDefaultPhoneNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingNotification"
.end annotation


# instance fields
.field apnType:Ljava/lang/String;

.field event:I

.field reason:Ljava/lang/String;

.field sender:Lcom/android/internal/telephony/Phone;

.field state:Lcom/android/internal/telephony/Phone$DataState;

.field final synthetic this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 0
    .parameter
    .parameter "idEvent"
    .parameter "phone"
    .parameter "reasonStr"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p2, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->event:I

    .line 147
    iput-object p3, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->sender:Lcom/android/internal/telephony/Phone;

    .line 148
    iput-object p4, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->reason:Ljava/lang/String;

    .line 149
    iput-object p5, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->apnType:Ljava/lang/String;

    .line 150
    iput-object p6, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->state:Lcom/android/internal/telephony/Phone$DataState;

    .line 151
    return-void
.end method
