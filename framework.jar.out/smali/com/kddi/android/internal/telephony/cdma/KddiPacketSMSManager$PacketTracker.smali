.class Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
.super Ljava/lang/Object;
.source "KddiPacketSMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PacketTracker"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDestAddr:Ljava/lang/String;

.field mMessage:Ljava/lang/String;

.field mSendingMode:I

.field mSentIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;


# direct methods
.method constructor <init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "destAddr"
    .parameter "message"
    .parameter "sentIntent"
    .parameter "sendingMode"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mContext:Landroid/content/Context;

    .line 218
    iput-object p3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mDestAddr:Ljava/lang/String;

    .line 219
    iput-object p4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mMessage:Ljava/lang/String;

    .line 220
    iput-object p5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 221
    iput p6, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSendingMode:I

    .line 222
    return-void
.end method
